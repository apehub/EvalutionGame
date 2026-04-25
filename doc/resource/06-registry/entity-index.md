# 实体注册表

本表用于给资料库条目分配稳定 `id`、记录条目类型、路径与状态。它是资料库 2.0 的最小注册表原型，后续可继续扩成可脚本读取的 JSON 或 SQLite。

## 字段说明

- `id`：全库稳定主键
- `type`：条目类型
- `path`：当前正文或工具主路径
- `status`：`draft` / `active` / `review`
- `notes`：迁移说明或特殊备注

## 正文条目

| id | type | path | status | notes |
| --- | --- | --- | --- | --- |
| `timeline.origin-of-life` | `timeline` | `doc/resource/01-timeline/origin-of-life.md` | `active` | 前寒武纪起点主轴页 |
| `timeline.precambrian-overview` | `timeline` | `doc/resource/01-timeline/precambrian-overview.md` | `active` | 前寒武纪总控页 |
| `timeline.paleozoic-overview` | `timeline` | `doc/resource/01-timeline/paleozoic-overview.md` | `draft` | 古生代总代入口页 |
| `timeline.cambrian` | `timeline` | `doc/resource/01-timeline/cambrian.md` | `active` | 寒武纪主轴页 |
| `timeline.ordovician` | `timeline` | `doc/resource/01-timeline/ordovician.md` | `draft` | 奥陶纪纪级骨架页 |
| `timeline.silurian` | `timeline` | `doc/resource/01-timeline/silurian.md` | `draft` | 志留纪纪级骨架页 |
| `timeline.devonian` | `timeline` | `doc/resource/01-timeline/devonian.md` | `active` | 泥盆纪主轴页 |
| `timeline.carboniferous` | `timeline` | `doc/resource/01-timeline/carboniferous.md` | `draft` | 石炭纪纪级骨架页 |
| `timeline.permian` | `timeline` | `doc/resource/01-timeline/permian.md` | `draft` | 二叠纪纪级骨架页 |
| `timeline.permian-end-crisis` | `timeline` | `doc/resource/01-timeline/permian-end-crisis.md` | `active` | 二叠纪末危机主轴页 |
| `timeline.mesozoic-overview` | `timeline` | `doc/resource/01-timeline/mesozoic-overview.md` | `active` | 中生代总览页 |
| `timeline.triassic` | `timeline` | `doc/resource/01-timeline/triassic.md` | `draft` | 三叠纪纪级骨架预留位 |
| `timeline.jurassic` | `timeline` | `doc/resource/01-timeline/jurassic.md` | `draft` | 侏罗纪纪级骨架预留位 |
| `timeline.cretaceous` | `timeline` | `doc/resource/01-timeline/cretaceous.md` | `draft` | 白垩纪纪级骨架预留位 |
| `timeline.cenozoic-overview` | `timeline` | `doc/resource/01-timeline/cenozoic-overview.md` | `active` | 新生代总览页 |
| `timeline.paleogene` | `timeline` | `doc/resource/01-timeline/paleogene.md` | `draft` | 古近纪纪级骨架预留位 |
| `timeline.neogene` | `timeline` | `doc/resource/01-timeline/neogene.md` | `draft` | 新近纪纪级骨架预留位 |
| `timeline.quaternary` | `timeline` | `doc/resource/01-timeline/quaternary.md` | `draft` | 第四纪纪级骨架预留位 |
| `clade.early-life` | `clade` | `doc/resource/02-clades/early-life.md` | `active` | 前寒武纪中段支系页 |
| `clade.plants` | `clade` | `doc/resource/02-clades/plants.md` | `active` | 植物主线 |
| `clade.invertebrates` | `clade` | `doc/resource/02-clades/invertebrates.md` | `active` | 无脊椎动物主线 |
| `clade.fishes` | `clade` | `doc/resource/02-clades/fishes.md` | `active` | 鱼类主线 |
| `clade.amphibians` | `clade` | `doc/resource/02-clades/amphibians.md` | `active` | 两栖类主线 |
| `clade.reptiles` | `clade` | `doc/resource/02-clades/reptiles.md` | `active` | 爬行动物主线 |
| `clade.birds` | `clade` | `doc/resource/02-clades/birds.md` | `active` | 鸟类主线 |
| `clade.mammals` | `clade` | `doc/resource/02-clades/mammals.md` | `active` | 哺乳类主线 |
| `event.great-oxidation-event` | `event` | `doc/resource/03-events/great-oxidation-event.md` | `active` | 前寒武纪环境转折桥页 |
| `event.cambrian-explosion` | `event` | `doc/resource/03-events/cambrian-explosion.md` | `active` | 寒武纪大爆发 |
| `event.plant-landfall` | `event` | `doc/resource/03-events/plant-landfall.md` | `active` | 植物登陆 |
| `event.vertebrate-landfall` | `event` | `doc/resource/03-events/vertebrate-landfall.md` | `active` | 脊椎动物登陆 |
| `event.mass-extinctions-overview` | `event` | `doc/resource/03-events/mass-extinctions-overview.md` | `active` | 大灭绝总览 |
| `event.mammal-radiation` | `event` | `doc/resource/03-events/mammal-radiation.md` | `active` | 哺乳类辐射 |
| `species-card.stromatolite-microbial-mats` | `species-card` | `doc/resource/04-species-cards/stromatolite-microbial-mats.md` | `active` | 结构型代表卡 |
| `species-card.anomalocaris-canadensis` | `species-card` | `doc/resource/04-species-cards/anomalocaris-canadensis.md` | `active` | 寒武纪代表卡 |
| `species-card.trilobita-overview` | `species-card` | `doc/resource/04-species-cards/trilobita-overview.md` | `active` | 总览型物种卡 |
| `species-card.tiktaalik-roseae` | `species-card` | `doc/resource/04-species-cards/tiktaalik-roseae.md` | `active` | 过渡型代表卡 |
| `species-card.ichthyostega` | `species-card` | `doc/resource/04-species-cards/ichthyostega.md` | `active` | 四足动物代表卡 |
| `species-card.archaeopteryx-lithographica` | `species-card` | `doc/resource/04-species-cards/archaeopteryx-lithographica.md` | `active` | 鸟类起源代表卡 |
| `species-card.morganucodon` | `species-card` | `doc/resource/04-species-cards/morganucodon.md` | `active` | 早期哺乳形类代表卡 |

## 来源与工具条目

| id | type | path | status | notes |
| --- | --- | --- | --- | --- |
| `source-tool.web-authoritative` | `source-tool` | `doc/resource/05-sources/web-authoritative.md` | `active` | 权威网络来源入口 |
| `source-tool.books-core` | `source-tool` | `doc/resource/05-sources/books-core.md` | `active` | 核心书目入口 |
| `source-tool.source-registry` | `source-tool` | `doc/resource/06-registry/source-registry.md` | `active` | 高频来源登记册 |
| `source-tool.frontmatter-schema` | `source-tool` | `doc/resource/00-index/frontmatter-schema.md` | `active` | 2.0 schema 规范 |
| `source-tool.library-2.0-architecture` | `source-tool` | `doc/resource/00-index/library-2.0-architecture.md` | `active` | 2.0 架构说明 |
