# 标签体系

标签用于在“时间主轴、演化支系、关键事件、物种卡片”之间建立交叉索引。

## 推荐标签维度

### 1. 时间标签

- `hadean`
- `archean`
- `proterozoic`
- `cambrian`
- `ordovician`
- `silurian`
- `devonian`
- `carboniferous`
- `permian`
- `triassic`
- `jurassic`
- `cretaceous`
- `paleogene`
- `neogene`
- `quaternary`

### 2. 支系标签

- `early-life`
- `bacteria`
- `archaea`
- `eukaryotes`
- `plants`
- `fungi`
- `invertebrates`
- `vertebrates`
- `fishes`
- `amphibians`
- `reptiles`
- `birds`
- `mammals`

### 3. 事件标签

- `origin-of-life`
- `great-oxidation-event`
- `cambrian-explosion`
- `plant-landfall`
- `vertebrate-landfall`
- `mass-extinction`
- `adaptive-radiation`

### 4. 生态与机制标签

- `marine`
- `freshwater`
- `terrestrial`
- `photosynthesis`
- `multicellularity`
- `hard-parts`
- `flight`
- `amniotic-egg`

## 使用建议

- 每个条目至少挂 1 个时间标签与 1 个主题标签。
- 物种卡片优先挂：时间标签 + 支系标签 + 事件标签。
- 大事件条目优先挂：时间标签 + 事件标签 + 影响支系标签。
- 不要为单个文件发明过多私有标签，先复用现有体系。

## 第一阶段推荐组合

为保证首批条目写法统一，建议优先使用以下组合：

- `origin-of-life.md`：`hadean` `archean` `origin-of-life` `early-life`
- `precambrian-overview.md`：`hadean` `archean` `proterozoic` `early-life` `multicellularity`
- `cambrian.md`：`cambrian` `cambrian-explosion` `invertebrates` `marine`
- `devonian.md`：`devonian` `fishes` `plants` `vertebrate-landfall` `terrestrial`
- `early-life.md`：`archean` `proterozoic` `early-life` `bacteria` `archaea` `eukaryotes`
- `plants.md`：`plants` `plant-landfall` `terrestrial` `photosynthesis`
- `invertebrates.md`：`invertebrates` `cambrian` `marine` `hard-parts`
- `fishes.md`：`fishes` `vertebrates` `devonian` `freshwater`
- `great-oxidation-event.md`：`proterozoic` `great-oxidation-event` `photosynthesis` `early-life`
- `cambrian-explosion.md`：`cambrian` `cambrian-explosion` `adaptive-radiation` `invertebrates`
- `plant-landfall.md`：`silurian` `devonian` `plant-landfall` `plants` `terrestrial`
- `vertebrate-landfall.md`：`devonian` `vertebrate-landfall` `fishes` `amphibians` `terrestrial`

## 受控使用原则

- 第一阶段先固定现有标签，不额外新增私有标签。
- 若条目需要新标签，优先先在 `index-map.md` 标记待讨论，再统一补充到本文件。
- 对“鱼类”“无脊椎动物”这类组织性名称，可继续作为资料库标签使用，但正文应说明其并非严格单系名称。
