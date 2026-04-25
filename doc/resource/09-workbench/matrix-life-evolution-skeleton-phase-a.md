# 生命演化骨架阶段 A 执行矩阵

本表用于把“阶段 A：全时期骨架定型”拆成一组可直接推进的任务块，避免第一轮同时扩写时间页、支系页、事件页和代表卡。

## 阶段目标

阶段 A 只解决三件事：

- 时间层级统一
- 纪级页面补齐顺序明确
- 代级页和纪级页的互链职责固定

## A 阶段任务块

### 任务块 1：统一时间层级

- 统一采用“宙 -> 代 -> 纪”为首期主骨架
- 首期不要求系统性下钻到“世”
- 所有时间范围统一优先使用 `Ma`
- 所有纪级页面都要能映射回其所属代级与全时期主线

### 任务块 2：补齐缺失纪级页面名单

首批待补纪级页面：

- 古生代：`ordovician.md`、`silurian.md`、`carboniferous.md`、`permian.md`
- 中生代：`triassic.md`、`jurassic.md`、`cretaceous.md`
- 新生代：`paleogene.md`、`neogene.md`、`quaternary.md`

这些页面的共同职责不是铺百科，而是回答：

- 这一纪在全局生命史中的位置是什么
- 它连接前后哪几个关键阶段
- 这一纪最应先连回哪些支系页和事件页

### 任务块 3：修正现有时间页的上下位关系

首批需要同步修正互链提示的现有页面：

- `precambrian-overview.md`
- `cambrian.md`
- `devonian.md`
- `permian-end-crisis.md`
- `mesozoic-overview.md`
- `cenozoic-overview.md`

修正目标：

- 每页都能说明自己是总代入口、纪级入口，还是专题事件节点
- 每页都能指出前一跳和后一跳
- 专题页不能伪装成时代总览页

### 任务块 4：建立时间骨架检查表

每个纪级页面在创建或补写时至少检查以下内容：

1. 是否写清所属代级与上一纪、下一纪
2. 是否给出 `time.start_ma` 与 `time.end_ma`
3. 是否列出 `timeline.major_clade_ids`
4. 是否列出 `timeline.major_event_ids`
5. 是否把代表卡控制在“少量例子”而非堆名单
6. 是否把支系细节留给 `02-clades/`

## 推荐推进顺序

### 第一轮

- `ordovician.md`
- `silurian.md`
- `carboniferous.md`
- `permian.md`

目标：先让古生代接近连续主轴。

### 第二轮

- `triassic.md`
- `jurassic.md`
- `cretaceous.md`

目标：把中生代从总代总览拆成清晰三段。

### 第三轮

- `paleogene.md`
- `neogene.md`
- `quaternary.md`

目标：让现代生态与人类相关主线有稳定时间底盘。

### 并行修正

每补完一轮纪级页面，都应回头修正对应总代页和相邻旧页面的互链说明。

## 与 registry 的配合

阶段 A 虽然以时间页为主，但必须同步满足这些最小登记要求：

- 新页先登记到 `entity-index.md`
- 新页补进 `timeline-index.md`
- 若形成新主线关系，补进 `relation-index.md`
- 若引入新时间标签，补进 `tag-index.md`

## A 阶段完成标准

阶段 A 完成时，应达到以下状态：

- 从前寒武纪到第四纪的时间主线已经连续
- 代级页与纪级页的分工不再混乱
- 新增时间页有统一字段和统一写法
- 后续阶段 B、C、D 可以在稳定时间底盘上继续推进
