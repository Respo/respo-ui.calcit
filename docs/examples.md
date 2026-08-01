# Examples

All examples use Calcit/Cirru syntax.

## Controlled form

```cirru
ns app.comp.form $ :require
  respo.core :refer $ defcomp div >>
  respo-ui.comp :refer $ comp-input comp-textarea comp-select comp-switch comp-button
  respo-ui.schema :refer $ SelectOption
  respo-ui.css :as css

def language-options $ []
  %{}? SelectOption (:value |calcit) (:label |Calcit)
  %{}? SelectOption (:value |clojure) (:label |Clojure)
  %{}? SelectOption (:value |haskell) (:label |Haskell)

defcomp comp-form (states)
  let
      cursor $ :cursor states
      state $ or (:data states) $ {}
    div
      {} $ :class-name $ str-spaced css/column css/gap8
      comp-input (:name state) $ {}
        :placeholder "|Name"
        :on-input $ fn (e d!)
          d! cursor $ assoc state :name (:value e)
      comp-textarea (:message state) $ {}
        :placeholder "|Message"
        :on-input $ fn (e d!)
          d! cursor $ assoc state :message (:value e)
      comp-select (or (:language state) |calcit) language-options $ {}
        :on-change $ fn (next-value d!)
          d! cursor $ assoc state :language next-value
      comp-switch (or (:confirmed? state) false) $ {}
        :label "|I confirm the details"
        :on-change $ fn (next? d!)
          d! cursor $ assoc state :confirmed? next?
      comp-button "|Submit" $ {}
        :kind :primary
        :disabled $ not (:confirmed? state)
        :on-click $ fn (e d!)
          d! $ :: :submit state
```

Using `SelectOption` records keeps `:value`, `:label`, and `:disabled` typed even
when the collection is defined outside the render function. Direct option maps
passed to a component are checked and rewritten from that component's schema.

## Responsive dashboard layout

```cirru
div
  {} $ :class-name $ str-spaced css/content-container css/stack css/gap16
  div
    {} $ :class-name $ str-spaced css/split-layout css/gap16
    <> "|Workspace overview"
    div
      {} $ :class-name $ str-spaced css/cluster css/gap8
      comp-button |Filter
      comp-button |Create $ {} (:kind :primary)
  div
    {} $ :class-name $ str-spaced css/responsive-grid css/gap16
    comp-card |Activity $ {} (:title |Today)
    comp-card |Members $ {} (:title |Team)
    comp-card |Usage $ {} (:title |Resources)
```

The class strings are created once by `defstyle`; rendering only composes short
strings. The grid responds to its available container width, so application
state does not need to mirror viewport dimensions.

## Sidebar that wraps on narrow containers

```cirru
div
  {} $ :class-name $ str-spaced css/with-sidebar css/gap16
  div
    {} $ :class-name $ str-spaced css/stack css/gap8
    <> |Overview
    <> |Members
    <> |Settings
  div
    {} $ :class-name $ str-spaced css/stack css/gap16
    comp-card |Summary
    comp-card |Recent-activity
```

The first and last direct children receive the sidebar and main-content flex
bases. When both preferred widths no longer fit, the main region moves below
the sidebar without a media-query branch in component code.

## Scrollable preview reel

```cirru
defstyle style-preview-card $ {}
  |& $ {} (:width 240)

div
  {} $ :class-name $ str-spaced css/reel css/gap16
  div ({} (:class-name style-preview-card)) (comp-card |Preview-A)
  div ({} (:class-name style-preview-card)) (comp-card |Preview-B)
  div ({} (:class-name style-preview-card)) (comp-card |Preview-C)
```

The fixed item width stays in `defstyle`, so repeated cards do not allocate an
equivalent inline style map on every render.

## Button variants

```cirru
div
  {} $ :class-name $ str-spaced css/column css/gap8
  comp-button "|Default"
  comp-button "|Primary" $ {} (:kind :primary)
  comp-button "|Danger" $ {} (:kind :danger)
  comp-button "|Danger outline" $ {} (:kind :danger-outline)
  comp-button "|Unavailable" $ {} (:disabled true)
```

## Feedback stack

```cirru
div
  {} $ :class-name $ str-spaced css/column css/gap8
  comp-alert :info "|A new version is available"
  comp-alert :success "|Changes saved"
  comp-alert :warning "|The token expires soon"
  comp-alert :error "|Upload failed"
  comp-divider
  <> "|Progress · 64%" ui/text-label
  comp-progress 64
  div
    {} $ :class-name $ str-spaced css/row-middle css/gap8
      comp-spinner $ {} (:label "|Uploading")
      <> "|Uploading…"
```

`comp-alert` exposes urgent feedback with `role="alert"`. Give every spinner a
meaningful `:label`, and render visible progress text next to `comp-progress`
when users need the exact value.

## Composable card

```cirru
comp-card
  div
    {} $ :class-name css/column
    <> "|Card content can be a Respo node"
  {} (:title "|Build output")
    :footer $ div
      {} $ :class-name $ str-spaced css/row css/gap8
      comp-button "|Cancel"
      comp-button "|Deploy" $ {} (:kind :primary)
```

## Keyed attribute cards

```cirru
list->
  {} $ :class-name $ str-spaced css/column css/gap8
  -> projects $ map
    fn (project)
      [] (:id project)
        memo-comp-by (:id project) comp-project-card project
```

Use stable IDs rather than indexes. `memo-comp-by` is most useful for repeated subtrees whose function, key, and arguments remain unchanged.

## Loading and empty states

```cirru
if loading?
  div
    {} $ :class-name $ str-spaced css/column css/gap8
    comp-skeleton $ {} (:kind :circle)
    comp-skeleton $ {} (:width |48%)
    comp-skeleton $ {} (:height |72px)
  comp-empty "|No results" $ {}
    :description "|Try another search term."
    :action $ comp-button "|Clear filters" $ {} (:kind :primary)
```

Unlabeled skeletons are decorative. Add `:label` only when the placeholder is
the loading status users should hear from assistive technology.

## Avatars and dividers

```cirru
div
  {} $ :class-name $ str-spaced css/column css/gap8
  div
    {} $ :class-name $ str-spaced css/row-middle css/gap8
    comp-avatar |CY $ {} (:size :small) (:title "|Small avatar")
    comp-avatar |RS $ {} (:title "|Default avatar")
    comp-avatar |UI $ {} (:size :large) (:title "|Large avatar")
  comp-divider
  div
    {} $ :class-name $ str-spaced css/row-middle css/gap8
    comp-button "|Previous"
    comp-divider $ {} (:vertical? true)
    comp-button "|Next" $ {} (:kind :primary)
```

## Dialogs, prompts, and confirms

Use [`respo-alerts`](https://github.com/Respo/alerts.calcit) for modal flows.
It provides alert, prompt, and confirm APIs together with their transitions,
so applications do not need to build another overlay implementation from these
primitives.
