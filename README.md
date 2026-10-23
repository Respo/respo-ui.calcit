
Respo UI for calcit-js
----

### Usages

Find details in https://ui.respo-mvc.org/ .

```css
@import url(cirru-color/assets/cirru.css);
```

### 主线的 Store 类型合同

文档站的 `Store` 定义使用 `StructDef` 元数据，初始值保留名义 `Store` 类型；
`calcit query type respo-ui.schema/Store` 因而展示真实 Struct 的方法，而非 Enum 方法。
Store 字段更新和 CSS token Map 写入使用已有 `.assoc`，由编译器完成字段与容器 lowering。
状态 updater 位于 `respo-ui.updater/updater`，与浏览器启动代码分开，便于独立回放状态行为。
组件接口、样式、依赖与版本声明不变；状态 payload 和路由 Map 的内部值仍保留原开放边界。

### 0.8.0

New components: `comp-radio-group`, `comp-field`, `comp-badge`, `comp-breadcrumb`,
`comp-pagination`, `comp-steps`, `comp-collapse`, `comp-kbd` and `comp-tooltip`.
`comp-input` and `comp-textarea` take an `:on-change` callback that receives the
value and `d!`. The full list with signatures and examples is in
[docs/components.md](docs/components.md); it is generated from the definitions.

新增组件：单选组、表单字段、徽标、面包屑、分页、步骤条、折叠面板、按键提示和
文字提示。`comp-input` 与 `comp-textarea` 新增 `:on-change`，回调收到输入值和 `d!`。
完整列表见 [docs/components.md](docs/components.md)。0.8.0 已正式发布，配对正式 Calcit 0.30.1；
依赖版本及升级边界见下文。

### Dependency boundary

`respo-ui` provides styles and UI primitives. It depends on the lower-level
`respo-router`, but no longer depends on `respo-markdown`; Markdown rendering
depends on UI in the opposite direction. Showcase pages use the lightweight
local `respo-ui.comp.docs/comp-doc-block`, which keeps the package graph
acyclic and allows releases to use stable tags without cross-version pins.

`respo-ui` 提供样式与 UI 原语。它依赖更底层的 `respo-router`，但不再依赖
`respo-markdown`；Markdown 渲染保持从 Markdown 指向 UI 的单向依赖。展示页面
使用本地轻量 `respo-ui.comp.docs/comp-doc-block`，从而保持依赖图无环，并允许
所有模块使用稳定 tag 发版而不产生交叉版本 pin。

CI 使用 `caps --strict --ci` 安装正式发布图，检查 Snapshot
格式、严格类型、附带测试与实际 JS/SSR 语义，再使用 Node 24/Vite 构建。

### COS / CDN 部署

前端资源使用 COS Action 正式版 1.2.0；配置 `public-base-url` 即启用
Action 内置的逐文件公网下载与 checksum 校验，沿用默认 `verify-*` 参数，
不额外维护上传校验脚本。同仓库 PR 的资源路径为
`Respo/respo-ui.calcit/pr/<PR>/<run-id>/<attempt>/`，避免不同 PR 或重跑相互覆盖。
生产 COS 前缀仍为 `Respo/respo-ui.calcit/`，原服务器部署路径不变；
生产运行排队执行，不取消正在上传的任务。Fork PR 仅构建，不使用部署 secrets。

### Calcit 0.30.1 配对迁移

使用者影响：UI `0.8.0` 正式版使用已发布的 Respo `0.16.124`、Router `0.8.37`
和 JS-FFI `0.2.5`，Calcit CLI/runtime 成对固定为正式 `0.30.1`。
保留 main 现有的 0.8.0 新组件和输入回调 API，不退回 0.7.x，也不切换至
Respo 0.17 的破坏性 dispatch 接口。本次配对不改组件源码、样式、路由或渲染行为；
应用中的其他模块也需请求相同的 Respo / Router / JS-FFI
版本，不能只改根依赖或放宽 Caps strict。使用正式 tag `0.8.0`，不要以候选分支代替发布依赖。

路由适配先处理 Map 查询的 Option，再校验路径 List 与首个 Enum；缺失或空路径
回到首页。404 payload 按 Router 的真实契约校验为 `List<String>`，再以 `/` 拼接为
`PageRoute :not-found` 的 String，不使用 `assert-type` 假装运行时解码。
Skeleton 缺省 kind 为文本形状，缺省 style 为无覆盖；显式 circle、可访问标签和
样式覆盖保持不变。

