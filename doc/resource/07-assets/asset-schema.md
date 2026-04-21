# 素材资产 Schema

本文件定义资料库 2.0 的素材资产最小 schema。目标是让图片、图示、模型、时间轴素材和版权信息能以稳定方式挂接到正文条目，而不是散落在正文或临时文件中。

## 最小字段

```yaml
asset_id: "asset.stromatolite.hero-illustration"
asset_type: "image" # image | diagram | model-3d | timeline-visual | texture | document
title: "叠层石示意图"
path: "doc/resource/07-assets/precambrian/stromatolite/hero-illustration.png"
preview_path: null
format: "png"
license: "pending-check"
source_ref_id: "source.major-museums"
credit_text: "待补"
related_entity_ids:
  - "species-card.stromatolite-microbial-mats"
usage_roles:
  - "cover"
  - "timeline-card"
status: "placeholder"
notes: "待补来源与授权边界"
```

## 字段说明

- `asset_id`：素材稳定主键
- `asset_type`：素材类型
- `title`：素材标题
- `path`：主文件路径
- `preview_path`：缩略图或预览路径
- `format`：文件格式
- `license`：授权状态
- `source_ref_id`：来源登记册中的来源 ID
- `credit_text`：署名或版权文字
- `related_entity_ids`：挂接到哪些条目
- `usage_roles`：该素材在 UI 中的使用角色
- `status`：当前素材状态，例如 `placeholder`、`verified`、`usable`
- `notes`：补充说明

## 推荐的 `usage_roles`

- `cover`
- `thumbnail`
- `timeline-card`
- `timeline-background`
- `diagram-inline`
- `model-reference`
- `game-concept`
- `3d-preview`

## 建议目录分层

```text
07-assets/
  precambrian/
  paleozoic/
  mesozoic/
  cenozoic/
  shared/
```

## 与正文的关系

- 正文 frontmatter 通过 `assets.featured_asset_ids` 挂接素材。
- 条目正文不直接承担素材清单本体，只保留解释性说明。
