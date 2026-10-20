# Introduction

Respo UI is a Calcit module for Respo. It contains:

- style maps in `respo-ui.core` for composition with `merge`;
- generated class names in `respo-ui.css` for static, reusable CSS;
- focused UI primitives in `respo-ui.comp`.

It is not an npm component package. JavaScript dependencies are installed by the consuming project, while Respo UI itself is resolved through `deps.cirru` and `caps`.

## Installation

```cirru
{} (:calcit-version |0.30.1-alpha.4)
  :dependencies $ {}
    |Respo/respo-ui.calcit |0.8.0
```

```bash
caps
```

## Basic usage

```cirru
ns app.comp.container $ :require
  respo.core :refer $ defcomp div <>
  respo-ui.comp :refer $ comp-card comp-progress
  respo-ui.schema :refer $ CardOptions
  respo-ui.css :as css

defcomp comp-container ()
  div
    {} $ :class-name $ str-spaced css/column css/gap16
    comp-card "|Reusable content" $ Option :some $ CardOptions :title (Option :some |Overview)
    comp-progress 72 $ Option :none
```

Every component takes its options last as an `Option` of a named struct from
`respo-ui.schema`; pass `Option :none` for defaults and write only the fields
you need, since omitted `Option` fields default to `Option :none`. Text-like
content may generally be a literal or a Respo node. See
[Components](./components.md) for every signature, grouped by category.

## Choosing a styling API

- Prefer `respo-ui.css` and `:class-name` for fixed layout, color, typography, borders, gaps, and hover rules.
- Use `respo-ui.core` maps when composing a style map is the actual API you need.
- Put only state-dependent values such as a calculated width in `:style`.

This avoids allocating and diffing the same style maps on every render.

Respo UI does not maintain dialogs or prompts. Use
[`respo-alerts`](https://github.com/Respo/alerts.calcit) for those flows and
their animations.
