# 游戏与 3D 展示消费字段

本文件定义资料库面向游戏、3D 展示和交互节点系统的正式消费字段。目标不是直接生成玩法逻辑，而是让条目拥有稳定的“展示节点身份”。

## 正式消费对象

```json
{
  "meta": {
    "format": "game-3d-nodes",
    "version": "1.0",
    "generatedAt": "2026-04-20T00:00:00.000Z",
    "itemCount": 11,
    "nodeKinds": ["timeline-node", "evidence-card"],
    "types": ["timeline", "species-card"]
  },
  "items": [
    {
      "id": "species-card.stromatolite-microbial-mats",
      "type": "species-card",
      "label": "叠层石",
      "summary": "前寒武纪材料层入口卡，用于提供最稳妥的结构型生命活动证据对象。",
      "timelineGroup": "precambrian-evidence",
      "educationalFocus": ["材料层证据", "微生物生态系统", "环境改造背景"],
      "assetIds": ["asset.stromatolite.reference-image"],
      "assets": [
        {
          "assetId": "asset.stromatolite.reference-image",
          "assetType": "image",
          "path": "doc/resource/07-assets/precambrian/stromatolite/reference-image.png",
          "previewPath": null,
          "format": "png",
          "license": "pending-check",
          "sourceRefId": "source.major-museums",
          "creditText": "待补",
          "status": "placeholder",
          "usageRoles": ["cover", "model-reference"],
          "notes": "待补叠层石参考图"
        }
      ],
      "relatedIds": ["timeline.origin-of-life", "clade.early-life", "event.great-oxidation-event"],
      "nodeKind": "evidence-card"
    }
  ]
}
```

## 根对象字段

- `meta.format`
- `meta.version`
- `meta.generatedAt`
- `meta.itemCount`
- `meta.nodeKinds`
- `meta.types`
- `items`

## 节点字段

- `id`
- `type`
- `label`
- `summary`
- `timelineGroup`
- `assetIds`
- `assets`
- `relatedIds`
- `nodeKind`
- `educationalFocus`

## 结构原则

- 根对象采用 `meta + items`，方便导出版本升级和消费端快速检查数据集状态
- `items` 内节点保持扁平，适合游戏配置、百科 UI 和 3D 展示系统直接消费
- `assetIds` 保留轻量引用能力，`assets` 负责给消费端提供路径、授权和署名等素材详情
- `educationalFocus` 始终输出数组，即使后续规则扩展也能保持消费接口稳定
- `nodeKind` 是展示层主身份字段，应优先稳定，而不是让消费端自己推断

## 推荐 `nodeKind`

- `timeline-node`
- `clade-node`
- `event-node`
- `species-node`
- `evidence-card`
- `source-node`

## 当前类型到 `nodeKind` 的建议映射

- `timeline` -> `timeline-node`
- `clade` -> `clade-node`
- `event` -> `event-node`
- `species-card` -> `species-node`
- 若 `species-card` 明确是结构型 / 材料层证据卡，也可降到 `evidence-card`

例如当前库中：

- `species-card.stromatolite-microbial-mats` 更适合导出为 `evidence-card`
- `species-card.tiktaalik-roseae` 与 `species-card.ichthyostega` 更适合导出为 `species-node`

## 当前建议的教育焦点来源

- 可直接从 frontmatter 的 `summary`、`tags` 和类型专属字段派生。
- 后续若游戏和展示需求更强，可考虑在 frontmatter 中补独立 `game.educational_focus` 字段。
