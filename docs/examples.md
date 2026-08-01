# Examples

All examples use Calcit/Cirru syntax.

## Controlled form

```cirru
ns app.comp.form $ :require
  respo.core :refer $ defcomp div >>
  respo-ui.comp :refer $ comp-input comp-textarea comp-select comp-switch comp-button
  respo-ui.css :as css

def language-options $ []
  {} (:value |calcit) (:label |Calcit)
  {} (:value |clojure) (:label |Clojure)
  {} (:value |haskell) (:label |Haskell)

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

## Feedback stack

```cirru
div
  {} $ :class-name $ str-spaced css/column css/gap8
  comp-alert :info "|A new version is available"
  comp-alert :success "|Changes saved"
  comp-alert :warning "|The token expires soon"
  comp-alert :error "|Upload failed"
  comp-progress 64
  div
    {} $ :class-name $ str-spaced css/row-middle css/gap8
    comp-spinner $ {} (:label "|Uploading")
    <> "|Uploading…"
```

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

## Controlled modal

```cirru
when (:show-modal? state)
  comp-modal "|The calling page owns the dialog state." $ {}
    :title "|Confirm example"
    :on-close $ fn (e d!)
      d! cursor $ assoc state :show-modal? false
    :footer $ comp-button "|Confirm" $ {}
      :kind :primary
      :on-click $ fn (e d!)
        d! cursor $ assoc state :show-modal? false
```
