# 时间索引

本表用于把时间主轴、关键事件、代表卡片和支系页按时间窗口做统一索引。它服务于后续 HTML timeline、筛选器和排序逻辑。

## 使用原则

- 时间统一优先换算为 `Ma`。
- 若时间跨度很长，可用大范围表示，再由正文细化具体阶段。
- 时间索引不是正文，不负责展开完整解释。
- 首期时间骨架统一按“宙 -> 代 -> 纪”组织，必要时再向“世”细化。

## 首期骨架时间槽位

本节用于明确首期必须被时间骨架覆盖的主槽位，即使对应正文页尚未全部写完，也应先把时间位置固定下来。

| 层级 | 名称 | 建议条目 ID | 时间范围 |
| --- | --- | --- | --- |
| 宙 | 前寒武纪 | `timeline.precambrian-overview` | `4540-541 Ma` |
| 代 | 古生代 | `timeline.paleozoic-overview` | `541-252 Ma` |
| 纪 | 寒武纪 | `timeline.cambrian` | `541-485 Ma` |
| 纪 | 奥陶纪 | `timeline.ordovician` | `485-444 Ma` |
| 纪 | 志留纪 | `timeline.silurian` | `444-419 Ma` |
| 纪 | 泥盆纪 | `timeline.devonian` | `419-359 Ma` |
| 纪 | 石炭纪 | `timeline.carboniferous` | `359-299 Ma` |
| 纪 | 二叠纪 | `timeline.permian` | `299-252 Ma` |
| 代 | 中生代 | `timeline.mesozoic-overview` | `252-66 Ma` |
| 纪 | 三叠纪 | `timeline.triassic` | `252-201 Ma` |
| 纪 | 侏罗纪 | `timeline.jurassic` | `201-145 Ma` |
| 纪 | 白垩纪 | `timeline.cretaceous` | `145-66 Ma` |
| 代 | 新生代 | `timeline.cenozoic-overview` | `66-0 Ma` |
| 纪 | 古近纪 | `timeline.paleogene` | `66-23.03 Ma` |
| 纪 | 新近纪 | `timeline.neogene` | `23.03-2.58 Ma` |
| 纪 | 第四纪 | `timeline.quaternary` | `2.58-0 Ma` |

## 当前关键时间窗口

| 时间窗口 | 相关时间主轴 | 相关支系 | 相关事件 | 相关代表卡 |
| --- | --- | --- | --- | --- |
| `4540-541 Ma` | `timeline.precambrian-overview` | `clade.early-life` | `event.great-oxidation-event` | `species-card.stromatolite-microbial-mats` |
| `4400-3500 Ma` | `timeline.origin-of-life` | `clade.early-life` |  | `species-card.stromatolite-microbial-mats` |
| `2400-2000 Ma` | `timeline.precambrian-overview` | `clade.early-life` | `event.great-oxidation-event` | `species-card.stromatolite-microbial-mats` |
| `541-252 Ma` | `timeline.paleozoic-overview` | `clade.invertebrates` / `clade.fishes` / `clade.plants` / `clade.amphibians` / `clade.reptiles` | `event.cambrian-explosion` / `event.plant-landfall` / `event.vertebrate-landfall` / `event.mass-extinctions-overview` | `species-card.anomalocaris-canadensis` / `species-card.tiktaalik-roseae` / `species-card.ichthyostega` |
| `541-485 Ma` | `timeline.cambrian` | `clade.invertebrates` | `event.cambrian-explosion` | `species-card.anomalocaris-canadensis` / `species-card.trilobita-overview` |
| `485-444 Ma` | `timeline.ordovician` | `clade.invertebrates` / `clade.fishes` | `event.mass-extinctions-overview` |  |
| `444-419 Ma` | `timeline.silurian` | `clade.plants` / `clade.fishes` | `event.plant-landfall` |  |
| `419-359 Ma` | `timeline.devonian` | `clade.fishes` / `clade.amphibians` | `event.vertebrate-landfall` / `event.plant-landfall` | `species-card.tiktaalik-roseae` / `species-card.ichthyostega` |
| `359-299 Ma` | `timeline.carboniferous` | `clade.plants` / `clade.amphibians` / `clade.reptiles` | `event.vertebrate-landfall` |  |
| `299-252 Ma` | `timeline.permian` | `clade.reptiles` / `clade.mammals` | `event.mass-extinctions-overview` |  |
| `375-340 Ma` | `timeline.devonian` | `clade.fishes` / `clade.amphibians` | `event.vertebrate-landfall` | `species-card.tiktaalik-roseae` / `species-card.ichthyostega` |
| `365-360 Ma` | `timeline.devonian` | `clade.amphibians` | `event.vertebrate-landfall` | `species-card.ichthyostega` |
| `252-66 Ma` | `timeline.mesozoic-overview` | `clade.reptiles` / `clade.birds` / `clade.mammals` |  | `species-card.archaeopteryx-lithographica` / `species-card.morganucodon` |
| `66-0 Ma` | `timeline.cenozoic-overview` | `clade.mammals` / `clade.birds` | `event.mammal-radiation` |  |
