# 关系索引

本表用于显式记录资料库核心条目之间的主要关系。它不是正文互链的替代品，而是帮助把“谁连到谁、为什么连”固定成更稳定的结构层。

## 全时期时间骨架主线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `timeline.precambrian-overview` | `successor` | `timeline.cambrian` | 从前寒武纪进入显生宙开端 |
| `timeline.precambrian-overview` | `successor` | `timeline.paleozoic-overview` | 从前寒武纪总代进入古生代总代 |
| `timeline.paleozoic-overview` | `child` | `timeline.cambrian` | 古生代总代入口下的第一纪 |
| `timeline.cambrian` | `successor` | `timeline.ordovician` | 时间主轴下一纪 |
| `timeline.ordovician` | `successor` | `timeline.silurian` | 时间主轴下一纪 |
| `timeline.silurian` | `successor` | `timeline.devonian` | 时间主轴下一纪 |
| `timeline.devonian` | `successor` | `timeline.carboniferous` | 时间主轴下一纪 |
| `timeline.carboniferous` | `successor` | `timeline.permian` | 时间主轴下一纪 |
| `timeline.permian` | `related` | `timeline.permian-end-crisis` | 二叠纪时代页连向末期危机专题 |
| `timeline.permian` | `successor` | `timeline.triassic` | 古生代进入中生代 |
| `timeline.paleozoic-overview` | `child` | `timeline.ordovician` | 古生代总代入口下的纪级骨架 |
| `timeline.paleozoic-overview` | `child` | `timeline.silurian` | 古生代总代入口下的纪级骨架 |
| `timeline.paleozoic-overview` | `child` | `timeline.devonian` | 古生代总代入口下的纪级骨架 |
| `timeline.paleozoic-overview` | `child` | `timeline.carboniferous` | 古生代总代入口下的纪级骨架 |
| `timeline.paleozoic-overview` | `child` | `timeline.permian` | 古生代总代入口下的纪级骨架 |
| `timeline.paleozoic-overview` | `successor` | `timeline.mesozoic-overview` | 古生代总代进入中生代总代 |
| `timeline.mesozoic-overview` | `child` | `timeline.triassic` | 中生代总代入口下的第一纪 |
| `timeline.triassic` | `successor` | `timeline.jurassic` | 时间主轴下一纪 |
| `timeline.jurassic` | `successor` | `timeline.cretaceous` | 时间主轴下一纪 |
| `timeline.mesozoic-overview` | `child` | `timeline.jurassic` | 中生代总代入口下的纪级骨架 |
| `timeline.mesozoic-overview` | `child` | `timeline.cretaceous` | 中生代总代入口下的纪级骨架 |
| `timeline.mesozoic-overview` | `successor` | `timeline.cenozoic-overview` | 中生代总代进入新生代总代 |
| `timeline.cretaceous` | `successor` | `timeline.paleogene` | 中生代进入新生代 |
| `timeline.cenozoic-overview` | `child` | `timeline.paleogene` | 新生代总代入口下的第一纪 |
| `timeline.paleogene` | `successor` | `timeline.neogene` | 时间主轴下一纪 |
| `timeline.cenozoic-overview` | `child` | `timeline.neogene` | 新生代总代入口下的纪级骨架 |
| `timeline.neogene` | `successor` | `timeline.quaternary` | 时间主轴下一纪 |
| `timeline.cenozoic-overview` | `child` | `timeline.quaternary` | 新生代总代入口下的纪级骨架 |

