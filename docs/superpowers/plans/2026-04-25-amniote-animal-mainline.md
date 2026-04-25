# Amniote Animal Mainline Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add two shallow bridge pages under `amniotes.md` so the library can explain the mammal-lineage and bird-lineage upstream paths without deep animal taxonomy expansion.

**Architecture:** Keep the current animal structure shallow by inserting only two bridge pages, `synapsids.md` and `archosaurs.md`, between `amniotes.md` and the broader downstream overviews. Update the clade README and registry files so these new bridges appear in both human reading paths and structured indexes.

**Tech Stack:** Markdown, YAML frontmatter, Git, existing Library 2.0 registry structure

---

## File Map

**Create**

- `doc/resource/02-clades/synapsids.md`
- `doc/resource/02-clades/archosaurs.md`

**Modify**

- `doc/resource/02-clades/README.md`
- `doc/resource/06-registry/entity-index.md`
- `doc/resource/06-registry/relation-index.md`
- `doc/resource/06-registry/tag-index.md`

**Reference While Implementing**

- `doc/resource/02-clades/amniotes.md`
- `doc/resource/02-clades/reptiles.md`
- `doc/resource/02-clades/birds.md`
- `doc/resource/02-clades/mammals.md`
- `docs/superpowers/specs/2026-04-25-amniote-animal-mainline-design.md`

### Task 1: Add `synapsids.md`

**Files:**
- Create: `doc/resource/02-clades/synapsids.md`
- Reference: `doc/resource/02-clades/amniotes.md`
- Reference: `doc/resource/02-clades/mammals.md`

- [ ] **Step 1: Create frontmatter for the bridge page**

```yaml
---
schema_version: "2.0"
type: "clade"
id: "clade.synapsids"
slug: "synapsids"
title:
  zh-CN: "合弓类"
  en: "Synapsids"
  scientific: null
title_short: "合弓类"
summary: "羊膜动物后段主线中的桥页，用于解释合弓类为何是哺乳类前史的关键上游。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/synapsids.md"
tags:
  time:
    - "permian"
    - "triassic"
  clade:
    - "mammals"
  event: []
  ecology:
    - "terrestrial"
    - "amniotic-egg"
  custom: []
relations:
  parent_ids:
    - "clade.amniotes"
  child_ids: []
  related_ids:
    - "timeline.permian"
    - "timeline.triassic"
    - "clade.mammals"
  predecessor_ids:
    - "clade.amniotes"
  successor_ids:
    - "clade.mammals"
time:
  start_ma: 320
  end_ma: 200
  display: "二叠纪至三叠纪的哺乳类前史关键桥接窗口"
  precision: "approximate"
  chrono_labels:
    - "permian"
    - "triassic"
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
  featured_asset_ids: []
render:
  color_key: "vertebrates"
  timeline_group: "clade-mainline"
  sort_key: 280
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "主干桥梁页"
  phylo_status: "informal"
  extant: false
  parent_clade_id: "clade.amniotes"
  sister_clade_ids: []
  representative_species_ids: []
---
```

- [ ] **Step 2: Write the body content**

```md
# 合弓类（Synapsids）

## 基本信息

- 分类层级：主干桥梁页
- 系统位置：承接 `amniotes.md`，并作为通向 `mammals.md` 的哺乳类前史桥页
- 主要时间窗口：二叠纪、三叠纪
- 页面性质：资料组织型桥页，用来解释哺乳类主线的关键上游阶段
- 是否现生：否
- 主要标签：`permian` `triassic` `mammals` `terrestrial`

## 类群概述

合弓类这页的职责，不是把所有内部支系完整摊开，而是回答一个更重要的问题：为什么哺乳类的主线不能从羊膜动物直接跳到哺乳类本身。合弓类是这条后段动物主线中的关键桥，因为许多后来在哺乳类中显得典型的方向，都会在这里看到前史阶段。

这页应尽量用通俗写法说明：合弓类不是现代哺乳类本身，但它们构成了通向哺乳类主线的重要上游阶段。

## 关键特征

### 与哺乳类前史相关的方向

- 身体结构、颌部与咀嚼方式逐步出现更适合后续哺乳类方向的趋势。
- 陆地生活方式更稳定，生态位更加多样。

### 生态与形态意义

- 是二叠纪和三叠纪陆地动物结构重组中的重要组成部分。
- 把羊膜动物主线中的一支清楚地接向哺乳类前史。

## 演化历史

### 起点

- 从羊膜动物主线分出后，合弓类逐渐成为理解哺乳类前史不可跳过的一站。

### 二叠纪到三叠纪窗口

- 二叠纪到三叠纪是该桥页最关键的主时间窗口。
- 这一阶段中，相关支线在陆地生态系统中占据过重要位置，并与后续哺乳类方向保持连续性。

### 向哺乳类主线过渡

- 本页不是 `mammals.md` 的替代，而是帮助读者理解：哺乳类的出现有一段更长的前史桥接过程。

## 研究意义

- 让 `amniotes.md -> mammals.md` 不再是一跳直达，而是有清晰过渡层。
- 有助于把二叠纪、三叠纪中的动物主线读顺。

## 可关联条目

- 上游桥页：`amniotes.md`
- 下游总览：`mammals.md`
- 相关时代：`permian.md` `triassic.md`

## 核心来源

- Michael J. Benton, *Vertebrate Palaeontology*
- UCMP, *History of Life Through Time*
- Open Tree of Life
- Paleobiology Database

## 争议与说明

- 本页采用桥页写法，不展开完整合弓类内部细分树。
- 重点是说明它为何是哺乳类前史桥页，而不是建立新的深层分类结构。
```

