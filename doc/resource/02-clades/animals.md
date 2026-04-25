---
schema_version: "2.0"
type: "clade"
id: "clade.animals"
slug: "animals"
title:
  zh-CN: "动物"
  en: "Animals"
  scientific: null
title_short: "动物"
summary: "主干桥梁页，用于连接真核生物主线、无脊椎动物主线与脊椎动物主线。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/animals.md"
tags:
  time:
    - "proterozoic"
    - "cambrian"
  clade:
    - "invertebrates"
    - "vertebrates"
  event:
    - "cambrian-explosion"
  ecology:
    - "marine"
    - "multicellularity"
  custom: []
relations:
  parent_ids:
    - "clade.eukaryotes"
    - "timeline.precambrian-overview"
    - "timeline.cambrian"
  child_ids:
    - "clade.invertebrates"
    - "clade.vertebrates"
  related_ids:
    - "clade.eukaryotes"
    - "clade.invertebrates"
    - "clade.vertebrates"
    - "event.cambrian-explosion"
    - "timeline.cambrian"
  predecessor_ids:
    - "clade.eukaryotes"
  successor_ids:
    - "clade.vertebrates"
time:
  start_ma: 600
  end_ma: 0
  display: "前寒武纪末已有前奏，寒武纪后显著扩展"
  precision: "approximate"
  chrono_labels:
    - "proterozoic"
    - "cambrian"
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
    - "asset.animals.clade-overview"
render:
  color_key: "animals"
  timeline_group: "clade-mainline"
  sort_key: 80
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "主干桥梁页"
  phylo_status: "formal"
  extant: true
  parent_clade_id: "clade.eukaryotes"
  sister_clade_ids: []
  representative_species_ids:
    - "species-card.anomalocaris-canadensis"
---

# 动物（Animals）

## 基本信息

- 分类层级：主干桥梁页
- 系统位置：连接真核生物、多细胞化与无脊椎 / 脊椎动物主线的关键入口
- 起源时间：前寒武纪末已有明确前奏
- 主要辐射时期：寒武纪及其后
- 是否现生：是
- 主要标签：`cambrian` `cambrian-explosion` `marine` `multicellularity`

## 类群概述

动物主线是资料库中另一座必须补上的桥。没有它，资料库会直接从真核或多细胞背景跳到无脊椎动物和鱼类，从而让“动物为什么成为复杂生态系统核心参与者”这一层级被掩盖。动物这页的任务，不是代替无脊椎动物或脊椎动物具体内容，而是解释动物作为一个整体为何会在寒武纪及其后改变生命史结构。

这页应聚焦两个关键点：一是动物体制如何建立复杂运动、感觉和摄食关系，二是为什么寒武纪会成为动物生态系统显著可见的窗口。它上接 `eukaryotes.md`，下接 `invertebrates.md` 和 `vertebrates.md`。

## 关键特征

### 共有特征

- 以摄食其他有机物为主要获取能量方式。
- 身体结构、运动能力与感觉能力在多条支线中高度多样化。

### 关键衍征

- 组织分化与发育程序复杂化。
- 主动运动和复杂捕食关系推动生态系统升级。

### 生理与生态特征

- 从早期海洋生态位出发，后续扩展到几乎所有主要生态环境。
- 是复杂食物网建立的核心参与者。

## 演化历史

### 起源背景

- 真核生物和多细胞化为动物主线奠定前提。
- 前寒武纪末已有动物化前奏。

### 主要分化

- 寒武纪是动物门类和身体方案显著进入化石记录的关键时期。
- 后续无脊椎动物和脊椎动物成为两条重要主干。

### 鼎盛与衰退

- 动物主线并不存在统一的“鼎盛期”，而是在不同支系中持续扩张和重组。

## 研究意义

- 是理解寒武纪大爆发和后续海洋、陆地生态系统复杂化的主干入口。
- 把无脊椎动物、脊椎动物和更晚高复杂度支线放回共同框架中。

## 可关联条目

- 相关时代：`precambrian-overview.md` `cambrian.md`
- 相关事件：`cambrian-explosion.md`
- 相关类群：`invertebrates.md` `fishes.md`

## 核心来源

- Douglas H. Erwin / James W. Valentine, *The Cambrian Explosion*
- UCMP, *History of Life Through Time*
- Michael J. Benton / David A. T. Harper, *Introduction to Paleobiology and the Fossil Record*
- Open Tree of Life

## 争议与说明

- “动物起源时间”与“动物在化石记录中显著出现时间”需要区分。
- 本页是桥梁页，不展开所有动物门类细分。
