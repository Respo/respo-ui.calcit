# Design system

Every Respo UI component follows one set of tokens and rules. The live
reference is the **Design system** page of the showcase site
(`design.html`). It renders every token from the same data this document
describes.

## Tokens

Tokens are CSS custom properties named `--rui-*`. `respo-ui.tokens/theme`
declares all of them on `:root` when the namespace loads. Calcit code reads
them through one def per token, and each def returns a `var()` reference:

```cirru
ns app.comp.panel
  :require
    respo-ui.tokens :as tokens
    respo.css :refer $ defstyle

defstyle style-panel $ {}
  |& $ {} (:padding tokens/space-4) (:border-radius tokens/radius-lg)
    :background-color tokens/color-surface
    :border $ str "|1px solid " tokens/color-border
```

`respo-ui.tokens/design-tokens` lists every token with its group, default
value and usage note. The `:root` declarations and the design system page are
both generated from it, so add or change a token there.

| Group | Tokens | Rule |
| --- | --- | --- |
| Palette | `gray-0`…`gray-900`, `blue-*`, `green-*`, `amber-*`, `red-*` | Raw ramps. Components never read them directly. |
| Color | `color-text*`, `color-bg`, `color-surface*`, `color-border*`, `color-primary*`, `color-{info,success,warning,danger}{,-soft,-border,-text}`, `color-focus`, `color-overlay` | Semantic roles. Components read only these. |
| Font | `font-sans`, `font-mono`, `font-display` | The display font is for brand titles only. |
| Text | `text-xs` 12 · `sm` 13 · `md` 14 · `lg` 16 · `xl` 20 · `2xl` 24 · `3xl` 32; `leading-tight/normal/relaxed`; `weight-regular/medium/semibold` | Body and controls use `text-md`. |
| Space | `space-0-5` 2 · `1` 4 · `1-5` 6 · `2` 8 · `3` 12 · `4` 16 · `5` 20 · `6` 24 · `8` 32 · `10` 40 · `12` 48 · `16` 64 | 4px grid. |
| Radius | `radius-sm` 4 · `md` 6 · `lg` 10 · `full` | Marks, controls, containers, pills. |
| Control | `control-sm/md/lg` 24/32/40 and `control-*-padding` 8/12/16 | Every interactive control uses these heights. |
| Shadow | `shadow-xs/sm/md/lg`, `focus-ring` | Only floating surfaces have shadows. |
| Motion | `duration-fast/normal/slow`, `ease` | Hover and press use `duration-fast`. |
| Layer | `z-dropdown`, `z-sticky`, `z-overlay`, `z-modal`, `z-tooltip` | Fixed stacking order. |

## Theming

Override the variables after the library styles load. A semantic token points
at a palette step, so changing one ramp re-colors every role that uses it:

```css
:root {
  --rui-blue-500: hsl(262 70% 56%);
  --rui-blue-600: hsl(262 64% 48%);
  --rui-radius-md: 4px;
}
```

## Component conventions

- **Sizes.** Controls take `:size` `:sm`, `:md` (default) or `:lg`. They use
  heights `control-*`, padding `control-*-padding` and fonts `text-sm`,
  `text-md` or `text-lg`. Controls use `radius-md`; tags, badges and kbd use
  `radius-sm`.
- **States.** Every interactive element styles hover, active, `:focus-visible`
  and disabled. Focus adds `focus-ring` and never removes the outline without
  a replacement. Disabled uses `color-text-disabled` on `color-surface-muted`,
  `cursor: not-allowed` and has no hover style.
- **Intent.** `:kind` is `:info`, `:success`, `:warning` or `:error`, mapped to
  the info, success, warning and danger tokens. Solid fills use `color-*`. Soft
  surfaces use `color-*-soft`, `color-*-border` and `color-*-text`.
- **Validation.** An invalid field has a `color-danger` border and
  `aria-invalid`, with a message in `color-danger-text` below it.
- **Spacing.** Inner padding and gaps use `space-*`. A component sets no outer
  margin; the parent layout (`css/stack`, `css/cluster`, `css/gap8`) spaces it.
- **Text.** Body and controls use `text-md` and `leading-normal`. Labels use
  `text-sm` and `weight-medium`. Captions use `text-xs` and `color-text-muted`.
  Titles use `weight-semibold`, not the display font.
- **Motion.** Animate only color, background, opacity and transform, with
  `duration-fast` and `ease`. Respect `prefers-reduced-motion` for anything
  larger.
- **Accessibility.** Text contrast is at least 4.5:1. Icon-only controls carry
  `aria-label`. Targets are at least 24px. State is exposed through aria
  attributes, not only through color.
- **Naming.** Options structs are `<Component>Options` in `respo-ui.schema`.
  Style defs are `style-<component>-<part>`. Components read `tokens/<name>`
  and contain no raw `hsl` values or pixel literals outside the scales.

## Status

The tokens and the page ship first. Existing components still carry their own
values and are being moved onto the tokens. The replay test
(`npm run test:js`) fails when generated code reads a `--rui-*` variable that
`design-tokens` does not declare.