- [ ] **Step 3: Create the file**

Write `doc/resource/02-clades/synapsids.md` with the Step 1 frontmatter and Step 2 body.

- [ ] **Step 4: Verify the page**

Run: `rg "clade\\.synapsids|# 合弓类" "doc/resource/02-clades/synapsids.md"`

Expected: both ID and title are present.

### Task 2: Add `archosaurs.md`

**Files:**
- Create: `doc/resource/02-clades/archosaurs.md`
- Reference: `doc/resource/02-clades/amniotes.md`
- Reference: `doc/resource/02-clades/birds.md`
- Reference: `doc/resource/02-clades/reptiles.md`

- [ ] **Step 1: Create frontmatter for the bridge page**

```yaml
---
schema_version: "2.0"
type: "clade"
id: "clade.archosaurs"
slug: "archosaurs"
title:
  zh-CN: "主龙类"
  en: "Archosaurs"
  scientific: null
title_short: "主龙类"
summary: "羊膜动物后段主线中的桥页，用于解释主龙类为何是鸟类和中生代大型爬行动物前史的关键上游。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/archosaurs.md"
tags:
  time:
    - "triassic"
    - "jurassic"
    - "cretaceous"
  clade:
    - "reptiles"
    - "birds"
  event: []
  ecology:
    - "terrestrial"
    - "amniotic-egg"
  custom: []
relations:
  parent_ids:
    - "clade.amniotes"
  child_ids: []
  related_ids:
    - "clade.reptiles"
    - "timeline.triassic"
    - "timeline.jurassic"
    - "timeline.cretaceous"
  predecessor_ids:
    - "clade.amniotes"
  successor_ids:
    - "clade.birds"
time:
  start_ma: 250
  end_ma: 66
  display: "三叠纪至白垩纪的主龙类桥接窗口"
  precision: "approximate"
  chrono_labels:
    - "triassic"
    - "jurassic"
    - "cretaceous"
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
  featured_asset_ids: []
render:
  color_key: "vertebrates"
  timeline_group: "clade-mainline"
  sort_key: 300
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "主干桥梁页"
  phylo_status: "informal"
  extant: false
  parent_clade_id: "clade.amniotes"
  sister_clade_ids: []
  representative_species_ids: []
---
```

- [ ] **Step 2: Write the body content**

