# Respo UI documentation

Respo UI provides reusable styles and small, composable components for Calcit applications built with Respo.

## Guides

- [Introduction](./introduction.md) — installation and first use
- [Components](./components.md) — component signatures, options, and examples
- [Styles](./styles.md) — map styles, generated CSS classes, and performance
- [Examples](./examples.md) — forms, feedback, loading states, cards, and dialogs
- [API reference](./api-reference.md) — namespace-level inventory
- [Advanced usage](./advanced-usage.md) — list rendering and optimization

## Quick start

Add the tagged Calcit module to `deps.cirru`:

```cirru
{} (:calcit-version |0.12.56)
  :dependencies $ {}
    |Respo/respo-ui.calcit |0.6.5
```

Then synchronize modules with `caps` and import only the APIs you use:

```cirru
ns app.comp.demo $ :require
  respo.core :refer $ defcomp div <>
  respo-ui.comp :refer $ comp-button comp-alert
  respo-ui.css :as css

defcomp comp-demo ()
  div
    {} $ :class-name css/column
    comp-alert :success "|Ready"
    comp-button "|Continue" $ {} (:kind :primary)
```

Use `respo-ui.css` classes for reusable static presentation. Keep `:style` for values that actually vary at runtime.
