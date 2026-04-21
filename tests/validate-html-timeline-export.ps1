param(
  [string]$ExportPath = "D:/WORKSPACE/Github/EvalutionGame/doc/resource/08-exports/html-timeline-export.json"
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

$requiredMetaFields = @('format','version','generatedAt','itemCount','groups','types')
foreach ($field in $requiredMetaFields) {
  if (-not $meta.PSObject.Properties.Name.Contains($field)) {
    throw "Missing required meta field '$field'"
  }
}

if ($meta.format -ne 'html-timeline') {
  throw "Unexpected meta.format: $($meta.format)"
}

if ($meta.itemCount -ne $items.Count) {
  throw "meta.itemCount does not match items count"
}

$expectedIds = @(
  'timeline.origin-of-life',
  'timeline.precambrian-overview',
  'clade.early-life',
  'event.great-oxidation-event',
  'species-card.stromatolite-microbial-mats',
  'timeline.cambrian',
  'timeline.devonian',
  'clade.fishes',
  'event.vertebrate-landfall',
  'species-card.tiktaalik-roseae',
  'species-card.ichthyostega'
)

$requiredFields = @(
  'id','type','title','titleShort','summary','startMa','endMa','precision','group','colorKey',
  'sortKey','defaultView','chronoLabels','relatedIds','featuredAssetIds','assets','predecessorIds',
  'successorIds','parentIds','childIds','path'
)

foreach ($expectedId in $expectedIds) {
  $match = $items | Where-Object { $_.id -eq $expectedId }
  if (-not $match) {
    throw "Missing exported item: $expectedId"
  }
}

foreach ($item in $items) {
  foreach ($field in $requiredFields) {
    if (-not $item.PSObject.Properties.Name.Contains($field)) {
      throw "Missing required field '$field' on item '$($item.id)'"
    }
  }
}

$origin = $items | Where-Object { $_.id -eq 'timeline.origin-of-life' } | Select-Object -First 1
if ($origin.group -ne 'precambrian-mainline') {
  throw "timeline.origin-of-life group mismatch"
}
if ($origin.sortKey -ne 10) {
  throw "timeline.origin-of-life sortKey mismatch"
}
if (-not (@($origin.successorIds) -contains 'clade.early-life')) {
  throw "timeline.origin-of-life successorIds missing clade.early-life"
}
if (@($origin.assets).Count -lt 1) {
  throw "timeline.origin-of-life assets should contain resolved asset metadata"
}
$originAsset = @($origin.assets) | Select-Object -First 1
$assetFields = @('assetId','assetType','path','previewPath','format','license','sourceRefId','creditText','status','usageRoles','notes')
foreach ($field in $assetFields) {
  if (-not $originAsset.PSObject.Properties.Name.Contains($field)) {
    throw "timeline.origin-of-life asset metadata missing field '$field'"
  }
}
if ($originAsset.assetId -ne 'asset.origin-of-life.diagram') {
  throw "timeline.origin-of-life first assetId mismatch"
}

$stromatolite = $items | Where-Object { $_.id -eq 'species-card.stromatolite-microbial-mats' } | Select-Object -First 1
if ($stromatolite.group -ne 'precambrian-evidence') {
  throw "species-card.stromatolite-microbial-mats group mismatch"
}
if ((@($stromatolite.assets) | Select-Object -First 1).path -ne 'doc/resource/07-assets/precambrian/stromatolite/reference-image.png') {
  throw "species-card.stromatolite-microbial-mats resolved asset path mismatch"
}

Write-Output "HTML timeline export validation passed for $($items.Count) items."
