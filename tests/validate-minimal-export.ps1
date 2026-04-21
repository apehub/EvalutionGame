param(
  [string]$ExportPath = "D:/WORKSPACE/Github/EvalutionGame/doc/resource/08-exports/minimal-timeline-export.json"
)

if (-not (Test-Path -LiteralPath $ExportPath)) {
  throw "Export file not found: $ExportPath"
}

$json = Get-Content -LiteralPath $ExportPath -Raw -Encoding utf8 | ConvertFrom-Json
if ($null -eq $json) {
  throw "Export JSON is empty"
}

if ($json -isnot [System.Collections.IEnumerable]) {
  throw "Export root must be an array"
}

$items = @($json)
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

if ($items.Count -lt $expectedIds.Count) {
  throw "Expected at least $($expectedIds.Count) exported items, got $($items.Count)"
}

foreach ($expectedId in $expectedIds) {
  $match = $items | Where-Object { $_.id -eq $expectedId }
  if (-not $match) {
    throw "Missing exported item: $expectedId"
  }
}

$requiredFields = @('id','type','title','titleShort','summary','startMa','endMa','precision','group','colorKey','relatedIds','featuredAssetIds','path')
foreach ($item in $items) {
  foreach ($field in $requiredFields) {
    if (-not $item.PSObject.Properties.Name.Contains($field)) {
      throw "Missing required field '$field' on item '$($item.id)'"
    }
  }
}

Write-Output "Export validation passed for $($items.Count) items."
