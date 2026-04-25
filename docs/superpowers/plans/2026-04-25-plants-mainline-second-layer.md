# Plants Mainline Second Layer Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Add a second-layer plant evolution mainline under `plants.md` with four bridge pages and wire it into the resource library indexes.

**Architecture:** Keep `plants.md` as the top-level entry page, then add four bridge pages that follow key evolutionary transitions instead of full botanical taxonomy. Update the clade README plus registry files so the plant line can be read linearly and queried structurally from timeline, clade, and tag directions.

**Tech Stack:** Markdown, YAML frontmatter, Git, existing Library 2.0 registry structure

---

## File Map

**Create**

- `doc/resource/02-clades/early-land-plants.md`
- `doc/resource/02-clades/vascular-plants.md`
- `doc/resource/02-clades/forest-formation.md`
- `doc/resource/02-clades/seed-plants.md`

**Modify**

- `doc/resource/02-clades/README.md`
- `doc/resource/06-registry/entity-index.md`
- `doc/resource/06-registry/relation-index.md`
- `doc/resource/06-registry/tag-index.md`

**Reference While Implementing**

- `doc/resource/02-clades/plants.md`
- `doc/resource/02-clades/early-life.md`
- `doc/resource/02-clades/vertebrates.md`
- `doc/resource/00-index/frontmatter-schema.md`
- `docs/superpowers/specs/2026-04-25-plants-mainline-second-layer-design.md`

### Task 1: Add `early-land-plants.md`

**Files:**
- Create: `doc/resource/02-clades/early-land-plants.md`
- Reference: `doc/resource/02-clades/plants.md`
- Reference: `doc/resource/03-events/plant-landfall.md`

- [ ] **Step 1: Draft the frontmatter for the first plant bridge page**

```yaml
---
schema_version: "2.0"
type: "clade"
id: "clade.early-land-plants"
slug: "early-land-plants"
title:
  zh-CN: "早期陆地植物"
  en: "Early Land Plants"
  scientific: null
title_short: "早期陆地植物"
summary: "植物主线的第一层桥页，用于连接植物总览与植物登陆后的早期陆生适应阶段。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/early-land-plants.md"
tags:
  time:
    - "silurian"
    - "devonian"
  clade:
    - "plants"
  event:
    - "plant-landfall"
  ecology:
    - "terrestrial"
    - "photosynthesis"
  custom: []
relations:
  parent_ids:
    - "clade.plants"
    - "timeline.silurian"
  child_ids: []
  related_ids:
    - "clade.plants"
    - "event.plant-landfall"
    - "timeline.silurian"
    - "timeline.devonian"
  predecessor_ids:
    - "clade.plants"
  successor_ids:
    - "clade.vascular-plants"
time:
  start_ma: 450
  end_ma: 390
  display: "志留纪至泥盆纪早期的植物登陆与初期陆生扩展窗口"
  precision: "approximate"
  chrono_labels:
    - "silurian"
    - "devonian"
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
    - "asset.early-land-plants.clade-overview"
render:
  color_key: "plants"
  timeline_group: "clade-mainline"
  sort_key: 120
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "主干桥梁页"
  phylo_status: "informal"
  extant: false
  parent_clade_id: "clade.plants"
  sister_clade_ids: []
  representative_species_ids: []
---
```

- [ ] **Step 2: Write the body content for the page**

