# 来源登记册

本登记册用于把资料库中反复使用的核心来源登记为可复用条目，避免每次写正文时只留下模糊书名或网站名。

## 使用原则

- 新条目优先复用本登记册中的来源名称与用途说明。
- 若新增高频来源，应先在此登记，再在正文中引用。
- 登记册记录“来源适合支持什么”，不直接替代具体条目的“核心来源”列表。

## 推荐记录字段

- 来源 ID
- 来源名称
- 类型：标准机构 / 数据库 / 博物馆 / 大学页面 / 教材 / 专著 / 通俗书
- 证据等级倾向：`A` / `B` / `C`
- 适用范围：年代 / 类群 / 事件 / 物种卡
- 适合支持的断言
- 不适合单独支持的断言
- 备注：版本、访问日期或使用提醒

## 第一批登记来源

### `source.ics` International Commission on Stratigraphy

- 类型：国际标准机构
- 证据等级倾向：`A`
- 适用范围：时间主轴、事件页、类群首次出现时间
- 适合支持的断言：年代边界、纪/世名称、时间框架
- 不适合单独支持的断言：复杂演化机制、系统位置争议
- 官方入口：https://stratigraphy.org/
- 主要链接：
  - 最新补充页：https://stratigraphy.org/supplementary
  - 当前图表 PDF（2024/12）：https://stratigraphy.org/ICSchart/ChronostratChart2024-12.pdf
- 备注：优先使用最新图表版本；正文中若引用具体年代边界，尽量注明所用图表版本号。

### `source.usgs` U.S. Geological Survey

- 类型：政府机构
- 证据等级倾向：`A`
- 适用范围：年代单位解释、方法说明
- 适合支持的断言：地质年代定义、地层与化石方法背景
- 不适合单独支持的断言：具体物种系统位置
- 官方入口：https://www.usgs.gov/
- 备注：更适合作为地质年代、地层术语和方法背景的解释来源，不作为具体演化关系的唯一依据。

### `source.pbdb` Paleobiology Database

- 类型：学术数据库
- 证据等级倾向：`A`
- 适用范围：类群页、物种卡、分布与出现区间
- 适合支持的断言：化石记录、产地、地层区间、分布
- 不适合单独支持的断言：单一机制解释、宏观理论结论
- 官方入口：https://paleobiodb.org/
- 主要链接：
  - 主站：https://paleobiodb.org/
  - Navigator：https://paleobiodb.org/navigator/
  - Data Service 文档：https://paleobiodb.org/data1.2/
- 备注：适合核查“出现在哪里、分布多广、时间区间如何”，不适合单独支撑机制解释。

### `source.open-tree-of-life` Open Tree of Life

- 类型：学术数据库
- 证据等级倾向：`A`
- 适用范围：类群页、系统位置说明
- 适合支持的断言：上下级分类、综合生命树位置
- 不适合单独支持的断言：具体生态行为和化石保存细节
- 官方入口：http://www.opentreeoflife.org/
- 浏览入口：https://tree.opentreeoflife.org/
- 备注：更适合作为系统位置和谱系浏览入口，不能替代化石记录与具体古环境证据。

### `source.timetree` TimeTree

- 类型：学术数据库
- 证据等级倾向：`A` 到 `B`
- 适用范围：类群分歧时间旁注
- 适合支持的断言：分歧时间参考范围
- 不适合单独支持的断言：化石首次出现时间、某物种具体地层记录

### `source.ucmp-history-of-life` UC Museum of Paleontology

- 类型：大学古生物博物馆 / 教学资源
- 证据等级倾向：`B`
- 适用范围：时间主轴、总览页、事件页
- 适合支持的断言：生命史主线、教学型综述、时代背景
- 不适合单独支持的断言：最细节的分类争议和最新学术分歧
- 官方入口：https://ucmp.berkeley.edu/
- 主要链接：
  - History of Life Through Time：https://ucmp.berkeley.edu/exhibits/historyoflife.php
  - Online Resources：https://ucmp.berkeley.edu/online-exhibits/
- 备注：适合做综述页、教学型时间主线和概念整理；若涉及具体争议问题，应再补论文或教材来源。

### `source.major-museums` Smithsonian / AMNH / NHM 相关页面

- 类型：国家级博物馆或馆藏入口
- 证据等级倾向：`B`
- 适用范围：物种卡、研究史、馆藏背景
- 适合支持的断言：代表标本、发现背景、教学型专题说明
- 不适合单独支持的断言：高度争议的理论结论
- 官方入口示例：
  - Smithsonian Ocean Through Time：https://www.ocean.si.edu/through-time
  - Smithsonian Devonian 专题：https://www.ocean.si.edu/through-time/bony-beginnings-rise-vertebrate-innovation-devonian
- 备注：适合补充“代表性案例如何讲给读者看懂”，但不建议单独用来裁定学术争议。

### `source.core-books` Benton / Harper / Knoll / Clack / Prothero 等核心书目

- 类型：教材或专题专著
- 证据等级倾向：`A` 到 `B`
- 适用范围：类群页、事件页、物种卡
- 适合支持的断言：主流学科框架、专题深挖、关键案例解释
- 不适合单独支持的断言：最新单篇论文层面的前沿微争议
- 代表书目入口：
  - Andrew H. Knoll, *Life on a Young Planet*：https://press.princeton.edu/books/paperback/9780691165530/life-on-a-young-planet
  - Michael J. Benton, *Vertebrate Palaeontology* (5th ed.)：https://www.wiley.com/en-us/Vertebrate+Palaeontology,+5th+Edition-p-9781394195084
  - Jennifer A. Clack, *Gaining Ground* (2nd ed.)：https://iupress.org/9780253005373/gaining-ground-second-edition/
  - John Maynard Smith / Eors Szathmary, *The Origins of Life*：https://books.google.com/books?id=n0_fAGe13NQC
- 备注：适合支持主流框架与经典问题拆解；引用时最好写明具体作者与书名，而不是只写“核心书目”。
