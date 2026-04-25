# 植物主线第二层骨架设计

## 目标

在现有 `plants.md` 总览页之下，补出一条按关键演化节点推进的第二层植物主干，让植物主线能够和已经完成的显生宙时间骨架稳定互锁，而不是继续停留在单一入口页。

本轮只做“桥页级骨架”，不进入过细的植物学分类拆分，不追求把植物全树一次铺满。

## 本轮范围

- 新增 4 个第二层植物桥页：
  - `early-land-plants.md`
  - `vascular-plants.md`
  - `forest-formation.md`
  - `seed-plants.md`
- 让这 4 页与 `plants.md` 构成连续主线。
- 把主线接入现有时间页、README 和 registry 索引。
- 在 `seed-plants.md` 中轻量提及被子植物兴起是后续展开方向，但本轮不单列新页。

## 不做的内容

- 不新增“被子植物”“裸子植物”独立页。
- 不把 `forest-formation` 写成严格系统发育意义上的自然类群。
- 不改写现有时间页的主体结构，只做必要互链和索引接入。
- 不引入新的私有标签体系。
- 不对接 PBDB 作为本轮实施驱动。

## 设计原则

- 按关键演化节点组织，而不是按完整植物分类系统组织。
- 优先保持和 `silurian`、`devonian`、`carboniferous`、`permian` 时间页的对位关系。
- 第二层页面首先承担“桥梁”职责，优先解释为什么这一层重要，再决定后续是否继续拆第三层。
- 使用现有资料库 2.0 frontmatter 结构，保证后续可索引、可脚本读取、可互链。

## 页面结构设计

### 1. `early-land-plants.md`

定位：植物登陆后的第一层桥页，用来解释从水生光合真核到早期陆地植物试探的关键过渡。

职责：

- 承接 `plants.md` 的总览叙事。
- 重点连接 `silurian.md` 和 `plant-landfall.md`。
- 强调失水、支撑、繁殖和近地表生境适应这些“登陆难题”。
- 不细拆苔藓类、角苔类、地钱类等系统分支。

### 2. `vascular-plants.md`

定位：植物主线中的结构升级桥页，用来解释输导系统、支撑能力和高度扩展为何改变陆地生态。

职责：

- 承接 `early-land-plants.md`。
- 重点连接 `devonian.md`。
- 强调维管组织、根系和更复杂体制带来的生态位扩张。
- 为后续森林化铺垫，而不是过早细分大量维管植物支线。

### 3. `forest-formation.md`

定位：资料组织型桥页，用来解释泥盆纪到石炭纪“森林化”如何成为地表系统的重大生态工程转折。

职责：

- 承接 `vascular-plants.md`。
- 重点连接 `devonian.md`、`carboniferous.md`。
- 突出森林生态形成对碳循环、土壤、食物网和陆地环境的系统性影响。
- 明确说明它是“生态-演化桥页”，不是严格分类学类群页。

### 4. `seed-plants.md`

定位：植物主线中的后段桥页，用来解释种子策略如何支持更稳定、更广泛的陆地扩张。

职责：

- 承接 `forest-formation.md`。
- 重点连接 `carboniferous.md`、`permian.md`，必要时轻触 `triassic.md`、`cretaceous.md`。
- 强调繁殖策略升级和环境适应扩展。
- 在正文后段点到裸子植物、被子植物会是后续第三层展开方向，但本轮不单列子页。

## 主线关系设计

本轮植物主干按以下顺序组织：

`clade.plants` -> `clade.early-land-plants` -> `clade.vascular-plants` -> `clade.forest-formation` -> `clade.seed-plants`

这条线的目标不是穷尽植物系统树，而是给资料库建立一条“能顺着读、能顺着接时间页、也能继续往下拆”的稳定中轴。

## 目录与索引接入

### `02-clades/README.md`

- 在 `plants.md` 下增加四个第二层桥页入口。
- 保持“先总览、再桥页、后细分”的说明方式。

### `06-registry/entity-index.md`

- 注册 4 个新 `clade` 条目。
- 状态统一先标为 `draft`。
- 备注明确其为“植物第二层桥页”或“植物生态桥页”。

### `06-registry/relation-index.md`

- 增加植物主线专门小节，显式写出 5 个节点之间的主干顺序。
- 补与 `event.plant-landfall` 的关键关联。
- 补与 `timeline.silurian`、`timeline.devonian`、`timeline.carboniferous`、`timeline.permian` 的关键关联。

### `06-registry/tag-index.md`

- 仅复用现有标签体系，不发明新私有标签。
- 主要复用：
  - `plants`
  - `silurian`
  - `devonian`
  - `carboniferous`
  - `permian`
  - `plant-landfall`
  - `terrestrial`
  - `photosynthesis`
- 若 `multicellularity` 或其他现有标签对个别页有帮助，可谨慎使用，但不强求全挂。

## frontmatter 约束

四个新页都使用统一 `clade` frontmatter，至少保证：

- `schema_version`
- `type`
- `id`
- `slug`
- `summary`
- `status`
- `naming.canonical_path`
- `tags`
- `relations`
- `time`
- `sources`
- `clade.rank_label`

其中：

- `forest-formation.md` 虽为生态-演化桥页，仍使用 `type: "clade"`，但 `phylo_status` 应明确写成组织性、非严格自然类群的口径。
- `seed-plants.md` 应保留继续向裸子植物 / 被子植物扩展的 `child` 预留思路，但当前不在索引里注册新的第三层页。

## 正文写法要求

- 每页都延续现有 `02-clades` 页面风格：
  - 基本信息
  - 类群概述
  - 关键特征
  - 演化历史
  - 研究意义
  - 可关联条目
  - 核心来源
  - 争议与说明
- 正文第一职责是解释“为什么这个节点值得单独设页”。
- 避免把桥页写成植物百科式堆砌。
- 避免一开始加入过多下级分类名词，导致主线失焦。

## 数据流与互链逻辑

- 从时间页进入：读者可从 `silurian.md` / `devonian.md` / `carboniferous.md` / `permian.md` 反向进入植物主线的对应桥页。
- 从类群页进入：读者可从 `plants.md` 顺着主干一路往后读。
- 从事件页进入：`plant-landfall.md` 主要回链到 `plants.md` 与 `early-land-plants.md`。
- 从后续扩展进入：未来若拆裸子植物、被子植物，可直接接在 `seed-plants.md` 之后，不必回头重做第二层结构。

## 风险与处理

### 风险 1：桥页变成分类学百科

处理：每页优先讲“结构升级”和“主线转折”，不优先讲所有下级支系。

### 风险 2：`forest-formation` 的条目类型显得别扭

处理：在 frontmatter 与正文都明确它是资料组织型桥页，承担生态系统转折说明职责，而不是严格自然类群。

### 风险 3：`seed-plants` 写得过深，提前侵入第三层

处理：只点出裸子植物、被子植物是后续展开方向，不在本轮再拆页和扩索引。

### 风险 4：与时间页关系过弱

处理：每页都必须显式挂接 1 到 2 个最相关时间页，避免类群主线脱离地质时间骨架。

## 验收标准

- 新增 4 个桥页后，`plants.md` 不再是孤立总览页，而是有明确下接主干。
- 主线可从 `plants.md` 连续读到 `seed-plants.md`。
- `README`、`entity-index`、`relation-index`、`tag-index` 全部完成接入。
- 每个桥页都能清楚说明自身为何单独成页。
- 本轮结束后，植物主线仍保持“可继续往第三层扩展”的开放结构。
