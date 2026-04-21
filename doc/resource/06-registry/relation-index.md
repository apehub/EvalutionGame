# 关系索引

本表用于显式记录资料库核心条目之间的主要关系。它不是正文互链的替代品，而是帮助把“谁连到谁、为什么连”固定成更稳定的结构层。

## 前寒武纪主线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `timeline.precambrian-overview` | `successor` | `timeline.origin-of-life` | 从总控页进入起点页 |
| `timeline.origin-of-life` | `successor` | `clade.early-life` | 从起点页进入微生物主导背景 |
| `clade.early-life` | `successor` | `event.great-oxidation-event` | 从生物背景进入环境转折 |
| `timeline.origin-of-life` | `related` | `species-card.stromatolite-microbial-mats` | 从生命线索进入材料层证据 |
| `clade.early-life` | `related` | `species-card.stromatolite-microbial-mats` | 代表性结构证据卡 |
| `event.great-oxidation-event` | `related` | `species-card.stromatolite-microbial-mats` | 产氧微生物生态系统背景卡 |

## 登陆主线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `timeline.devonian` | `related` | `clade.fishes` | 泥盆纪鱼类背景 |
| `timeline.devonian` | `related` | `clade.amphibians` | 泥盆纪四足动物后续支线背景 |
| `timeline.devonian` | `related` | `event.plant-landfall` | 泥盆纪陆地生态升级背景 |
| `timeline.devonian` | `related` | `event.vertebrate-landfall` | 登陆事件窗口 |
| `timeline.devonian` | `related` | `species-card.tiktaalik-roseae` | 泥盆纪过渡型代表卡 |
| `timeline.devonian` | `related` | `species-card.ichthyostega` | 泥盆纪早期四足动物代表卡 |
| `clade.fishes` | `successor` | `event.vertebrate-landfall` | 从鱼类主线进入登陆事件 |
| `clade.fishes` | `related` | `species-card.tiktaalik-roseae` | 过渡型代表卡 |
| `clade.fishes` | `related` | `species-card.ichthyostega` | 与四足动物过渡相关的后段代表卡 |
| `event.vertebrate-landfall` | `related` | `species-card.tiktaalik-roseae` | 登陆前段关键过渡证据 |
| `event.vertebrate-landfall` | `related` | `species-card.ichthyostega` | 登陆后段代表卡 |
| `species-card.tiktaalik-roseae` | `successor` | `species-card.ichthyostega` | 从鱼形过渡代表进入更接近四足动物的代表 |

## 中生代与哺乳类主线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `timeline.mesozoic-overview` | `related` | `clade.birds` | 中生代鸟类主线 |
| `timeline.mesozoic-overview` | `related` | `clade.mammals` | 中生代哺乳形类主线 |
| `clade.birds` | `related` | `species-card.archaeopteryx-lithographica` | 鸟类起源代表卡 |
| `clade.mammals` | `related` | `species-card.morganucodon` | 哺乳形类代表卡 |
| `timeline.cenozoic-overview` | `related` | `event.mammal-radiation` | 新生代哺乳类辐射 |
