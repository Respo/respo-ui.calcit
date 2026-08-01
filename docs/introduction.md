# Introduction

Respo UI is a Calcit module for Respo. It contains:

- style maps in `respo-ui.core` for composition with `merge`;
- generated class names in `respo-ui.css` for static, reusable CSS;
- focused UI primitives in `respo-ui.comp`.

It is not an npm component package. JavaScript dependencies are installed by the consuming project, while Respo UI itself is resolved through `deps.cirru` and `caps`.

## Installation

```cirru
{} (:calcit-version |0.12.56)
  :dependencies $ {}
    |Respo/respo-ui.calcit |0.6.5
```

```bash
caps
```

## Basic usage

```cirru
ns app.comp.container $ :require
  respo.core :refer $ defcomp div <>
  respo-ui.comp :refer $ comp-card comp-progress
  respo-ui.css :as css

defcomp comp-container ()
  div
    {} $ :class-name $ str-spaced css/column css/gap16
    comp-card "|Reusable content" $ {}
      :title "|Overview"
    comp-progress 72
```

Component option maps are optional where the signature contains `? options`. Text-like component content may generally be a literal or a Respo node.

## Choosing a styling API

- Prefer `respo-ui.css` and `:class-name` for fixed layout, color, typography, borders, gaps, and hover rules.
- Use `respo-ui.core` maps when composing a style map is the actual API you need.
- Put only state-dependent values such as a calculated width in `:style`.

This avoids allocating and diffing the same style maps on every render.