```md
# 早期陆地植物（Early Land Plants）

## 基本信息

- 分类层级：主干桥梁页
- 系统位置：植物总览页之后的第一层植物登陆桥页
- 起源时间：志留纪前后
- 主要辐射时期：志留纪、泥盆纪早期
- 是否现生：否
- 主要标签：`plants` `plant-landfall` `silurian` `devonian` `terrestrial`

## 类群概述

早期陆地植物这页的职责，是把“植物进入陆地”从一个事件，变成一条可阅读的主干阶段。它不等于某个严格单系群，而是用来组织植物从近岸、潮湿环境走向稳定陆地生境的最初过渡。

这页应优先解释三个问题：植物为什么登陆困难、最初陆生植物靠什么维持生存、以及为什么这一阶段会为后续维管植物和森林化铺路。

## 关键特征

### 共有特征

- 依旧强烈依赖潮湿环境。
- 体型矮小，结构简单，贴近地表生境。

### 关键衍征

- 面对失水、支撑和繁殖环境限制时形成初步适应。
- 逐步建立植物在陆地表面的稳定存在。

### 生理与生态特征

- 常见于滨岸、河岸、湿润地表等环境。
- 是陆地初级生产力扩展的早期阶段。

## 演化历史

### 起源背景

- 光合真核与藻类祖先提供了前史基础。
- 植物登陆不是一次完成，而是一个逐步扩张过程。

### 主要分化

- 这一阶段更重在陆生试探，而非复杂体制高度分化。
- 后续维管组织强化会显著改变植物主线的上限。

## 研究意义

- 把 `plant-landfall.md` 对应的事件窗口接入植物主线。
- 为后续 `vascular-plants.md` 建立清晰前置阶段。

## 可关联条目

- 相关时代：`silurian.md` `devonian.md`
- 相关事件：`plant-landfall.md`
- 相关类群：`plants.md`

## 核心来源

- UCMP, *History of Life Through Time*
- `Paleobotany and the Evolution of Plants`
- `Plant Systematics: A Phylogenetic Approach`

## 争议与说明

- 本页是资料组织桥页，不对应单一严格自然类群。
- 植物登陆涉及多支早期陆生植物的渐进扩展，不宜写成单次跃迁。
```

- [ ] **Step 3: Create the file with the frontmatter and body**

Write `doc/resource/02-clades/early-land-plants.md` using the Step 1 frontmatter and Step 2 body content.

- [ ] **Step 4: Verify the new page structure**

Run: `rg "clade\\.early-land-plants|# 早期陆地植物" "doc/resource/02-clades/early-land-plants.md"`

Expected: matches for the page ID and title.

### Task 2: Add `vascular-plants.md`

**Files:**
- Create: `doc/resource/02-clades/vascular-plants.md`
- Reference: `doc/resource/02-clades/plants.md`
- Reference: `doc/resource/01-timeline/devonian.md`

- [ ] **Step 1: Draft the frontmatter for the second plant bridge page**

```yaml
---
schema_version: "2.0"
type: "clade"
id: "clade.vascular-plants"
slug: "vascular-plants"
title:
  zh-CN: "维管植物"
  en: "Vascular Plants"
  scientific: null
title_short: "维管植物"
summary: "植物主线中的结构升级桥页，用于连接早期陆地植物与森林化阶段。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/vascular-plants.md"
tags:
  time:
    - "devonian"
  clade:
    - "plants"
  event: []
  ecology:
    - "terrestrial"
    - "photosynthesis"
  custom: []
relations:
  parent_ids:
    - "clade.early-land-plants"
    - "timeline.devonian"
  child_ids: []
  related_ids:
    - "clade.plants"
    - "clade.early-land-plants"
    - "timeline.devonian"
  predecessor_ids:
    - "clade.early-land-plants"
  successor_ids:
    - "clade.forest-formation"
time:
  start_ma: 425
  end_ma: 360
  display: "泥盆纪主导的维管组织强化与陆地植物体制升级窗口"
  precision: "approximate"
  chrono_labels:
    - "devonian"
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
    - "asset.vascular-plants.clade-overview"
render:
  color_key: "plants"
  timeline_group: "clade-mainline"
  sort_key: 140
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "主干桥梁页"
  phylo_status: "informal"
  extant: true
  parent_clade_id: "clade.plants"
  sister_clade_ids: []
  representative_species_ids: []
---
```

- [ ] **Step 2: Write the body content**

