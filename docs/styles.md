# Styles

Respo UI exposes the same design primitives in two forms.

## Generated CSS classes (`respo-ui.css`)

Use these through `:class-name`. This is the preferred path for static styles because Respo compares a short class string instead of repeatedly diffing equivalent maps.

```cirru
ns app.comp.demo $ :require
  respo.core :refer $ defcomp div
  respo-ui.css :as css

defcomp comp-demo ()
  div $ {}
    :class-name $ str-spaced css/row-middle css/gap8
```

Available groups:

- Layout: `row`, `column`, `center`, `row-center`, `row-middle`, `row-evenly`, `row-dispersive`, `row-parted`, `column-evenly`, `column-dispersive`, `column-parted`, `flex`, `expand`, `fullscreen`, `gap8`, `gap16`.
- Typography: `font-normal`, `font-normal!`, `font-fancy`, `font-fancy!`, `font-code`, `font-code!`, `text-label`.
- Controls: `button`, `button-primary`, `button-danger`, `button-danger-outline`, `input`, `textarea`, `select`, `checkbox`, `checkbox-label`.
- Other: `global`, `preset`, `card`, `link`, `link-slight`, `tag`, `tag-outline`, `tag-stroke`.

Apply `css/preset` once near the application root when the global body/reset rules are wanted.

## Style maps (`respo-ui.core`)

Use these when a style map must be composed dynamically:

```cirru
div $ {}
  :style $ merge ui/row-middle $ {}
    :width dynamic-width
```

The core namespace supplies the layout, typography, control, card, link, and tag maps corresponding to most CSS classes. It also exports `default-fonts` and `hsl`.

## Defining application styles

Extract fixed maps into `defstyle`:

```cirru
ns app.comp.card $ :require
  respo.core :refer $ defcomp div
  respo.css :refer $ defstyle
  respo.util.format :refer $ hsl

defstyle style-card $ {}
  |& $ {}
    :padding "|12px 16px"
    :border-radius |8px
    :background-color :white
  |&:hover $ {}
    :box-shadow $ str "|0 4px 16px " (hsl 0 0 0 0.08)

defcomp comp-card (content width)
  div
    {}
      :class-name style-card
      :style $ {} (:width width)
    , content
```

Only the dynamic width stays inline. This reduces map allocation, DOM style operations, and virtual-DOM comparison work.

## CSS value rules

Respo adds `px` to numeric CSS values. Use strings for unitless values and compound values:

```cirru
{} (:font-weight |600) (:line-height |1.5) (:flex |1)
  :padding "|8px 12px"
```

Plain numbers remain appropriate when pixels are intended, such as `:gap 8` or `:height 32`.
