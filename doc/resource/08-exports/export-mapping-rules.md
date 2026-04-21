# 结构化导出映射说明

本文件定义资料库 2.0 如何从正文 `frontmatter` 与 registry / asset 层，稳定导出为 HTML timeline JSON 与 game / 3D node JSON。

目标不是立即绑定某一种脚本实现，而是先把“字段从哪里来、如何变形、缺值时怎么处理”固定下来，避免后续每个消费端各自重新解释 Markdown。

## 设计原则

- 正文只负责叙述与解释，导出优先读取 `frontmatter`
- registry 负责补充时间、标签、关系等反向索引能力
- asset 层负责提供 `asset_id`、路径、授权和来源信息
- 导出层不直接解析长段正文结构，只取必要摘要字段
- 同一条目可导出为多个消费对象，但应保持同一个 `id`

## 总体数据来源顺序

### HTML timeline

优先读取顺序：

1. 正文 `frontmatter`
2. `06-registry/relation-index.md` 中的稳定关系
3. `07-assets/asset-registry.md` 中的素材元信息

### 游戏 / 3D 节点

优先读取顺序：

1. 正文 `frontmatter`
2. `07-assets/asset-registry.md`
3. `06-registry/relation-index.md`
4. 必要时参考 `tag-index.md` 生成教育焦点关键词

## Frontmatter 到 HTML Timeline JSON 的映射

### 基础字段

| HTML timeline 字段 | 来源 | 说明 |
| --- | --- | --- |
| `id` | `id` | 直接映射 |
| `type` | `type` | 直接映射 |
| `title` | `title.zh-CN` | 当前中文为主 |
| `titleShort` | `title_short` | 卡片或节点短标题 |
| `summary` | `summary` | 一句话摘要 |
| `startMa` | `time.start_ma` | 直接映射 |
| `endMa` | `time.end_ma` | 直接映射 |
| `precision` | `time.precision` | 直接映射 |
| `group` | `render.timeline_group` | 时间轴泳道分组 |
| `colorKey` | `render.color_key` | 前端配色分组键 |
| `relatedIds` | `relations.related_ids` | 横向关联条目 |
| `featuredAssetIds` | `assets.featured_asset_ids` | 仅保留素材 ID |
| `path` | `naming.canonical_path` | 正文路径 |

### 补充建议字段

如果消费端需要更强的导航与排序，允许继续导出：

- `sortKey` <- `render.sort_key`
- `defaultView` <- `render.default_view`
- `chronoLabels` <- `time.chrono_labels`
- `predecessorIds` <- `relations.predecessor_ids`
- `successorIds` <- `relations.successor_ids`
- `parentIds` <- `relations.parent_ids`
- `childIds` <- `relations.child_ids`

## Frontmatter 到 Game / 3D Node JSON 的映射

### 基础字段

| game / 3D 字段 | 来源 | 说明 |
| --- | --- | --- |
| `id` | `id` | 直接映射 |
| `type` | `type` | 直接映射 |
| `label` | `title_short` | UI 节点短标签 |
| `summary` | `summary` | 节点简述 |
| `timelineGroup` | `render.timeline_group` | 节点所在主线组 |
| `assetIds` | `assets.featured_asset_ids` | 挂接素材 ID |
| `relatedIds` | `relations.related_ids` | 邻接节点 |
| `nodeKind` | 派生字段 | 见下文 |
| `educationalFocus` | 派生字段 | 见下文 |

### `nodeKind` 派生规则

默认映射：

- `timeline` -> `timeline-node`
- `clade` -> `clade-node`
- `event` -> `event-node`
- `species-card` -> `species-node`
- `source-tool` -> `source-node`

例外规则：

- 如果 `type = species-card` 且 `species_card.taxon_kind = trace/community-card`，优先导出为 `evidence-card`
- 如果条目本身更接近材料层证据对象，而不是单一生物节点，也优先导出为 `evidence-card`

当前明确适用：