```md
# 维管植物（Vascular Plants）

## 基本信息

- 分类层级：主干桥梁页
- 系统位置：植物登陆后进入更复杂陆生体制的关键桥页
- 起源时间：志留纪晚期前后已有前奏
- 主要辐射时期：泥盆纪
- 是否现生：是
- 主要标签：`plants` `devonian` `terrestrial` `photosynthesis`

## 类群概述

维管植物这页的任务，是解释植物为什么不再只是贴地生长的潮湿环境成员，而开始具备更强的支撑、输导和高度扩展能力。它是植物主线中的一次结构升级，不只是分类层级上的变化。

这页应突出维管组织、根系和更复杂植物体制对陆地生态位扩张的意义，并明确它如何为森林形成准备条件。

## 关键特征

### 共有特征

- 输导能力与支撑能力显著增强。
- 可占据的陆地生态位更广。

### 关键衍征

- 维管组织强化。
- 根和更复杂地上结构提升水分运输与机械支持。

### 生理与生态特征

- 不再局限于最贴近水源的极窄空间。
- 为更高、更复杂的植物形态打开可能。

## 演化历史

### 起源背景

- 早期陆地植物已经证明植物可以在陆地维持存在。
- 后续问题转向如何提升规模、效率与稳定性。

### 主要分化

- 维管植物出现后，植物主线开始显著拉开体型与功能差距。
- 这一升级直接指向泥盆纪森林化的可能性。

## 研究意义

- 是连接植物登陆和森林化的结构型桥梁。
- 使 `devonian.md` 中植物主线有了更清楚的内部层次。

## 可关联条目

- 相关时代：`devonian.md`
- 相关类群：`plants.md` `early-land-plants.md`
- 相关事件：`plant-landfall.md`

## 核心来源

- UCMP, *History of Life Through Time*
- `Paleobotany and the Evolution of Plants`
- `Plant Systematics: A Phylogenetic Approach`

## 争议与说明

- 本页仍是资料组织用桥页，不展开全部维管植物细分系统。
- 这里强调的是主干结构升级，而不是完整植物系统树。
```

- [ ] **Step 3: Create the file with the frontmatter and body**

Write `doc/resource/02-clades/vascular-plants.md` using the Step 1 frontmatter and Step 2 body content.

- [ ] **Step 4: Verify the new page structure**

Run: `rg "clade\\.vascular-plants|# 维管植物" "doc/resource/02-clades/vascular-plants.md"`

Expected: matches for the page ID and title.

### Task 3: Add `forest-formation.md`

**Files:**
- Create: `doc/resource/02-clades/forest-formation.md`
- Reference: `doc/resource/01-timeline/devonian.md`
- Reference: `doc/resource/01-timeline/carboniferous.md`

- [ ] **Step 1: Draft the frontmatter for the ecological bridge page**

```yaml
---
schema_version: "2.0"
type: "clade"
id: "clade.forest-formation"
slug: "forest-formation"
title:
  zh-CN: "森林化"
  en: "Forest Formation"
  scientific: null
title_short: "森林化"
summary: "植物主线中的生态桥页，用于解释泥盆纪到石炭纪森林系统的形成。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/forest-formation.md"
tags:
  time:
    - "devonian"
    - "carboniferous"
  clade:
    - "plants"
  event: []
  ecology:
    - "terrestrial"
    - "photosynthesis"
  custom: []
relations:
  parent_ids:
    - "clade.vascular-plants"
    - "timeline.devonian"
    - "timeline.carboniferous"
  child_ids: []
  related_ids:
    - "clade.plants"
    - "clade.vascular-plants"
    - "timeline.devonian"
    - "timeline.carboniferous"
  predecessor_ids:
    - "clade.vascular-plants"
  successor_ids:
    - "clade.seed-plants"
time:
  start_ma: 390
  end_ma: 300
  display: "泥盆纪中晚期至石炭纪的森林生态系统成形窗口"
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
    - "asset.forest-formation.clade-overview"
render:
  color_key: "plants"
  timeline_group: "clade-mainline"
  sort_key: 160
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "生态桥梁页"
  phylo_status: "informal"
  extant: false
  parent_clade_id: "clade.plants"
  sister_clade_ids: []
  representative_species_ids: []
---
```

