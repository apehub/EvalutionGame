---
schema_version: "2.0"
type: "event"
id: "event.vertebrate-landfall"
slug: "vertebrate-landfall"
title:
  zh-CN: "脊椎动物登陆"
  en: "Vertebrate Landfall"
  scientific: null
title_short: "脊椎动物登陆"
summary: "脊椎动物主线中的关键转折事件页，用于连接肉鳍鱼近缘支系与早期四足动物。"
status: "active"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/03-events/vertebrate-landfall.md"
tags:
  time:
    - "devonian"
    - "carboniferous"
  clade:
    - "fishes"
    - "amphibians"
  event:
    - "vertebrate-landfall"
  ecology:
    - "terrestrial"
    - "freshwater"
  custom: []
relations:
  parent_ids:
    - "timeline.devonian"
    - "clade.fishes"
  child_ids: []
  related_ids:
    - "timeline.devonian"
    - "clade.fishes"
    - "clade.amphibians"
    - "species-card.tiktaalik-roseae"
    - "species-card.ichthyostega"
  predecessor_ids:
    - "clade.fishes"
  successor_ids:
    - "clade.amphibians"
time:
  start_ma: 375
  end_ma: 340
  display: "以泥盆纪晚期为核心，并延续到石炭纪早期"
  precision: "approximate"
  chrono_labels:
    - "devonian"
    - "carboniferous"
geo:
  modern_regions: []
  formations: []
sources:
  primary_source_ids:
    - "source.core-books"
    - "source.ucmp-history-of-life"
  support_source_ids:
    - "source.pbdb"
assets:
  featured_asset_ids:
    - "asset.vertebrate-landfall.sequence-diagram"
render:
  color_key: "vertebrates"
  timeline_group: "event-mainline"
  sort_key: 260
  default_view: "article"
maintenance:
  authoring_template: "event-v2"
  source_check_needed: true
event:
  event_kind: "evolutionary-transition"
  trigger_type:
    - "biotic"
    - "environmental"
  cause_ids:
    - "clade.fishes"
  affected_clade_ids:
    - "clade.fishes"
    - "clade.amphibians"
  consequence_tags:
    - "terrestrial-expansion"
    - "tetrapod-origin"
  evidence_types:
    - "comparative-anatomy"
    - "fossil-sequence"
    - "sedimentology"
  certainty_of_occurrence: "high"
  certainty_of_mechanism: "medium"
---

# 脊椎动物登陆（Vertebrate Landfall）

## 基本信息

- 主要发生时间段：以泥盆纪晚期为核心，并延续到石炭纪早期
- 主要标签：`devonian` `vertebrate-landfall` `fishes` `amphibians` `terrestrial`

## 事件概述

脊椎动物登陆是脊椎动物史上最关键的生态位扩展之一。它并不是“鱼突然变成四足动物”的单步跳跃，而是一系列生活在浅水、滨岸和周期性缺水环境中的近缘支系，逐步积累承重、呼吸、感觉和运动上的适应，最终让脊椎动物能在陆地上稳定活动。

这一事件对资料库尤其重要，因为它是从鱼类主线走向两栖类、羊膜动物、爬行动物、鸟类和哺乳类的总转折点。若没有独立事件页，提塔利克鱼、鱼石螈之类卡片就会变成孤立案例，而无法放回完整演化过程。

## 前因

- 有颌鱼和肉鳍鱼在古生代水域中已高度多样化。
- 浅水、泛滥平原和植被扩张环境提供了新的生态压力与机会。
- 鳍骨结构、颈部活动、呼吸方式和感觉系统逐步向陆缘适应推进。

## 过程

- 肉鳍鱼中的若干支系表现出越来越明显的四足样骨骼特征。
- 过渡型生物同时保留水生和近陆适应特征。
- 早期四足动物最初仍与水环境密切相关，而非完全独立于水体生活。

## 后果

- 脊椎动物开始稳定进入陆地生态系统。
- 后续两栖类和羊膜动物主线得以展开。
- 陆地食物网中出现更复杂的大型消费者与捕食者。

## 受影响支系

- 鱼类中的肉鳍鱼相关支系。
- 早期四足动物与两栖样类群。
- 更远后续的爬行类、鸟类和哺乳类均以此为前提。

## 支持证据

- 提塔利克鱼等过渡型化石显示混合特征。
- 鱼石螈等早期四足动物记录了近陆适应形态。
- 古环境与沉积学证据支持浅水和泛滥环境的重要性。

## 主要争议模型

- 争议集中在具体系统位置、各过渡型类群排序以及陆地适应是先为浅水运动还是直接为陆上活动服务。
- 主流叙述应强调“渐进式多步骤过渡”和“多个近缘支系参与试探”。

## 可关联条目

- 相关时代：`devonian.md`
- 相关类群：`fishes.md` `amphibians.md`
- 相关物种：`tiktaalik-roseae.md` `ichthyostega.md`

## 核心来源

- Michael J. Benton, *Vertebrate Palaeontology*（用于脊椎动物登陆的主流教材框架、关键类群关系与时间背景；书目入口：https://www.wiley.com/en-us/Vertebrate+Palaeontology,+5th+Edition-p-9781394195084）
- Jennifer A. Clack, *Gaining Ground*（用于鱼到四足动物过渡、关键解剖特征与泥盆纪-石炭纪过渡主线；书目入口：https://iupress.org/9780253005373/gaining-ground-second-edition/）
- UCMP, *History of Life Through Time*（用于教学型总览与事件位置说明；链接：https://ucmp.berkeley.edu/exhibits/historyoflife.php）
- Berkeley Understanding Evolution（用于概念澄清，例如“过渡型不等于直接祖先”“渐进式过渡”的教学表达；链接：https://evolution.berkeley.edu/）
- Paleobiology Database（用于化石出现区间、产地与分布核查；主站：https://paleobiodb.org/ ，Navigator：https://paleobiodb.org/navigator/）

## 建议核查入口

- 四足动物登陆主线与关键类群顺序：优先查 Benton 与 Clack。
- 教学型总体叙述与概念澄清：优先查 UCMP 与 Berkeley Understanding Evolution。
- 过渡型产地、时间区间和材料分布：优先查 Paleobiology Database。
- 若后续补具体材料页，应进一步查馆藏入口和代表标本说明。

## 引用说明

- 本页中的“主流过程叙述”应以 Benton、Clack 为主，不宜仅引用科普站点。
- 本页中的“过渡型案例与产地时间”应尽量用 PBDB 或馆藏入口做交叉核查。
- 本页中涉及“登陆目的和驱动力”的机制解释，需明确哪些是主流假说、哪些仍属争议。

## 后续深挖线索

- 可拆出“肉鳍鱼到四足动物过渡序列”专题页。
- 可为提塔利克鱼、鱼石螈之外再补若干关键节点代表卡片。
- 若想增强可考据性，建议后续增加“关键过渡特征对照表”，把颈部、鳍骨、肋骨、呼吸与环境分开列。

## 争议与说明

- “登陆”不应理解为彻底脱离水环境的瞬间完成，而是一个长期过渡序列。
- 过渡型不意味着直接祖先；许多著名化石更准确地说是展示关键特征组合的近缘代表。
