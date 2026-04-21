param(
  [string]$OutputPath = "D:/WORKSPACE/Github/EvalutionGame/doc/resource/08-exports/minimal-timeline-export.json"
)

$ErrorActionPreference = 'Stop'

$targetFiles = @(
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/01-timeline/origin-of-life.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/01-timeline/precambrian-overview.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/02-clades/early-life.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/03-events/great-oxidation-event.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/04-species-cards/stromatolite-microbial-mats.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/01-timeline/cambrian.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/01-timeline/devonian.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/02-clades/fishes.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/03-events/vertebrate-landfall.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/04-species-cards/tiktaalik-roseae.md',
  'D:/WORKSPACE/Github/EvalutionGame/doc/resource/04-species-cards/ichthyostega.md'
)

function Get-Frontmatter {
  param([string]$Content)

  $match = [regex]::Match($Content, '(?s)^---\r?\n(.*?)\r?\n---')
  if (-not $match.Success) {
    throw "Frontmatter block not found"
  }
  return $match.Groups[1].Value
}

function Get-SingleValue {
  param(
    [string]$Frontmatter,
    [string]$Pattern,
    [switch]$AsNumber
  )

  $match = [regex]::Match($Frontmatter, $Pattern, [System.Text.RegularExpressions.RegexOptions]::Multiline)
  if (-not $match.Success) {
    return $null
  }

  $value = $match.Groups[1].Value.Trim()
  if ($value -eq 'null') {
    return $null
  }

  if ($value.StartsWith('"') -and $value.EndsWith('"')) {
    $value = $value.Substring(1, $value.Length - 2)
  }

  if ($AsNumber) {
    return [double]::Parse($value, [System.Globalization.CultureInfo]::InvariantCulture)
  }

  return $value
}

function Get-ListValue {
  param(
    [string]$Frontmatter,
    [string]$SectionName,
    [string]$KeyName
  )

  $sectionMatch = [regex]::Match(
    $Frontmatter,
    "(?ms)^$([regex]::Escape($SectionName)):\r?\n(.*?)(?=^[A-Za-z_][A-Za-z0-9_]*:|\z)",
    [System.Text.RegularExpressions.RegexOptions]::Multiline
  )

  if (-not $sectionMatch.Success) {
    return @()
  }

  $sectionBody = $sectionMatch.Groups[1].Value
  $keyMatch = [regex]::Match(
    $sectionBody,
    "(?ms)^  $([regex]::Escape($KeyName)):\r?\n(.*?)(?=^  [A-Za-z_][A-Za-z0-9_\-]*:|\z)",
    [System.Text.RegularExpressions.RegexOptions]::Multiline
  )

  if (-not $keyMatch.Success) {
    return @()
  }

  $listBody = $keyMatch.Groups[1].Value
  $matches = [regex]::Matches($listBody, '^\s*-\s*"?([^"\r\n]+)"?\s*$', [System.Text.RegularExpressions.RegexOptions]::Multiline)
  $values = @()
  foreach ($match in $matches) {
    $values += $match.Groups[1].Value.Trim()
  }
  return $values
}

$items = foreach ($file in $targetFiles) {
  $content = Get-Content -LiteralPath $file -Raw -Encoding utf8
  $frontmatter = Get-Frontmatter -Content $content

  [pscustomobject]@{
    id = Get-SingleValue -Frontmatter $frontmatter -Pattern '^id:\s*"?([^"\r\n]+)"?\s*$'
    type = Get-SingleValue -Frontmatter $frontmatter -Pattern '^type:\s*"?([^"\r\n]+)"?\s*$'
    title = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  zh-CN:\s*"?([^"\r\n]+)"?\s*$'
    titleShort = Get-SingleValue -Frontmatter $frontmatter -Pattern '^title_short:\s*"?([^"\r\n]+)"?\s*$'
    summary = Get-SingleValue -Frontmatter $frontmatter -Pattern '^summary:\s*"?([^"\r\n]+)"?\s*$'
    startMa = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  start_ma:\s*([^\r\n]+)\s*$' -AsNumber
    endMa = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  end_ma:\s*([^\r\n]+)\s*$' -AsNumber
    precision = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  precision:\s*"?([^"\r\n]+)"?\s*$'
    group = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  timeline_group:\s*"?([^"\r\n]+)"?\s*$'
    colorKey = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  color_key:\s*"?([^"\r\n]+)"?\s*$'
    relatedIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'relations' -KeyName 'related_ids')
    featuredAssetIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'assets' -KeyName 'featured_asset_ids')
    path = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  canonical_path:\s*"?([^"\r\n]+)"?\s*$'
  }
}

$items | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $OutputPath -Encoding utf8
Write-Output "Exported $($items.Count) items to $OutputPath"