- [ ] **Step 2: Write the body content**

```md
# 森林化（Forest Formation）

## 基本信息

- 分类层级：生态桥梁页
- 系统位置：植物主线中连接维管植物与种子植物阶段的生态系统转折页
- 起源时间：泥盆纪中晚期前后
- 主要辐射时期：泥盆纪、石炭纪
- 是否现生：否
- 主要标签：`plants` `devonian` `carboniferous` `terrestrial`

## 类群概述

森林化不是一个严格的植物类群名称，而是资料库为了组织植物如何重塑陆地生态系统而设置的桥页。它的重要性在于：植物主线在这一阶段不只是“种类变多”，而是开始以森林生态的形式深刻改变地表、水文、土壤和碳循环。

这页的职责是把植物主线从个体结构升级，推进到生态系统工程层面的升级。

## 关键特征

### 共有特征

- 更高、更复杂的植被结构出现。
- 植物开始大规模改造陆地环境。

### 关键衍征

- 森林样生态系统形成。
- 土壤与碳循环反馈显著加强。

### 生理与生态特征

- 对陆地食物网、湿度格局和沉积环境产生持续影响。
- 为后续陆地动物扩张提供更复杂背景。

## 演化历史

### 起源背景

- 维管植物建立了更大体型与输导能力基础。
- 接下来发生的不是单一新类群出现，而是生态系统层级的跃迁。

### 主要分化

- 泥盆纪到石炭纪之间，陆地植被高度、复杂度和覆盖范围显著提升。
- 森林化为后续种子植物扩张提供更稳定的大背景。

## 研究意义

- 为 `devonian.md` 与 `carboniferous.md` 提供植物主线的系统解释。
- 能把植物史与陆地环境史、动物登陆后的生态背景更紧地接起来。

## 可关联条目

- 相关时代：`devonian.md` `carboniferous.md`
- 相关类群：`vascular-plants.md` `seed-plants.md`
- 相关事件：`plant-landfall.md`

## 核心来源

- UCMP, *History of Life Through Time*
- `Paleobotany and the Evolution of Plants`
- `Plant Systematics: A Phylogenetic Approach`

## 争议与说明

- 本页是生态-演化组织桥页，不是严格系统发育类群。
- 写作重点应放在“森林如何形成并改变地表系统”，而不是列举全部古植物分支。
```

- [ ] **Step 3: Create the file with the frontmatter and body**

Write `doc/resource/02-clades/forest-formation.md` using the Step 1 frontmatter and Step 2 body content.

- [ ] **Step 4: Verify the new page structure**

Run: `rg "clade\\.forest-formation|# 森林化" "doc/resource/02-clades/forest-formation.md"`

Expected: matches for the page ID and title.

### Task 4: Add `seed-plants.md`

**Files:**
- Create: `doc/resource/02-clades/seed-plants.md`
- Reference: `doc/resource/01-timeline/carboniferous.md`
- Reference: `doc/resource/01-timeline/permian.md`

- [ ] **Step 1: Draft the frontmatter for the final bridge page**