升级与排查优先使用现有 CLI：

```bash
caps --strict --ci
yarn install --immutable
caps deps.cirru verify --toolchain
calcit calcit.cirru query context respo-ui.schema/route-from-router --format edn
calcit calcit.cirru --check-only --all-defs
calcit fix --workflow strict --verify --format json | jq -e '.data.workflow.status == "passed" and .diagnostics == []'
calcit calcit.cirru test --exclude-tag js-only --require-match
yarn test:js
calcit calcit.cirru --check-only --ns respo-ui.schema --ns respo-ui.comp
calcit calcit.cirru js
yarn vite build
```

CI 保留 21 个项目命名空间的显式检查，并将普通入口检查替换为全定义检查。
当前基线含 11 项 native 测试，JS 重放全部 22 项附带测试。
路由 `:tests` 在 native 与真实生成 JS 中重放同一份 AST；JS 另验证
3 组 skeleton 渲染、首页、Design、Layouts、Widgets、Fonts、Components、Utils
全部 7 个展示入口，以及 33 个组件独立页面的 SSR。Attributes demo
使用完整的 `AttributesOptions`，组件先解包各 Option 字段再生成 CSS/DOM 属性，
不将业务 Map 冒充具名 Struct。回放只通过 CLI 修改
隔离 Snapshot，不修改 canonical 源码或模块缓存，也不修补生成文件的跨模块路径。
组件 CSS 依赖 JS 宿主，不宣称支持 native 或 WASM 渲染。

