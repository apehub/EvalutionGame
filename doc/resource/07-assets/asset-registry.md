# 素材注册表

本表用于给素材分配稳定 `asset_id`，并记录挂接对象、来源、授权状态和使用角色。当前先作为 2.0 原型，后续可改为 JSON、YAML 或数据库表。

## 当前登记字段

- `asset_id`：素材稳定主键
- `asset_type`：素材类型
- `path`：目标素材主路径；当前占位阶段先写预留路径
- `preview_path`：预览图路径，暂无可写 `null`
- `format`：预计文件格式
- `license`：授权状态，当前占位阶段统一先写 `pending-check`
- `source_ref_id`：来源登记册中的来源 ID
- `credit_text`：署名或版权文字，当前未知可写 `待补`
- `related_entity_ids`：挂接到哪些正文条目
- `usage_roles`：该素材的展示用途
- `status`：当前素材状态
- `notes`：补充说明

## 当前占位素材

| asset_id | asset_type | path | preview_path | format | license | source_ref_id | credit_text | related_entity_ids | usage_roles | status | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| `asset.precambrian-overview.timeline-cover` | `timeline-visual` | `doc/resource/07-assets/precambrian/overview/timeline-cover.png` | `null` | `png` | `pending-check` | `source.ucmp-history-of-life` | `待补` | `timeline.precambrian-overview` | `cover` / `timeline-card` | `placeholder` | 待补前寒武纪总览图 |
| `asset.origin-of-life.diagram` | `diagram` | `doc/resource/07-assets/precambrian/origin-of-life/origin-model-diagram.png` | `null` | `png` | `pending-check` | `source.core-books` | `待补` | `timeline.origin-of-life` | `diagram-inline` | `placeholder` | 待补生命起源模型对照图 |
| `asset.early-life.clade-overview` | `diagram` | `doc/resource/07-assets/precambrian/early-life/clade-overview-diagram.png` | `null` | `png` | `pending-check` | `source.ucmp-history-of-life` | `待补` | `clade.early-life` | `cover` / `diagram-inline` | `placeholder` | 待补早期生命主线与证据类型概览图 |
| `asset.goe.redox-diagram` | `diagram` | `doc/resource/07-assets/precambrian/goe/redox-diagram.png` | `null` | `png` | `pending-check` | `source.core-books` | `待补` | `event.great-oxidation-event` | `diagram-inline` / `timeline-card` | `placeholder` | 待补氧化转折示意图 |
| `asset.stromatolite.reference-image` | `image` | `doc/resource/07-assets/precambrian/stromatolite/reference-image.png` | `null` | `png` | `pending-check` | `source.major-museums` | `待补` | `species-card.stromatolite-microbial-mats` | `cover` / `model-reference` | `placeholder` | 待补叠层石参考图 |
| `asset.cambrian.timeline-cover` | `timeline-visual` | `doc/resource/07-assets/paleozoic/cambrian/timeline-cover.png` | `null` | `png` | `pending-check` | `source.ucmp-history-of-life` | `待补` | `timeline.cambrian` | `cover` / `timeline-card` | `placeholder` | 待补寒武纪海洋生态总览图 |
| `asset.devonian.timeline-cover` | `timeline-visual` | `doc/resource/07-assets/paleozoic/devonian/timeline-cover.png` | `null` | `png` | `pending-check` | `source.ucmp-history-of-life` | `待补` | `timeline.devonian` | `cover` / `timeline-card` | `placeholder` | 待补泥盆纪海陆过渡总览图 |
| `asset.fishes.clade-overview` | `diagram` | `doc/resource/07-assets/paleozoic/fishes/clade-overview-diagram.png` | `null` | `png` | `pending-check` | `source.core-books` | `待补` | `clade.fishes` | `cover` / `diagram-inline` | `placeholder` | 待补鱼类主线分化示意图 |
| `asset.vertebrate-landfall.sequence-diagram` | `diagram` | `doc/resource/07-assets/paleozoic/vertebrate-landfall/sequence-diagram.png` | `null` | `png` | `pending-check` | `source.core-books` | `待补` | `event.vertebrate-landfall` | `diagram-inline` / `timeline-card` | `placeholder` | 待补肉鳍鱼到四足动物过渡序列图 |
| `asset.tiktaalik.reference-image` | `image` | `doc/resource/07-assets/paleozoic/tiktaalik/reference-image.png` | `null` | `png` | `pending-check` | `source.major-museums` | `待补` | `species-card.tiktaalik-roseae` | `cover` / `model-reference` | `placeholder` | 待补提塔利克鱼参考复原图 |
| `asset.ichthyostega.reference-image` | `image` | `doc/resource/07-assets/paleozoic/ichthyostega/reference-image.png` | `null` | `png` | `pending-check` | `source.major-museums` | `待补` | `species-card.ichthyostega` | `cover` / `model-reference` | `placeholder` | 待补鱼石螈参考复原图 |
