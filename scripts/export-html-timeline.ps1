param(
  [string]$OutputPath = "D:/WORKSPACE/Github/EvalutionGame/doc/resource/08-exports/html-timeline-export.json"
)

$ErrorActionPreference = 'Stop'

$assetRegistryPath = 'D:/WORKSPACE/Github/EvalutionGame/doc/resource/07-assets/asset-registry.md'

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

function Get-DefaultGroup {
  param([string]$Type)

  switch ($Type) {
    'timeline' { return 'phanerozoic-mainline' }
    'clade' { return 'clade-mainline' }
    'event' { return 'event-mainline' }
    'species-card' { return 'species-transition' }
    default { return 'timeline-node' }
  }
}

function Get-AssetRegistry {
  param([string]$RegistryPath)

  $content = Get-Content -LiteralPath $RegistryPath -Raw -Encoding utf8
  $lines = $content -split "\r?\n"
  $assets = @{}

  foreach ($line in $lines) {
    if ($line -notmatch '^\|\s*`asset\.') {
      continue
    }

    $columns = @($line.Split('|').ForEach({ $_.Trim() }) | Where-Object { $_ -ne '' })
    if ($columns.Count -lt 12) {
      continue
    }

    $usageRoles = @()
    foreach ($role in ($columns[9] -split '/')) {
      $normalizedRole = $role.Trim().Trim('`').Trim()
      if ($normalizedRole) {
        $usageRoles += $normalizedRole
      }
    }

    $assetId = $columns[0].Trim('`')
    $previewPath = $columns[3].Trim('`')
    if ($previewPath -eq 'null') {
      $previewPath = $null
    }

    $assets[$assetId] = [pscustomobject]@{
      assetId = $assetId
      assetType = $columns[1].Trim('`')
      path = $columns[2].Trim('`')
      previewPath = $previewPath
      format = $columns[4].Trim('`')
      license = $columns[5].Trim('`')
      sourceRefId = $columns[6].Trim('`')
      creditText = $columns[7].Trim('`')
      status = $columns[10].Trim('`')
      usageRoles = @($usageRoles)
      notes = $columns[11]
    }
  }

  return $assets
}

function Resolve-Assets {
  param(
    [string[]]$AssetIds,
    [hashtable]$AssetRegistry
  )

  $resolved = @()
  foreach ($assetId in $AssetIds) {
    if ($AssetRegistry.ContainsKey($assetId)) {
      $resolved += $AssetRegistry[$assetId]
    }
  }

  return @($resolved)
}

$assetRegistry = Get-AssetRegistry -RegistryPath $assetRegistryPath

$items = foreach ($file in $targetFiles) {
  $content = Get-Content -LiteralPath $file -Raw -Encoding utf8
  $frontmatter = Get-Frontmatter -Content $content

  $type = Get-SingleValue -Frontmatter $frontmatter -Pattern '^type:\s*"?([^"\r\n]+)"?\s*$'
  $startMa = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  start_ma:\s*([^\r\n]+)\s*$' -AsNumber
  $endMa = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  end_ma:\s*([^\r\n]+)\s*$' -AsNumber
  $precision = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  precision:\s*"?([^"\r\n]+)"?\s*$'

  if ($null -eq $precision) {
    $precision = 'range'
  }

  if ($null -eq $endMa -and $precision -eq 'point') {
    $endMa = $startMa
  }

  $group = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  timeline_group:\s*"?([^"\r\n]+)"?\s*$'
  if ($null -eq $group) {
    $group = Get-DefaultGroup -Type $type
  }

  $featuredAssetIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'assets' -KeyName 'featured_asset_ids')

  [pscustomobject]@{
    id = Get-SingleValue -Frontmatter $frontmatter -Pattern '^id:\s*"?([^"\r\n]+)"?\s*$'
    type = $type
    title = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  zh-CN:\s*"?([^"\r\n]+)"?\s*$'
    titleShort = Get-SingleValue -Frontmatter $frontmatter -Pattern '^title_short:\s*"?([^"\r\n]+)"?\s*$'
    summary = Get-SingleValue -Frontmatter $frontmatter -Pattern '^summary:\s*"?([^"\r\n]+)"?\s*$'
    startMa = $startMa
    endMa = $endMa
    precision = $precision
    group = $group
    colorKey = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  color_key:\s*"?([^"\r\n]+)"?\s*$'
    sortKey = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  sort_key:\s*([^\r\n]+)\s*$' -AsNumber
    defaultView = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  default_view:\s*"?([^"\r\n]+)"?\s*$'
    chronoLabels = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'time' -KeyName 'chrono_labels')
    relatedIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'relations' -KeyName 'related_ids')
    featuredAssetIds = @($featuredAssetIds)
    assets = @(Resolve-Assets -AssetIds $featuredAssetIds -AssetRegistry $assetRegistry)
    predecessorIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'relations' -KeyName 'predecessor_ids')
    successorIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'relations' -KeyName 'successor_ids')
    parentIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'relations' -KeyName 'parent_ids')
    childIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'relations' -KeyName 'child_ids')
    path = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  canonical_path:\s*"?([^"\r\n]+)"?\s*$'
  }
}

$sortedItems = $items | Sort-Object -Property @{ Expression = 'sortKey'; Ascending = $true }, @{ Expression = 'startMa'; Ascending = $false }, @{ Expression = 'id'; Ascending = $true }
$groupKeys = @($sortedItems | ForEach-Object { $_.group } | Sort-Object -Unique)
$typeKeys = @($sortedItems | ForEach-Object { $_.type } | Sort-Object -Unique)

$exportObject = [pscustomobject]@{
  meta = [pscustomobject]@{
    format = 'html-timeline'
    version = '1.0'
    generatedAt = (Get-Date).ToUniversalTime().ToString('o')
    itemCount = $sortedItems.Count
    groups = $groupKeys
    types = $typeKeys
  }
  items = @($sortedItems)
}

$exportObject | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $OutputPath -Encoding utf8
Write-Output "Exported HTML timeline payload with $($sortedItems.Count) items to $OutputPath"
