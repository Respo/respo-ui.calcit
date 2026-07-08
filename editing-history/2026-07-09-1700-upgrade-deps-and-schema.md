# Upgrade dependencies + schema: `:features $ #{} :js-ffi`

## 变更概要

### 依赖升级

- `caps upgrade --all` 更新 `deps.cirru`
  - `:calcit-version` 0.12.35 → 0.12.49
  - `respo-markdown.calcit` 0.4.12 → 0.4.13
  - `respo.calcit` 0.16.44 → 0.16.48
  - `memof` 0.0.23 → 0.0.24
- `package.json` `@calcit/procs` ^0.12.35 → ^0.12.49

### Schema 定义更新

新版本 Calcit (0.12.49) 增加了对 `:features $ #{} :js-ffi` 的验证。使用 JS FFI（`js/...`、`set!`、`.!` 等）的函数需要在 schema 中标注 `:features $ #{} :js-ffi`。

以下定义的 schema 从 `:dynamic` 升级为带 `:js-ffi` 的显式 `:: :fn`：

| 定义 | 参数 |
|------|------|
| `respo-ui.main/main!` | 0 args (defn) |
| `respo-ui.util/tab-echo!` | 2 args (defn `data ? format`) |
| `respo-ui.comp/effect-tab-highlight` | 2 args (defeffect `selected vertical?`) |
| `respo-ui.comp/effect-dataset-text` | 1 arg (defeffect `text`) |
| `respo-ui.comp/comp-time` | 1 required + `:rest` (defcomp `time & options`) |
| `respo-ui.comp.components/comp-demo-time` | 0 args (defcomp) |

### 类型警告修复

- `respo-ui.comp/comp-checkbox`：`<> $ :label options` → `<> $ str (:label options)`，将 dynamic 值转为 string 以匹配 `<>` 的类型约束。
