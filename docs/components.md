# Components

Import components from `respo-ui.comp`.

```cirru
ns app.comp.demo $ :require
  respo-ui.comp :refer $ comp-button comp-input comp-card
  respo-ui.schema :refer $ ButtonOptions SelectOption
```

Public components carry concrete function schemas and return
`respo.schema/Component`. Inline option maps are checked against the component's
named options struct. When options are stored in a variable or collection,
construct the corresponding record explicitly so its field types remain
available to downstream code.

## Form controls

### `comp-button (content ? options)`

Renders a native button. `content` may be text or a Respo node.

Options: `:kind` (`:primary`, `:danger`, `:danger-outline`), `:type`, `:disabled`, `:on-click`, `:class-name`, `:style`.

```cirru
comp-button "|Save" $ {}
  :kind :primary
  :on-click $ fn (e d!)
    d! $ :: :save
```

### `comp-input (value ? options)`

A controlled native input. Options: `:type`, `:placeholder`, `:disabled`, `:on-input`, `:class-name`, `:style`.

```cirru
comp-input draft $ {}
  :placeholder "|Project name"
  :on-input $ fn (e d!)
    d! cursor $ :value e
```

### `comp-textarea (value ? options)`

A controlled native textarea. Options: `:placeholder`, `:disabled`, `:on-input`, `:class-name`, `:style`.

```cirru
comp-textarea notes $ {}
  :placeholder "|Notes"
  :on-input $ fn (e d!)
    d! cursor $ assoc state :notes (:value e)
```

### `comp-checkbox (checked ? options)`

Options: `:label`, `:disabled`, `:on-change`, `:class-name`, `:style`. `:on-change` receives `(checked? d!)`.

```cirru
comp-checkbox enabled? $ {}
  :label "|Enable notifications"
  :on-change $ fn (next? d!)
    d! $ :: :set-enabled next?
```

### `comp-select (value items ? options)`

A controlled native select. Each item is a map containing `:value`, `:label`, and optional `:disabled`. Options support `:disabled`, `:on-change`, `:class-name`, and `:style`; `:on-change` receives `(next-value d!)`.

```cirru
def language-options $ []
  %{}? SelectOption (:value |calcit) (:label |Calcit)
  %{}? SelectOption (:value |clojure) (:label |Clojure)
  %{}? SelectOption (:value |rust) (:label |Rust) (:disabled true)

comp-select language language-options $ {}
  :on-change $ fn (next-value d!)
    d! cursor $ assoc state :language next-value
```

Keep the options collection in a top-level definition when it is static, so it is not rebuilt during every render.

## Typed option schemas

Option fields are defined in `respo-ui.schema`; callback-bearing structs keep
the application dispatch operation as a generic type parameter.

| Components | Option type |
| --- | --- |
| `comp-button` | `ButtonOptions` |
| `comp-input`, `comp-textarea` | `respo.schema/DomProps` |
| `comp-select` | `SelectOptions<Op>`; items are `SelectOption` records |
| `comp-switch`, `comp-checkbox` | `SwitchOptions<Op>` |
| `comp-card` | `CardOptions<Footer>` |
| `comp-alert`, `comp-progress` | `PresentationOptions` |
| `comp-spinner` | `SpinnerOptions` |
| `comp-divider` | `DividerOptions` |
| `comp-empty` | `EmptyOptions<Icon, Action>` |
| `comp-skeleton` | `SkeletonOptions` |
| `comp-avatar` | `AvatarOptions` |
| `comp-attributes` | `AttributesOptions<Item>` |
| `comp-tabs` | `TabsOptions<Value>`; callbacks receive `TabRoute<Value>` |

CSS `:style` remains an intentionally heterogeneous map. Other public fields,
including labels, booleans, sizes, variants, callback inputs, and component
return values, use concrete types rather than `:dynamic`.

### `comp-switch (checked ? options)`

A controlled switch backed by a native checkbox. Options: `:label`, `:disabled`, `:on-change`, `:class-name`, and `:style`.

```cirru
comp-switch compact? $ {}
  :label "|Compact mode"
  :on-change $ fn (next? d!)
    d! cursor $ assoc state :compact? next?
```

## Containers and feedback

### `comp-card (content ? options)`

Options: `:title`, `:footer`, `:class-name`, `:style`. Both `content` and `:footer` may be Respo nodes.