```yaml
---
schema_version: "2.0"
type: "clade"
id: "clade.seed-plants"
slug: "seed-plants"
title:
  zh-CN: "种子植物"
  en: "Seed Plants"
  scientific: null
title_short: "种子植物"
summary: "植物主线中的后段桥页，用于解释种子策略如何支持更广泛的陆地扩张。"
status: "draft"
priority: 1
aliases: []
naming:
  canonical_path: "doc/resource/02-clades/seed-plants.md"
tags:
  time:
    - "carboniferous"
    - "permian"
    - "triassic"
    - "cretaceous"
  clade:
    - "plants"
  event: []
  ecology:
    - "terrestrial"
    - "photosynthesis"
  custom: []
relations:
  parent_ids:
    - "clade.forest-formation"
    - "timeline.carboniferous"
    - "timeline.permian"
  child_ids: []
  related_ids:
    - "clade.plants"
    - "clade.forest-formation"
    - "timeline.carboniferous"
    - "timeline.permian"
    - "timeline.triassic"
    - "timeline.cretaceous"
  predecessor_ids:
    - "clade.forest-formation"
  successor_ids: []
time:
  start_ma: 320
  end_ma: 0
  display: "石炭纪后期形成并长期主导陆地植物扩张的后段主线"
  precision: "approximate"
  chrono_labels:
    - "carboniferous"
    - "permian"
    - "triassic"
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
  featured_asset_ids:
    - "asset.seed-plants.clade-overview"
render:
  color_key: "plants"
  timeline_group: "clade-mainline"
  sort_key: 180
  default_view: "article"
maintenance:
  authoring_template: "clade-v2"
  source_check_needed: true
clade:
  rank_label: "主干桥梁页"
  phylo_status: "informal"
  extant: true
  parent_clade_id: "clade.plants"
  sister_clade_ids: []
  representative_species_ids: []
---
```

- [ ] **Step 2: Write the body content**

```md
# 种子植物（Seed Plants）

## 基本信息

- 分类层级：主干桥梁页
- 系统位置：植物主线中的后段扩张桥页
- 起源时间：石炭纪晚期前后
- 主要辐射时期：二叠纪及其后
- 是否现生：是
- 主要标签：`plants` `carboniferous` `permian` `terrestrial`

## 类群概述

种子植物这页的任务，是解释植物主线如何摆脱对局部潮湿环境的更强依赖，并把陆地扩张推进到更稳定、更广泛的尺度。这里的重点不是立刻展开裸子植物和被子植物全史，而是把“种子策略”作为植物主线中的关键升级写清楚。

本页应在结尾处点明：后续若继续往第三层扩展，可从这里拆出裸子植物与被子植物等更细分支线。

## 关键特征

### 共有特征

- 繁殖与扩散策略更稳定。
- 更适应多样化陆地环境。

### 关键衍征

- 种子相关结构提升了胚体保护与扩散能力。
- 使植物主线在更广泛环境中维持长期成功。

### 生理与生态特征

- 为后续陆地植物群落长期主导奠定基础。
- 能与后续中生代、新生代植物演化长期衔接。

## 演化历史

### 起源背景

- 森林化已使植物在陆地生态系统中具备更强存在感。
- 接下来的关键问题，是如何在更多环境中稳定繁殖和扩散。

### 主要分化

- 种子策略强化后，植物主线在二叠纪及更晚时代中更具扩张能力。
- 裸子植物、被子植物等后续细化方向可从本页继续拆出，但不属于本轮范围。

## 研究意义

- 把石炭纪、二叠纪及更晚植物主线接成连续后段。
- 为未来中生代和新生代植物细分页面留下稳定上级入口。

## 可关联条目

- 相关时代：`carboniferous.md` `permian.md` `triassic.md` `cretaceous.md`
- 相关类群：`forest-formation.md` `plants.md`
- 相关事件：后续可与被子植物兴起等专题继续互链

## 核心来源

- UCMP, *History of Life Through Time*
- `Paleobotany and the Evolution of Plants`
- `Plant Systematics: A Phylogenetic Approach`

## 争议与说明

- 本页当前只承担植物后段主线桥页职责，不代替裸子植物、被子植物等第三层细分页面。
- 写作应避免过早把中生代和新生代植物史全部塞入本页。
```

- [ ] **Step 3: Create the file with the frontmatter and body**

Write `doc/resource/02-clades/seed-plants.md` using the Step 1 frontmatter and Step 2 body content.

- [ ] **Step 4: Verify the new page structure**