```md
# 主龙类（Archosaurs）

## 基本信息

- 分类层级：主干桥梁页
- 系统位置：承接 `amniotes.md`，并作为通向 `birds.md` 与中生代爬行动物主线的重要桥页
- 主要时间窗口：三叠纪、侏罗纪、白垩纪
- 页面性质：资料组织型桥页，用来解释主龙类为何是后续鸟类与中生代大型爬行动物前史的关键上游
- 是否现生：否
- 主要标签：`triassic` `jurassic` `cretaceous` `reptiles` `birds`

## 类群概述

主龙类这页的作用，不是把恐龙、翼龙、鳄形类等全部展开，而是把羊膜动物后段主线中最关键的一条方向讲顺。没有这页，`amniotes.md` 会很容易直接跳到 `birds.md` 或 `reptiles.md`，却看不清中间那层真正把中生代主线撑起来的桥。

因此，本页的写法要尽量通俗：强调主龙类为何是后续鸟类前史与中生代大型爬行动物前史的关键上游，而不是写成恐龙专题总表。

## 关键特征

### 主线意义

- 代表羊膜动物主线中一条在中生代极其关键的方向。
- 与后续鸟类起源主线存在紧密连续关系。

### 生态与时间位置

- 三叠纪开始重要性上升，侏罗纪与白垩纪成为更明显的主线背景。
- 在陆地生态系统中长期占据关键位置。

## 演化历史

### 起点

- 从羊膜动物主线延伸后，主龙类成为理解中生代动物格局不可跳过的一站。

### 三叠纪到白垩纪

- 三叠纪是主龙类桥页最关键的起步窗口。
- 侏罗纪与白垩纪则展示了这条主线在更晚阶段的持续展开。

### 向鸟类与更晚主线过渡

- 本页并不替代 `birds.md`，而是解释为什么鸟类前史需要有一层更稳定的主龙类桥接背景。

## 研究意义

- 让 `amniotes.md -> birds.md` 的路径更清晰。
- 也让 `reptiles.md` 与中生代时间页之间的关系更顺。

## 可关联条目

- 上游桥页：`amniotes.md`
- 下游总览：`birds.md`
- 相关总览：`reptiles.md`
- 相关时代：`triassic.md` `jurassic.md` `cretaceous.md`

## 核心来源

- Michael J. Benton, *Vertebrate Palaeontology*
- UCMP, *History of Life Through Time*
- Open Tree of Life
- Paleobiology Database

## 争议与说明

- 本页采用桥页写法，不展开完整主龙类内部细分树。
- 重点是说明它为何是后续鸟类与中生代大型爬行动物前史的桥，而不是单独做恐龙专题。
```

- [ ] **Step 3: Create the file**

Write `doc/resource/02-clades/archosaurs.md` with the Step 1 frontmatter and Step 2 body.

- [ ] **Step 4: Verify the page**

Run: `rg "clade\\.archosaurs|# 主龙类" "doc/resource/02-clades/archosaurs.md"`

Expected: both ID and title are present.

### Task 3: Wire README and registries

**Files:**
- Modify: `doc/resource/02-clades/README.md`
- Modify: `doc/resource/06-registry/entity-index.md`
- Modify: `doc/resource/06-registry/relation-index.md`
- Modify: `doc/resource/06-registry/tag-index.md`

- [ ] **Step 1: Update the clade README**

Add these lines in the animal mainline section:

```md
- `synapsids.md`：哺乳类前史的主干桥页
- `archosaurs.md`：主龙类与鸟类前史的主干桥页
```

- [ ] **Step 2: Register the new clade pages**

Add these rows to `doc/resource/06-registry/entity-index.md`:

```md
| `clade.synapsids` | `clade` | `doc/resource/02-clades/synapsids.md` | `draft` | 哺乳类前史桥页：合弓类 |
| `clade.archosaurs` | `clade` | `doc/resource/02-clades/archosaurs.md` | `draft` | 鸟类前史桥页：主龙类 |
```

- [ ] **Step 3: Add explicit amniote-mainline relations**

Append these rows to `doc/resource/06-registry/relation-index.md`:

```md
| `clade.amniotes` | `child` | `clade.synapsids` | 羊膜动物主线通向哺乳类前史桥页 |
| `clade.synapsids` | `successor` | `clade.mammals` | 从合弓类桥页进入哺乳类总览 |
| `clade.amniotes` | `child` | `clade.archosaurs` | 羊膜动物主线通向主龙类桥页 |
| `clade.archosaurs` | `successor` | `clade.birds` | 从主龙类桥页进入鸟类总览 |
| `clade.synapsids` | `related` | `timeline.permian` | 合弓类主线关键时间窗口 |
| `clade.synapsids` | `related` | `timeline.triassic` | 合弓类后段过渡窗口 |
| `clade.archosaurs` | `related` | `timeline.triassic` | 主龙类起步关键窗口 |
| `clade.archosaurs` | `related` | `timeline.jurassic` | 主龙类中生代展开窗口 |
| `clade.archosaurs` | `related` | `timeline.cretaceous` | 主龙类后段窗口 |
```

- [ ] **Step 4: Update reverse tag rows**

Adjust `doc/resource/06-registry/tag-index.md` so these rows include the new bridge pages:

