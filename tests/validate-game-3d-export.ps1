param(
  [string]$ExportPath = "D:/WORKSPACE/Github/EvalutionGame/doc/resource/08-exports/game-3d-nodes.json"
)

if (-not (Test-Path -LiteralPath $ExportPath)) {
  throw "Export file not found: $ExportPath"
}

$json = Get-Content -LiteralPath $ExportPath -Raw -Encoding utf8 | ConvertFrom-Json
if ($null -eq $json) {
  throw "Export JSON is empty"
}

if (-not $json.PSObject.Properties.Name.Contains('meta')) {
  throw "Export root must contain meta"
}

if (-not $json.PSObject.Properties.Name.Contains('items')) {
  throw "Export root must contain items"
}

$meta = $json.meta
$items = @($json.items)
if ($items.Count -lt 11) {
  throw "Expected at least 11 exported items, got $($items.Count)"
}

$requiredMetaFields = @('format','version','generatedAt','itemCount','nodeKinds','types')
foreach ($field in $requiredMetaFields) {
  if (-not $meta.PSObject.Properties.Name.Contains($field)) {
    throw "Missing required meta field '$field'"
  }
}

if ($meta.format -ne 'game-3d-nodes') {
  throw "Unexpected meta.format: $($meta.format)"
}

if ($meta.itemCount -ne $items.Count) {
  throw "meta.itemCount does not match items count"
}

$requiredFields = @(
  'id','type','label','summary','timelineGroup','assetIds','assets','relatedIds','nodeKind','educationalFocus'
)
foreach ($item in $items) {
  foreach ($field in $requiredFields) {
    if (-not $item.PSObject.Properties.Name.Contains($field)) {
      throw "Missing required field '$field' on item '$($item.id)'"
    }
  }
}

$stromatolite = $items | Where-Object { $_.id -eq 'species-card.stromatolite-microbial-mats' } | Select-Object -First 1
if (-not $stromatolite) {
  throw 'Missing species-card.stromatolite-microbial-mats'
}
if ($stromatolite.nodeKind -ne 'evidence-card') {
  throw 'species-card.stromatolite-microbial-mats should export as evidence-card'
}
if (-not (@($stromatolite.educationalFocus) -contains '材料层证据')) {
  throw 'species-card.stromatolite-microbial-mats educationalFocus missing 材料层证据'
}
if (@($stromatolite.assets).Count -lt 1) {
  throw 'species-card.stromatolite-microbial-mats assets should contain resolved metadata'
}
$stromAsset = @($stromatolite.assets) | Select-Object -First 1
if ($stromAsset.assetId -ne 'asset.stromatolite.reference-image') {
  throw 'species-card.stromatolite-microbial-mats first assetId mismatch'
}
if ($stromAsset.license -ne 'pending-check') {
  throw 'species-card.stromatolite-microbial-mats asset license mismatch'
}

$tiktaalik = $items | Where-Object { $_.id -eq 'species-card.tiktaalik-roseae' } | Select-Object -First 1
if (-not $tiktaalik) {
  throw 'Missing species-card.tiktaalik-roseae'
}
if ($tiktaalik.nodeKind -ne 'species-node') {
  throw 'species-card.tiktaalik-roseae should export as species-node'
}
if (-not (@($tiktaalik.educationalFocus) -contains '过渡型证据')) {
  throw 'species-card.tiktaalik-roseae educationalFocus missing 过渡型证据'
}

$fishes = $items | Where-Object { $_.id -eq 'clade.fishes' } | Select-Object -First 1
if ($fishes.nodeKind -ne 'clade-node') {
  throw 'clade.fishes should export as clade-node'
}

$landfall = $items | Where-Object { $_.id -eq 'event.vertebrate-landfall' } | Select-Object -First 1
if ($landfall.nodeKind -ne 'event-node') {
  throw 'event.vertebrate-landfall should export as event-node'
}
if ((@($landfall.assets) | Select-Object -First 1).sourceRefId -ne 'source.core-books') {
  throw 'event.vertebrate-landfall resolved asset sourceRefId mismatch'
}

Write-Output "Game/3D export validation passed for $($items.Count) items."
