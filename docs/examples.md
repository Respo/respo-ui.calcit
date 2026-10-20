# Examples

All examples use Calcit/Cirru syntax. Options are `Option` values of the
structs in `respo-ui.schema`; omitted `Option` fields default to `Option :none`.

## Controlled form

```cirru
ns app.comp.form $ :require
  respo.core :refer $ defcomp div
  respo-ui.comp :refer $ comp-input comp-select comp-radio-group comp-field comp-switch comp-button
  respo-ui.schema :refer $ SelectOption InputOptions SelectOptions RadioGroupOptions FieldOptions SwitchOptions ButtonOptions
  respo-ui.css :as css

def language-options $ []
  SelectOption :value |calcit :label |Calcit
  SelectOption :value |clojure :label |Clojure
  SelectOption :value |haskell :label |Haskell

defcomp comp-form (name language confirmed?)
  div
    {} $ :class-name $ str-spaced css/column css/gap16
    comp-field |Name
      comp-input name $ Option :some $ InputOptions :placeholder (Option :some |Name)
        , :on-change $ Option :some $ fn (value d!)
          hint-fn $ {} (:return 'Unit) $ :args $ [] 'String $ :: 'Fn $ {} (:args $ [] 'Dynamic) (:return 'Unit)
          d! $ :: :set-name value
      Option :some $ FieldOptions :required? (Option :some true)
        , :error $ if (blank? name) (Option :some "|Name is required.") (Option :none)
    comp-field |Language
      comp-radio-group language language-options $ Option :some $ RadioGroupOptions :name (Option :some |language)
        , :on-change $ Option :some $ fn (value d!)
          hint-fn $ {} (:return 'Unit) $ :args $ [] 'String $ :: 'Fn $ {} (:args $ [] 'Dynamic) (:return 'Unit)
          d! $ :: :set-language value
      Option :some $ FieldOptions :description (Option :some "|Used for code samples.")
    comp-switch confirmed? $ Option :some $ SwitchOptions :label (Option :some "|I confirm the details")
      , :on-change $ Option :some $ fn (next? d!)
        hint-fn $ {} (:return 'Unit) $ :args $ [] 'Bool $ :: 'Fn $ {} (:args $ [] 'Dynamic) (:return 'Unit)
        d! $ :: :set-confirmed next?
    comp-button |Submit $ Option :some $ ButtonOptions :kind (Option :some :primary)
      , :disabled $ Option :some (not confirmed?)
```

Callbacks need a `hint-fn` so the checker can match them against the options
struct; an unannotated `fn` is rejected. With Respo 0.17 or newer, write
`*dispatch-op` instead of `'Dynamic` for the dispatch argument so `d!` is
checked against your entry's operation type. Option fields continued on the
next line start with `,` so they stay pairs of the constructor call.

`comp-select` takes the same `SelectOption` list as `comp-radio-group`, so a
choice can switch between a dropdown and visible options without touching the
data. Callbacks receive the new value and `d!`; dispatch your app's operation
tuple.

## Responsive dashboard layout

```cirru
div
  {} $ :class-name $ str-spaced css/content-container css/stack css/gap16
  div
    {} $ :class-name $ str-spaced css/split-layout css/gap16
    comp-breadcrumb
      [] (BreadcrumbItem :label |Home :href $ Option :some |#/) (BreadcrumbItem :label |Overview)
      Option :none
    div
      {} $ :class-name $ str-spaced css/cluster css/gap8
      comp-button |Filter $ Option :none
      comp-button |Create $ Option :some $ ButtonOptions :kind (Option :some :primary)
  div
    {} $ :class-name $ str-spaced css/responsive-grid css/gap16
    comp-card |Activity $ Option :some $ CardOptions :title (Option :some |Today)
    comp-card |Members $ Option :some $ CardOptions :title (Option :some |Team)
    comp-card |Usage $ Option :some $ CardOptions :title (Option :some |Resources)
  comp-pagination 3 12 $ Option :none
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
    comp-card |Summary $ Option :none
    comp-card |Recent-activity $ Option :none
```

The first and last direct children receive the sidebar and main-content flex
bases. When both preferred widths no longer fit, the main region moves below
the sidebar without a media-query branch in component code.

## Feedback stack

```cirru
div
  {} $ :class-name $ str-spaced css/column css/gap8
  comp-alert :info "|A new version is available" $ Option :none
  comp-alert :success "|Changes saved" $ Option :none
  comp-alert :error "|Upload failed" $ Option :none
  div
    {} $ :class-name $ str-spaced css/row-middle css/gap8
    comp-spinner $ Option :some $ SpinnerOptions :label (Option :some |Uploading)
    comp-progress 64 $ Option :none
    comp-badge |64% $ Option :some $ BadgeOptions :kind (Option :some :info)
```

`comp-alert` exposes urgent feedback with `role="alert"`. Give every spinner a
meaningful `:label`, and render visible progress text next to `comp-progress`
when users need the exact value.

## Onboarding steps

```cirru
div
  {} $ :class-name $ str-spaced css/column css/gap16
  comp-steps current
    []
      StepItem :title |Account
      StepItem :title |Profile :description $ Option :some "|Tell us about you."
      StepItem :title |Done
    Option :none
  comp-collapse "|Why do we ask for this?" "|Profiles help teammates find you." $ Option :none
```

## Loading and empty states

```cirru
if loading?
  div
    {} $ :class-name $ str-spaced css/column css/gap8
    comp-skeleton $ Option :some $ SkeletonOptions :kind (Option :some :circle)
    comp-skeleton $ Option :some $ SkeletonOptions :width (Option :some |48%)
  comp-empty "|No results" $ Option :some $ EmptyOptions
    , :description $ Option :some "|Try another search term."
    , :action $ Option :some $ comp-button "|Clear filters" (Option :none)
```

Unlabeled skeletons are decorative. Add `:label` only when the placeholder is
the loading status users should hear from assistive technology.

## Keyboard hints

```cirru
div
  {} $ :class-name $ str-spaced css/row-middle css/gap8
  comp-tooltip (comp-button |Search $ Option :none) "|Search the docs" $ Option :none
  comp-kbd ([] |Ctrl |K) (Option :none)
```

## Keyed lists

```cirru
list->
  {} $ :class-name $ str-spaced css/column css/gap8
  -> projects $ map
    fn (project)
      [] (:id project)
        memo-comp-by (:id project) comp-project-card project
```

Use stable IDs rather than indexes. `memo-comp-by` is most useful for repeated
subtrees whose function, key, and arguments remain unchanged.

## Dialogs, prompts, and confirms

Use [`respo-alerts`](https://github.com/Respo/alerts.calcit) for modal flows.
It provides alert, prompt, and confirm APIs together with their transitions,
so applications do not need to build another overlay implementation from these
primitives.
