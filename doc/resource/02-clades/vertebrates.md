---
schema_version: "2.0"
type: "clade"
id: "clade.vertebrates"
slug: "vertebrates"
title:
  zh-CN: "脊椎动物"
  en: "Vertebrates"
  scientific: null
title_short: "脊椎动物"
summary: "主干桥梁页，用于连接动物主线、鱼类主线与陆生脊椎动物主线。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/vertebrates.md"
tags:
  time:
    - "cambrian"
    - "devonian"
  clade:
    - "vertebrates"
    - "fishes"
    - "amphibians"
  event:
    - "vertebrate-landfall"
  ecology:
    - "marine"
    - "freshwater"
    - "terrestrial"
  custom: []
relations:
  parent_ids:
    - "clade.animals"
    - "timeline.cambrian"
    - "timeline.devonian"
  child_ids:
    - "clade.fishes"
    - "clade.amphibians"
    - "clade.amniotes"
  related_ids:
    - "clade.animals"
    - "clade.fishes"
    - "clade.amphibians"
    - "event.vertebrate-landfall"
    - "timeline.devonian"
  predecessor_ids:
    - "clade.animals"
  successor_ids:
    - "clade.amniotes"
time:
  start_ma: 520
  end_ma: 0
  display: "寒武纪已有前奏，古生代后持续扩张至今"
  precision: "approximate"
  chrono_labels:
    - "cambrian"
    - "devonian"
geo:
  modern_regions: []
  formations: []
sources:
  primary_source_ids:
    - "source.core-books"
    - "source.ucmp-history-of-life"
    - "source.open-tree-of-life"
  support_source_ids:
    - "source.pbdb"
assets:
  featured_asset_ids:
    - "asset.vertebrates.clade-overview"
render:
  color_key: "vertebrates"
  timeline_group: "clade-mainline"
  sort_key: 180
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "主干桥梁页"
  phylo_status: "formal"
  extant: true
  parent_clade_id: "clade.animals"
  sister_clade_ids: []
  representative_species_ids:
    - "species-card.tiktaalik-roseae"
    - "species-card.ichthyostega"
---

# 脊椎动物（Vertebrates）

## 基本信息

- 分类层级：主干桥梁页
- 系统位置：动物主线中通向鱼类、两栖类、羊膜动物及其后续支线的关键入口
- 起源时间：寒武纪已有脊索动物前奏，古生代显著扩张
- 主要辐射时期：古生代至今
- 是否现生：是
- 主要标签：`vertebrates` `fishes` `amphibians` `vertebrate-landfall`

## 类群概述

脊椎动物是资料库动物主线中的核心桥页。没有它，鱼类、两栖类、爬行动物、鸟类和哺乳类之间会像并列支线，而不是同一条长期主干上的连续阶段。脊椎动物的意义不只在于“有脊柱”，更在于一套更复杂的支持、运动、感觉和行为系统逐渐建立，并最终让陆地大型动物主线成为可能。

这页的作用是把寒武纪脊索动物前奏、鱼类扩张、四足动物出现和羊膜动物后续分化放进一条连续线。它上接 `animals.md`，下接 `fishes.md`、`amphibians.md` 和 `amniotes.md`。

## 关键特征

### 共有特征

- 轴向支持结构和更复杂的感觉-运动整合。
- 在水域和陆地多种生态位中持续扩张。

### 关键衍征

- 有颌化、附肢强化和更高效的运动控制。
- 后续通过四足化和羊膜化进一步拓展生态边界。

### 生理与生态特征

- 从海洋和淡水主线出发，后续扩展到陆地、空中和海洋高复杂度生态位。

## 演化历史

### 起源背景

- 脊索动物前奏为脊椎动物主线奠定基础。
- 古生代早期水域生态系统为脊椎动物扩张提供舞台。

### 主要分化

- 鱼类是最早显著扩张的核心主线。
- 两栖类承接登陆后早期四足动物阶段。
- 羊膜动物则打开后续爬行动物、鸟类和哺乳类更广泛的陆地扩张。

### 鼎盛与衰退

- 脊椎动物并不存在统一鼎盛期，而是在不同地质阶段由不同支线轮流主导。

## 研究意义

- 把从鱼类到鸟类、哺乳类的人们熟悉主线放回统一框架。
- 是时间主轴与类群主轴之间最关键的连接页之一。

## 可关联条目

- 相关时代：`cambrian.md` `devonian.md`
- 相关事件：`vertebrate-landfall.md`
- 相关类群：`fishes.md` `amphibians.md` `reptiles.md`

## 核心来源

- Michael J. Benton, *Vertebrate Palaeontology*
- Jennifer A. Clack, *Gaining Ground*
- UCMP, *History of Life Through Time*
- Open Tree of Life

## 争议与说明

- 本页强调主干组织关系，不展开每个脊椎动物小支系。
- 某些早期四足动物与冠群关系仍需谨慎措辞，但“鱼类 -> 四足动物 -> 羊膜动物”这条主干可稳定使用。
