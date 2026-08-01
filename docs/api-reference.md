# API reference

This page is a compact inventory. See [Components](./components.md) and [Styles](./styles.md) for examples and option details.

## `respo-ui.comp`

| API | Signature | Purpose |
| --- | --- | --- |
| `comp-alert` | `(kind content ? options)` | Info/success/warning/error feedback |
| `comp-attributes` | `(options)` | Responsive label/value grid |
| `comp-avatar` | `(text ? options)` | Initials or image avatar |
| `comp-button` | `(content ? options)` | Native button with variants |
| `comp-card` | `(content ? options)` | Card with optional title/footer |
| `comp-catoptric-text` | `(text ? options)` | CSS-content text |
| `comp-checkbox` | `(checked ? options)` | Controlled checkbox |
| `comp-cirru-snippet` | `(text ? options)` | Highlighted Cirru snippet |
| `comp-close` | `(? options)` | Close icon |
| `comp-copy` | `(code ? f)` | Clipboard copy affordance |
| `comp-divider` | `(? options)` | Horizontal/vertical separator |
| `comp-empty` | `(title ? options)` | Empty state with description/action |
| `comp-input` | `(value ? options)` | Controlled input |
| `comp-placeholder` | `(text)` | Empty-state placeholder |
| `comp-progress` | `(value ? options)` | Progress track |
| `comp-snippet` | `(code ? options)` | Plain code snippet |
| `comp-select` | `(value items ? options)` | Controlled native select |
| `comp-skeleton` | `(? options)` | Animated loading placeholder |
| `comp-spinner` | `(? options)` | Loading status indicator |
| `comp-switch` | `(checked ? options)` | Controlled native-checkbox switch |
| `comp-tabs` | `(options tabs on-route)` | Horizontal or vertical tabs |
| `comp-tag` | `(kind content ? options)` | Semantic tag |
| `comp-textarea` | `(value ? options)` | Controlled textarea |
| `comp-time` | `(time & options)` | Day.js time presentation |

All newly added primitives return `respo.schema/Component`. Text inputs use
string values, switches use booleans, progress uses a number, and callback
options retain their dispatch operation through a generic `Op` parameter.

## `respo-ui.schema`

| Type | Purpose |
| --- | --- |
| `ButtonOptions` | Button variant, DOM type, disabled state, click handler, and presentation |
| `SelectOption` | Typed `:value`, `:label`, and optional `:disabled` item |
| `SelectOptions<Op>` | Select state and `(string, dispatch<Op>)` change callback |
| `SwitchOptions<Op>` | Switch/checkbox label, state, and `(bool, dispatch<Op>)` callback |
| `CardOptions<Footer>` | String title and typed footer node |
| `PresentationOptions` | Shared class and style options for alerts/progress |
| `SpinnerOptions` | Accessible label and presentation |
| `DividerOptions` | Orientation and presentation |
| `EmptyOptions<Icon, Action>` | Typed icon/action slots and string description |
| `SkeletonOptions` | Label, kind, width, height, and presentation |
| `AvatarOptions` | Image metadata, size, and presentation |
| `AttributesOptions<Item>` | Attribute collection and typed grid presentation |
| `TabRoute<Value>` | Normalized tab value and string display label |
| `TabsOptions<Value>` | Tab selection, orientation, width, and presentation |

## `respo-ui.css`

Generated class strings:

```text
button button-primary button-danger button-danger-outline
input textarea select checkbox checkbox-label
row column center row-center row-middle row-evenly row-dispersive row-parted
column-evenly column-dispersive column-parted flex expand fullscreen gap8 gap16
stack cluster responsive-grid split-layout with-sidebar content-container cover reel
font-normal font-normal! font-fancy font-fancy! font-code font-code! text-label
global preset card link link-slight tag tag-outline tag-stroke
```

Every exported `respo-ui.css` definition has schema `:string`.

The semantic layout classes are composable: `stack` and `cluster` provide flow,
`responsive-grid` and `with-sidebar` adapt to container width, `split-layout`
builds wrapping two-edge rows, `reel` handles horizontal overflow, and
`cover`/`content-container` cover focused full-height screens.

## `respo-ui.core`

Style maps:

```text
button button-primary button-danger input textarea select checkbox checkbox-label
row column center row-center row-middle row-evenly row-dispersive row-parted
column-evenly column-dispersive column-parted flex expand fullscreen
font-normal font-fancy font-code text-label global card link tag tag-outline tag-stroke
```

Utilities: `default-fonts`, `hsl`.

## Source-of-truth queries

When working against a newer tag, query the module instead of assuming this static page is exhaustive:

```bash
cr query defs respo-ui.comp
cr query defs respo-ui.css
cr query peek respo-ui.comp/comp-button
cr query def respo-ui.comp/comp-tabs
```
