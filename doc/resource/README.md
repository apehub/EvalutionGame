# 地球生命演化资料库

这是一套面向“从生命起源到现代生物”的长期资料档案骨架，目标是为后续研究、写作、素材整理与游戏前期考据提供稳定的知识底座。

当前版本进入“资料库 2.0 重构”阶段：继续保留 Markdown 作为正文载体，同时补入结构化索引层、素材层和导出层预留，以提高扩展、维护、检索和后续多端消费效率。

## 目录总览

- `00-index/`：总索引、命名规范、标签体系、地质年代骨架、资料库 2.0 架构与 schema 说明
- `01-timeline/`：按地质年代整理的时间主轴正文
- `02-clades/`：按演化支系整理的类群正文
- `03-events/`：关键演化事件、环境转折与大灭绝正文
- `04-species-cards/`：代表物种、过渡类型与结构型案例正文
- `05-sources/`：来源入口层，收纳权威网络来源、核心书目与当前仍在过渡中的来源相关文档
- `06-registry/`：结构化登记层，收纳实体注册表、时间索引、标签索引和关系索引
- `07-assets/`：素材资产层，预留图片、图示、模型、时间轴素材与版权登记
- `08-exports/`：导出层，预留 HTML timeline、游戏、3D 展示等消费格式说明
- `09-workbench/`：研究与写作辅助层，承接核查清单、矩阵、问句入口与专题工作台工具
- `templates/`：正文模板与 source-tool 模板

## 2.0 架构原则

### 正文层继续保留 Markdown

- `01-04` 四层正文目录继续承担主要叙述内容。
- 页面主体仍以人类可读性和长期写作为优先。

### 结构层逐步独立

- 条目身份、互链关系、时间范围、素材挂接等信息，逐步从正文列表转入统一 frontmatter 与 registry。
- `00-index/` 负责规则和总导航，`06-registry/` 负责可计算索引。

### 素材与导出预留单独目录

- 图片、示意图、模型和时间轴素材不再散落到正文目录。
- 面向 HTML timeline、游戏、3D 展示的可消费数据，统一从 `08-exports/` 规划。

## 使用顺序

1. 先读 `00-index/README.md`，理解命名、标签、年代边界与 2.0 架构。
2. 若要看正文内容：时间问题优先查 `01-timeline/`，类群问题优先查 `02-clades/`。
3. 若要看关键机制与环境转折：优先查 `03-events/`。
4. 若要看代表案例与可视化对象：优先查 `04-species-cards/`。
5. 若要找资料来源：优先查 `05-sources/`。
6. 若要做结构化查询、注册或互链校验：优先查 `06-registry/`。
7. 若要为图片、模型、时间轴素材挂接做准备：优先查 `07-assets/` 与 `08-exports/`。
8. 若要做写作辅助、核查或主题入口反查：优先查 `09-workbench/`。

## 当前阶段

当前版本已从“纯骨架”推进到“首批正文落地 + 前寒武纪工具层补强”阶段，已经补入以下代表条目：

- 时间主轴：`origin-of-life.md`、`precambrian-overview.md`、`cambrian.md`、`devonian.md`
- 演化支系：`early-life.md`、`plants.md`、`invertebrates.md`、`fishes.md`
- 关键事件：`great-oxidation-event.md`、`cambrian-explosion.md`、`plant-landfall.md`、`vertebrate-landfall.md`
- 代表卡片：`stromatolite-microbial-mats.md`、`anomalocaris-canadensis.md`、`trilobita-overview.md`、`tiktaalik-roseae.md`、`ichthyostega.md`

当前版本已进一步补入第二批主线条目：

- 时间主轴：`permian-end-crisis.md`、`mesozoic-overview.md`、`cenozoic-overview.md`
- 演化支系：`amphibians.md`、`reptiles.md`、`birds.md`、`mammals.md`
- 关键事件：`mass-extinctions-overview.md`、`mammal-radiation.md`
- 代表卡片：`archaeopteryx-lithographica.md`、`morganucodon.md`

## 后续推进顺序

1. 先补齐全库统一元数据和 registry 骨架。
2. 再以前寒武纪主线做第一批结构化迁移样本。
3. 然后推广到全库正文与工具层。
4. 最后补资产挂接和导出格式，为 HTML timeline、游戏和 3D 展示做准备。