`0.8.0` 发布提交为 `2fe5e239010585d11f7283c2aafbf9792bc26cba`，合并后的
[main CI 与原 Demo 部署](https://github.com/Respo/respo-ui.calcit/actions/runs/39570598757)
通过；[正式 release](https://github.com/Respo/respo-ui.calcit/releases/tag/0.8.0)
已发布。Message 原源码在同图下的全定义 181/181、完整 strict、原 unit 4/4 和 JS
codegen 通过；源码回归不代表 Message 自身的 npm 图已迁移，也不代替
Reel/Alerts/Diary 的完整应用验收。

Snapshot 只修正主页 Quick start 中过期的 alpha 编译器版本示例，组件实现不变。
文档生成、组件元数据和设计 token 回归改用官方 CLI 查询的
AST，不再正则解析 Snapshot 序列化文本；示例通过 runtime 的 Cirru formatter
生成，排版变化不改变表达式。原测试断言保留，不新增上传校验或另一套质量脚本。
正式配对由 Linux CI 的正常 Caps 安装、不可变 Yarn 锁文件、完整 strict、公开定义、
示例和原 JS 回归验证。原 CI 还加载已发布 Message 0.1.0-alpha.1 源码，使用隔离模块视图
验证当前 UI 候选和同一正式底层依赖图：全定义、完整 strict、原 unit 测试及 JS codegen。
消费者 Snapshot 源码不变；兼容性测试副本使用 UI 已通过安装验证的 manifest、lock 和
宿主 runtime，仍执行 strict 版本预检，不修改 Message 自身的包安全策略。
该检查不验收 Message 自己的 npm 发布图，也不是其正式迁移完成的声明。
Message 原 JS 渲染回归、完整浏览器交互另行验收，SSR 不代替它们。
现有开放样式值、状态载荷和 FFI unsafe 边界仍需逐项收窄，本次依赖配对不表示
类型债务清零。

0.7.36 的 demo updater 在操作边界检查状态 cursor 的 List 容器、导航 String 和
路由 Map。状态更新复用原 `update-state-tree`，校验外层状态 Map 后写回已知 Store 字段，
不把已知 Struct 再交给 Map decoder，不插入业务默认值。原根路径及嵌套 String/Number
key 行为保持，未知操作仍返回原 Store。动态状态值和路由载荷的后续收窄仍是未完成项。

### Option 原语迁移与验证

组件内部使用公开 `get` 返回的 Option，明确区分缺失与存在的值；checkbox/switch
保留原缺省与 Bool 校验，select 保留原字符串转换和错误传播。属性表缺失 value 时
仍不生成节点，不用空文本节点替代；`false`、`0`、空字符串和已有子节点保持原行为。
组件参数与业务回调类型不变，不增加 Dynamic 或 unsafe。

验证保留当前 11 项 native 测试，JS 重放全部 22 项附带测试（包含
`js-only` 属性渲染回归），并通过真实生成的事件回调验证缺失、nil、有效值、错误
载荷和 dispatch 失败。原 3 组 skeleton 与 7 个展示入口 SSR、严格检查、示例、
dynamic-method 零命中、文档、构建及浏览器交互验收继续保留。

移除过期的汇总/逐定义纯计数基线，以严格类型和可观察行为判断正确性；不以
Dynamic、nil 等出现次数替代类型安全，不提高预算或放宽类型。历史记录中的旧预算
只表示当时的验证方式。新正式配对 CLI/runtime 与依赖图验收完成前不发布本次迁移。

### 条件样式、属性与子节点

条件 class 在两个分支分别组合完整字符串，不把无 else 的 `if` 结果传给
`str-spaced`；保留原有空白，不能用空字符串代替缺失项。可选 DOM 属性通过
条件 Map 合并表达，不生成空属性。可选子节点通过现有 `create-list-element`
组合带 key 的子列表；关闭条件时使用空列表，不生成占位节点。

数字 key 必须沿用原来的参数位置，例如 card 缺失标题时正文仍为 `1`，不能在
过滤后重新编号。组件 `:tests` 对照正式 alpha.1 配对观察到的精确 SSR，覆盖
条件开关、class 空白和属性缺失；card/badge、侧栏和展示站布局另断言子节点 key。
本轮保留原 27 项附带测试并新增 14 项，原 16 项 native 测试不变。这些测试由原
`yarn test:js` 重放，不新增平行检测入口，也不代替新版工具链的完整 strict、
浏览器交互和发布配对验收。

### Typed tab callbacks / 带类型的 tab 回调

`comp-tabs` preserves the caller's operation type in its `on-route` callback:
the second argument is `Fn<Op, Unit>`, not an opaque `DynFn`. The event adapter
forwards each operation to Respo's dispatch function, like `comp-select` does.
Callers can dispatch their own typed operations without assertions; no global
dispatch type slot is required by this component library.

In the 0.7.37 migration candidate, `tabs` is `List<TabRoute<Value>>`, matching
`TabsOptions<Value>` and the callback's route value. Construct each item with
`respo-ui.schema/TabRoute :tab value label`; the label is a String. Existing
Map or anonymous Enum items must be migrated at the caller before upgrading.
The component no longer maintains an untyped item-normalization branch.

`comp-tabs` 的 `on-route` 回调保留调用方的操作类型，第二个参数为
`Fn<Op, Unit>`，而不是不能直接调用的 `DynFn`。事件适配器与 `comp-select`
一样将操作转发给 Respo dispatch；调用方无需强转即可发送自己的带类型操作，
组件库也不要求绑定全局 dispatch 类型槽。

0.7.37 候选要求项目列表为 `List<TabRoute<Value>>`，与选择值及回调关联。
旧 Map/匿名 Enum 项目需在升级调用方时改用已有的具名 `TabRoute` 构造器，
保留原 value/label；这里不放宽成 Dynamic，也不新增兼容改写规则。

### Typed options shorthand / 组件选项简写

`respo-ui.schema/opts` builds a typed options value without repeating
`Option :some` on every field. Fields you leave out stay `Option :none`.
Inside components, `field-or` reads a field with a default and `option-field`
keeps it as an Option; `read-field` still returns nil and is meant for DOM props,
where nil leaves the attribute out.

`opts` 用于构造组件选项，省去每个字段的 `Option :some`，未写的字段保持
`Option :none`。组件内部用 `field-or` 读取带缺省值的字段，用 `option-field`
保留 Option；`read-field` 仍返回 nil，只用于 DOM 属性。

```cirru
ns app.demo $ :require
  respo-ui.schema :refer $ opts field-or option-field ButtonOptions

let
    options $ opts ButtonOptions :kind :primary :type |submit
  assert= :primary $ field-or options :kind :neutral
  assert= false $ field-or options :disabled false
  assert= true $ .none? $ option-field options :on-click
```

### License

MIT
