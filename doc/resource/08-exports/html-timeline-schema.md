# HTML Timeline 导出字段

本文件定义资料库面向 HTML timeline 的正式导出字段集。目标是让时间主轴、事件、类群和代表卡能从 frontmatter 与 registry 中稳定抽取，而不是直接解析正文段落。

## 正式导出对象

```json
{
  "meta": {
    "format": "html-timeline",
    "version": "1.0",
    "generatedAt": "2026-04-20T00:00:00.000Z",
    "itemCount": 11,
    "groups": ["precambrian-mainline", "species-transition"],
    "types": ["timeline", "species-card"]
  },
  "items": [
    {
      "id": "timeline.origin-of-life",
      "type": "timeline",
      "title": "生命起源",
      "titleShort": "生命起源",
      "summary": "前寒武纪主线中的起点页，用于拆分环境上限、生命线索和起源模型。",
      "startMa": 4400,
      "endMa": 3500,
      "precision": "range",
      "group": "precambrian-mainline",
      "colorKey": "precambrian",
      "sortKey": 10,
      "defaultView": "article",
      "chronoLabels": ["hadean", "archean"],
      "relatedIds": ["clade.early-life", "event.great-oxidation-event"],
      "featuredAssetIds": ["asset.origin-of-life.diagram"],
      "assets": [
        {
          "assetId": "asset.origin-of-life.diagram",
          "assetType": "diagram",
          "path": "doc/resource/07-assets/precambrian/origin-of-life/origin-model-diagram.png",
          "previewPath": null,
          "format": "png",
          "license": "pending-check",
          "sourceRefId": "source.core-books",
          "creditText": "待补",
          "status": "placeholder",
          "usageRoles": ["diagram-inline"],
          "notes": "待补生命起源模型对照图"
        }
      ],
      "predecessorIds": [],
      "successorIds": ["clade.early-life"],
      "parentIds": ["timeline.precambrian-overview"],
      "childIds": ["clade.early-life"],
      "path": "doc/resource/01-timeline/origin-of-life.md"
    }
  ]
}
```

## 根对象字段

- `meta.format`
- `meta.version`
- `meta.generatedAt`
- `meta.itemCount`
- `meta.groups`
- `meta.types`
- `items`

## 条目字段

- `id`
- `type`
- `title`
- `titleShort`
- `summary`
- `startMa`
- `endMa`
- `precision`
- `group`
- `colorKey`
- `sortKey`
- `defaultView`
- `chronoLabels`
- `relatedIds`
- `featuredAssetIds`
- `assets`
- `predecessorIds`
- `successorIds`
- `parentIds`
- `childIds`
- `path`

## 结构原则

- 根对象采用 `meta + items`，方便版本控制、增量扩展和前端启动时的快速自检
- `items` 内条目保持扁平，避免时间轴消费端再做二次深层解析
- `featuredAssetIds` 保留轻量挂接能力，`assets` 负责提供素材路径、授权与署名等富元数据
- 关系字段统一保留数组结构，即使为空也显式输出，避免消费端写分支兜底
- 排序优先读取 `sortKey`，其次才回落到时间或 `id`

## 推荐分组

- `precambrian-mainline`
- `precambrian-evidence`
- `paleozoic-mainline`
- `phanerozoic-mainline`
- `clade-mainline`
- `event-mainline`
- `species-transition`
- `landfall-mainline`
- `mesozoic-mainline`
- `cenozoic-mainline`

## 当前已使用分组键

- `precambrian-mainline`：前寒武纪主线时间页、支系页与事件页
- `precambrian-evidence`：前寒武纪材料层与证据卡
- `phanerozoic-mainline`：显生宙主时间主轴
- `clade-mainline`：类群主线总览页
- `event-mainline`：关键事件页
- `species-transition`：过渡型代表卡

这些分组键已经进入当前 frontmatter，应视为可直接导出的正式值，而不只是临时占位名。

## 适用条目类型

- `timeline`
- `event`
- 重要 `clade`
- 重要 `species-card`
