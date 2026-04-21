# 资料库 2.0 新增条目流程

本文件用于固定资料库 2.0 的新增条目顺序，避免继续回到“先写正文、后补登记、最后再找素材”的松散模式。

核心原则只有一句话：先注册，再建页，再挂素材，最后考虑导出。

## 为什么要固定顺序

如果先写正文，再回头补 `id`、关系、素材和导出字段，通常会出现四类问题：

- 同一个条目被不同文件用不同名字引用，后续难以统一。
- 正文已经写了很多，但 `frontmatter` 与 registry 没跟上，无法做结构化查询。
- 素材提前散落进正文目录，后面难以复用，也难以补来源和授权说明。
- HTML timeline、游戏、3D 展示要消费数据时，不得不直接解析正文，维护成本很高。

因此，2.0 之后所有新增条目都按同一顺序推进。

## 标准顺序

### 第 1 步：先确认条目类型和定位

先确认它属于哪一类，再决定应该落在哪个目录：

- `timeline`：时间主轴、时代综述、纪/代/宙级入口
- `clade`：类群主线、综合支系、系统位置组织页
- `event`：关键演化事件、环境转折、大灭绝或辐射事件
- `species-card`：代表物种、过渡型、结构型案例卡
- `source-tool`：来源工具、矩阵、清单、规则与入口页

这一阶段先解决“它是什么”，不要急着写长正文。

### 第 2 步：先在 registry 里注册

在正式建页前，先把条目登记进 `06-registry` 相关文件。

至少要先处理这些内容：

- 在 `doc/resource/06-registry/entity-index.md` 增加一条新记录
- 确认稳定 `id`
- 确认 `type`
- 确认主路径 `path`
- 确认初始 `status`
- 在需要时补 `timeline-index.md`、`tag-index.md`、`relation-index.md`

推荐最小检查项：

- `id` 是否唯一
- `slug` 是否稳定且适合后续 URL / 导出使用
- 条目是否已经被别处以另一个名字占用
- 是否已经明确上级页、相关页和前后跳关系

### 第 3 步：再创建正文页并先写 frontmatter

registry 建好后，再去 `01-04` 对应目录创建正文文件。

创建时不要先写正文段落，而是先填完整 frontmatter。最低要求包括：

- `schema_version`
- `type`
- `id`
- `slug`
- `title`
- `summary`
- `naming.canonical_path`
- `tags.*`
- `relations.*`
- `time.*`
- `sources.*`
- `maintenance.*`
- 对应类型的专属字段块，例如 `timeline` / `clade` / `event` / `species_card`

建议做法：

- 优先从 `doc/resource/templates/` 复制最接近的模板
- 先把可确定字段填满，再写正文
- 暂时不确定的字段允许留空，但不能跳过 `id`、`type`、`path`、关系和时间主字段

### 第 4 步：再写正文主干

当 frontmatter 已经可用后，再补正文。

正文阶段应专注于：

- 解释
- 叙述
- 证据分层
- 争议说明
- 阅读路径与互链入口

正文不应再承担这些职责：

- 充当条目唯一身份定义
- 充当素材登记表
- 充当关系索引表
- 充当导出数据源本体

也就是说，结构化字段放 frontmatter 和 registry，解释性内容放正文。

### 第 4.5 步：凡引用外部资料，都写清来源名、用途和入口

在补正文时，如果引用了外部资料，不要只留下模糊名字，例如“wiki”“某本书”“某网站”。

最低要求：

- 写清来源名称
- 写清这条来源主要用来支持什么
- 能给链接的尽量给链接
- 如果是书，至少给作者、书名，以及出版社页 / Google Books / DOI / 馆藏入口之一

推荐做法：

- 高频来源先登记进 `doc/resource/06-registry/source-registry.md`
- 正文里的“核心来源”部分尽量写成“来源名 + 用途备注 + 链接”
- 如果某条断言明显来自教学型网站，应注明这是“教学综述用途”，不要伪装成原始研究

不推荐的写法：

- 只写“维基百科”
- 只写“某论文”
- 只写“Benton 那本书”
- 只放来源 ID，不给读者任何可追溯入口

### 第 5 步：再挂素材，不要先塞图片

正文和 frontmatter 稳定后，再处理素材。

标准做法是：

- 先在 `07-assets/` 中为素材建立记录
- 给素材分配 `asset_id`
- 记录 `path`、`license`、`source_ref_id`、`related_entity_ids`
- 再回到正文 frontmatter 中填写 `assets.featured_asset_ids`

不要反过来做，也不要把图片先随手塞进正文目录里。

素材阶段最低检查项：

- 素材是否有稳定 `asset_id`
- 是否记录来源和授权状态
- 是否能复用到多个条目，而不是绑定在单篇正文里
- frontmatter 是否只挂接素材 ID，而不是内嵌素材清单细节

### 第 6 步：最后再考虑导出与消费字段

只有当 registry、frontmatter 和素材挂接都成立后，才进入导出层。

如果该条目未来要用于：

- HTML timeline
- 游戏百科
- 3D 展示
- 搜索与过滤界面

再去核对 `08-exports/` 下的 schema，并补足必要字段。

导出层的原则是：

- 优先读取 frontmatter 和 registry
- 不直接依赖长正文解析
- 导出数据应是可再生成的，而不是手工复制正文

## 最小落地清单

新增一个正文条目时，至少完成下面 8 项：

1. 确认条目类型和主目录
2. 确认稳定 `id` 与 `slug`
3. 在 `entity-index.md` 注册
4. 必要时补时间、标签、关系索引
5. 用模板创建正文文件
6. 先补完整 frontmatter
7. 再写正文主干
8. 再挂素材与导出字段

## 不同类型的额外提醒

### `timeline`

- 优先明确时间边界与上下时代关系
- `timeline.major_clade_ids`、`major_event_ids`、`featured_species_ids` 应尽早确定

### `clade`

- 明确这是严格系统单元还是资料组织型综合页
- 如果不是严格单系群，应在 `clade.phylo_status` 和正文中同时说明

### `event`

- 先区分“事件发生本身”与“事件机制解释”
- `certainty_of_occurrence` 和 `certainty_of_mechanism` 不要混写

### `species-card`

- 先分清这是单一物种、属级代表，还是结构型 / 群落型案例卡
- 过渡型条目优先补 `transition_significance`

### `source-tool`

- 不要和正文页混目录职责
- checklist、matrix、问句入口、专题工作台优先放在 `09-workbench/`

## 与现有目录的对应关系

新增条目时，建议按下面顺序查入口：

- 定义类型和命名：`doc/resource/00-index/`
- 建立结构登记：`doc/resource/06-registry/`
- 创建正文页：`doc/resource/01-timeline/` 到 `doc/resource/04-species-cards/`
- 管理来源入口：`doc/resource/05-sources/`
- 管理素材挂接：`doc/resource/07-assets/`
- 规划导出消费：`doc/resource/08-exports/`
- 使用清单与矩阵辅助写作：`doc/resource/09-workbench/`

## 一句话执行版

以后新增任何条目，都按这条短流程执行：

先定类型和 `id` -> 先做 registry 注册 -> 先写 frontmatter -> 再写正文 -> 再挂素材 -> 最后补导出。
