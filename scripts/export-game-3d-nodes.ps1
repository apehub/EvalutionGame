param(
  [string]$OutputPath = "D:/WORKSPACE/Github/EvalutionGame/doc/resource/08-exports/game-3d-nodes.json"
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

function Get-NodeKind {
  param(
    [string]$Type,
    [string]$Id,
    [string]$TaxonKind
  )

  if ($Type -eq 'species-card' -and $TaxonKind -eq 'trace/community-card') {
    return 'evidence-card'
  }

  switch ($Type) {
    'timeline' { return 'timeline-node' }
    'clade' { return 'clade-node' }
    'event' { return 'event-node' }
    'species-card' { return 'species-node' }
    'source-tool' { return 'source-node' }
    default { return 'content-node' }
  }
}

function Get-EducationalFocus {
  param(
    [string]$Type,
    [string]$Id,
    [string]$Summary,
    [string[]]$CladeTags,
    [string[]]$EventTags,
    [string[]]$EcologyTags
  )

  switch ($Id) {
    'timeline.origin-of-life' { return @('环境上限', '生命起点', '起源模型') }
    'clade.early-life' { return @('微生物主导', '环境改造', '复杂生命前提') }
    'event.great-oxidation-event' { return @('环境转折', '氧化过程', '地球化学证据') }
    'species-card.stromatolite-microbial-mats' { return @('材料层证据', '微生物生态系统', '环境改造背景') }
    'species-card.tiktaalik-roseae' { return @('过渡型证据', '鳍骨到肢体', '登陆前段') }
  }

  $focus = New-Object System.Collections.Generic.List[string]

  switch ($Type) {
    'timeline' {
      $focus.Add('时代背景')
      $focus.Add('时间窗口')
      if ($Summary -match '生态|环境') { $focus.Add('生态转型') }
    }
    'clade' {
      $focus.Add('系统位置')
      $focus.Add('关键衍征')
      $focus.Add('长期主线')
    }
    'event' {
      $focus.Add('转折机制')
      $focus.Add('影响范围')
      $focus.Add('证据类型')
    }
    'species-card' {
      $focus.Add('代表性')
      $focus.Add('过渡意义')
      $focus.Add('材料层价值')
    }
    default {
      $focus.Add('知识节点')
    }
  }

  foreach ($tag in @($CladeTags + $EventTags + $EcologyTags)) {
    switch ($tag) {
      'fishes' { if (-not $focus.Contains('鱼类主线')) { $focus.Add('鱼类主线') } }
      'vertebrate-landfall' { if (-not $focus.Contains('登陆转折')) { $focus.Add('登陆转折') } }
      'amphibians' { if (-not $focus.Contains('两栖起点')) { $focus.Add('两栖起点') } }
      'marine' { if (-not $focus.Contains('海洋生态')) { $focus.Add('海洋生态') } }
      'freshwater' { if (-not $focus.Contains('淡水环境')) { $focus.Add('淡水环境') } }
      'terrestrial' { if (-not $focus.Contains('陆地扩张')) { $focus.Add('陆地扩张') } }
    }
  }

  return @($focus | Select-Object -Unique | Select-Object -First 3)
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
  $id = Get-SingleValue -Frontmatter $frontmatter -Pattern '^id:\s*"?([^"\r\n]+)"?\s*$'
  $timelineGroup = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  timeline_group:\s*"?([^"\r\n]+)"?\s*$'
  $taxonKind = Get-SingleValue -Frontmatter $frontmatter -Pattern '^  taxon_kind:\s*"?([^"\r\n]+)"?\s*$'
  $summary = Get-SingleValue -Frontmatter $frontmatter -Pattern '^summary:\s*"?([^"\r\n]+)"?\s*$'
  $cladeTags = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'tags' -KeyName 'clade')
  $eventTags = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'tags' -KeyName 'event')
  $ecologyTags = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'tags' -KeyName 'ecology')
  $nodeKind = Get-NodeKind -Type $type -Id $id -TaxonKind $taxonKind

  $assetIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'assets' -KeyName 'featured_asset_ids')

  [pscustomobject]@{
    id = $id
    type = $type
    label = Get-SingleValue -Frontmatter $frontmatter -Pattern '^title_short:\s*"?([^"\r\n]+)"?\s*$'
    summary = $summary
    timelineGroup = $timelineGroup
    assetIds = @($assetIds)
    assets = @(Resolve-Assets -AssetIds $assetIds -AssetRegistry $assetRegistry)
    relatedIds = @(Get-ListValue -Frontmatter $frontmatter -SectionName 'relations' -KeyName 'related_ids')
    nodeKind = $nodeKind
    educationalFocus = @(Get-EducationalFocus -Type $type -Id $id -Summary $summary -CladeTags $cladeTags -EventTags $eventTags -EcologyTags $ecologyTags)
  }
}

$sortedItems = $items | Sort-Object -Property @{ Expression = 'nodeKind'; Ascending = $true }, @{ Expression = 'id'; Ascending = $true }
$nodeKinds = @($sortedItems | ForEach-Object { $_.nodeKind } | Sort-Object -Unique)
$types = @($sortedItems | ForEach-Object { $_.type } | Sort-Object -Unique)

$exportObject = [pscustomobject]@{
  meta = [pscustomobject]@{
    format = 'game-3d-nodes'
    version = '1.0'
    generatedAt = (Get-Date).ToUniversalTime().ToString('o')
    itemCount = $sortedItems.Count
    nodeKinds = $nodeKinds
    types = $types
  }
  items = @($sortedItems)
}

$exportObject | ConvertTo-Json -Depth 6 | Set-Content -LiteralPath $OutputPath -Encoding utf8
Write-Output "Exported game/3D payload with $($sortedItems.Count) items to $OutputPath"
