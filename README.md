
Respo UI for calcit-js
----

### Usages

Find details in https://ui.respo-mvc.org/ .

```css
@import url(cirru-color/assets/cirru.css);
```

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

### Calcit 0.30 稳定版迁移

使用者影响：UI `0.7.40` 候选协调使用 Respo `0.16.120`、Router `0.8.35`
和正式 JS-FFI `0.2.3`，Calcit CLI/runtime 同步固定正式 `0.30.0`。
本 patch 不改变组件 API、样式、路由或渲染行为；应用其他模块也需请求相同的
Respo / JS-FFI 版本，不能只改根依赖或放宽 Caps 严格解析。
应用若仍锁定 Router `0.8.34`，也需同步升级为 `0.8.35`；不要只升级根依赖，
或放宽 Caps strict 来掩盖精确版本冲突。本模块正式发版前，不要将候选分支视为已发布依赖。

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
calcit calcit.cirru --check-only
calcit calcit.cirru test --exclude-tag js-only --require-match
yarn test:js
calcit calcit.cirru --check-only --ns respo-ui.schema --ns respo-ui.comp
calcit calcit.cirru js
yarn vite build
```

完整公开检查仍覆盖原 17 个命名空间（264 个定义）；原 2 项附带测试、15 个 schema
示例和 14 个 JS component 示例保留。新增路由 `:tests` 在 native 与
真实生成 JS 中重放同一份 AST；JS 另验证 3 组 skeleton 渲染，以及首页、Layouts、
Widgets、Fonts、Components、Utils 全部 6 个真实展示入口的 SSR。Attributes demo
使用完整的 `AttributesOptions`，组件先解包各 Option 字段再生成 CSS/DOM 属性，
不将业务 Map 冒充具名 Struct。回放只通过 CLI 修改
隔离 Snapshot，不修改 canonical 源码或模块缓存，也不修补生成文件的跨模块路径。
组件 CSS 依赖 JS 宿主，不宣称支持 native 或 WASM 渲染。

最新 HEAD 的 Actions/review 通过、合并提交部署成功之后才发布 UI 模块。
该步骤不代替 Reel/Alerts/Diary 的完整应用验收。

0.7.40 候选不修改 Snapshot、组件 API、样式或业务回调，只更新正式工具链与
Router 版本，并让 CI 显式断言 strict workflow 成功。原 9 项 native、10 项
JS 附带断言、15 个 schema 示例、14 个 JS component 示例、3 组 skeleton 与
6 个展示页 SSR 均保留。完整公开检查为 264/264，完整 strict 通过；现有
37 处未解决 Dynamic（35 个定义）和已有 FFI unsafe 边界仍存在，不宣称类型债务清零。

面向 0.30.1 的只读探测另行记录：正式 Respo `0.16.120` 的 Option 原语用法
仍会阻塞 alpha.4；临时仅替换为 Respo PR #269 后，UI core/comp 公开定义
116/116 通过。这不是正式依赖图验收，也不把本模块或消费者固定到 alpha。

此前 0.7.35 组合已通过严格 Caps 依赖图、CLI/runtime 配对、不可变锁文件、444 项严格
检查（含可达依赖）、264 项完整公开定义检查、原有 9 项 native/JS 附带测试、
15 个 schema 示例、14 个 JS component 示例和生产构建。浏览器中检查了全部 6 个
展示入口、文本输入、checkbox/select、后退和刷新，控制台无错误；开发模式仍有
原来的缺少 mode 配置提示。路由表 schema 收紧为 `List<Enum>`，不改变路由数据格式；
当时仍有未解决类型债务及已有 unsafe 边界，不能视为全部类型闭合。
这些历史结果不能代替 0.7.37 候选在新正式依赖上的完整验收。

0.7.36 的 demo updater 在操作边界检查状态 cursor 的 List 容器、导航 String 和
路由 Map。状态更新复用原 `update-state-tree`，校验外层状态 Map 后写回已知 Store 字段，
不把已知 Struct 再交给 Map decoder，不插入业务默认值。原根路径及嵌套 String/Number
key 行为保持，未知操作仍返回原 Store。动态状态值和路由载荷的后续收窄仍是未完成项。

### Option 原语迁移与验证

组件内部使用公开 `get` 返回的 Option，明确区分缺失与存在的值；checkbox/switch
保留原缺省与 Bool 校验，select 保留原字符串转换和错误传播。属性表缺失 value 时
仍不生成节点，不用空文本节点替代；`false`、`0`、空字符串和已有子节点保持原行为。
组件参数与业务回调类型不变，不增加 Dynamic 或 unsafe。

验证保留原 9 项 native 测试，JS 重放全部 10 项附带测试（包含新增的
`js-only` 属性渲染回归），并通过真实生成的事件回调验证缺失、nil、有效值、错误
载荷和 dispatch 失败。原 3 组 skeleton 与 6 个展示入口 SSR、严格检查、示例、
dynamic-method 零命中、文档、构建及浏览器交互验收继续保留。

移除过期的汇总/逐定义纯计数基线，以严格类型和可观察行为判断正确性；不以
Dynamic、nil 等出现次数替代类型安全，不提高预算或放宽类型。历史记录中的旧预算
只表示当时的验证方式。新正式配对 CLI/runtime 与依赖图验收完成前不发布本次迁移。

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

### License

MIT
