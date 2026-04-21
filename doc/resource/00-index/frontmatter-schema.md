# 资料库 2.0 Frontmatter Schema

本文件定义资料库 2.0 的统一 frontmatter 规范。目标不是让正文失去可读性，而是把条目身份、关系、时间、素材和消费字段从自然语言段落中抽离出来，方便后续查询、校验、导出与多端展示。

## 使用原则

- 所有新条目优先使用 frontmatter，再写正文。
- frontmatter 负责“机器可读字段”，正文负责解释、论证和叙事。
- 各类型共享一套核心字段，再按 `type` 增加类型特有字段。
- 数值时间统一优先使用 `Ma`，避免前端和导出层反复解析 `Ga` 文本。

## 统一核心字段

以下字段建议所有 `timeline`、`clade`、`event`、`species-card`、`source-tool` 共用：

```yaml
---
schema_version: "2.0"
type: "timeline"
id: "timeline.origin-of-life"
slug: "origin-of-life"
title:
  zh-CN: "生命起源"
  en: "Origin of Life"
  scientific: null
title_short: "生命起源"
summary: "一句话摘要。"
status: "active"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/01-timeline/origin-of-life.md"
tags:
  time: []
  clade: []
  event: []
  ecology: []
  custom: []
relations:
  parent_ids: []
  child_ids: []
  related_ids: []
  predecessor_ids: []
  successor_ids: []
time:
  start_ma: null
  end_ma: null
  display: null
  precision: "range"
  chrono_labels: []
geo:
  modern_regions: []
  formations: []
sources:
  primary_source_ids: []
  support_source_ids: []
assets:
  featured_asset_ids: []
render:
  color_key: null
  timeline_group: null
  sort_key: null
  default_view: "article"
maintenance:
  authoring_template: null
  source_check_needed: true
---
```

## 字段说明

### 身份字段

- `schema_version`：schema 版本，当前固定为 `2.0`
- `type`：条目类型，当前允许：
  - `timeline`
  - `clade`
  - `event`
  - `species-card`
  - `source-tool`
- `id`：全库稳定主键，建议格式 `type.slug`
- `slug`：面向 URL、导出、程序引用的稳定短名

### 标题字段

- `title.zh-CN`：中文标题
- `title.en`：英文标题
- `title.scientific`：学名或科学名称，非必填
- `title_short`：短标题，适合卡片、时间轴节点和 UI

### 状态字段

- `status`：建议使用：
  - `draft`
  - `active`
  - `review`
  - `deprecated`
- `priority`：当前条目在维护、补全和展示中的优先级

### 路径与别名

- `aliases`：别名列表，便于搜索与自然语言问句映射
- `naming.canonical_path`：条目当前主路径

### 标签字段

- `tags.time`：时间标签
- `tags.clade`：类群标签
- `tags.event`：事件标签
- `tags.ecology`：生态与机制标签
- `tags.custom`：过渡期自定义标签，尽量少用

### 关系字段

- `relations.parent_ids`：逻辑上的上级页面或总控入口
- `relations.child_ids`：逻辑上的下级页面或子专题
- `relations.related_ids`：横向相关条目
- `relations.predecessor_ids`：主线前一跳
- `relations.successor_ids`：主线下一跳

### 时间字段

- `time.start_ma`：起点时间，单位 `Ma`
- `time.end_ma`：终点时间，单位 `Ma`
- `time.display`：保留给正文或 UI 的友好显示文本
- `time.precision`：建议值：
  - `point`
  - `range`
  - `approximate`
  - `staged`
- `time.chrono_labels`：该条目涉及的年代标签

### 地理与来源

- `geo.modern_regions`：现代地理区域
- `geo.formations`：相关地层、组、地质单元
- `sources.primary_source_ids`：主来源 ID
- `sources.support_source_ids`：补充来源 ID

### 素材与展示

- `assets.featured_asset_ids`：与本条目直接挂接的素材 ID
- `render.color_key`：前端配色分组键
- `render.timeline_group`：时间轴泳道分组
- `render.sort_key`：排序键
- `render.default_view`：默认展示视图

### 维护字段

- `maintenance.authoring_template`：使用的模板名
- `maintenance.source_check_needed`：是否需要补做来源核查

## 类型特有字段

### timeline

```yaml
timeline:
  scale: "deep-time"
  level: "theme-overview"
  major_clade_ids: []
  major_event_ids: []
  featured_species_ids: []
```

### clade

```yaml
clade:
  rank_label: null
  phylo_status: "formal"
  extant: null
  parent_clade_id: null
  sister_clade_ids: []
  representative_species_ids: []
```

### event

```yaml
event:
  event_kind: null
  trigger_type: []
  cause_ids: []
  affected_clade_ids: []
  consequence_tags: []
  evidence_types: []
  certainty_of_occurrence: null
  certainty_of_mechanism: null
```

### species-card

```yaml
species_card:
  scientific_name: null
  common_name_zh: null
  taxon_kind: "species"
  clade_id: null
  extinct: null
  fossil_only: null
  habitat_tags: []
  transition_significance:
    is_transition_form: false
    bridge_from_ids: []
    bridge_to_ids: []
```

### source-tool

```yaml
source_tool:
  tool_kind: null
  source_kind: null
  applies_to_types: []
  scope_tags: []
  authority_level: null
  supports_claims: []
  not_for_claims: []
```

## 最小必填字段

若某条目还处在第一轮迁移期，至少应先具备：

- `schema_version`
- `type`
- `id`
- `slug`
- `title.zh-CN`
- `summary`
- `status`
- `tags`
- `relations.related_ids`
- `sources.primary_source_ids`

并且：

- `timeline` / `event` / 大多数 `species-card` 应尽量补 `time.start_ma` 与 `time.end_ma`
- `species-card` 应尽量补 `species_card.taxon_kind`
- `source-tool` 应尽量补 `source_tool.tool_kind`

## 与当前模板的映射原则

- 正文里的“基本信息”逐步迁移到 frontmatter。
- “可关联条目”逐步迁移到 `relations.*`。
- “核心来源”逐步迁移到 `sources.primary_source_ids`，正文仍保留可读书名和说明。
- “本页定位”“桥接逻辑”“写作优先级”等继续保留在正文中，不强行结构化。
