
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

CI installs the released graph with `caps --strict --ci`, checks Snapshot
format/types/tests/deprecations, and then builds with Node 24/Vite.

CI 使用 `caps --strict --ci` 安装正式发布图，检查 Snapshot
格式、类型、测试与弃用调用，再使用 Node 24/Vite 构建。

### COS / CDN 部署

前端资源使用 COS Action 正式版 1.2.0；配置 `public-base-url` 即启用
Action 内置的逐文件公网下载与 checksum 校验，沿用默认 `verify-*` 参数，
不额外维护上传校验脚本。同仓库 PR 的资源路径为
`Respo/respo-ui.calcit/pr/<PR>/<run-id>/<attempt>/`，避免不同 PR 或重跑相互覆盖。
生产 COS 前缀仍为 `Respo/respo-ui.calcit/`，原服务器部署路径不变；
生产运行排队执行，不取消正在上传的任务。Fork PR 仅构建，不使用部署 secrets。

### Calcit 0.29 稳定版迁移

当前 0.7.36 候选使用 Calcit CLI/runtime `0.29.3`、
Respo `0.16.117`、Router `0.8.31` 和 js-ffi `0.2.2`。
模块 tag 尚未发布前，不要将候选分支视为已发布依赖。

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
calcit calcit.cirru test --require-match
yarn test:js
calcit calcit.cirru --check-only --ns respo-ui.schema --ns respo-ui.comp
calcit calcit.cirru js
yarn vite build
```

完整公开检查仍覆盖原 17 个命名空间（264 个定义）；原 2 项附带测试、15 个 schema
示例、14 个 JS component 示例及原质量预算保留。新增路由 `:tests` 在 native 与
真实生成 JS 中重放同一份 AST；JS 另验证 3 组 skeleton 渲染，以及首页、Layouts、
Widgets、Fonts、Components、Utils 全部 6 个真实展示入口的 SSR。Attributes demo
使用完整的 `AttributesOptions`，组件先解包各 Option 字段再生成 CSS/DOM 属性，
不将业务 Map 冒充具名 Struct。回放只通过 CLI 修改
隔离 Snapshot，不修改 canonical 源码或模块缓存，也不修补生成文件的跨模块路径。
组件 CSS 依赖 JS 宿主，不宣称支持 native 或 WASM 渲染。

最新 HEAD 的 Actions/review 通过、合并提交部署成功之后才发布 UI 模块。
该步骤不代替 Reel/Alerts/Diary 的完整应用验收。

此前 0.7.35 组合已通过严格 Caps 依赖图、CLI/runtime 配对、不可变锁文件、444 项严格
检查（含可达依赖）、264 项完整公开定义检查、原有 9 项 native/JS 附带测试、
15 个 schema 示例、14 个 JS component 示例和生产构建。浏览器中检查了全部 6 个
展示入口、文本输入、checkbox/select、后退和刷新，控制台无错误；开发模式仍有
原来的缺少 mode 配置提示。路由表 schema 收紧为 `List<Enum>`，不改变路由数据格式；
原预算保持不变，仍有 37 处未解决类型债务及 12 处已有 unsafe 边界，不能视为全部类型闭合。
这些历史结果不能代替 0.7.36 候选在新正式依赖上的完整验收。

0.7.36 的 demo updater 在操作边界检查状态 cursor 的 List 容器、导航 String 和
路由 Map。状态更新复用原 `update-state-tree`，校验外层状态 Map 后写回已知 Store 字段，
不把已知 Struct 再交给 Map decoder，不插入业务默认值。原根路径及嵌套 String/Number
key 行为保持，未知操作仍返回原 Store。动态状态值和路由载荷的后续收窄仍是未完成项。

### Typed tab callbacks / 带类型的 tab 回调

`comp-tabs` preserves the caller's operation type in its `on-route` callback:
the second argument is `Fn<Op, Unit>`, not an opaque `DynFn`. The event adapter
forwards each operation to Respo's dispatch function, like `comp-select` does.
Callers can dispatch their own typed operations without assertions; no global
dispatch type slot is required by this component library.

`comp-tabs` 的 `on-route` 回调保留调用方的操作类型，第二个参数为
`Fn<Op, Unit>`，而不是不能直接调用的 `DynFn`。事件适配器与 `comp-select`
一样将操作转发给 Respo dispatch；调用方无需强转即可发送自己的带类型操作，
组件库也不要求绑定全局 dispatch 类型槽。

### License

MIT
