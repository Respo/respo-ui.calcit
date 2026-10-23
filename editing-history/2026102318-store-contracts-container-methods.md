# Store 合同与容器方法迁移

Store 的源码是 `defstruct`，旧 CodeEntry 却将定义声明为 `Enum`；初始实例也只声明为裸 `Struct`。修正为 `StructDef` 和名义 `respo-ui.schema/Store`，使类型查询和后续调用保留真实身份。两个 Map 字段及其既有开放 payload 不变。

将初始 Store、updater 的三条成功分支和 CSS token fold 的五处 `assoc` 改为已有 `.assoc`。只替换调用头，保留接收者、key、value 的顺序；不引入低层 native call、强转、默认值或新的能力接口。

通过官方 CLI 的 dry-run、scoped revision 和节点内容守卫提交迁移。附带测试覆盖名义元数据、状态与路由更新的原值不变性、非法输入仍拒绝，以及 token Map 的空集合、重复键、Unicode 和输入单次求值。继续运行原 native/JS 事件与 SSR 测试、完整 strict、示例、文档生成和构建。

updater 原先与浏览器启动代码共享命名空间，新增 JS 回归会连带加载构建错误面板的宿主模块。将唯一的 updater 定义和附带测试移动到独立状态更新命名空间 `respo-ui.updater`，启动代码改为引用它；不复制实现、不在测试中 mock 浏览器启动依赖。原 dispatch 调用、未知操作的日志和业务返回合同不变，namespace 检查同步覆盖新命名空间。

本次保持已发布的 Calcit / `@calcit/procs` 0.31.0-alpha.1 和全部模块版本。CLI 来自同版本 crates.io 的锁定构建，本机 native/JS 验证关闭 WASM；这不表示已验证 WASM/WASI，也不代表 Calcit 的通用泛型证明或旧 API 退场已经完成。
