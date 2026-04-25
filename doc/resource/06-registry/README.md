# 结构化登记层

`06-registry` 用来承接资料库 2.0 的可计算索引层。

它的目标不是替代正文，而是让条目身份、时间范围、标签、关系和来源登记拥有稳定的登记入口，便于后续查询、校验、导出和多端消费。

## 计划承接的内容

- 实体注册表：记录 `id`、`type`、路径、状态
- 时间索引：记录时间节点与相关条目
- 标签索引：记录标签到条目的反向映射
- 关系索引：记录 timeline / clade / event / species-card / source-tool 之间的关系
- 来源登记：记录高频来源的统一键值和使用边界

## 使用原则

- 正文条目先定义 frontmatter，再在 registry 中登记。
- registry 优先使用稳定 `id`，不直接依赖自然语言标题。
- registry 记录的是“结构化事实”，不承担长段解释性正文。

## 首期最小索引范围

“生命演化骨架”首期只要求 registry 先稳定承接以下四类索引：

- `entity-index.md`：条目身份、类型、路径、状态
- `timeline-index.md`：时间窗口与时间主轴挂接
- `relation-index.md`：主线前后跳、上下位和横向关联
- `tag-index.md`：时间标签、支系标签、事件标签、生态标签

这四类索引成立后，时间页、支系页、事件页和代表卡之间就能形成最基本的可计算骨架。

## 首期字段重点

为保持后续可扩展并兼容未来外部来源，首期登记时优先保证这些字段稳定：

- 条目身份：`id`、`type`、`path`、`status`
- 时间定位：`time.start_ma`、`time.end_ma`、`time.chrono_labels`
- 关系定位：`parent_ids`、`child_ids`、`related_ids`、`predecessor_ids`、`successor_ids`
- 来源定位：`primary_source_ids`、`support_source_ids`

## 与 PBDB 的边界

首期 registry 只需要为未来外部来源预留兼容性，不直接围绕 `PBDB` 建导入结构。

因此当前原则是：

- 可以预留外部来源 ID 的承载位置
- 不把外部接口字段直接写成 registry 主体结构
- 先以本地时间、关系和命名稳定性为优先