Run: `rg "clade\\.seed-plants|# 种子植物" "doc/resource/02-clades/seed-plants.md"`

Expected: matches for the page ID and title.

### Task 5: Wire README and registries

**Files:**
- Modify: `doc/resource/02-clades/README.md`
- Modify: `doc/resource/06-registry/entity-index.md`
- Modify: `doc/resource/06-registry/relation-index.md`
- Modify: `doc/resource/06-registry/tag-index.md`

- [ ] **Step 1: Update the clade README**

Add the following lines under the plant section in `doc/resource/02-clades/README.md`:

```md
- `early-land-plants.md`：植物登陆后的第一层桥页
- `vascular-plants.md`：维管组织升级与陆地体制扩展
- `forest-formation.md`：泥盆纪到石炭纪的森林化生态桥页
- `seed-plants.md`：种子策略与植物后段长期扩张
```

- [ ] **Step 2: Register the four new clade pages**

Add these rows to `doc/resource/06-registry/entity-index.md` near the existing plant entries:

```md
| `clade.early-land-plants` | `clade` | `doc/resource/02-clades/early-land-plants.md` | `draft` | 植物第二层桥页：登陆后初期陆生阶段 |
| `clade.vascular-plants` | `clade` | `doc/resource/02-clades/vascular-plants.md` | `draft` | 植物第二层桥页：维管组织升级 |
| `clade.forest-formation` | `clade` | `doc/resource/02-clades/forest-formation.md` | `draft` | 植物第二层生态桥页：森林化 |
| `clade.seed-plants` | `clade` | `doc/resource/02-clades/seed-plants.md` | `draft` | 植物第二层桥页：种子策略与后段扩张 |
```

- [ ] **Step 3: Add explicit plant-mainline relations**

Append a plant section to `doc/resource/06-registry/relation-index.md` with:

```md
## 植物主线

| from | relation | to | 说明 |
| --- | --- | --- | --- |
| `clade.plants` | `child` | `clade.early-land-plants` | 植物总览页下接植物登陆后的第一层桥页 |
| `clade.early-land-plants` | `successor` | `clade.vascular-plants` | 从植物登陆后的早期陆生阶段进入维管组织升级阶段 |
| `clade.vascular-plants` | `successor` | `clade.forest-formation` | 从结构升级进入森林化生态系统阶段 |
| `clade.forest-formation` | `successor` | `clade.seed-plants` | 从森林化进入种子策略主导的后段植物主线 |
| `clade.early-land-plants` | `related` | `event.plant-landfall` | 连接植物登陆事件页 |
| `clade.early-land-plants` | `related` | `timeline.silurian` | 对应植物登陆关键时间窗口 |
| `clade.vascular-plants` | `related` | `timeline.devonian` | 对应维管植物显著扩张窗口 |
| `clade.forest-formation` | `related` | `timeline.devonian` | 泥盆纪森林化背景 |
| `clade.forest-formation` | `related` | `timeline.carboniferous` | 石炭纪森林生态持续强化 |
| `clade.seed-plants` | `related` | `timeline.permian` | 种子植物后段扩张关键时间窗口 |
```

- [ ] **Step 4: Update reverse tag entries**

Adjust `doc/resource/06-registry/tag-index.md` so the following tag rows include the new bridge pages:

