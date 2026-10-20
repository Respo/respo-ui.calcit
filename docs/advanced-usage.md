# Advanced usage

## Keep static presentation out of render paths

Use `defstyle` for constant CSS and keep only computed values inline:

```cirru
defstyle style-meter $ {}
  |& $ {} (:height |8px) (:border-radius |999px)
    :background-color $ hsl 220 20 92

div $ {}
  :class-name style-meter
  :style $ {} (:width dynamic-width)
```

This is especially important inside `map`, where an inline static map would be recreated for every item on every render.

## Stable keyed lists

```cirru
list-> ({}) $ -> items $ map
  fn (item)
    let
        item-id $ :id item
      [] item-id $ memo-comp-by item-id comp-row item
```

- Use a stable domain identifier as the list key.
- Use `memo-comp-by` when the subtree is expensive and receives stable arguments.
- A `nil` memo key intentionally bypasses memoization.
- Call `clear-cache!` during hot reload, as required by the Respo application lifecycle.

## Controlled components

`comp-input`, `comp-textarea`, and `comp-checkbox` do not own application state. Feed them the current value and dispatch the next value from their handler. This keeps state transitions explicit and avoids component-local caches becoming stale.

## Preserve schemas across component boundaries

Public components use concrete primitive, named struct, generic callback, and
`respo.schema/Component` return types. Prefer named records for reusable option
values and collection items; an unannotated top-level map or list otherwise
loses the expected type supplied at an inline call site.

```cirru
def select-items $ []
  %{}? SelectOption (:value |calcit) (:label |Calcit)
  %{}? SelectOption (:value |rust) (:label |Rust) (:disabled true)
```

Audit library boundaries independently from compilation:

```bash
calcit analyze check-types --ns respo-ui.comp --summary-only
calcit analyze weak-types --ns respo-ui.comp \
  --only schema-dynamic,code-dynamic \
  --intent unresolved \
  --summary-only
```

Do not replace heterogeneous APIs with repeated `:dynamic`. Use named structs
for option shapes, type variables for content/dispatch relationships, and named
Respo schemas for DOM props and component return values.

## Dynamic content

Text-like slots in `comp-button`, `comp-card`, `comp-alert`, `comp-collapse`, and `comp-tooltip` accept either a literal or a Respo node. Build complex content before passing it when that improves readability:

```cirru
let
    actions $ div
      {} $ :class-name $ str-spaced css/row css/gap8
      comp-button "|Cancel" $ Option :none
      comp-button "|Confirm" $ Option :some $ ButtonOptions :kind (Option :some :primary)
  comp-card content $ Option :some $ CardOptions :title (Option :some title) :footer (Option :some actions)
```

## Accessibility

- `comp-button`, `comp-input`, and `comp-textarea` render native controls.
- `comp-alert` uses `role="alert"`.
- `comp-spinner` uses `role="status"` and accepts an accessible `:label`.
- `comp-switch` and `comp-select` keep native form controls underneath their presentation.
- `comp-divider` uses `role="separator"`.
- `comp-progress` uses `role="progressbar"`; announce detailed progress in adjacent text when users need the exact value.
- `comp-radio-group` renders native radios inside `role="radiogroup"`; give them a shared `:name` so arrow keys move between options.
- `comp-field` shows `:error` with `role="alert"`; pass `:for` with the control's id to link the label. `InputOptions` and `SelectOptions` take that `:id`.
- `comp-breadcrumb`, `comp-pagination`, and `comp-steps` mark the current item with `aria-current`.
- `comp-collapse` is a native `details`/`summary`, and `comp-tooltip` appears on hover, and on focus when its content is focusable (a button or link). It is a visual hint only: put anything screen-reader users need in the content or an `aria-label`.

## Verification

For library changes, run the same stages as CI:

```bash
caps --ci
yarn install --immutable
calcit calcit.cirru --check-only
calcit calcit.cirru js
yarn vite build --base=./
```

Treat preprocessing warnings as defects. Newer Respo releases type-check DOM properties, so unsupported keys in element property maps should be removed or implemented in Respo's `DomProps` intentionally.

For animated alerts, prompts, confirms, and modal accessibility behavior, use
[`respo-alerts`](https://github.com/Respo/alerts.calcit) rather than adding an
overlay component to Respo UI.