- `species-card.stromatolite-microbial-mats` -> `evidence-card`
- `species-card.tiktaalik-roseae` -> `species-node`
- `species-card.ichthyostega` -> `species-node`

### `educationalFocus` 派生规则

第一阶段不强制在 frontmatter 中单独建字段，允许从以下来源组合派生：

1. `summary`
2. `tags.clade` / `tags.event` / `tags.ecology`
3. 类型专属字段
4. 个别条目的已知定位规则

推荐派生方式：

- `timeline`：强调时代背景、生态转型、时间窗口
- `clade`：强调系统位置、关键衍征、长期主线
- `event`：强调转折机制、影响范围、证据类型
- `species-card`：强调代表性、过渡意义、材料层价值

例如：

- `timeline.origin-of-life` -> `环境上限` / `生命起点` / `起源模型`
- `clade.early-life` -> `微生物主导` / `环境改造` / `复杂生命前提`
- `event.great-oxidation-event` -> `环境转折` / `氧化过程` / `地球化学证据`
- `species-card.stromatolite-microbial-mats` -> `材料层证据` / `微生物生态系统` / `环境改造背景`
- `species-card.tiktaalik-roseae` -> `过渡型证据` / `鳍骨到肢体` / `登陆前段`

## registry 与 asset 层在导出中的作用

### relation-index 的作用

如果某些消费端需要稳定的邻接边，可以把 `relation-index.md` 视为 `relations.*` 的外部校验层：

- frontmatter 是条目自带关系
- relation-index 是全局显式关系
- 两者冲突时，优先以正文 frontmatter 为主，再人工核查 relation-index

### asset-registry 的作用

HTML timeline 和 game / 3D 导出第一阶段只需要素材 ID；
如果消费端需要真实素材路径，再通过 `asset-registry.md` 做第二次解析：

- `assetId` -> `path`
- `assetId` -> `preview_path`
- `assetId` -> `license`
- `assetId` -> `source_ref_id`
- `assetId` -> `credit_text`

这样正文不需要关心文件路径和授权细节。

## 缺省值与兜底规则

### 时间字段缺失

- `time.start_ma` 缺失：不进入时间轴主视图，只保留为详情节点
- `time.end_ma` 缺失：若 `precision = point`，则令 `endMa = startMa`
- `time.precision` 缺失：默认按 `range` 处理

### 分组字段缺失

- `render.timeline_group` 缺失：按类型兜底
  - `timeline` -> `timeline-node`
  - `clade` -> `clade-mainline`
  - `event` -> `event-mainline`
  - `species-card` -> `species-transition`

### 配色字段缺失

- `render.color_key` 缺失：按所属大阶段或主线兜底
- 第一阶段允许前端落回默认灰色，但应视为待补结构字段，而不是长期状态

### 素材字段缺失

- `assets.featured_asset_ids` 为空：允许导出，但消费端应落到无图卡片样式
- `asset_id` 已存在但 `path` 仍为占位：允许展示占位封面或纯文字卡

## 当前已验证的可导出样本

以下条目已具备当前规则所需的最小导出字段：

- `timeline.origin-of-life`
- `timeline.precambrian-overview`
- `clade.early-life`
- `event.great-oxidation-event`
- `species-card.stromatolite-microbial-mats`
- `timeline.cambrian`
- `timeline.devonian`
- `clade.fishes`
- `event.vertebrate-landfall`
- `species-card.tiktaalik-roseae`
- `species-card.ichthyostega`

## 下一步建议

当真正开始写导出脚本时，建议按两阶段实现：

1. 先做“最小 JSON 导出”，只导 `id / type / title / summary / time / group / relatedIds / featuredAssetIds`
2. 再做“富节点导出”，把 `nodeKind`、`educationalFocus`、资产路径和授权信息一起拼入

这样既能快速拿到第一版 HTML timeline，又不会把后续游戏 / 3D 节点需求混进最初脚本里。
