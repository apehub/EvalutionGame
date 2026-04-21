# 导出与消费层

`08-exports` 用来预留资料库对外消费的派生结构。

它的目标不是取代正文或 registry，而是为 HTML timeline、搜索界面、游戏、3D 展示等系统准备稳定导出格式，避免不同消费场景各自直接解析 Markdown 正文。

## 计划承接的内容

- HTML timeline 导出字段说明
- 搜索与过滤界面所需字段说明
- 游戏策划、关卡和百科系统可消费的实体摘要
- 3D 展示节点与素材映射说明

## 当前入口

- `html-timeline-schema.md`：HTML timeline 正式导出字段
- `html-timeline-export.json`：HTML timeline 正式结构化导出样本
- `game-3d-consumption-schema.md`：游戏与 3D 展示正式消费字段
- `game-3d-nodes.json`：游戏与 3D 节点正式结构化导出样本
- `export-mapping-rules.md`：frontmatter 到 HTML timeline / game-3D 节点的映射规则
- `minimal-timeline-export.json`：第一版最小结构化导出样本

## 当前原型

- `scripts/export-minimal-structured-data.ps1`：从首批 11 个已结构化页面提取最小字段并生成 JSON
- `scripts/export-html-timeline.ps1`：按 HTML timeline 专用结构生成正式导出
- `scripts/export-game-3d-nodes.ps1`：按 game / 3D 节点专用结构生成正式导出
- `tests/validate-minimal-export.ps1`：校验导出结果是否包含预期条目与基础字段
- `tests/validate-html-timeline-export.ps1`：校验 HTML timeline 导出的 `meta + items` 结构、统计字段与导航字段
- `tests/validate-game-3d-export.ps1`：校验 game / 3D 导出的 `meta + items` 结构、`nodeKind` 派生与教育焦点字段
- 当前导出字段保持克制：`id`、`type`、`title`、`titleShort`、`summary`、`startMa`、`endMa`、`precision`、`group`、`colorKey`、`relatedIds`、`featuredAssetIds`、`path`
- `html-timeline-export.json` 采用长期可扩展的 `meta + items` 结构，除基础字段外继续导出 `sortKey`、`defaultView`、`chronoLabels`、`predecessorIds`、`successorIds`、`parentIds`、`childIds`
- `game-3d-nodes.json` 同样采用长期可扩展的 `meta + items` 结构，正式导出 `label`、`timelineGroup`、`assetIds`、`relatedIds`、`nodeKind`、`educationalFocus`
- 两条正式导出链现在都支持从 `07-assets/asset-registry.md` 自动解析素材详情，额外输出 `assets` 富对象数组，包含 `path`、`previewPath`、`license`、`sourceRefId`、`creditText`、`usageRoles`、`status`
- 当前导出层已经形成两条正式消费链：HTML timeline 与 game / 3D node

## 重生成方式

- 运行 `powershell -NoProfile -ExecutionPolicy Bypass -File "scripts/export-minimal-structured-data.ps1"` 生成最新导出
- 运行 `powershell -NoProfile -ExecutionPolicy Bypass -File "tests/validate-minimal-export.ps1"` 验证导出完整性
- 运行 `powershell -NoProfile -ExecutionPolicy Bypass -File "scripts/export-html-timeline.ps1"` 生成 HTML timeline 导出
- 运行 `powershell -NoProfile -ExecutionPolicy Bypass -File "tests/validate-html-timeline-export.ps1"` 验证 HTML timeline 导出
- 运行 `powershell -NoProfile -ExecutionPolicy Bypass -File "scripts/export-game-3d-nodes.ps1"` 生成 game / 3D 节点导出
- 运行 `powershell -NoProfile -ExecutionPolicy Bypass -File "tests/validate-game-3d-export.ps1"` 验证 game / 3D 节点导出

## 使用原则

- 导出层只承接派生产物或导出 schema，不直接维护正文。
- 优先从 frontmatter 和 registry 读取结构化字段，再按消费需求生成导出格式。
- 导出层应保持“可再生成”，不手工复制长段正文。
