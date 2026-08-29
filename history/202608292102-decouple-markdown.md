# Decouple respo-markdown / 解除 respo-markdown 反向依赖

- Removed respo-ui's dependency on respo-markdown, making the package direction Markdown -> UI and breaking a stable-tag release cycle.
- 移除 respo-ui 对 respo-markdown 的依赖，将方向固定为 Markdown -> UI，并打断稳定 tag 的发布循环。
- Added a small typed local doc block for showcase copy and upgraded the lower-level router dependency to cycle-free 0.8.7.
- 为展示文案增加轻量类型化本地 doc block，并升级到无循环依赖的 router 0.8.7。
- Upgraded Calcit/@calcit/procs to 0.13.63 and migrated four deprecated `tag-match` calls to `match`.
- 升级 Calcit/@calcit/procs 0.13.63，并把四处弃用 `tag-match` 迁移为 `match`。
- Added strict dependency, Snapshot, type/weak-type/deprecation, test, and Node 24/Vite build gates.
- 增加 strict 依赖、Snapshot、类型/弱类型/弃用、测试与 Node 24/Vite 构建守门。
