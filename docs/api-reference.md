# API reference

This page is a compact inventory. See [Components](./components.md) and [Styles](./styles.md) for examples and option details.

## `respo-ui.comp`

[Components](./components.md) lists every component with its signature,
options, and an example, grouped by category. It is generated from the
definitions, so it stays in step with the source.

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
| `InputOptions<Op>` | Input/textarea type, placeholder, disabled state, raw `:on-input`, and `(string, dispatch<Op>)` `:on-change` |
| `RadioGroupOptions<Op>` | Radio group name, label, orientation, disabled state, and `(string, dispatch<Op>)` callback |
| `FieldOptions` | Field `:for` id, description, error, and required mark |
| `BadgeOptions` | Badge kind and dot mode |
| `BreadcrumbItem` / `BreadcrumbOptions` | Breadcrumb label with optional href, and separator |
| `PaginationOptions<Op>` | Sibling count and `(number, dispatch<Op>)` page callback |
| `StepItem` / `StepsOptions` | Step title with optional description, and orientation |
| `CollapseOptions` | Initial open state and exclusive group name |
| `TooltipOptions` | Tooltip placement |

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
calcit query defs respo-ui.comp
calcit query defs respo-ui.css
calcit query peek respo-ui.comp/comp-button
calcit query def respo-ui.comp/comp-tabs
```