```md
| `plants` | `clade.eukaryotes` / `clade.plants` / `clade.early-land-plants` / `clade.vascular-plants` / `clade.forest-formation` / `clade.seed-plants` / `event.plant-landfall` / `timeline.devonian` / `timeline.cretaceous` |
| `silurian` | `timeline.paleozoic-overview` / `timeline.silurian` / `event.plant-landfall` / `clade.early-land-plants` |
| `devonian` | `timeline.devonian` / `clade.fishes` / `clade.amphibians` / `clade.vascular-plants` / `clade.forest-formation` / `event.vertebrate-landfall` / `event.plant-landfall` / `species-card.tiktaalik-roseae` / `species-card.ichthyostega` |
| `carboniferous` | `timeline.paleozoic-overview` / `timeline.carboniferous` / `clade.forest-formation` / `clade.seed-plants` / `event.vertebrate-landfall` |
| `permian` | `timeline.paleozoic-overview` / `timeline.permian` / `timeline.permian-end-crisis` / `clade.seed-plants` |
| `terrestrial` | `clade.plants` / `clade.early-land-plants` / `clade.vascular-plants` / `clade.forest-formation` / `clade.seed-plants` / `event.plant-landfall` / `event.vertebrate-landfall` / `timeline.silurian` / `timeline.devonian` / `timeline.carboniferous` / `timeline.permian` / `timeline.triassic` / `timeline.jurassic` / `timeline.cretaceous` / `species-card.tiktaalik-roseae` / `species-card.ichthyostega` |
| `photosynthesis` | `event.great-oxidation-event` / `species-card.stromatolite-microbial-mats` / `clade.early-life` / `clade.early-land-plants` / `clade.vascular-plants` / `clade.forest-formation` / `clade.seed-plants` |
```

- [ ] **Step 5: Verify the index wiring**

Run:

```bash
rg "early-land-plants|vascular-plants|forest-formation|seed-plants" "doc/resource/02-clades/README.md" "doc/resource/06-registry/entity-index.md" "doc/resource/06-registry/relation-index.md" "doc/resource/06-registry/tag-index.md"
```

Expected: matches in all four files.

### Task 6: Final review and validation

**Files:**
- Review: `doc/resource/02-clades/early-land-plants.md`
- Review: `doc/resource/02-clades/vascular-plants.md`
- Review: `doc/resource/02-clades/forest-formation.md`
- Review: `doc/resource/02-clades/seed-plants.md`
- Review: `doc/resource/02-clades/README.md`
- Review: `doc/resource/06-registry/entity-index.md`
- Review: `doc/resource/06-registry/relation-index.md`
- Review: `doc/resource/06-registry/tag-index.md`

- [ ] **Step 1: Check that all frontmatter IDs and successor links agree**

Run:

```bash
rg "id: \"clade\\.(early-land-plants|vascular-plants|forest-formation|seed-plants)\"|successor_ids:|predecessor_ids:" "doc/resource/02-clades/early-land-plants.md" "doc/resource/02-clades/vascular-plants.md" "doc/resource/02-clades/forest-formation.md" "doc/resource/02-clades/seed-plants.md"
```

Expected: all four IDs exist and successor/predecessor links form one linear chain.

- [ ] **Step 2: Check that timeline links match the spec**

Run:

```bash
rg "timeline\\.(silurian|devonian|carboniferous|permian|triassic|cretaceous)" "doc/resource/02-clades/early-land-plants.md" "doc/resource/02-clades/vascular-plants.md" "doc/resource/02-clades/forest-formation.md" "doc/resource/02-clades/seed-plants.md" "doc/resource/06-registry/relation-index.md"
```

Expected: `silurian` appears with early land plants, `devonian` with vascular plants and forest formation, `carboniferous` and `permian` with forest formation or seed plants, and later-era mentions only appear in `seed-plants.md`.

- [ ] **Step 3: Check workspace diff before implementation handoff or commit**

Run: `git status --short`

Expected: only the four new clade pages plus the four index files are changed.

- [ ] **Step 4: Commit when the user explicitly asks for it**

```bash
git add doc/resource/02-clades/early-land-plants.md doc/resource/02-clades/vascular-plants.md doc/resource/02-clades/forest-formation.md doc/resource/02-clades/seed-plants.md doc/resource/02-clades/README.md doc/resource/06-registry/entity-index.md doc/resource/06-registry/relation-index.md doc/resource/06-registry/tag-index.md
git commit -m "Add second-layer plant mainline skeleton."
```

Do not perform this step unless the user asks for a commit.