```cirru
comp-card "|Build completed" $ {}
  :title "|Status"
  :footer $ comp-button "|Dismiss"
```

### `comp-alert (kind content ? options)`

Kinds: `:info`, `:success`, `:warning`, `:error`. The root uses `role="alert"`.

```cirru
comp-alert :warning "|This action cannot be undone"
```

### `comp-progress (value ? options)`

Renders a progress track. The visual width is clamped to `0..100`; options support `:class-name` and `:style`.

```cirru
div ({})
  <> "|Upload · 72%"
  comp-progress 72
```

### `comp-spinner (? options)`

Renders a compact loading indicator with `role="status"`. Options: `:label`, `:class-name`, `:style`.

```cirru
comp-spinner $ {} (:label "|Loading results")
```

### `comp-divider (? options)`

Renders a horizontal separator. Pass `:vertical? true` for an inline vertical separator. Options also support `:class-name` and `:style`.

```cirru
comp-divider
comp-divider $ {} (:vertical? true)
```

### `comp-placeholder (text)`

Displays an empty-state placeholder.

### `comp-empty (title ? options)`

A richer empty state. Options: `:icon`, `:description`, `:action`, `:class-name`, and `:style`. `:icon` and `:action` may be Respo nodes.

```cirru
comp-empty "|No results" $ {}
  :icon $ <> "|⌕"
  :description "|Try another search term."
  :action $ comp-button "|Clear filters"
```

### `comp-skeleton (? options)`

An animated loading placeholder. Unlabeled instances are decorative; pass `:label` to expose `role="status"`. Options: `:kind` (`:text` or `:circle`), `:width`, `:height`, `:class-name`, and `:style`.

```cirru
comp-skeleton $ {} (:kind :circle) (:label "|Loading avatar")
comp-skeleton $ {} (:width |60%)
comp-skeleton $ {} (:height |72px)
```

### Dialogs and prompts

Dialogs are intentionally outside this library's scope. Use
[`respo-alerts`](https://github.com/Respo/alerts.calcit) for animated alerts,
prompts, confirms, and modal flows.

## Data and navigation

### `comp-avatar (text ? options)`

Displays initials or an image. Options: `:src`, `:alt`, `:title`, `:size` (`:small` or `:large`), `:class-name`, and `:style`.

```cirru
comp-avatar |CY $ {} (:size :large) (:title "|Chen Yong")
comp-avatar |CY $ {} (:src |/avatars/cy.png) (:alt "|Chen Yong")
```

### `comp-attributes (options)`

Displays a responsive attribute grid.

Required option: `:items`. Optional: `:title`, `:item-width`, `:item-height`, `:class-name`, `:style`, `:css-item`, `:css-label`, `:css-value`, `:css-title`.

Items may be maps or tuples:

```cirru
comp-attributes $ {}
  :title "|Runtime"
  :items $ []
    :: :attr "|Version" "|0.12.56"
    :: :attr-span "|Description" "|Calcit UI module" 2
```

### `comp-tabs (options tabs on-route)`

`tabs` accepts `(:: :tab value display)` tuples or maps containing `:value`/`:name` and `:display`/`:title`. Inputs are normalized to `TabRoute<Value>`, which is passed to `on-route` together with the Respo dispatcher. Options use `TabsOptions<Value>` and include `:selected`, `:vertical?`, `:width`, `:class-name`, `:style`, `:tab-class-name`, `:tab-style`, and `:selected-tab-style`.

### `comp-tag (kind content ? options)`

Kinds: `:info`, `:success`, `:warning`, `:error`. Options: `:on-click`, `:class-name`, `:style`.

### `comp-time (time & options)`

Formats an ISO-like time with Day.js. Today's values show a time; older values show date and weekday.

## Text and code utilities

- `comp-copy (code ? f)` — clipboard copy affordance; optional custom handler.
- `comp-snippet (code ? options)` — plain code snippet.
- `comp-cirru-snippet (text ? options)` — Cirru-highlighted snippet with copy affordance.
- `comp-close (? options)` — close icon; options include `:on-click`, `:class-name`, `:style`.
- `comp-catoptric-text (text ? options)` — writes text through CSS content so browser find/selection does not see it normally.

## Performance notes

These components keep their fixed presentation in `defstyle` classes. When rendering collections of them, use stable domain IDs in `list->`; use `memo-comp-by` for expensive repeated subtrees whose arguments are stable. Do not use array indexes as keys when items can move.
