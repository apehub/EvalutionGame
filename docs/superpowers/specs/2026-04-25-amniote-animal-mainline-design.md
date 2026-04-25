# 羊膜动物后段主线骨架设计

## 目标

在现有 `amniotes.md` 之下，只补两张浅层桥页，把羊膜动物后段主线中最重要的两条方向接顺：

- `synapsids.md`
- `archosaurs.md`

目标不是把动物系统树铺深，而是让资料库能够用最少层级讲清楚：一条线如何通向哺乳类前史，另一条线如何通向主龙类、恐龙与鸟类前史。

## 本轮范围

- 新增 2 个第二层动物桥页：
  - `synapsids.md`
  - `archosaurs.md`
- 让它们与现有 `amniotes.md`、`reptiles.md`、`birds.md`、`mammals.md` 构成更清楚的主干关系。
- 把这两页接入 `02-clades/README.md`、`entity-index.md`、`relation-index.md`、`tag-index.md`。
- 文件名采用较稳的系统口径，正文写法尽量通俗，不写成硬分类表。

## 不做的内容

- 不继续深拆为更多层级页面。
- 不单独新增“恐龙总览”“合弓类细分树”“兽孔类细分页”等第三层条目。
- 不把 `archosaurs.md` 写成恐龙专题页。
- 不把 `synapsids.md` 写成完整哺乳型类演化百科。
- 不大改现有 `reptiles.md`、`birds.md`、`mammals.md` 正文结构，只做必要接线。

## 设计原则

- 只保留最值当的两座桥：一座通向哺乳类前史，一座通向主龙类与鸟类前史。
- 文件名偏系统口径，便于后续扩展和索引稳定。
- 正文优先解释“为什么这页值得存在”，而不是堆下级类群名。
- 所有新页都必须能直接挂回 `amniotes.md`，并与相关时间页建立清晰互链。

## 页面结构设计

### 1. `synapsids.md`

定位：羊膜动物后段主线中的桥页，用于解释合弓类为何是哺乳类前史的关键上游。

职责：

- 承接 `amniotes.md`。
- 与 `permian.md`、`triassic.md` 建立重点连接。
- 用通俗写法解释“合弓类不是哺乳类本身，但它是通向哺乳类主线的关键阶段”。
- 下游主要接向 `mammals.md`，不再额外深拆。

### 2. `archosaurs.md`

定位：羊膜动物后段主线中的桥页，用于解释主龙类为何是中生代大型爬行动物、恐龙与鸟类前史的关键上游。

职责：

- 承接 `amniotes.md` 与现有 `reptiles.md` 的主线背景。
- 与 `triassic.md`、`jurassic.md`、`cretaceous.md` 建立重点连接。
- 用通俗写法解释“主龙类不是恐龙专题页，但它是后续恐龙 / 鸟类主线的重要桥”。
- 下游主要接向 `birds.md`，并与 `reptiles.md` 保持并行互链。

## 主线关系设计

本轮动物后段主线按以下方式补强：

`clade.amniotes` -> `clade.synapsids` -> `clade.mammals`

`clade.amniotes` -> `clade.archosaurs` -> `clade.birds`

同时：

- `clade.archosaurs` 与 `clade.reptiles` 保持强关联，因为当前库里 `reptiles.md` 仍承担较广的爬行动物主线入口。
- `clade.synapsids` 与 `clade.mammals` 保持强关联，因为这页的主要存在价值就是把“哺乳类前史”补成一条可走的主线。

## 目录与索引接入

### `02-clades/README.md`

- 在动物主线区域加入两页：
  - `synapsids.md`
  - `archosaurs.md`
- 保持“先主干桥页，再细分总览”的目录节奏。

### `06-registry/entity-index.md`

- 注册 2 个新的 `clade` 条目。
- 状态先标为 `draft`。
- 备注分别说明其为“哺乳类前史桥页”和“主龙类桥页”。

### `06-registry/relation-index.md`

- 在类群主干桥线中补上：
  - `amniotes -> synapsids`
  - `synapsids -> mammals`
  - `amniotes -> archosaurs`
  - `archosaurs -> birds`
- 视需要补与 `reptiles` 的横向关系。
- 补与 `permian`、`triassic`、`jurassic`、`cretaceous` 的关键关联。

### `06-registry/tag-index.md`

只复用现有标签体系，不新增私有标签。优先复用：

- `reptiles`
- `birds`
- `mammals`
- `permian`
- `triassic`
- `jurassic`
- `cretaceous`
- `terrestrial`
- `amniotic-egg`

如果后续确实需要新增 `synapsids` 或 `archosaurs` 标签，应放到后续统一标签扩充里再讨论，本轮先不发明新标签。

## frontmatter 约束

两页都使用统一 `clade` frontmatter，至少保证：

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

并且：

- `synapsids.md` 用 `clade.rank_label: "主干桥梁页"`
- `archosaurs.md` 用 `clade.rank_label: "主干桥梁页"`
- 两页都可用 `phylo_status: "informal"`，以适配当前库里桥页口径

## 正文写法要求

- 延续现有 `02-clades` 页面结构：
  - 基本信息
  - 类群概述
  - 关键特征
  - 演化历史
  - 研究意义
  - 可关联条目
  - 核心来源
  - 争议与说明
- 文件名可以偏系统，但正文必须尽量通俗。
- 不要把正文写成系统发育术语堆砌。
- 每页都要回答一句话：这页为什么是后续哺乳类 / 鸟类主线不可跳过的一站。

## 风险与处理

### 风险 1：层次不受控，继续往下深拆

处理：本轮只允许 2 页，不再新增第三层页面。

### 风险 2：`archosaurs.md` 写成恐龙专题页

处理：正文只强调主龙类作为桥页的角色，不展开恐龙内部支系。

### 风险 3：`synapsids.md` 写成完整哺乳型类百科

处理：正文只讲它为何是哺乳类前史桥页，不讲完整细分树。

### 风险 4：和现有 `reptiles.md`、`birds.md`、`mammals.md` 角色冲突

处理：新页优先承担“主线桥接”职责，现有页继续承担更宽泛的总览职责。

## 验收标准

- `amniotes.md` 下面有了两条清楚、浅层的后段动物主线。
- 读者可以从 `amniotes.md` 顺着桥页走到 `mammals.md` 和 `birds.md`。
- 没有额外深拆出更多动物页面。
- README 和 registry 已完成接线。
- 两页正文都更像“桥页解释”，而不是“分类词典”。