```md
| `mammals` | `clade.synapsids` / `clade.amniotes` / `clade.mammals` / `timeline.permian` / `timeline.mesozoic-overview` / `timeline.triassic` / `timeline.jurassic` / `timeline.cretaceous` / `timeline.cenozoic-overview` / `timeline.paleogene` / `timeline.neogene` / `timeline.quaternary` / `event.mammal-radiation` / `species-card.morganucodon` |
| `reptiles` | `clade.archosaurs` / `clade.amniotes` / `clade.reptiles` / `timeline.paleozoic-overview` / `timeline.carboniferous` / `timeline.permian` / `timeline.mesozoic-overview` / `timeline.triassic` / `timeline.jurassic` / `timeline.cretaceous` |
| `birds` | `clade.archosaurs` / `clade.reptiles` / `clade.birds` / `timeline.mesozoic-overview` / `timeline.jurassic` / `timeline.cretaceous` / `timeline.cenozoic-overview` / `timeline.paleogene` / `timeline.neogene` / `timeline.quaternary` / `species-card.archaeopteryx-lithographica` |
| `permian` | `timeline.paleozoic-overview` / `timeline.permian` / `timeline.permian-end-crisis` / `clade.synapsids` / `clade.seed-plants` |
| `triassic` | `timeline.triassic` / `timeline.mesozoic-overview` / `clade.synapsids` / `clade.archosaurs` / `clade.reptiles` / `clade.mammals` |
| `jurassic` | `timeline.jurassic` / `timeline.mesozoic-overview` / `clade.archosaurs` / `clade.birds` |
| `cretaceous` | `timeline.cretaceous` / `timeline.mesozoic-overview` / `clade.archosaurs` / `clade.birds` |
| `amniotic-egg` | `timeline.paleozoic-overview` / `timeline.carboniferous` / `timeline.permian` / `clade.amniotes` / `clade.synapsids` / `clade.archosaurs` |
| `terrestrial` | `clade.synapsids` / `clade.archosaurs` / `clade.plants` / `clade.early-land-plants` / `clade.vascular-plants` / `clade.forest-formation` / `clade.seed-plants` / `event.plant-landfall` / `event.vertebrate-landfall` / `timeline.silurian` / `timeline.devonian` / `timeline.carboniferous` / `timeline.permian` / `timeline.triassic` / `timeline.jurassic` / `timeline.cretaceous` / `species-card.tiktaalik-roseae` / `species-card.ichthyostega` |
```

- [ ] **Step 5: Verify the index wiring**

Run:

```bash
rg "synapsids|archosaurs" "doc/resource/02-clades/README.md" "doc/resource/06-registry/entity-index.md" "doc/resource/06-registry/relation-index.md" "doc/resource/06-registry/tag-index.md"
```

Expected: matches in all four files.

### Task 4: Final review and validation

**Files:**
- Review: `doc/resource/02-clades/synapsids.md`
- Review: `doc/resource/02-clades/archosaurs.md`
- Review: `doc/resource/02-clades/README.md`
- Review: `doc/resource/06-registry/entity-index.md`
- Review: `doc/resource/06-registry/relation-index.md`
- Review: `doc/resource/06-registry/tag-index.md`

- [ ] **Step 1: Check frontmatter IDs and chain links**

Run:

```bash
rg "id: \"clade\\.(synapsids|archosaurs)\"|predecessor_ids:|successor_ids:" "doc/resource/02-clades/synapsids.md" "doc/resource/02-clades/archosaurs.md"
```

Expected: the new IDs exist and each page shows the intended bridge direction.

- [ ] **Step 2: Check time links and registry visibility**

Run:

```bash
rg "timeline\\.(permian|triassic|jurassic|cretaceous)|synapsids|archosaurs" "doc/resource/02-clades/synapsids.md" "doc/resource/02-clades/archosaurs.md" "doc/resource/06-registry/relation-index.md" "doc/resource/06-registry/tag-index.md"
```

Expected: `synapsids` is tied to `permian` and `triassic`; `archosaurs` is tied to `triassic`, `jurassic`, and `cretaceous`; both appear in registry files.

- [ ] **Step 3: Check workspace diff before any commit**

Run: `git status --short`

Expected: only the two new clade pages and the registry/README updates for this animal task are changed, plus any already-known uncommitted docs for the current planning cycle.

- [ ] **Step 4: Commit only when the user explicitly asks**

```bash
git add doc/resource/02-clades/synapsids.md doc/resource/02-clades/archosaurs.md doc/resource/02-clades/README.md doc/resource/06-registry/entity-index.md doc/resource/06-registry/relation-index.md doc/resource/06-registry/tag-index.md
git commit -m "Add shallow amniote animal mainline bridges."
```

Do not perform this step unless the user asks for a commit.