## 前寒武纪主线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `timeline.precambrian-overview` | `successor` | `timeline.origin-of-life` | 从总控页进入起点页 |
| `timeline.origin-of-life` | `successor` | `clade.early-life` | 从起点页进入微生物主导背景 |
| `clade.early-life` | `successor` | `clade.eukaryotes` | 从微生物主导背景进入复杂细胞桥页 |
| `clade.eukaryotes` | `successor` | `clade.animals` | 从真核生物进入动物主线桥页 |
| `clade.early-life` | `successor` | `event.great-oxidation-event` | 从生物背景进入环境转折 |
| `timeline.origin-of-life` | `related` | `species-card.stromatolite-microbial-mats` | 从生命线索进入材料层证据 |
| `clade.early-life` | `related` | `species-card.stromatolite-microbial-mats` | 代表性结构证据卡 |
| `event.great-oxidation-event` | `related` | `species-card.stromatolite-microbial-mats` | 产氧微生物生态系统背景卡 |

## 类群主干桥线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `clade.eukaryotes` | `child` | `clade.plants` | 真核生物分出植物主线 |
| `clade.eukaryotes` | `child` | `clade.animals` | 真核生物分出动物主线 |
| `clade.animals` | `child` | `clade.invertebrates` | 动物主线中的无脊椎动物入口 |
| `clade.animals` | `child` | `clade.vertebrates` | 动物主线中的脊椎动物桥页 |
| `clade.vertebrates` | `child` | `clade.fishes` | 脊椎动物主线中的鱼类入口 |
| `clade.vertebrates` | `child` | `clade.amphibians` | 脊椎动物主线中的两栖类入口 |
| `clade.vertebrates` | `child` | `clade.amniotes` | 脊椎动物主线中的羊膜动物桥页 |
| `clade.amniotes` | `child` | `clade.reptiles` | 羊膜动物通向爬行动物主线 |
| `clade.amniotes` | `child` | `clade.mammals` | 羊膜动物通向哺乳类主线 |
| `clade.reptiles` | `child` | `clade.birds` | 爬行动物主线中接出鸟类支线 |
| `clade.amniotes` | `child` | `clade.synapsids` | 羊膜动物主线通向哺乳类前史桥页 |
| `clade.synapsids` | `successor` | `clade.mammals` | 从合弓类桥页进入哺乳类总览 |
| `clade.amniotes` | `child` | `clade.archosaurs` | 羊膜动物主线通向主龙类桥页 |
| `clade.archosaurs` | `successor` | `clade.birds` | 从主龙类桥页进入鸟类总览 |
| `clade.synapsids` | `related` | `timeline.permian` | 合弓类主线关键时间窗口 |
| `clade.synapsids` | `related` | `timeline.triassic` | 合弓类后段过渡窗口 |
| `clade.archosaurs` | `related` | `timeline.triassic` | 主龙类起步关键窗口 |
| `clade.archosaurs` | `related` | `timeline.jurassic` | 主龙类中生代展开窗口 |
| `clade.archosaurs` | `related` | `timeline.cretaceous` | 主龙类后段窗口 |

## 植物主线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `clade.plants` | `child` | `clade.early-land-plants` | 植物总览页下接植物登陆后的第一层桥页 |
| `clade.early-land-plants` | `successor` | `clade.vascular-plants` | 从植物登陆后的早期陆生阶段进入维管组织升级阶段 |
| `clade.vascular-plants` | `successor` | `clade.forest-formation` | 从结构升级进入森林化生态系统阶段 |
| `clade.forest-formation` | `successor` | `clade.seed-plants` | 从森林化进入种子策略主导的后段植物主线 |
| `clade.early-land-plants` | `related` | `event.plant-landfall` | 连接植物登陆事件页 |
| `clade.early-land-plants` | `related` | `timeline.silurian` | 对应植物登陆关键时间窗口 |
| `clade.vascular-plants` | `related` | `timeline.devonian` | 对应维管植物显著扩张窗口 |
| `clade.forest-formation` | `related` | `timeline.devonian` | 泥盆纪森林化背景 |
| `clade.forest-formation` | `related` | `timeline.carboniferous` | 石炭纪森林生态持续强化 |
| `clade.seed-plants` | `related` | `timeline.carboniferous` | 种子植物后段形成窗口 |
| `clade.seed-plants` | `related` | `timeline.permian` | 种子植物后段扩张关键时间窗口 |

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
