# Components

Import components from `respo-ui.comp`.

```cirru
ns app.comp.demo $ :require
  respo-ui.comp :refer $ comp-button comp-input comp-card
```

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
comp-select language language-options $ {}
  :on-change $ fn (next-value d!)
    d! cursor $ assoc state :language next-value
```

Keep the options collection in a top-level definition when it is static, so it is not rebuilt during every render.

### `comp-switch (checked ? options)`

A controlled switch backed by a native checkbox. Options: `:label`, `:disabled`, `:on-change`, `:class-name`, and `:style`.

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

### `comp-spinner (? options)`

Renders a compact loading indicator with `role="status"`. Options: `:label`, `:class-name`, `:style`.

### `comp-divider (? options)`

Renders a horizontal separator. Pass `:vertical? true` for an inline vertical separator. Options also support `:class-name` and `:style`.

### `comp-placeholder (text)`

Displays an empty-state placeholder.

### `comp-empty (title ? options)`

A richer empty state. Options: `:icon`, `:description`, `:action`, `:class-name`, and `:style`. `:icon` and `:action` may be Respo nodes.

### `comp-skeleton (? options)`

An animated loading placeholder. Unlabeled instances are decorative; pass `:label` to expose `role="status"`. Options: `:kind` (`:text` or `:circle`), `:width`, `:height`, `:class-name`, and `:style`.

### `comp-modal (content ? options)`

A stateless dialog overlay. The calling component owns visibility. Options: `:title`, `:footer`, `:on-close`, `:class-name`, `:style`, `:overlay-class-name`, and `:overlay-style`.

```cirru
when show-modal?
  comp-modal content $ {}
    :title "|Confirm action"
    :on-close $ fn (e d!)
      d! cursor $ assoc state :show-modal? false
```

## Data and navigation

### `comp-avatar (text ? options)`

Displays initials or an image. Options: `:src`, `:alt`, `:title`, `:size` (`:small` or `:large`), `:class-name`, and `:style`.

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

`tabs` accepts `(:: :tab value display)` tuples or maps containing `:value`/`:name` and `:display`/`:title`. Options include `:selected`, `:vertical?`, `:width`, `:class-name`, `:style`, `:tab-class-name`, `:tab-style`, and `:selected-tab-style`.

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
