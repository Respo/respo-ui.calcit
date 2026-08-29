
Respo UI for calcit-js
----

### Usages

Find details in https://ui.respo-mvc.org/ .

```cirru
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

### License

MIT
