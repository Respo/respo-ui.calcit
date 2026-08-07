
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `cr query` to inspect and `cr edit`/`cr tree` to modify. Run `cr docs agents --full` first. Manual edits must follow format and schema conventions, then run `cr edit format`.") (:package |respo-ui) (:version |0.7.0)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'respo-ui.main/main!) (:mode :native) (:reload-fn 'respo-ui.main/reload!)
      :modules $ [] |memof/ |respo-router.calcit/ |respo-markdown.calcit/ |respo.calcit/
      :type-slots $ {}
  :files $ {}
    |respo-ui.comp $ %{} :FileEntry
      :defs $ {}
        |comp-alert $ %{} :CodeEntry (:doc "|Render an accessible alert. Kinds are :info, :success, :warning, and :error; content may be text or a Respo node.")
          :code $ quote
            defcomp comp-alert (kind content ? options)
              div
                {} (:role |alert)
                  :class-name $ str-spaced style-alert
                    case-default kind style-alert-info (:success style-alert-success) (:warning style-alert-warning) (:error style-alert-error)
                    :class-name options
                  :style $ :style options
                if (literal? content) (<> content) content
          :examples $ []
            quote $ comp-alert :success "|Changes saved"
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :tag 'Content (:: :optional 'respo-ui.schema/PresentationOptions)
              :generics $ [] 'Content
        |comp-attributes $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-attributes (options)
              let
                  items $ :items options
                  item-width $ either (:item-width options) 160
                  item-height $ :item-height options
                  title $ :title options
                  ret $ list->
                    {}
                      :class-name $ :class-name options
                      :style $ merge
                        {} (:display :grid)
                          :grid-template-columns $ str "|repeat(auto-fit, minmax(" item-width "|px,1fr))"
                          :gap 8
                        :style options
                    -> items $ map-indexed
                      fn (idx info)
                        [] idx $ let
                            item $ cond
                                map? info
                                , info
                              (tuple? info)
                                tag-match info
                                  (:attr l v)
                                    {} (:value v) (:label l)
                                  (:attr-span l v s)
                                    {} (:value v) (:label l) (:span s)
                              true $ raise "|unknown attribute info"
                          div
                            {}
                              :style $ {}
                                :grid-column $ let
                                    sp $ &map:get item :span
                                  if (some? sp) (str-spaced |span sp) |
                              :class-name $ str-spaced style-item (:css-item options)
                            div
                              {} $ :class-name
                                str-spaced css-item-label $ :css-label options
                              <> $ &map:get item :label
                            div
                              {} $ :class-name (:css-value options)
                              let
                                  v $ &map:get item :value
                                if (literal? v) (<> v) v
                if (some? title)
                  div ({})
                    div
                      {} $ :class-name
                        str-spaced style-attributes-title $ :css-title options
                      <> title
                    , ret
                  , ret
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'respo-ui.schema/AttributesOptions 'Item)
              :generics $ [] 'Item
        |comp-avatar $ %{} :CodeEntry (:doc "|Render initials or an image avatar. Options: :src, :alt, :title, :size (:small or :large), :class-name, and :style.")
          :code $ quote
            defcomp comp-avatar (text ? options)
              div
                {}
                  :title $ :title options
                  :class-name $ str-spaced style-avatar
                    case-default (:size options) nil (:small style-avatar-small) (:large style-avatar-large)
                    :class-name options
                  :style $ :style options
                if
                  some? $ :src options
                  create-element :img $ {}
                    :src $ :src options
                    :alt $ either (:alt options) (str text)
                    :class-name style-avatar-image
                  <> text
          :examples $ []
            quote $ comp-avatar |CY
              {} (:size :large) (:title "|Chen Yong")
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :optional 'respo-ui.schema/AvatarOptions)
        |comp-button $ %{} :CodeEntry (:doc "|Render a native button with Respo UI variants. Options: :kind (:primary, :danger, :danger-outline), :type, :disabled, :on-click, :class-name, :style.")
          :code $ quote
            defcomp comp-button (content ? options)
              button
                {}
                  :type $ either (:type options) |button
                  :disabled $ or (:disabled options) false
                  :class-name $ str-spaced
                    case-default (:kind options) css/button (:primary css/button-primary) (:danger css/button-danger) (:danger-outline css/button-danger-outline)
                    :class-name options
                  :style $ :style options
                  :on-click $ :on-click options
                if (literal? content) (<> content) content
          :examples $ []
            quote $ comp-button |Save
              {} $ :kind :primary
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Content (:: :optional 'respo-ui.schema/ButtonOptions)
              :generics $ [] 'Content
        |comp-card $ %{} :CodeEntry (:doc "|Render a composable card. Content may be text or a Respo node; options support :title, :footer, :class-name, and :style.")
          :code $ quote
            defcomp comp-card (content ? options)
              div
                {}
                  :class-name $ str-spaced style-card (:class-name options)
                  :style $ :style options
                when
                  some? $ :title options
                  div
                    {} $ :class-name style-card-title
                    <> $ either (:title options) |
                div
                  {} $ :class-name style-card-body
                  if (literal? content) (<> content) content
                when
                  some? $ :footer options
                  div
                    {} $ :class-name style-card-footer
                    :footer options
          :examples $ []
            quote $ comp-card |Content
              {} $ :title |Summary
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] 'Content
                :: :optional $ :: 'respo-ui.schema/CardOptions 'Footer
              :generics $ [] 'Content 'Footer
        |comp-catoptric-text $ %{} :CodeEntry (:doc "|by \"catoptric text\" I mean text added with CSS content, thus unsearchable from browser search or select. The text can still be grabbed from DOM tree though.")
          :code $ quote
            defcomp comp-catoptric-text (text ? options)
              [] (effect-dataset-text text)
                span $ {}
                  :class-name $ str-spaced style-catoptric (get options :class-name)
                  :style $ get options :style
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :optional 'respo.schema/DomProps)
        |comp-checkbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-checkbox (checked ? options) (assert-type checked :bool)
              create-element :label
                {}
                  :class-name $ str-spaced css/checkbox-label (:class-name options)
                  :style $ :style options
                input $ {} (:type |checkbox) (:class-name css/checkbox) (:checked checked)
                  :disabled $ or (:disabled options) false
                  :on $ {}
                    :change $ fn (e d!)
                      let
                          on-change $ :on-change options
                        when (some? on-change)
                          on-change
                            or (:checked e) false
                            , d!
                if
                  some? $ :label options
                  <> $ str (:label options)
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :bool
                :: :optional $ :: 'respo-ui.schema/SwitchOptions 'Op
              :generics $ [] 'Op
        |comp-cirru-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-cirru-snippet (text ? options)
              div
                {}
                  :class-name $ str-spaced css/row css-snippet (get options :class-name)
                  :style $ get options :style
                pre $ {} (:class-name css/expand)
                  :innerHTML $ generateHtml text
                span
                  {} $ :class-name style-copy-wrapper
                  comp-copy text $ fn (e d!) (copy! text)
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :optional 'respo.schema/DomProps)
        |comp-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-close (? options)
              span $ {} (:inner-text "|✕")
                :style $ get options :style
                :class-name $ str-spaced style-close (get options :class-name)
                :on-click $ get options :on-click
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: :optional 'respo.schema/DomProps)
        |comp-copy $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-copy (code ? f)
              div
                {}
                  :class-name $ str-spaced style-copy-outline style-copy-container
                  :on-click $ either f
                    fn (e d!) (copy! code)
                div $ {} (:class-name style-copy-outline)
                  :style $ {} (:top -5) (:right -2)
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :optional 'respo.schema/EventHandler)
        |comp-divider $ %{} :CodeEntry (:doc "|Render a horizontal divider, or a vertical divider with :vertical? true.")
          :code $ quote
            defcomp comp-divider (? options)
              div $ {} (:role |separator)
                :class-name $ str-spaced
                  if (:vertical? options) style-divider-vertical style-divider
                  :class-name options
                :style $ :style options
          :examples $ []
            quote $ comp-divider
              {} $ :vertical? true
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: :optional 'respo-ui.schema/DividerOptions)
        |comp-empty $ %{} :CodeEntry (:doc "|Render a richer empty state with optional :icon, :description, :action, :class-name, and :style.")
          :code $ quote
            defcomp comp-empty (title ? options)
              div
                {}
                  :class-name $ str-spaced style-empty (:class-name options)
                  :style $ :style options
                div
                  {} $ :class-name style-empty-icon
                  if
                    some? $ :icon options
                    :icon options
                    <> "|◇"
                div
                  {} $ :class-name style-empty-title
                  <> title
                when
                  some? $ :description options
                  div
                    {} $ :class-name style-empty-description
                    <> $ either (:description options) |
                when
                  some? $ :action options
                  div ({}) (:action options)
          :examples $ []
            quote $ comp-empty "|No results"
              {} $ :description "|Try another search term."
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string
                :: :optional $ :: 'respo-ui.schema/EmptyOptions 'Icon 'Action
              :generics $ [] 'Icon 'Action
        |comp-input $ %{} :CodeEntry (:doc "|Render a controlled text input. Pass the current value and optional :type, :placeholder, :disabled, :on-input, :class-name, and :style.")
          :code $ quote
            defcomp comp-input (value ? options)
              input $ {}
                :type $ either (:type options) |text
                :value value
                :placeholder $ :placeholder options
                :disabled $ or (:disabled options) false
                :class-name $ str-spaced css/input (:class-name options)
                :style $ :style options
                :on-input $ :on-input options
          :examples $ []
            quote $ comp-input |query
              {} $ :placeholder |Search
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :optional 'respo.schema/DomProps)
        |comp-placeholder $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-placeholder (text)
              div
                {} $ :class-name css-placeholder
                <> text
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string
        |comp-progress $ %{} :CodeEntry (:doc "|Render an accessible progress bar. Value is clamped visually to 0..100; options support :class-name and :style.")
          :code $ quote
            defcomp comp-progress (value ? options)
              div
                {} (:role |progressbar)
                  :class-name $ str-spaced style-progress (:class-name options)
                  :style $ :style options
                div $ {} (:class-name style-progress-value)
                  :style $ {}
                    :width $ str
                      &min 100 $ &max 0 value
                      , |%
          :examples $ []
            quote $ comp-progress 72
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :number (:: :optional 'respo-ui.schema/PresentationOptions)
        |comp-select $ %{} :CodeEntry (:doc "|Render a controlled native select from keyed option maps. Each item uses :value, :label, and optional :disabled; :on-change receives the next value and d!.")
          :code $ quote
            defcomp comp-select (value items ? options)
              create-list-element :select
                {} (:value value)
                  :disabled $ or (:disabled options) false
                  :class-name $ str-spaced css/select (:class-name options)
                  :style $ :style options
                  :on-change $ fn (e d!)
                    let
                        on-change $ :on-change options
                      when (some? on-change)
                        on-change
                          str $ :value e
                          fn (op) (d! op)
                -> items
                  map $ fn (item)
                    let
                        option-value $ :value item
                      [] option-value $ option
                        {} (:value option-value)
                          :selected $ = value option-value
                          :disabled $ or (:disabled item) false
                          :inner-text $ str
                            either (:label item) option-value
                  pairs-map
          :examples $ []
            quote $ comp-select |calcit
              [] $ %{}? respo-ui.schema/SelectOption (:value |calcit) (:label |Calcit)
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :list 'respo-ui.schema/SelectOption)
                :: :optional $ :: 'respo-ui.schema/SelectOptions 'Op
              :generics $ [] 'Op
        |comp-skeleton $ %{} :CodeEntry (:doc "|Render an animated loading placeholder. Unlabeled skeletons are decorative; pass :label to expose role=status. Options: :kind (:text or :circle), :width, :height, :class-name, and :style.")
          :code $ quote
            defcomp comp-skeleton (? options)
              div $ {}
                :role $ if
                  some? $ :label options
                  , |status nil
                :aria-label $ :label options
                :aria-hidden $ nil? (:label options)
                :class-name $ str-spaced style-skeleton
                  if
                    = :circle $ :kind options
                    , style-skeleton-circle style-skeleton-text
                  :class-name options
                :style $ merge
                  {}
                    :width $ :width options
                    :height $ :height options
                  :style options
          :examples $ []
            quote $ comp-skeleton
              {} (:width |60%) (:label "|Loading title")
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: :optional 'respo-ui.schema/SkeletonOptions)
        |comp-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-snippet (code ? options)
              div
                {} $ :class-name
                  str-spaced css/row css-snippet $ :class-name options
                pre $ {} (:class-name css/expand)
                  :style $ :style options
                  :inner-text code
                span
                  {} $ :class-name style-copy-wrapper
                  comp-copy code $ fn (e d!) (copy! code)
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :optional 'respo.schema/DomProps)
        |comp-spinner $ %{} :CodeEntry (:doc "|Render an accessible loading spinner. Options support :label, :class-name, and :style.")
          :code $ quote
            defcomp comp-spinner (? options)
              span $ {} (:role |status)
                :aria-label $ either (:label options) |Loading
                :class-name $ str-spaced style-spinner (:class-name options)
                :style $ :style options
          :examples $ []
            quote $ comp-spinner
              {} $ :label "|Loading results"
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: :optional 'respo-ui.schema/SpinnerOptions)
        |comp-switch $ %{} :CodeEntry (:doc "|Render a controlled accessible switch backed by a native checkbox. Options: :label, :disabled, :on-change, :class-name, and :style.")
          :code $ quote
            defcomp comp-switch (checked ? options)
              create-element :label
                {}
                  :class-name $ str-spaced style-switch-label
                    if (:disabled options) style-control-disabled
                    :class-name options
                  :style $ :style options
                input $ {} (:type |checkbox) (:checked checked)
                  :disabled $ or (:disabled options) false
                  :aria-label $ :label options
                  :class-name style-switch-input
                  :on-change $ fn (e d!)
                    let
                        on-change $ :on-change options
                      when (some? on-change)
                        on-change
                          or (:checked e) false
                          fn (op) (d! op)
                span $ {}
                  :class-name $ str-spaced style-switch-track (if checked style-switch-track-checked)
                when
                  some? $ :label options
                  span ({})
                    <> $ either (:label options) |
          :examples $ []
            quote $ comp-switch false
              {} $ :label "|Compact mode"
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :bool
                :: :optional $ :: 'respo-ui.schema/SwitchOptions 'Op
              :generics $ [] 'Op
        |comp-tabs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-tabs (options tabs on-route)
              let
                  selected $ :selected options
                  vertical? $ :vertical? options
                [] (effect-tab-highlight selected vertical?)
                  div
                    {}
                      :class-name $ str-spaced style-tabs (if vertical? css/column css/row) (get options :class-name)
                      :style $ merge
                        {} $ :width (:width options)
                        get options :style
                    div $ {}
                      :class-name $ str-spaced style-tab-highlight (if vertical? style-tab-vertical-highlight)
                    , & $ -> tabs
                      map $ fn (info)
                        let
                            item $ cond
                                tuple? info
                                tag-match info $
                                  :tab value display
                                  %:: respo-ui.schema/TabRoute :tab value $ str display
                              (map? info)
                                %:: respo-ui.schema/TabRoute :tab
                                  or (&map:get info :value) (&map:get info :name)
                                  str $ or (&map:get info :display) (&map:get info :title)
                              true $ raise "|Unknown tab value"
                          match item $
                            :tab value display
                            let
                                selected? $ = selected value
                              div
                                {}
                                  :class-name $ str-spaced css-tab (get options :tab-class-name) (if selected? style-selected-tab)
                                  :style $ merge (:tab-style options)
                                    if selected? $ :selected-tab-style options
                                  :on-click $ fn (e d!) (on-route item d!)
                                <> display
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] (:: 'respo-ui.schema/TabsOptions 'Value) (:: :list 'Item)
                :: :fn $ {} (:return :unit)
                  :args $ [] (:: 'respo-ui.schema/TabRoute 'Value)
                    :: :fn $ {} (:return :unit)
                      :args $ [] '*dispatch-op
              :generics $ [] 'Value 'Item
        |comp-tag $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-tag (kind content ? options)
              div
                {}
                  :class-name $ str-spaced style-tag
                    case-default kind nil (:info style-tag-info) (:success style-tag-success) (:warning style-tag-warning) (:error style-tag-error)
                    :class-name options
                  :style $ :style options
                  :on-click $ either (:on-click options)
                    fn $ e d!
                <> content
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :tag :string (:: :optional 'respo.schema/DomProps)
        |comp-textarea $ %{} :CodeEntry (:doc "|Render a controlled textarea. Pass the current value and optional :placeholder, :disabled, :on-input, :class-name, and :style.")
          :code $ quote
            defcomp comp-textarea (value ? options)
              textarea $ {} (:value value)
                :placeholder $ :placeholder options
                :disabled $ or (:disabled options) false
                :class-name $ str-spaced css/textarea (:class-name options)
                :style $ :style options
                :on-input $ :on-input options
          :examples $ []
            quote $ comp-textarea |notes
              {} $ :placeholder |Notes
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string (:: :optional 'respo.schema/DomProps)
        |comp-time $ %{} :CodeEntry (:doc "|pass a time in string(internally handled by dayjs)\n\nif is today, just show the time of today.\nif not today, only show date and week.\n\nneed to be extended in future...")
          :code $ quote
            defcomp comp-time (time & options) (.!extend dayjs is-today)
              let
                  now $ dayjs time
                  mark $ if (.!isToday now)
                    str "|Today " $ .!format now |HH:mm
                    .!format now "|MM-DD ddd"
                span $ {} (:class-name css/font-fancy) (:title time) (:inner-text mark)
                  :on-click $ fn (e d!) (js/console.log :time time)
          :examples $ []
          :schema $ :: :fn
            {} (:rest 'Option) (:return 'respo.schema/Component)
              :args $ [] :string
              :features $ #{} :js-ffi
              :generics $ [] 'Option
        |css-item-label $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-item-label $ {}
              |$0 $ {} (:font-weight 300) (:font-family ui/font-fancy) (:font-size 15) (:line-height |14px)
                :color $ hsl 0 0 60
          :examples $ []
        |css-placeholder $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-placeholder $ {}
              |$0 $ merge ui/center
                {} (:padding 16) (:font-family ui/font-fancy)
                  :color $ hsl 0 0 80
                  :font-size 12
                  :font-style :italic
          :examples $ []
        |css-snippet $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-snippet $ {}
              |& $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height |20px)
                :color $ hsl 0 0 40
                :padding "|4px 32px 4px 6px"
                :border $ str "|1px solid " (hsl 0 0 90)
                :border-radius |4px
                :margin 0
                :position :relative
              "|& > pre" $ {} (:margin 0)
          :examples $ []
        |css-tab $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-tab $ {}
              |$0 $ {} (:padding "|0 8px") (:font-family ui/font-normal) (:font-weight 300) (:cursor :pointer) (:font-size 14)
                :color $ hsl 0 0 70
                :line-height |24px
                :border-radius |2px
              |$0:hover $ {}
                :background-color $ hsl 0 0 98
          :examples $ []
        |effect-dataset-text $ %{} :CodeEntry (:doc "|Respo does not support dataset from attribute, write with effect")
          :code $ quote
            defeffect effect-dataset-text (text) (action el at?)
              if
                or (= action :update) (= action :mount)
                -> el .-dataset .-text $ set! text
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :dynamic
              :features $ #{} :js-ffi
        |effect-tab-highlight $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-tab-highlight (selected vertical?) (action el at?)
              when
                or (= action :mount) (= action :update)
                let
                    target $ .!querySelector el (str |. style-selected-tab)
                    cursor $ .!querySelector el (str |. style-tab-highlight)
                  if (some? target)
                    let
                        left $ - (.-offsetLeft target) 0
                        width $ .-clientWidth target
                        height $ .-clientHeight target
                      if vertical?
                        do
                          -> cursor .-style .-top $ set!
                            str (.-offsetTop target) |px
                          -> cursor .-style .-bottom $ set! (str 0 |px)
                          -> cursor .-style .-height $ set! (str height |px)
                        do
                          -> cursor .-style .-left $ set! (str left |px)
                          -> cursor .-style .-width $ set! (str width |px)
                    if (not vertical?)
                      -> cursor .-style .-width $ set! (str 0 |px)
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :dynamic :dynamic
              :features $ #{} :js-ffi
        |literal? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn literal? (v)
              or (string? v) (tag? v) (number? v) (bool? v)
          :examples $ []
          :schema $ :: :fn
            {} (:return :bool)
              :args $ [] 'Value
              :generics $ [] 'Value
        |style-alert $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-alert $ {}
              |& $ {} (:padding "|10px 12px") (:border "|1px solid transparent") (:border-radius |6px) (:line-height |1.5)
          :examples $ []
        |style-alert-error $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-alert-error $ {}
              |& $ {}
                :color $ hsl 4 68 38
                :background-color $ hsl 4 80 96
                :border-color $ hsl 4 65 86
          :examples $ []
        |style-alert-info $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-alert-info $ {}
              |& $ {}
                :color $ hsl 210 70 34
                :background-color $ hsl 210 80 96
                :border-color $ hsl 210 60 86
          :examples $ []
        |style-alert-success $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-alert-success $ {}
              |& $ {}
                :color $ hsl 135 55 28
                :background-color $ hsl 135 55 95
                :border-color $ hsl 135 45 84
          :examples $ []
        |style-alert-warning $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-alert-warning $ {}
              |& $ {}
                :color $ hsl 38 80 28
                :background-color $ hsl 45 90 94
                :border-color $ hsl 42 75 80
          :examples $ []
        |style-attributes-title $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-attributes-title $ {}
              |$0 $ {} (:font-size 18) (:margin-bottom 6)
          :examples $ []
        |style-avatar $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-avatar $ {}
              |& $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:width |32px) (:height |32px) (:overflow :hidden) (:border-radius |50%)
                :background-color $ hsl 220 75 92
                :color $ hsl 220 65 42
                :font-family ui/font-normal
                :font-size |12px
                :font-weight |600
                :text-transform :uppercase
                :flex-shrink |0
          :examples $ []
        |style-avatar-image $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-avatar-image $ {}
              |& $ {} (:width |100%) (:height |100%) (:object-fit :cover)
          :examples $ []
        |style-avatar-large $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-avatar-large $ {}
              |& $ {} (:width |48px) (:height |48px) (:font-size |16px)
          :examples $ []
        |style-avatar-small $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-avatar-small $ {}
              |& $ {} (:width |24px) (:height |24px) (:font-size |10px)
          :examples $ []
        |style-card $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-card $ {}
              |& $ {}
                :border $ str "|1px solid " (hsl 0 0 90)
                :border-radius |8px
                :background-color :white
                :overflow :hidden
                :box-shadow $ str "|0 2px 10px " (hsl 0 0 0 0.06)
          :examples $ []
        |style-card-body $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-card-body $ {}
              |& $ {} (:padding |16px)
          :examples $ []
        |style-card-footer $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-card-footer $ {}
              |& $ {} (:padding "|10px 16px")
                :border-top $ str "|1px solid " (hsl 0 0 92)
                :background-color $ hsl 0 0 98
          :examples $ []
        |style-card-title $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-card-title $ {}
              |& $ {} (:padding "|12px 16px")
                :border-bottom $ str "|1px solid " (hsl 0 0 92)
                :font-family ui/font-fancy
                :font-size |16px
                :font-weight |600
          :examples $ []
        |style-catoptric $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-catoptric $ {}
              |&::before $ {} (:content "|attr(data-text)")
          :examples $ []
        |style-close $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-close $ {}
              |& $ {} (:font-size 16) (:line-height |16px) (:height |16px) (:font-weight 100)
                :color $ hsl 0 90 70
                :opacity 0.5
                :cursor :pointer
                :transition-duration |200ms
                :user-select :none
              |&:hover $ {} (:opacity 1)
              |&:active $ {} (:transform "|scale(1.1)") (:transition-duration |0ms)
          :examples $ []
        |style-control-disabled $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-control-disabled $ {}
              |& $ {} (:opacity 0.5) (:cursor :not-allowed)
          :examples $ []
        |style-copy-container $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-copy-container $ {}
              |& $ {} (:display :inline-block) (:margin "|0 8px 0 4px")
              |&:hover $ {} (:transition-duration |200ms) (:transform "|scale(1.06)")
          :examples $ []
        |style-copy-outline $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-copy-outline $ {}
              |& $ {} (:position :relative) (:width 12) (:height 12) (:border-radius |2px)
                :border $ str "|1.5px solid " (hsl 0 0 80)
                :cursor :pointer
                :outline "|1px solid white"
              |&:active $ {}
                :border-color $ hsl 0 0 50
                :transition-duration |0ms
          :examples $ []
        |style-copy-wrapper $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-copy-wrapper $ {}
              |& $ {} (:position :absolute) (:top 10) (:right 2)
          :examples $ []
        |style-divider $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-divider $ {}
              |& $ {} (:width |100%) (:height |1px) (:margin "|12px 0")
                :background-color $ hsl 0 0 90
          :examples $ []
        |style-divider-vertical $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-divider-vertical $ {}
              |& $ {} (:display :inline-block) (:width |1px) (:height |1em) (:margin "|0 12px")
                :background-color $ hsl 0 0 90
                :vertical-align :middle
          :examples $ []
        |style-empty $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-empty $ {}
              |& $ {} (:display :flex) (:flex-direction :column) (:align-items :center) (:justify-content :center) (:min-height |160px) (:padding |24px)
                :border $ str "|1px dashed " (hsl 220 15 82)
                :border-radius |8px
                :text-align :center
                :background-color $ hsl 220 20 99
          :examples $ []
        |style-empty-description $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-empty-description $ {}
              |& $ {} (:margin-top |4px) (:margin-bottom |12px)
                :color $ hsl 220 10 52
          :examples $ []
        |style-empty-icon $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-empty-icon $ {}
              |& $ {} (:font-size |28px) (:line-height |1)
                :color $ hsl 220 20 68
                :margin-bottom |10px
          :examples $ []
        |style-empty-title $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-empty-title $ {}
              |& $ {} (:font-size |16px) (:font-weight |600)
                :color $ hsl 220 20 25
          :examples $ []
        |style-item $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-item $ {}
              |$0 $ {} (:min-height 72)
                :background-color $ hsl 0 0 99
                :padding |8px
                :transition-duration |240ms
                :border-radius |4px
              |$0:hover $ {}
                :background-color $ hsl 0 0 100
                :box-shadow $ str "|0 0 4px 1px " (hsl 0 0 0 0.08)
          :examples $ []
        |style-progress $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-progress $ {}
              |& $ {} (:width |100%) (:height |8px) (:overflow :hidden) (:border-radius |999px)
                :background-color $ hsl 220 20 92
          :examples $ []
        |style-progress-value $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-progress-value $ {}
              |& $ {} (:height |100%) (:border-radius |inherit)
                :background-color $ hsl 220 80 62
                :transition "|width 180ms ease"
          :examples $ []
        |style-selected-tab $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-selected-tab $ {}
              |& $ {}
          :examples $ []
        |style-skeleton $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-skeleton $ {}
              |& $ {} (:display :block)
                :background-color $ hsl 220 18 90
                :animation "|respo-ui-skeleton 1.2s ease-in-out infinite alternate"
              "|@keyframes respo-ui-skeleton" $ {}
                |from $ {} (:opacity 0.45)
                |to $ {} (:opacity 1)
          :examples $ []
        |style-skeleton-circle $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-skeleton-circle $ {}
              |& $ {} (:width |32px) (:height |32px) (:border-radius |50%)
          :examples $ []
        |style-skeleton-text $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-skeleton-text $ {}
              |& $ {} (:width |100%) (:height |12px) (:border-radius |4px)
          :examples $ []
        |style-spinner $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-spinner $ {}
              |& $ {} (:display :inline-block) (:width |16px) (:height |16px)
                :border $ str "|2px solid " (hsl 220 30 88)
                :border-top-color $ hsl 220 80 60
                :border-radius |50%
                :vertical-align :middle
                :animation "|respo-ui-spin 700ms linear infinite"
              "|@keyframes respo-ui-spin" $ {}
                |to $ {} (:transform "|rotate(360deg)")
          :examples $ []
        |style-switch-input $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-switch-input $ {}
              |& $ {} (:position :absolute) (:width |1px) (:height |1px) (:opacity 0) (:pointer-events :none)
          :examples $ []
        |style-switch-label $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-switch-label $ {}
              |& $ {} (:display :inline-flex) (:align-items :center) (:gap |8px) (:cursor :pointer) (:user-select :none)
          :examples $ []
        |style-switch-track $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-switch-track $ {}
              |& $ {} (:position :relative) (:display :inline-block) (:width |36px) (:height |20px) (:border-radius |999px)
                :background-color $ hsl 220 12 82
                :transition "|background-color 160ms ease"
              |&::after $ {} (:content ||) (:position :absolute) (:top |2px) (:left |2px) (:width |16px) (:height |16px) (:border-radius |50%) (:background-color :white)
                :box-shadow $ str "|0 1px 4px " (hsl 0 0 0 0.2)
                :transition "|transform 160ms ease"
          :examples $ []
        |style-switch-track-checked $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-switch-track-checked $ {}
              |& $ {}
                :background-color $ hsl 220 80 62
              |&::after $ {} (:transform "|translateX(16px)")
          :examples $ []
        |style-tab-highlight $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tab-highlight $ {}
              |& $ {} (:min-width 0) (:left 0) (:height 1)
                :background-color $ hsl 200 60 80
                :bottom 0
                :position :absolute
                :transition-duration |200ms
                :border-radius |2px
              (str |. style-tabs "|:hover &")
                {} $ :height 3
          :examples $ []
        |style-tab-vertical-highlight $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tab-vertical-highlight $ {}
              |div& $ {} (:width 2) (:left 0)
              (str |. style-tabs "|:hover div&")
                {} $ :width 4
          :examples $ []
        |style-tabs $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tabs $ {}
              |& $ {} (:position :relative)
          :examples $ []
        |style-tag $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tag $ {}
              |& $ {} (:display :inline-block)
                :background-color $ hsl 0 0 96
                :border $ str "|1px solid " (hsl 0 0 92)
                :border-radius |4px
                :height |20px
                :line-height |20px
                :font-size 12
                :padding "|0px 8px"
                :color $ hsl 0 0 64
                :cursor :default
              |&:hover $ {}
                :background-color $ hsl 0 0 94
              |&:active $ {} (:transform "|translate(1px,1px)")
          :examples $ []
        |style-tag-error $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tag-error $ {}
              |div& $ {} (:color :white) (:border :none)
                :background-color $ hsl 0 90 76
              |div&:hover $ {}
                :background-color $ hsl 0 90 72
          :examples $ []
        |style-tag-info $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tag-info $ {}
              |div& $ {} (:color :white) (:border :none)
                :background-color $ hsl 240 99 86
              |div&:hover $ {}
                :background-color $ hsl 240 99 84
          :examples $ []
        |style-tag-success $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tag-success $ {}
              |div& $ {} (:color :white) (:border :none)
                :color $ hsl 120 99 40
                :background-color $ hsl 120 99 92
              |div&:hover $ {}
                :background-color $ hsl 120 99 88
          :examples $ []
        |style-tag-warning $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-tag-warning $ {}
              |div& $ {} (:color :white) (:border :none)
                :color $ hsl 60 90 30
                :background-color $ hsl 60 98 58
              |div&:hover $ {}
                :background-color $ hsl 60 98 49
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp $ :require
            respo.core :refer $ defcomp defeffect div list-> input textarea button span select option a <> pre create-element create-list-element
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            |cirru-color :refer $ generateHtml
            respo.css :refer $ defstyle
            respo-ui.css :as css
            |copy-text-to-clipboard :default copy!
            |dayjs :default dayjs
            |dayjs/plugin/isToday :default is-today
            respo.schema :refer $ *dispatch-op
    |respo-ui.comp.components $ %{} :FileEntry
      :defs $ {}
        |comp-components-page $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-components-page (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states) ({})
                div
                  {} $ :class-name style-components-page
                  div
                    {} $ :class-name style-page-hero
                    div ({}) (<> "|Component examples" style-page-title)
                    div ({}) (<> "|Composable primitives with controlled state and static CSS classes." ui/text-label)
                    div
                      {} $ :class-name (str-spaced css/row css/gap8 style-resource-links)
                      render-entry |https://github.com/Respo/alerts.calcit |respo-alerts
                      render-entry |https://github.com/Respo/respo-feather.calcit |respo-feather
                      render-entry |https://github.com/Respo/respo-message.calcit |respo-message
                      render-entry |https://github.com/Respo/respo-markdown.calcit |respo-markdown
                  comp-demo-form-controls state cursor
                  comp-demo-data-display
                  comp-demo-loading-states
                  comp-divider
                  div
                    {} $ :class-name style-section-title
                    <> "|Utility components"
                  comp-demo-attributes
                  comp-demo-tabs $ >> states :tabs
                  comp-demo-cirru-snippet
                  comp-demo-snippet
                  comp-demo-copy
                  comp-demo-time
                  comp-demo-tags
                  comp-demo-close
                  comp-demo-catoptric-text
                  comp-demo-placeholder
          :examples $ []
        |comp-demo-attributes $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-attributes () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Attributes demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                comp-cirru-snippet "|respo-ui.comp/comp-attributes\n\n\ncomp-attributes $ {} (:title \"\\\"Attributes DEMO\")\n  :items $ [] (:: :attr \"\\\"Demo\" \"\\\"content\")\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr-span \"\\\"DEMO 2\" \"\\\"content 2\" 2\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"DEMO 3\" $ a\n      {} (:inner-text \"\\\"Demo\")\n        :href \"\\\"https://respo-mvc.org\"\n        :target \"\\\"_blank\"\n" $ {}
                  :style $ {} (:flex 1)
                div
                  {} $ :class-name css/flex
                  comp-attributes $ {} (:title "|Attributes DEMO")
                    :items $ [] (:: :attr |Demo |content) (:: :attr "|Demo 2" "|content 2") (:: :attr-span "|DEMO 2" "|content 2" 2) (:: :attr "|Demo 2" "|content 2") (:: :attr "|Demo 2" "|content 2")
                      :: :attr "|DEMO 3" $ a
                        {} (:inner-text |Demo) (:href |https://respo-mvc.org) (:target |_blank)
          :examples $ []
        |comp-demo-catoptric-text $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-catoptric-text () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Catoptric demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-catoptric-text\n\ncomp-catoptric-text \"|Demo Text\" $ {}\n  :style $ {}\n  :class-name $ {}\n" $ {}
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} (:gap |8px)
                  comp-catoptric-text "|DEMO Text"
          :examples $ []
        |comp-demo-cirru-snippet $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-cirru-snippet () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Cirru snippet demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-cirru-snippet\n\ncomp-cirru-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :style $ {}\n  :class-name style-demo"
                div
                  {} $ :class-name (str-spaced css/flex css/column)
                  comp-snippet "|@import url(cirru-color/assets/cirru.css);"
                  =< nil 8
                  comp-cirru-snippet "|defn f (a b)\n  + a b"
          :examples $ []
        |comp-demo-close $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-close () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Close demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-close\n\ncomp-close $ {}\n  :style $ {}\n  :class-name |\n  :on-click nil" $ {}
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} (:gap |8px)
                  comp-close
          :examples $ []
        |comp-demo-copy $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn comp-demo-copy () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Copy demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                comp-cirru-snippet "|respo-ui.comp/comp-copy\n\ncomp-copy \"|demo\"\ncomp-copy \"|demo\" $ fn (e d!)" $ {}
                  :style $ {} (:flex |1)
                div
                  {} $ :class-name css/flex
                  <> "|demo demo"
                  comp-copy "|DEMO TO COPY"
                  <> "|demo demo"
          :examples $ []
        |comp-demo-data-display $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-data-display () $ div
              {} $ :class-name style-demo-section
              div
                {} $ :class-name style-section-title
                <> "|Data display"
              div
                {} $ :class-name style-demo-grid
                comp-card
                  div
                    {} $ :class-name style-avatar-row
                    comp-avatar |CY $ {} (:size :small) (:title "|Small avatar")
                    comp-avatar |RS $ {} (:title "|Default avatar")
                    comp-avatar |UI $ {} (:size :large) (:title "|Large avatar")
                    div ({}) (<> "|Stable sizes and image fallback")
                      div ({}) (<> "|Small · default · large" ui/text-label)
                  {} $ :title |Avatars
                comp-card
                  div
                    {} $ :class-name (str-spaced css/column css/gap8)
                    comp-alert :info "|A neutral product update"
                    comp-alert :success "|All checks passed"
                    comp-alert :warning "|Usage is approaching the limit"
                    comp-alert :error "|The last deployment failed"
                    <> "|Progress · 78%" ui/text-label
                    comp-progress 78
                  {} $ :title "|Status summary"
          :examples $ []
        |comp-demo-form-controls $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-form-controls (state cursor)
              div
                {} $ :class-name style-demo-section
                div
                  {} $ :class-name style-section-title
                  <> "|Form controls"
                div
                  {} $ :class-name style-demo-grid
                  comp-card
                    div
                      {} $ :class-name (str-spaced css/column css/gap8)
                      comp-input
                        either (:query state) |
                        {} (:placeholder "|Search components")
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :query (:value e)
                      comp-textarea
                        either (:notes state) |
                        {} (:placeholder "|Notes about this component")
                          :on-input $ fn (e d!)
                            d! cursor $ assoc state :notes (:value e)
                      comp-select
                        either (:language state) |calcit
                        , language-options $ {}
                          :on-change $ fn (next-value d!)
                            d! cursor $ assoc state :language next-value
                      comp-switch
                        or (:compact? state) false
                        {} (:label "|Compact mode")
                          :on-change $ fn (next? d!)
                            d! cursor $ assoc state :compact? next?
                    {} (:title "|Controlled values")
                      :footer $ <>
                        str "|Selected: " $ either (:language state) |calcit
                        , ui/text-label
                  comp-card
                    div
                      {} $ :class-name (str-spaced css/column css/gap8)
                      comp-button "|Default action"
                      comp-button "|Primary action" $ {} (:kind :primary)
                      comp-button "|Danger action" $ {} (:kind :danger)
                      comp-button "|Danger outline" $ {} (:kind :danger-outline)
                      comp-button |Unavailable $ {} (:disabled true)
                    {} $ :title "|Button states"
          :examples $ []
        |comp-demo-loading-states $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-loading-states () $ div
              {} $ :class-name style-demo-section
              div
                {} $ :class-name style-section-title
                <> "|Loading and empty states"
              div
                {} $ :class-name style-demo-grid
                comp-card
                  div
                    {} $ :class-name (str-spaced css/column css/gap8)
                    div
                      {} $ :class-name (str-spaced css/row-middle css/gap8)
                      comp-skeleton $ {} (:kind :circle) (:label "|Loading avatar")
                      div
                        {} $ :class-name (str-spaced css/column css/gap8 css/expand)
                        comp-skeleton $ {} (:width |48%)
                        comp-skeleton $ {} (:width |72%)
                    comp-divider
                    comp-skeleton $ {} (:height |72px)
                  {} $ :title "|Skeleton composition"
                comp-empty "|No components found" $ {}
                  :icon $ <> "|⌕"
                  :description "|Try another search term or clear the filters."
                  :action $ comp-button "|Clear filters"
                    {} $ :kind :primary
                comp-card
                  div
                    {} $ :class-name (str-spaced css/column css/gap8)
                    div
                      {} $ :class-name (str-spaced css/row-middle css/gap8)
                      comp-spinner $ {} (:label "|Loading results")
                      <> "|Loading results"
                    comp-divider
                    div
                      {} $ :class-name (str-spaced css/row-middle css/gap8)
                      comp-button |Previous
                      comp-divider $ {} (:vertical? true)
                      comp-button |Next $ {} (:kind :primary)
                  {} $ :title "|Spinner and dividers"
          :examples $ []
        |comp-demo-placeholder $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-placeholder () $ div ({})
              div
                {} $ :class-name css-title
                <> "|Placeholder demo"
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                comp-cirru-snippet "|respo-ui.comp/comp-placeholder\n\ncomp-placeholder \"|demo\"\ncomp-placeholder \"|中文\"" $ {}
                  :style $ {} (:flex |1)
                div
                  {} $ :class-name css/flex
                  comp-placeholder "|This is a demo"
                  comp-placeholder "|中文 Demo"
          :examples $ []
        |comp-demo-snippet $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-snippet () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Snippet demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-snippet\n\ncomp-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :class-name style-demo\n  :style $ {}" $ {}
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|defn f (a b)\n  + a b" $ {}
          :examples $ []
        |comp-demo-tabs $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-tabs (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} $ :selected nil
                  en-tabs $ [] (:: :tab :book |Book) (:: :tab :card |Card) (:: :tab :pl "|Programming language")
                div ({})
                  div
                    {} $ :class-name css-title
                    <> "|Tabs demo"
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    comp-cirru-snippet "|respo-ui.comp/comp-tabs\n\ncomp-tabs\n  {}\n    :selected (:selected state)\n    :style {}\n  []\n    :: :tab :book |Book\n    :: :tab :card |Card\n    :: :tab :pl \"|Programming language\"\n  fn (info d!)\n    println |selected info\n    d! cursor $ assoc state :selected $ :name info" $ {}
                      :style $ {} (:flex |1)
                    div
                      {} $ :class-name css/flex
                      comp-tabs
                        {} $ :selected (:selected state)
                        , en-tabs $ fn (info d!)
                          d! cursor $ assoc state :selected (nth info 1)
                      comp-tabs
                        {} $ :selected (:selected state)
                        [] (:: :tab :book "|书本") (:: :tab :card "|纸牌") (:: :tab :pl "|编程语言")
                        fn (info d!)
                          d! cursor $ assoc state :selected (nth info 1)
                      comp-tabs
                        {}
                          :selected $ :selected state
                          :style $ {}
                            :border-bottom $ str "|1px solid " (hsl 0 0 94)
                        , en-tabs $ fn (info d!) (println |selected info)
                          d! cursor $ assoc state :selected (nth info 1)
                  =< nil 8
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    comp-cirru-snippet "|respo-ui.comp/comp-tabs\n\ncomp-tabs\n  &{} :selected (:selected state) :style ({}) :vertical? true :width 200\n  , tabs\n  fn (info d!)" $ {}
                      :style $ {} (:flex |1)
                    div
                      {} $ :class-name css/flex
                      comp-tabs
                        {}
                          :selected $ :selected state
                          :vertical? true
                          :width 200
                          :style $ {}
                        , en-tabs $ fn (info d!) (println |selected info)
                          d! cursor $ assoc state :selected (nth info 1)
          :examples $ []
        |comp-demo-tags $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-demo-tags () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Tags demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-tag\n\ncomp-tag :info \"demo\"\n" $ {}
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} (:gap |8px)
                  comp-tag :info "|:info demo"
                  comp-tag :success "|:success demo"
                  comp-tag :warning "|:warning demo"
                  comp-tag :error "|:error demo"
                  comp-tag :default "|:default demo"
          :examples $ []
        |comp-demo-time $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-time () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Time demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-time\n\ncomp-time |2023-11-17T04:07:18.435Z $ {}\n  :class-name |demo\n  :on-click $ fn ()" $ {}
                div
                  {} $ :class-name css/flex
                  div ({})
                    comp-time
                      .!toISOString $ new js/Date
                      {}
                  div ({})
                    comp-time |2023-11-07T06:23:49.688Z $ {}
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |css-title $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-title $ {}
              |$0 $ {} (:margin-top 40) (:font-size 18) (:font-weight :bold)
                :color $ hsl 0 0 10
          :examples $ []
        |language-options $ %{} :CodeEntry (:doc |)
          :code $ quote
            def language-options $ []
              %{}? respo-ui.schema/SelectOption (:value |calcit) (:label |Calcit)
              %{}? respo-ui.schema/SelectOption (:value |clojure) (:label |Clojure)
              %{}? respo-ui.schema/SelectOption (:value |haskell) (:label |Haskell)
              %{}? respo-ui.schema/SelectOption (:value |rust) (:label |Rust) (:disabled true)
          :examples $ []
          :schema $ :: :list 'respo-ui.schema/SelectOption
        |render-entry $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-entry (url title)
              div ({})
                a $ {} (:href url) (:target |_blank) (:rel |noreferrer) (:class-name css/link) (:inner-text title)
          :examples $ []
        |style-avatar-row $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-avatar-row $ {}
              |& $ {} (:display :flex) (:align-items :center) (:gap |12px)
          :examples $ []
        |style-components-page $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-components-page $ {}
              |& $ {} (:max-width |1040px) (:padding "|8px 24px 50vh")
          :examples $ []
        |style-demo-grid $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-demo-grid $ {}
              |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(280px, 1fr))") (:gap |16px) (:align-items :stretch)
          :examples $ []
        |style-demo-section $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-demo-section $ {}
              |& $ {} (:margin-top |32px)
          :examples $ []
        |style-demo-surface $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-demo-surface $ {}
              |& $ {} (:display :flex) (:align-items :center) (:justify-content :space-between) (:gap |16px) (:padding |16px)
                :border $ str "|1px solid " (hsl 220 15 90)
                :border-radius |8px
                :background-color :white
          :examples $ []
        |style-page-hero $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-page-hero $ {}
              |& $ {} (:padding |24px)
                :border $ str "|1px solid " (hsl 220 30 90)
                :border-radius |12px
                :background $ str "|linear-gradient(135deg, " (hsl 220 80 98) "|, " (hsl 260 70 98) "|)"
          :examples $ []
        |style-page-title $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-page-title $ {}
              |& $ {} (:font-family ui/font-fancy) (:font-size |28px) (:font-weight |600) (:line-height |1.3)
                :color $ hsl 220 25 18
          :examples $ []
        |style-resource-links $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-resource-links $ {}
              |& $ {} (:margin-top |14px) (:flex-wrap :wrap)
          :examples $ []
        |style-section-title $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-section-title $ {}
              |& $ {} (:margin-bottom |12px) (:font-family ui/font-fancy) (:font-size |19px) (:font-weight |600)
                :color $ hsl 220 18 24
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.components $ :require
            respo.core :refer $ defcomp >> div a <> pre code
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-tabs comp-placeholder comp-cirru-snippet comp-button comp-attributes comp-snippet comp-time comp-tag comp-close comp-catoptric-text comp-copy comp-input comp-textarea comp-select comp-switch comp-avatar comp-skeleton comp-spinner comp-empty comp-card comp-progress comp-alert comp-divider
    |respo-ui.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-container (store)
              let
                  router $ either
                    first $ :path
                      either (:router store) ({})
                    :: :index
                  states $ :states store
                div
                  {}
                    :class-name $ str-spaced css/preset css/global css/fullscreen css/row
                    :style $ {} (:padding-top 16)
                  comp-sidebar $ or (nth router 0) |index.html
                  div
                    {} $ :class-name (str-spaced css/expand css-content)
                    tag-match router
                      (:index) (comp-home)
                      (:index) (comp-home)
                      (:widgets)
                        comp-widgets-page $ >> states :widgets
                      (:layouts) (comp-layouts-page)
                      (:fonts) (comp-fonts-page)
                      (:components)
                        comp-components-page $ >> states :components
                      (:utils) (comp-utils-page)
                      (:404 pp)
                        <> $ to-lispy-string router
                      _ $ do (eprintln "|unknown router" router) (comp-home)
                  if dev? $ comp-inspect |Store store
                    {} $ :bottom 0
          :examples $ []
        |comp-utils-page $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-utils-page () $ div ({})
              div ({}) (<> |Utils)
              div
                {} $ :class-name (str-spaced css/column css/gap8)
                div ({}) (<> "|tab-echo! to open new tab and show EDN data.")
                div
                  {} $ :class-name (str-spaced css/row css/gap8)
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    button $ {} (:inner-text |Echo) (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo! $ {} (:type :message)
                          :demo $ {} (:a 1)
                          :vv $ range
                            js/Math.floor $ * 100 (js/Math.random)
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data" $ {}
                div
                  {} $ :class-name (str-spaced css/row css/gap8)
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    button $ {} (:inner-text |Echo) (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo!
                          {} (:type :message)
                            :demo $ {} (:a 1)
                            :html "|code <code> cc c cc </code>"
                          , :json
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data :json" $ {}
                div
                  {} $ :class-name (str-spaced css/row css/gap8)
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    button $ {} (:inner-text |Echo) (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo!
                          {} (:type :message)
                            :demo $ {} (:a 1)
                            :html "|code <code> cc c cc </code>"
                          , :edn
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data :edn" $ {}
          :examples $ []
        |css-content $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-content $ {}
              |$0 $ {} (:padding 8)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.container $ :require
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp >> div span input button <>
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            respo-ui.comp.sidebar :refer $ comp-sidebar
            respo-ui.comp.home :refer $ comp-home
            respo-ui.comp.widgets-page :refer $ comp-widgets-page
            respo-ui.comp.layouts-page :refer $ comp-layouts-page
            respo-ui.comp.fonts-page :refer $ comp-fonts-page
            respo-ui.comp.components :refer $ comp-components-page
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-ui.config :refer $ dev?
            respo-ui.util :refer $ tab-echo!
            respo-ui.comp :refer $ comp-cirru-snippet
    |respo-ui.comp.fonts-page $ %{} :FileEntry
      :defs $ {}
        |comp-fonts-page $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-fonts-page () $ div ({})
              div
                {} $ :style style-section
                <> "|Normal fonts"
              comp-md-block "|which can be used with `css/font-normal`. It's Hind fonts." $ {}
              render-font-demo css/font-normal ui/font-normal 300
              render-font-demo css/font-normal ui/font-normal 400
              render-font-demo css/font-normal ui/font-normal 500
              =< nil 32
              div
                {} $ :style style-section
                <> "|Fancy fonts"
              comp-md-block "|which can be used with `css/font-fancy`. Josefin Sans is used here." $ {}
              render-font-demo css/font-fancy! ui/font-fancy 100
              render-font-demo css/font-fancy! ui/font-fancy 300
              render-font-demo css/font-fancy! ui/font-fancy 400
              =< nil 32
              div
                {} $ :style style-section
                <> "|Code fonts"
              comp-md-block "|which can be used with `css/font-code`." $ {}
              render-font-demo css/font-code ui/font-code 100
              render-font-demo css/font-code ui/font-code 300
              render-font-demo css/font-code ui/font-code 400
          :examples $ []
        |css-demo $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-demo $ {}
              |& $ {} (:font-size 16) (:font-weight |bold) (:line-height |32px)
          :examples $ []
        |render-font-demo $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-font-demo (css-family family weight)
              div
                {}
                  :class-name $ str-spaced css-family css-demo
                  :style $ {} (:font-weight weight)
                <> $ str "|This is a demo of the font, guess what you like: " family "| " weight
          :examples $ []
        |style-section $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def style-section $ {} (:font-size 24) (:font-family ui/font-fancy) (:line-height |60px)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.fonts-page $ :require
            respo.core :refer $ defcomp div <>
            respo-ui.css :as css
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md-block
            respo.css :refer $ defstyle
    |respo-ui.comp.home $ %{} :FileEntry
      :defs $ {}
        |comp-home $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-home () $ div ({})
              div
                {} $ :style style-home
                <> "|Styles for Respo"
              =< nil 32
              div ({})
                comp-md-block "|Respo UI is some minimal style collections for creating small pieces of apps. It includes variables for Flexbox layouts, basic button and input styles, fonts like \"Josefin Sans\" and \"Hind\".\n\nYou may read code on [GitHub](http://github.com/Respo/respo-ui). [Fonts files](https://github.com/tiye/favored-fonts) are hosted separately on my server." $ {}
          :examples $ []
        |style-home $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def style-home $ {} (:font-size 32) (:font-family "|Josefin Sans")
              :color $ hsl 200 100 76
              :font-weight 100
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.home $ :require
            respo.core :refer $ defcomp div a img <>
            respo.comp.space :refer $ =<
            respo.util.format :refer $ hsl
            respo-md.comp.md :refer $ comp-md-block
    |respo-ui.comp.layouts-page $ %{} :FileEntry
      :defs $ {}
        |comp-layouts-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-layouts-page () $ div
              {} $ :class-name (str-spaced css/content-container style-layout-page)
              div
                {} $ :class-name style-layout-hero
                div
                  {} $ :class-name style-layout-title
                  <> |Layouts
                comp-md-block "|Use small layout primitives as stable CSS classes, then compose spacing and presentation classes at the call site. The examples below resize naturally without JavaScript layout calculations." $ {}
                div
                  {} $ :class-name (str-spaced css/cluster css/gap8)
                  div
                    {} $ :class-name style-class-chip
                    <> |css/stack
                  div
                    {} $ :class-name style-class-chip
                    <> |css/cluster
                  div
                    {} $ :class-name style-class-chip
                    <> |css/responsive-grid
                  div
                    {} $ :class-name style-class-chip
                    <> |css/with-sidebar
                  div
                    {} $ :class-name style-class-chip
                    <> |css/split-layout
                  div
                    {} $ :class-name style-class-chip
                    <> |css/reel
                  div
                    {} $ :class-name style-class-chip
                    <> |css/cover
                  div
                    {} $ :class-name style-class-chip
                    <> |css/content-container
              render-layout-section "|Stack + Cluster" "|Use `css/stack` for vertical rhythm and `css/cluster` for wrapped actions, tags, filters, or compact controls. Add `css/gap8` or `css/gap16` separately so spacing stays explicit." $ div
                {} $ :class-name style-demo-surface
                div
                  {} $ :class-name (str-spaced css/stack css/gap16)
                  render-box "|Primary content"
                  render-box "|Supporting content"
                  div
                    {} $ :class-name (str-spaced css/cluster css/gap8)
                    div
                      {} $ :class-name style-class-chip
                      <> |Design
                    div
                      {} $ :class-name style-class-chip
                      <> |Engineering
                    div
                      {} $ :class-name style-class-chip
                      <> |Documentation
                    div
                      {} $ :class-name style-class-chip
                      <> |Operations
              render-layout-section "|Responsive Grid" "|The grid uses `auto-fit` and a safe 240px preferred width. Cards fill available space and collapse to one column in narrow containers without media-query state in application code." $ div
                {} $ :class-name (str-spaced css/responsive-grid css/gap16 style-demo-surface)
                render-box |Overview
                render-box |Activity
                render-box |Members
                render-box |Usage
                render-box |Settings
              render-layout-section |Sidebar "|Place the navigation first and the main region last. `css/with-sidebar` assigns flexible bases and wraps the regions when the container becomes narrow." $ div
                {} $ :class-name (str-spaced css/with-sidebar css/gap16 style-demo-surface)
                div
                  {} $ :class-name (str-spaced css/stack css/gap8 style-sidebar-pane)
                  <> |Navigation
                  div
                    {} $ :class-name style-class-chip
                    <> |Overview
                  div
                    {} $ :class-name style-class-chip
                    <> |Members
                  div
                    {} $ :class-name style-class-chip
                    <> |Settings
                div
                  {} $ :class-name (str-spaced css/stack css/gap8 style-content-pane)
                  <> "|Main content"
                  render-box "|Flexible content region"
                  render-box "|Keeps min-width under control"
              render-layout-section "|Split Toolbar" "|Use `css/split-layout` for two-edge headers and toolbars. It wraps instead of overflowing, while nested `css/cluster` groups keep related actions together." $ div
                {} $ :class-name (str-spaced css/split-layout css/gap16 style-demo-surface)
                div
                  {} $ :class-name (str-spaced css/stack css/gap8)
                  <> "|Project members"
                  div
                    {} $ :class-name style-class-chip
                    <> "|24 active"
                div
                  {} $ :class-name (str-spaced css/cluster css/gap8)
                  div
                    {} $ :class-name style-class-chip
                    <> |Filter
                  div
                    {} $ :class-name style-class-chip
                    <> |Invite
                  div
                    {} $ :class-name style-class-chip
                    <> |Export
              render-layout-section "|Horizontal Reel" "|A reel is useful for previews, compact cards, and touch-friendly overflow. Children keep their intrinsic width and snap gently while scrolling." $ div
                {} $ :class-name (str-spaced css/reel css/gap16 style-demo-surface)
                div
                  {} $ :class-name (str-spaced style-demo-item style-reel-item)
                  <> "|Preview 1"
                div
                  {} $ :class-name (str-spaced style-demo-item style-reel-item)
                  <> "|Preview 2"
                div
                  {} $ :class-name (str-spaced style-demo-item style-reel-item)
                  <> "|Preview 3"
                div
                  {} $ :class-name (str-spaced style-demo-item style-reel-item)
                  <> "|Preview 4"
              render-layout-section "|Cover + Container" "|Combine `css/cover` with `css/content-container` for focused screens such as sign-in, onboarding, empty states, and presentation stages. The preview shortens the cover height only for this documentation page." $ div
                {} $ :class-name (str-spaced css/cover style-cover-preview)
                div
                  {} $ :class-name (str-spaced css/content-container css/stack css/gap8 style-cover-card)
                  div
                    {} $ :class-name style-layout-title
                    <> "|Focused content"
                  <> "|Centered vertically, bounded horizontally."
                  div
                    {} $ :class-name (str-spaced css/cluster css/gap8 css/row-center)
                    div
                      {} $ :class-name style-class-chip
                      <> |Continue
                    div
                      {} $ :class-name style-class-chip
                      <> "|Learn more"
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ []
        |render-box $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-box (label)
              div
                {} $ :class-name style-demo-item
                <> label
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string
        |render-layout-section $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-layout-section (title description demo)
              div
                {} $ :class-name style-layout-section
                div
                  {} $ :class-name style-layout-title
                  <> title
                comp-md-block description $ {}
                , demo
          :examples $ []
          :schema $ :: :fn
            {} (:return 'respo.schema/Component)
              :args $ [] :string :string 'respo.schema/Component
        |style-class-chip $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-class-chip $ {}
              |& $ {} (:padding "|4px 8px") (:border-radius |999px)
                :background-color $ hsl 0 0 93
                :font-family ui/font-code
                :font-size 12
                :line-height |20px
          :examples $ []
        |style-content-pane $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-content-pane $ {}
              |& $ {} (:padding 16) (:border-radius |8px)
                :background-color $ hsl 165 45 94
                :color $ hsl 165 45 28
          :examples $ []
        |style-cover-card $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-cover-card $ {}
              |& $ {} (:padding "|20px 24px") (:border-radius |12px) (:background-color :white)
                :box-shadow $ str "|0 12px 36px " (hsl 35 30 70 0.25)
                :text-align :center
          :examples $ []
        |style-cover-preview $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-cover-preview $ {}
              |& $ {} (:min-height |240px!important) (:border-radius |12px)
                :background-color $ hsl 35 70 95
          :examples $ []
        |style-demo-item $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-demo-item $ {}
              |& $ {} (:display :grid) (:place-items :center) (:min-height 72) (:padding 12) (:border-radius |8px)
                :background-color $ hsl 210 60 95
                :color $ hsl 210 55 32
                :font-family ui/font-code
                :font-size 12
                :border $ str "|1px solid " (hsl 210 40 86)
          :examples $ []
        |style-demo-surface $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-demo-surface $ {}
              |& $ {} (:padding 16) (:border-radius |12px)
                :border $ str "|1px solid " (hsl 0 0 88)
                :background-color $ hsl 0 0 99
                :min-width 0
          :examples $ []
        |style-layout-hero $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-layout-hero $ {}
              |& $ {} (:padding "|24px 28px") (:border-radius |16px)
                :background-color $ hsl 210 60 97
                :border $ str "|1px solid " (hsl 210 30 88)
          :examples $ []
        |style-layout-page $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-layout-page $ {}
              |& $ {} (:padding-block "|24px 64px")
          :examples $ []
        |style-layout-section $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-layout-section $ {}
              |& $ {} (:margin-top 40)
          :examples $ []
        |style-layout-title $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-layout-title $ {}
              |& $ {} (:font-size 22) (:line-height |1.3) (:font-weight |600) (:margin-bottom 8)
          :examples $ []
        |style-reel-item $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-reel-item $ {}
              |& $ {} (:width 220) (:min-height 112)
          :examples $ []
        |style-sidebar-pane $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle style-sidebar-pane $ {}
              |& $ {} (:padding 16) (:border-radius |8px)
                :background-color $ hsl 265 50 95
                :color $ hsl 265 45 32
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.layouts-page $ :require
            respo.core :refer $ defcomp div <>
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo-md.comp.md :refer $ comp-md-block
            respo.css :refer $ defstyle
            respo-ui.css :as css
    |respo-ui.comp.sidebar $ %{} :FileEntry
      :defs $ {}
        |comp-sidebar $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-sidebar (router-name)
              div
                {} $ :style
                  {} (:width 160) (:margin-right 24)
                div
                  {} $ :style
                    {} $ :text-align :right
                  div $ {} (:style style-logo)
                =< nil 16
                render-entry |index.html "|Respo UI" $ = :index router-name
                render-entry |layouts.html |Layouts $ = :layouts router-name
                render-entry |widgets.html |Widgets $ = :widgets router-name
                render-entry |fonts.html |Fonts $ = :fonts router-name
                render-entry |components.html |Components $ = :components router-name
                render-entry |utils.html |Utils $ = :utils router-name
          :examples $ []
        |css-sidebar-entry $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle css-sidebar-entry $ {}
              |$0 $ {} (:line-height |40px) (:font-size 20) (:cursor |pointer) (:font-weight |lighter) (:font-family ui/font-fancy) (:text-align :right) (:padding "|0 16px")
                :color $ hsl 0 0 20
              |$0:hover $ {}
                :background-color $ hsl 0 0 97
          :examples $ []
        |on-route $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn on-route (path-name)
              fn (e dispatch!) (dispatch! :router/nav path-name)
          :examples $ []
        |render-entry $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-entry (path title selected?)
              div
                {} (:class-name css-sidebar-entry)
                  :style $ if selected?
                    {} $ :background-color (hsl 0 0 50 0.1)
                  :on-click $ on-route path
                <> title
          :examples $ []
        |style-logo $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def style-logo $ {} (:background-image "|url(https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png)") (:width 80) (:height 80) (:background-size :cover) (:display :inline-block) (:vertical-align :text-bottom)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.sidebar $ :require
            respo.core :refer $ defcomp div <>
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
    |respo-ui.comp.widgets-page $ %{} :FileEntry
      :defs $ {}
        |comp-tags-styles $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-tags-styles () $ div
              {} $ :class-name (str-spaced css/row-middle css/gap8)
              span $ {} (:inner-text |css/tag) (:class-name css/tag)
              span $ {} (:inner-text |css/tag-stroke) (:class-name css/tag-stroke)
              span $ {} (:inner-text |css/tag-outline) (:class-name css/tag-outline)
          :examples $ []
        |comp-widgets-page $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defcomp comp-widgets-page (states)
              let
                  cursor $ :cursor states
                  state $ :data states
                  cb-states $ >> states :checkboxes
                  cb-cursor $ :cursor cb-states
                  cb-data $ or (:data cb-states) ({})
                div ({})
                  div ({}) (<> |Widgets)
                  div ({}) (<> "|link to external pages" ui/text-label) (=< nil 16)
                    a $ {} (:class-name css/link) (:inner-text |link)
                  div ({}) (<> "|slight link without underscore" ui/text-label) (=< nil 16)
                    a $ {} (:class-name css/link-slight) (:inner-text |link)
                  =< nil 16
                  div
                    {} $ :style
                      merge ui/row $ {} (:gap 16)
                    button
                      {} $ :class-name css/button-primary
                      <> |css/button-primary
                    button
                      {} $ :class-name css/button
                      <> |css/button
                    button
                      {} $ :class-name css/button-danger-outline
                      <> |css/button-danger-outline
                    button
                      {} $ :class-name css/button-danger
                      <> |css/button-danger
                  =< nil 16
                  div ({})
                    input $ {} (:placeholder "|Some short text") (:value state) (:class-name css/input)
                      :on $ {}
                        :input $ fn (e dispatch!)
                          dispatch! cursor $ :value e
                    =< 16 nil
                    button
                      {} $ :class-name css/button
                      <> |Add
                    =< 16 nil
                    <> |nothing ui/text-label
                  =< nil 16
                  div ({})
                    select
                      {} $ :class-name css/select
                      option $ {} (:selected true) (:inner-text |Haskell)
                      option $ {} (:selected true) (:inner-text |Clojure)
                      option $ {} (:selected false) (:inner-text |OCaml)
                  =< nil 16
                  div ({})
                    textarea $ {} (:placeholder "|Some long text") (:class-name css/textarea)
                    =< 16 nil
                    button
                      {} $ :class-name css/button
                      <> |Add
                  div $ {}
                    :style $ {} (:height 1) (:width |50%)
                      :background-color $ hsl 0 0 90
                      :margin "|48px 12px"
                  =< nil 16
                  div ({})
                    div ({}) (<> |Checkboxes ui/text-label)
                    =< nil 4
                    comp-checkbox
                      or (:option-a cb-data) false
                      {} (:label "|Option A")
                        :on-change $ fn (v d!)
                          d! cb-cursor $ assoc cb-data :option-a v
                    =< nil 4
                    comp-checkbox
                      or (:option-b cb-data) true
                      {} (:label "|Option B (default checked)")
                        :on-change $ fn (v d!)
                          d! cb-cursor $ assoc cb-data :option-b v
                    =< nil 4
                    comp-checkbox false $ {} (:label "|Option C (disabled)") (:disabled true)
                  =< nil 8
                  comp-tags-styles
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.widgets-page $ :require
            respo.core :refer $ defcomp div input textarea button span select option a <> >>
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo-ui.comp :refer $ comp-checkbox
    |respo-ui.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def dev? $ &= |dev (get-env |mode |release)
          :examples $ []
        |site $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def site $ {} (:title "|Respo UI") (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-ui)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-ui.config)
    |respo-ui.core $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def button $ {} (:min-width |80px) (:line-height |24px) (:border-radius |4px) (:font-size 14) (:text-align |center)
              :border $ str "|1px solid " (hsl 220 100 76)
              :color $ hsl 220 100 76
              :cursor |pointer
              :display |inline-block
              :padding "|0 8px"
              :outline :none
              :vertical-align :top
              :background-color :white
              :user-select :none
              :transition-duration |300ms
          :examples $ []
        |button-danger $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def button-danger $ merge button
              {} (:color :white)
                :background-color $ hsl 6 100 60
                :border-color $ hsl 6 100 60
          :examples $ []
        |button-primary $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def button-primary $ merge button
              {} (:color :white)
                :background-color $ hsl 220 80 60
                :border-color $ hsl 220 80 60
          :examples $ []
        |card $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def card $ {} (:padding |16px)
          :examples $ []
        |center $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def center $ {} (:display |flex) (:flex-direction |column) (:justify-content |center) (:align-items |center)
          :examples $ []
        |checkbox $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def checkbox $ {}
              :accent-color $ hsl 220 80 60
              :width |16px
              :height |16px
              :cursor :pointer
              :vertical-align :middle
          :examples $ []
        |checkbox-label $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def checkbox-label $ {} (:display :flex) (:align-items :center) (:gap |8px) (:line-height |1) (:cursor :pointer) (:user-select :none)
          :examples $ []
        |column $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def column $ {} (:display |flex) (:align-items |stretch) (:flex-direction |column)
          :examples $ []
        |column-dispersive $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def column-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |column)
          :examples $ []
        |column-evenly $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def column-evenly $ {} (:display |flex) (:align-items |center) (:justify-content |space-evenly) (:flex-direction |column)
          :examples $ []
        |column-parted $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def column-parted $ {} (:display :flex) (:align-items :stretch) (:justify-content :space-between) (:flex-direction :column)
          :examples $ []
        |default-fonts $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote (def default-fonts "|Hind,Verdana,'Hiragino Sans GB','WenQuanYi Micro Hei','Microsoft Yahei',sans-serif")
          :examples $ []
        |expand $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def expand $ {} (:flex 1) (:overflow :auto)
          :examples $ []
        |flex $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def flex $ {} (:flex 1)
          :examples $ []
        |font-code $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (def font-code "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
          :examples $ []
        |font-fancy $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (def font-fancy "|Josefin Sans, Helvetica neue, Arial, sans-serif")
          :examples $ []
        |font-normal $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (def font-normal "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
        |fullscreen $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def fullscreen $ {} (:position |absolute) (:left 0) (:top 0) (:width |100%) (:height |100%) (:overflow :auto)
          :examples $ []
        |global $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def global $ {} (:line-height |2) (:font-size |14px) (:font-family default-fonts)
              :color $ hsl 0 0 20
          :examples $ []
        |hsl $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn hsl (h s l ? a)
              if (some? a) (str "|hsl(" h |, s |%, l |%, a "|)") (str "|hsl(" h |, s |%, l "|%)")
          :examples $ []
        |input $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def input $ merge global
              {} (:border |none) (:outline |none)
                :border $ str "|1px solid " (hsl 0 0 80)
                :border-radius |4px
                :font-size |14px
                :padding "|4px 8px"
                :min-width |120px
                :line-height |16px
                :height 28
                :font-family default-fonts
                :vertical-align :top
          :examples $ []
        |link $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:height 24) (:line-height |24px) (:margin 4) (:display :inline-block) (:cursor :pointer) (:user-select :none)
              :color $ hsl 200 100 76
          :examples $ []
        |row $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def row $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row)
          :examples $ []
        |row-center $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def row-center $ {} (:display |flex) (:align-items |center) (:justify-content |center) (:flex-direction |row)
          :examples $ []
        |row-dispersive $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def row-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |row)
          :examples $ []
        |row-evenly $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def row-evenly $ {} (:display |flex) (:align-items |center) (:flex-direction |row) (:justify-content |space-evenly)
          :examples $ []
        |row-middle $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def row-middle $ {} (:display :flex) (:align-items :center) (:justify-content :flex-start) (:flex-direction :row)
          :examples $ []
        |row-parted $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def row-parted $ {} (:display |flex) (:align-items |center) (:justify-content |space-between) (:flex-direction |row)
          :examples $ []
        |select $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def select $ {} (:height 28) (:outline |none) (:font-size 14) (:min-width 120)
              :border $ str "|1px solid " (hsl 0 0 80)
              :padding "|0 4px"
              :border-radius |4px
              :font-family default-fonts
              :vertical-align :top
              :cursor :pointer
          :examples $ []
        |tag $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def tag $ {}
              :background-color $ hsl 200 80 60
              :line-height |21px
              :font-size 14
              :padding "|0px 8px"
              :border-radius 4
              :color :white
          :examples $ []
        |tag-outline $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def tag-outline $ merge tag
              {} (:background-color :white)
                :border $ str "|1px solid " (hsl 200 70 80)
                :color $ hsl 200 30 40
          :examples $ []
        |tag-stroke $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def tag-stroke $ merge tag
              {}
                :background-color $ hsl 200 70 90
                :color $ hsl 200 20 40
          :examples $ []
        |text-label $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def text-label $ {} (:line-height |32px) (:font-size 14)
              :color $ hsl 0 0 20
              :display :inline-block
              :vertical-align :top
          :examples $ []
        |textarea $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def textarea $ {} (:outline :none) (:border :none) (:font-size 14) (:font-family default-fonts)
              :border $ str "|1px solid " (hsl 0 0 80)
              :border-radius |4px
              :padding 8
              :min-width 240
              :vertical-align :top
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.core $ :require
    |respo-ui.css $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle button $ {} (|$0 ui/button)
              |$0:hover $ {}
                :background-color $ hsl 0 0 98
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
          :examples $ []
        |button-danger $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle button-danger $ {} (|$0 ui/button-danger)
              |$0:hover $ {}
                :background-color $ hsl 6 100 64
                :border-color $ hsl 6 100 64
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
                :background-color $ hsl 6 100 68
                :border-color $ hsl 6 100 68
          :examples $ []
        |button-danger-outline $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle button-danger-outline $ {}
              |$0 $ merge ui/button
                {}
                  :border-color $ hsl 6 100 60
                  :color $ hsl 6 100 60
              |$0:hover $ {}
                :background-color $ hsl 0 0 98
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
          :examples $ []
        |button-primary $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle button-primary $ {} (|$0 ui/button-primary)
              |$0:hover $ {}
                :background-color $ hsl 220 80 64
                :border-color $ hsl 220 80 64
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
                :background-color $ hsl 220 80 68
                :border-color $ hsl 220 80 68
          :examples $ []
        |card $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle card $ {}
              |& $ {} (:padding |16px)
          :examples $ []
        |center $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle center $ {} (|$0 ui/center)
          :examples $ []
        |checkbox $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle checkbox $ {} (|$0 ui/checkbox)
              |$0:focus $ {} (:outline :none)
                :box-shadow $ str "|0 0 0 2px " (hsl 220 80 80 0.3)
          :examples $ []
        |checkbox-label $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle checkbox-label $ {} (|$0 ui/checkbox-label)
          :examples $ []
        |cluster $ %{} :CodeEntry (:doc "|Wrapping inline group for tags, actions, and compact controls.") (:schema :string)
          :code $ quote
            defstyle cluster $ {}
              |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:min-width 0)
          :examples $ []
        |column $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle column $ {} (|$0 ui/column)
          :examples $ []
        |column-dispersive $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle column-dispersive $ {} (|$0 ui/column-dispersive)
          :examples $ []
        |column-evenly $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle column-evenly $ {} (|$0 ui/column-evenly)
          :examples $ []
        |column-parted $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle column-parted $ {} (|$0 ui/column-parted)
          :examples $ []
        |content-container $ %{} :CodeEntry (:doc "|Centered content container capped at 1120px with 16px viewport gutters.") (:schema :string)
          :code $ quote
            defstyle content-container $ {}
              |& $ {} (:width "|min(calc(100% - 32px), 1120px)") (:margin-inline :auto) (:min-width 0)
          :examples $ []
        |cover $ %{} :CodeEntry (:doc "|Viewport-height centered layout for empty states, authentication, and focused content.") (:schema :string)
          :code $ quote
            defstyle cover $ {}
              |& $ {} (:display :grid) (:place-items :center) (:min-height |100vh) (:min-width 0)
          :examples $ []
        |expand $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle expand $ {} (|$0 ui/expand)
          :examples $ []
        |flex $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle flex $ {}
              |$0 $ {} (:flex 1)
          :examples $ []
        |font-code $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle font-code $ {}
              |$0 $ {} (:font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
          :examples $ []
        |font-code! $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle font-code! $ {}
              |$0 $ {} (:font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace !important")
          :examples $ []
        |font-fancy $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle font-fancy $ {}
              |$0 $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif")
          :examples $ []
        |font-fancy! $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle font-fancy! $ {}
              |& $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif !important")
          :examples $ []
        |font-normal $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle font-normal $ {}
              |& $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
        |font-normal! $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle font-normal! $ {}
              |& $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
        |fullscreen $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle fullscreen $ {}
              |$0 $ {} (:position |absolute) (:left 0) (:top 0) (:width |100%) (:height |100%) (:overflow :auto)
          :examples $ []
        |gap16 $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle gap16 $ {}
              |& $ {} (:gap 16)
          :examples $ []
        |gap8 $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle gap8 $ {}
              |& $ {} (:gap 8)
          :examples $ []
        |global $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle global $ {}
              |$0 $ {} (:line-height |2) (:font-size |14px) (:font-family ui/default-fonts)
                :color $ hsl 0 0 20
          :examples $ []
        |hsl $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn hsl (h s l ? a)
              if (some? a) (str "|hsl(" h |, s |%, l |%, a "|)") (str "|hsl(" h |, s |%, l "|%)")
          :examples $ []
        |input $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle input $ {} (|$0 ui/input)
              |$0:focus $ {}
                :border $ str "|1px solid " (hsl 200 50 75)
                :box-shadow $ str "|0 0 4px " (hsl 200 70 50 0.2)
          :examples $ []
        |link $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle link $ {} (|$0 ui/link)
              |$0:hover $ {}
                :color $ hsl 200 100 56
              |$0:active $ {}
                :color $ hsl 200 100 40
                :transform "|scale(1.04)"
          :examples $ []
        |link-slight $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle link-slight $ {}
              |$0 $ merge ui/link
                {} $ :text-decoration :none
              |$0:hover $ {}
                :color $ hsl 200 100 56
              |$0:active $ {}
                :color $ hsl 200 100 40
                :transform "|scale(1.04)"
          :examples $ []
        |preset $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle preset $ {}
              |body $ {} (:margin 0) (:overscroll-behavior-x :none) (:overscroll-behavior-y :none)
              "|body *" $ {} (:box-sizing :border-box)
              |::-webkit-scrollbar $ {} (:width 4) (:height 4)
              |::-webkit-scrollbar-track $ {}
                :background-color $ hsl 0 0 100
              |::-webkit-scrollbar-thumb $ {}
                :background-color $ hsl 180 40 76 0.8
              |::-webkit-scrollbar-corner $ {} (:background-color :transparent)
              |::-webkit-resizer $ {} (:background-color :transparent)
          :examples $ []
        |reel $ %{} :CodeEntry (:doc "|Horizontally scrollable row with proximity scroll snapping for cards and previews.") (:schema :string)
          :code $ quote
            defstyle reel $ {}
              |& $ {} (:display :flex) (:overflow-x :auto) (:overscroll-behavior-inline :contain) (:scroll-snap-type "|x proximity") (:min-width 0)
              "|& > *" $ {} (:flex "|0 0 auto") (:scroll-snap-align :start)
          :examples $ []
        |responsive-grid $ %{} :CodeEntry (:doc "|Auto-fit grid with a 240px preferred column width and safe narrow-screen fallback.") (:schema :string)
          :code $ quote
            defstyle responsive-grid $ {}
              |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(min(100%, 240px), 1fr))") (:align-items :stretch) (:min-width 0)
          :examples $ []
        |row $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle row $ {} (|$0 ui/row)
          :examples $ []
        |row-center $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle row-center $ {} (|$0 ui/row-center)
          :examples $ []
        |row-dispersive $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle row-dispersive $ {} (|$0 ui/row-dispersive)
          :examples $ []
        |row-evenly $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle row-evenly $ {} (|$0 ui/row-evenly)
          :examples $ []
        |row-middle $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle row-middle $ {} (|$0 ui/row-middle)
          :examples $ []
        |row-parted $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle row-parted $ {} (|$0 ui/row-parted)
          :examples $ []
        |select $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle select $ {} (|$0 ui/select)
              |$0:focus $ {}
                :border $ str "|1px solid " (hsl 200 50 75)
                :box-shadow $ str "|0 0 4px " (hsl 200 70 50 0.2)
          :examples $ []
        |split-layout $ %{} :CodeEntry (:doc "|Wrapping two-edge layout for headers, toolbars, and action rows.") (:schema :string)
          :code $ quote
            defstyle split-layout $ {}
              |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:justify-content :space-between) (:min-width 0)
          :examples $ []
        |stack $ %{} :CodeEntry (:doc "|Vertical layout primitive. Compose with gap8 or gap16 to control spacing.") (:schema :string)
          :code $ quote
            defstyle stack $ {}
              |& $ {} (:display :flex) (:flex-direction :column) (:min-width 0)
          :examples $ []
        |tag $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle tag $ {} (:& ui/tag)
          :examples $ []
        |tag-outline $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle tag-outline $ {} (:& ui/tag-outline)
          :examples $ []
        |tag-stroke $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle tag-stroke $ {} (:& ui/tag-stroke)
          :examples $ []
        |text-label $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle text-label $ {} (|$0 ui/text-label)
          :examples $ []
        |textarea $ %{} :CodeEntry (:doc |) (:schema :string)
          :code $ quote
            defstyle textarea $ {} (|$0 ui/textarea)
              |$0:focus $ {}
                :border $ str "|1px solid " (hsl 200 50 75)
                :box-shadow $ str "|0 0 4px " (hsl 200 70 50 0.2)
          :examples $ []
        |with-sidebar $ %{} :CodeEntry (:doc "|Responsive two-region layout. The first child is the sidebar and the last child is the main content.") (:schema :string)
          :code $ quote
            defstyle with-sidebar $ {}
              |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :flex-start) (:min-width 0)
              "|& > :first-child" $ {} (:flex "|1 1 220px")
              "|& > :last-child" $ {} (:flex "|999 1 480px") (:min-width "|min(100%, 480px)")
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.css $ :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
    |respo-ui.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defatom *store $ merge schema/store
              {} $ :router
                parse-address
                  .!slice (.-hash js/location) 1
                  , router/dict
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ js/console.log |Dispatch: op
              reset! *store $ updater @*store op
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              println "|Running mode:" $ if config/dev? |dev |release
              render-router!
              add-watch *store :changes $ fn (store prev) (render-app!)
              listen! router/dict dispatch! router/mode
              add-watch *store :router-changes $ fn (store prev) (render-router!)
              render-app!
              println "|App started!"
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ []
              :features $ #{} :js-ffi
        |mount-target $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *store :changes) (remove-watch *store :router-changes) (clear-cache!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *store :router-changes $ fn (store prev) (render-router!)
                render-app!
                hud! |ok~ |Ok
                println "|Code updated!"
              hud! |error build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*store) dispatch!
          :examples $ []
        |render-router! $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn render-router! () $ render-url! (:router @*store) router/dict router/mode
          :examples $ []
        |updater $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn updater (store op)
              tag-match op
                (:states cursor s) (update-states store cursor s)
                (:router/nav t)
                  assoc store :router $ parse-address t router/dict
                (:router/route r) (assoc store :router r)
                _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.main $ :require
            respo.core :refer $ render! clear-cache!
            respo.cursor :refer $ update-states
            respo-ui.comp.container :refer $ comp-container
            respo-ui.router :as router
            respo-ui.schema :as schema
            respo-ui.config :as config
            respo-router.parser :refer $ parse-address
            respo-router.core :refer $ render-url!
            respo-router.listener :refer $ listen!
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
    |respo-ui.router $ %{} :FileEntry
      :defs $ {}
        |dict $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            def dict $ []
              :: :index $ [] |index.html
              :: :dev $ [] |dev.html
              :: :fonts $ [] |fonts.html
              :: :widgets $ [] |widgets.html
              :: :layouts $ [] |layouts.html
              :: :components $ [] |components.html
              :: :utils $ [] |utils.html
          :examples $ []
        |mode $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote (def mode :hash)
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-ui.router)
    |respo-ui.schema $ %{} :FileEntry
      :defs $ {}
        |AttributesOptions $ %{} :CodeEntry (:doc "|Typed options for comp-attributes. Item keeps the collection item type visible to callers.") (:schema :dynamic)
          :code $ quote
            defstruct AttributesOptions
              [] $ quote Item
              :items $ :: :list (quote Item)
              :title $ :: :optional :string
              :item-width $ :: :optional :number
              :item-height $ :: :optional :number
              :class-name $ :: :optional :string
              :style $ :: :optional :map
              :css-item $ :: :optional :string
              :css-label $ :: :optional :string
              :css-value $ :: :optional :string
              :css-title $ :: :optional :string
          :examples $ []
            quote $ %{}? AttributesOptions
              :items $ []
        |AvatarOptions $ %{} :CodeEntry (:doc "|Typed options for comp-avatar image metadata, size, class name, and style.") (:schema :dynamic)
          :code $ quote
            defstruct AvatarOptions
              :src $ :: :optional :string
              :alt $ :: :optional :string
              :title $ :: :optional :string
              :size $ :: :optional :tag
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? AvatarOptions (:size :large) (:title "|Chen Yong")
        |ButtonOptions $ %{} :CodeEntry (:doc "|Typed options for comp-button: kind, native type, disabled state, click handler, class name, and style.") (:schema :dynamic)
          :code $ quote
            defstruct ButtonOptions
              :kind $ :: :optional :tag
              :type $ :: :optional :string
              :disabled $ :: :optional :bool
              :on-click $ :: :optional (quote respo.schema/EventHandler)
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? ButtonOptions (:kind :primary)
        |CardOptions $ %{} :CodeEntry (:doc "|Typed options for comp-card with a string title and generic footer content.") (:schema :dynamic)
          :code $ quote
            defstruct CardOptions
              [] $ quote Footer
              :title $ :: :optional :string
              :footer $ :: :optional (quote Footer)
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? CardOptions (:title |Summary)
        |DividerOptions $ %{} :CodeEntry (:doc "|Typed options for comp-divider, including vertical orientation.") (:schema :dynamic)
          :code $ quote
            defstruct DividerOptions
              :vertical? $ :: :optional :bool
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? DividerOptions (:vertical? true)
        |EmptyOptions $ %{} :CodeEntry (:doc "|Typed options for comp-empty with generic icon and action slots.") (:schema :dynamic)
          :code $ quote
            defstruct EmptyOptions
              [] (quote Icon) (quote Action)
              :icon $ :: :optional (quote Icon)
              :description $ :: :optional :string
              :action $ :: :optional (quote Action)
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? EmptyOptions (:description "|Try another search term.")
        |PresentationOptions $ %{} :CodeEntry (:doc "|Shared typed class-name and style options for presentation-only components.") (:schema :dynamic)
          :code $ quote
            defstruct PresentationOptions
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? PresentationOptions (:class-name |status)
        |SelectOption $ %{} :CodeEntry (:doc "|A typed native select item with string value and label plus optional disabled state.") (:schema :dynamic)
          :code $ quote
            defstruct SelectOption (:value :string) (:label :string)
              :disabled $ :: :optional :bool
          :examples $ []
            quote $ %{}? SelectOption (:value |calcit) (:label |Calcit)
        |SelectOptions $ %{} :CodeEntry (:doc "|Typed options for comp-select. The Op generic preserves the operation accepted by the dispatcher passed to on-change.") (:schema :dynamic)
          :code $ quote
            defstruct SelectOptions
              [] $ quote Op
              :disabled $ :: :optional :bool
              :on-change $ :: :optional
                :: :fn $ {}
                  :args $ [] :string
                    :: :fn $ {}
                      :args $ [] (quote Op)
                      :return :unit
                  :return :unit
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? SelectOptions (:disabled false)
        |SkeletonOptions $ %{} :CodeEntry (:doc "|Typed options for comp-skeleton: label, kind, dimensions, class name, and style.") (:schema :dynamic)
          :code $ quote
            defstruct SkeletonOptions
              :label $ :: :optional :string
              :kind $ :: :optional :tag
              :width $ :: :optional :string
              :height $ :: :optional :string
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? SkeletonOptions (:kind :text) (:width |60%)
        |SpinnerOptions $ %{} :CodeEntry (:doc "|Typed options for comp-spinner, including its accessible label.") (:schema :dynamic)
          :code $ quote
            defstruct SpinnerOptions
              :label $ :: :optional :string
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? SpinnerOptions (:label "|Loading results")
        |Store $ %{} :CodeEntry (:doc "|Typed application store shape for the documentation site.") (:schema :dynamic)
          :code $ quote
            defstruct Store
              :router $ :: :optional :map
              :states :map
          :examples $ []
        |SwitchOptions $ %{} :CodeEntry (:doc "|Typed options shared by comp-switch and comp-checkbox. The Op generic preserves the dispatched operation type.") (:schema :dynamic)
          :code $ quote
            defstruct SwitchOptions
              [] $ quote Op
              :label $ :: :optional :string
              :disabled $ :: :optional :bool
              :on-change $ :: :optional
                :: :fn $ {}
                  :args $ [] :bool
                    :: :fn $ {}
                      :args $ [] (quote Op)
                      :return :unit
                  :return :unit
              :class-name $ :: :optional :string
              :style $ :: :optional :map
          :examples $ []
            quote $ %{}? SwitchOptions (:label "|Compact mode")
        |TabRoute $ %{} :CodeEntry (:doc "|Normalized typed tab route carrying a generic value and string display label.") (:schema :dynamic)
          :code $ quote
            defenum TabRoute
              [] $ quote Value
              :tab (quote Value) :string
          :examples $ []
            quote $ %:: TabRoute :tab :book |Book
        |TabsOptions $ %{} :CodeEntry (:doc "|Typed visual and selection options for comp-tabs with a generic selected value.") (:schema :dynamic)
          :code $ quote
            defstruct TabsOptions
              [] $ quote Value
              :selected $ :: :optional (quote Value)
              :vertical? $ :: :optional :bool
              :width $ :: :optional :number
              :class-name $ :: :optional :string
              :style $ :: :optional :map
              :tab-class-name $ :: :optional :string
              :tab-style $ :: :optional :map
              :selected-tab-style $ :: :optional :map
          :examples $ []
            quote $ %{}? TabsOptions (:selected :book)
        |store $ %{} :CodeEntry (:doc |) (:schema :record)
          :code $ quote
            def store $ %{} Store (:router nil)
              :states $ {}
          :examples $ []
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote
          ns respo-ui.schema $ :require
            respo-ui.router :refer $ dict
            respo-router.parser :refer $ parse-address
    |respo-ui.util $ %{} :FileEntry
      :defs $ {}
        |santinize-html-text $ %{} :CodeEntry (:doc |) (:schema :dynamic)
          :code $ quote
            defn santinize-html-text (content)
              -> content (.replace |< |&lt;) (.replace |> |&gt;) (.replace "| " |&nbsp;)
          :examples $ []
        |tab-echo! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn tab-echo! (data ? format)
              case-default format
                let
                    content $ format-cirru-edn (:: :tab-echo data)
                    app |https://r.tiye.me/Memkits/edn-tree-viewer/?mode=dev
                    w $ js/window.open app |_target
                  flipped js/setTimeout 20 $ fn () (.!postMessage w content |https://r.tiye.me)
                  flipped js/setTimeout 200 $ fn () (.!postMessage w content |https://r.tiye.me)
                :json $ let
                    content $ js/JSON.stringify (to-js-data data) nil 2
                    w $ js/window.open |about:blank |_blank
                  -> w .-document .-body .-innerHTML $ set!
                    str |<pre> (santinize-html-text content) |</pre>
                :edn $ let
                    content $ format-cirru-edn data
                    w $ js/window.open |about:blank |_blank
                  -> w .-document .-body .-innerHTML $ set!
                    str |<pre> (santinize-html-text content) |</pre>
          :examples $ []
          :schema $ :: :fn
            {} (:return :dynamic)
              :args $ [] :dynamic :dynamic
              :features $ #{} :js-ffi
      :ns $ %{} :NsEntry (:doc |)
        :code $ quote (ns respo-ui.util)
