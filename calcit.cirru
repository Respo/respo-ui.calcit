
{}
  :about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --contract` before mutations; use `--full` for first orientation or changed contract digest. Manual edits must follow format and schema conventions, then run `calcit edit format`."
  :package |respo-ui
  :entries $ {} $ :default
    {} (:description |) (:init-fn 'respo-ui.main/main!) (:mode :js) (:reload-fn 'respo-ui.main/reload!) (:target :browser)
      :feature-policy $ {}
      :modules $ [] |respo-router.calcit/ |respo.calcit/ |js-ffi/
      :type-slots $ {}
  :files $ {}
    'respo-ui.comp $ %{} 'FileEntry
      :defs $ {}
        'DayjsFactoryHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsFactoryHost
            .extend! $ :: 'Fn $ {}
              :args $ [] 'respo-ui.comp/DayjsFactoryHost 'JsObject
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :extend! |extend
          :schema $ :: 'Trait
        'DayjsHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait DayjsHost
            .format $ :: 'Fn $ {}
              :args $ [] 'respo-ui.comp/DayjsHost 'String
              :return 'String
            .is-today? $ :: 'Fn $ {}
              :args $ [] 'respo-ui.comp/DayjsHost
              :return 'Bool
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:format |format) (:is-today? |isToday)
          :schema $ :: 'Trait
        'UiDataset $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait UiDataset (:text 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :writable $ #{} :text
          :schema $ :: 'Trait
        'UiDomElement $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait UiDomElement (:offset-left 'Number) (:offset-top 'Number) (:client-width 'Number) (:client-height 'Number) (:style 'respo-ui.comp/UiStyle) (:dataset 'respo-ui.comp/UiDataset)
            .query-selector $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String
              :return $ :: 'JsNullish 'respo-ui.comp/UiDomElement
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} (:client-height |clientHeight) (:client-width |clientWidth) (:offset-left |offsetLeft) (:offset-top |offsetTop) (:query-selector |querySelector)
          :schema $ :: 'Trait
        'UiStyle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait UiStyle (:top 'String) (:bottom 'String) (:height 'String) (:left 'String) (:width 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :writable $ #{} :bottom :height :left :top :width
          :schema $ :: 'Trait
        'comp-alert $ %{} 'CodeEntry
          :doc "|Render an accessible alert. Kinds are :info, :success, :warning, and :error; content may be text or a Respo node."
          :code $ quote $ defcomp comp-alert (kind content options)
            div
              {} (:role |alert)
                :class-name $ str-spaced style-alert
                  case-default kind style-alert-info (:success style-alert-success) (:warning style-alert-warning) (:error style-alert-error)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              if (literal? content) (<> content) content
          :examples $ [] $ quote (comp-alert :success "|Changes saved")
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag 'Content $ :: 'Option 'respo-ui.schema/PresentationOptions
            :generics $ [] 'Content
        'comp-attributes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-attributes (options)
            let
                items $ :items options
                item-width $ option:unwrap-or options.:item-width 160
                item-height $ :item-height options
                title $ :title options
                ret $ list->
                  {}
                    :class-name $ :class-name options
                    :style $ ui/merge-styles
                      {} (:display :grid)
                        :grid-template-columns $ str "|repeat(auto-fit, minmax(" item-width "|px,1fr))"
                        :gap 8
                      if (option:some? options.:style) (option:unwrap options.:style) ({})
                  -> items $ map-indexed $ fn (idx info)
                    [] idx $ let
                        item $ cond
                            map? info
                            , info
                          (enum? info)
                            match info
                              (:attr l v)
                                {} (:value v) (:label l)
                              (:attr-span l v s)
                                {} (:value v) (:label l) (:span s)
                          true $ raise "|unknown attribute info"
                      div
                        {}
                          :style $ {} $ :grid-column
                            let
                                sp $ &map:get item :span
                              if (some? sp) (str-spaced |span sp) |
                          :class-name $ str-spaced style-item $ :css-item options
                        div
                          {} $ :class-name $ str-spaced css-item-label (:css-label options)
                          <> $ &map:get item :label
                        div
                          {} $ :class-name $ :css-value options
                          let
                              v $ &map:get item :value
                            if (literal? v) (<> v) v
              if (option:some? title)
                div ({})
                  div
                    {} $ :class-name $ str-spaced style-attributes-title (:css-title options)
                    <> $ option:unwrap-or title |
                  , ret
                , ret
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'respo-ui.schema/AttributesOptions 'Item
            :generics $ [] 'Item
        'comp-avatar $ %{} 'CodeEntry
          :doc "|Render initials or an image avatar. Options: :src, :alt, :title, :size (:small or :large), :class-name, and :style."
          :code $ quote $ defcomp comp-avatar (text options)
            div
              {}
                :title $ respo-ui.schema/read-field options :title
                :class-name $ str-spaced style-avatar
                  case-default (respo-ui.schema/read-field options :size) | (:small style-avatar-small) (:large style-avatar-large)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              if
                some? $ respo-ui.schema/read-field options :src
                create-element :img $ {}
                  :src $ respo-ui.schema/read-field options :src
                  :alt $ either (respo-ui.schema/read-field options :alt) (str text)
                  :class-name style-avatar-image
                <> text
          :examples $ [] $ quote
            comp-avatar |CY $ %some $ %{} respo-ui.schema/AvatarOptions
              :src $ %none
              :alt $ %none
              :title $ %some "|Chen Yong"
              :size $ %some :large
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo-ui.schema/AvatarOptions
        'comp-button $ %{} 'CodeEntry
          :doc "|Render a native button with Respo UI variants. Options: :kind (:primary, :danger, :danger-outline), :type, :disabled, :on-click, :class-name, :style."
          :code $ quote $ defcomp comp-button (content options)
            button
              {}
                :type $ either (respo-ui.schema/read-field options :type) |button
                :disabled $ or (respo-ui.schema/read-field options :disabled) false
                :class-name $ str-spaced
                  case-default (respo-ui.schema/read-field options :kind) css/button (:primary css/button-primary) (:danger css/button-danger) (:danger-outline css/button-danger-outline)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
                :on-click $ respo-ui.schema/read-field options :on-click
              if (literal? content) (<> content) content
          :examples $ [] $ quote
            comp-button |Save $ %some $ %{} respo-ui.schema/ButtonOptions
              :kind $ %some :primary
              :type $ %none
              :disabled $ %none
              :on-click $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Content $ :: 'Option 'respo-ui.schema/ButtonOptions
            :generics $ [] 'Content
        'comp-card $ %{} 'CodeEntry
          :doc "|Render a composable card. Content may be text or a Respo node; options support :title, :footer, :class-name, and :style."
          :code $ quote $ defcomp comp-card (content options)
            div
              {}
                :class-name $ str-spaced style-card $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              when
                some? $ respo-ui.schema/read-field options :title
                div
                  {} $ :class-name style-card-title
                  <> $ either (respo-ui.schema/read-field options :title) |
              div
                {} $ :class-name style-card-body
                if (literal? content) (<> content) content
              when
                some? $ respo-ui.schema/read-field options :footer
                div
                  {} $ :class-name style-card-footer
                  respo-ui.schema/read-field options :footer
          :examples $ [] $ quote
            comp-card |Content $ %some $ %{} respo-ui.schema/CardOptions
              :title $ %some |Summary
              :footer $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Content $ :: 'Option 'respo-ui.schema/CardOptions
            :generics $ [] 'Content
        'comp-catoptric-text $ %{} 'CodeEntry
          :doc "|by \"catoptric text\" I mean text added with CSS content, thus unsearchable from browser search or select. The text can still be grabbed from DOM tree though."
          :code $ quote $ defcomp comp-catoptric-text (text options)
            [] (effect-dataset-text text)
              span $ {}
                :class-name $ str-spaced style-catoptric $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo-ui.schema/PresentationOptions
        'comp-checkbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-checkbox (checked options) (assert-type checked 'Bool)
            create-element :label
              {}
                :class-name $ str-spaced css/checkbox-label $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              input $ {} (:type |checkbox) (:class-name css/checkbox) (:checked checked)
                :disabled $ or (respo-ui.schema/read-field options :disabled) false
                :on $ {} $ :change
                  fn (e d!)
                    do
                      let
                          on-change $ respo-ui.schema/read-field options :on-change
                        when (some? on-change)
                          on-change
                            or (&map:get e :checked) false
                            , d!
                      , &unit
              if
                some? $ respo-ui.schema/read-field options :label
                <> $ str $ respo-ui.schema/read-field options :label
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool $ :: 'Option (:: 'respo-ui.schema/SwitchOptions 'Op)
            :generics $ [] 'Op
        'comp-cirru-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-cirru-snippet (text options)
            div
              {}
                :class-name $ str-spaced css/row css-snippet $ schema/read-field options :class-name
                :style $ schema/read-field options :style
              pre $ {} (:class-name css/expand)
                :innerHTML $ generateHtml text
              span
                {} $ :class-name style-copy-wrapper
                comp-copy text
          :examples $ [] $ quote (comp-cirru-snippet "|defn f (x) x")
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo-ui.schema/PresentationOptions
        'comp-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-close (options)
            span $ {} (:inner-text "|✕")
              :style $ respo-ui.schema/read-field options :style
              :class-name $ str-spaced style-close $ respo-ui.schema/read-field options :class-name
              :on-click $ respo-ui.schema/read-field options :on-click
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'respo-ui.schema/ButtonOptions
        'comp-copy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-copy (code f)
            div
              {}
                :class-name $ str-spaced style-copy-outline style-copy-container
                :on-click $ match f
                  (:some handler) handler
                  (:none) (copy-handler code)
              div $ {} (:class-name style-copy-outline)
                :style $ {} (:top -5) (:right -2)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo.schema/EventHandler
        'comp-divider $ %{} 'CodeEntry
          :doc "|Render a horizontal divider, or a vertical divider with :vertical? true."
          :code $ quote $ defcomp comp-divider (options)
            div $ {} (:role |separator)
              :class-name $ str-spaced
                if (respo-ui.schema/read-field options :vertical?) style-divider-vertical style-divider
                respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
          :examples $ [] $ quote
            comp-divider $ %some $ %{} respo-ui.schema/DividerOptions
              :vertical? $ %some true
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'respo-ui.schema/DividerOptions
        'comp-empty $ %{} 'CodeEntry
          :doc "|Render a richer empty state with optional :icon, :description, :action, :class-name, and :style."
          :code $ quote $ defcomp comp-empty (title options)
            div
              {}
                :class-name $ str-spaced style-empty $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              div
                {} $ :class-name style-empty-icon
                if
                  some? $ respo-ui.schema/read-field options :icon
                  respo-ui.schema/read-field options :icon
                  <> "|◇"
              div
                {} $ :class-name style-empty-title
                <> title
              when
                some? $ respo-ui.schema/read-field options :description
                div
                  {} $ :class-name style-empty-description
                  <> $ either (respo-ui.schema/read-field options :description) |
              when
                some? $ respo-ui.schema/read-field options :action
                div ({}) (respo-ui.schema/read-field options :action)
          :examples $ [] $ quote
            comp-empty "|No results" $ %some $ %{} respo-ui.schema/EmptyOptions
              :icon $ %none
              :description $ %some "|Try another search term."
              :action $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo-ui.schema/EmptyOptions
        'comp-input $ %{} 'CodeEntry
          :doc "|Render a controlled text input. Pass the current value and optional :type, :placeholder, :disabled, :on-input, :class-name, and :style."
          :code $ quote $ defcomp comp-input (value options)
            input $ {}
              :type $ either (respo-ui.schema/read-field options :type) |text
              :value value
              :placeholder $ respo-ui.schema/read-field options :placeholder
              :disabled $ or (respo-ui.schema/read-field options :disabled) false
              :class-name $ str-spaced css/input $ respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
              :on-input $ respo-ui.schema/read-field options :on-input
          :examples $ [] $ quote
            comp-input |query $ %some $ %{} respo-ui.schema/InputOptions
              :type $ %none
              :placeholder $ %some |Search
              :disabled $ %none
              :on-input $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo-ui.schema/InputOptions
        'comp-placeholder $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-placeholder (text)
            div
              {} $ :class-name css-placeholder
              <> text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
        'comp-progress $ %{} 'CodeEntry
          :doc "|Render an accessible progress bar. Value is clamped visually to 0..100; options support :class-name and :style."
          :code $ quote $ defcomp comp-progress (value options)
            div
              {} (:role |progressbar)
                :class-name $ str-spaced style-progress $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              div $ {} (:class-name style-progress-value)
                :style $ {} $ :width
                  str
                    &min 100 $ &max 0 value
                    , |%
          :examples $ [] $ quote (comp-progress 72)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Number $ :: 'Option 'respo-ui.schema/PresentationOptions
        'comp-select $ %{} 'CodeEntry
          :doc "|Render a controlled native select from keyed option maps. Each item uses :value, :label, and optional :disabled; :on-change receives the next value and d!."
          :code $ quote $ defcomp comp-select (value items options)
            create-list-element :select
              {} (:value value)
                :disabled $ or (respo-ui.schema/read-field options :disabled) false
                :class-name $ str-spaced css/select $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
                :on-change $ fn (e d!)
                  do
                    let
                        on-change $ respo-ui.schema/read-field options :on-change
                      when (some? on-change)
                        on-change
                          str $ &map:get e :value
                          fn (op) (d! op)
                    , &unit
              -> items $ map $ fn (item)
                let
                    option-value item.:value
                  [] option-value $ option $ {} (:value option-value)
                    :selected $ = value option-value
                    :disabled $ option:unwrap-or item.:disabled false
                    :inner-text item.:label
          :examples $ [] $ quote
            comp-select |calcit
              [] $ %{} respo-ui.schema/SelectOption (:value |calcit) (:label |Calcit)
                :disabled $ %none
              %some $ %{} respo-ui.schema/SelectOptions
                :disabled $ %none
                :on-change $ %none
                :class-name $ %none
                :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String (:: 'List 'respo-ui.schema/SelectOption)
              :: 'Option $ :: 'respo-ui.schema/SelectOptions 'Op
            :generics $ [] 'Op
        'comp-skeleton $ %{} 'CodeEntry
          :doc "|Render an animated loading placeholder. Unlabeled skeletons are decorative; pass :label to expose role=status. Options: :kind (:text or :circle), :width, :height, :class-name, and :style."
          :code $ quote $ defcomp comp-skeleton (options)
            div $ {}
              :role $ if
                some? $ respo-ui.schema/read-field options :label
                , |status |
              :aria-label $ respo-ui.schema/read-field options :label
              :aria-hidden $ nil? $ respo-ui.schema/read-field options :label
              :class-name $ str-spaced style-skeleton
                if
                  = :circle $ respo-ui.schema/read-field options :kind
                  , style-skeleton-circle style-skeleton-text
                respo-ui.schema/read-field options :class-name
              :style $ ui/merge-styles
                {}
                  :width $ respo-ui.schema/read-field options :width
                  :height $ respo-ui.schema/read-field options :height
                respo-ui.schema/read-field options :style
          :examples $ [] $ quote
            comp-skeleton $ %some $ %{} respo-ui.schema/SkeletonOptions
              :label $ %some "|Loading title"
              :kind $ %none
              :width $ %some |60%
              :height $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'respo-ui.schema/SkeletonOptions
        'comp-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-snippet (code options)
            div
              {} $ :class-name $ str-spaced css/row css-snippet (respo-ui.schema/read-field options :class-name)
              pre $ {} (:class-name css/expand)
                :style $ respo-ui.schema/read-field options :style
                :inner-text code
              span
                {} $ :class-name style-copy-wrapper
                comp-copy code
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo-ui.schema/PresentationOptions
        'comp-spinner $ %{} 'CodeEntry
          :doc "|Render an accessible loading spinner. Options support :label, :class-name, and :style."
          :code $ quote $ defcomp comp-spinner (options)
            span $ {} (:role |status)
              :aria-label $ either (respo-ui.schema/read-field options :label) |Loading
              :class-name $ str-spaced style-spinner $ respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
          :examples $ [] $ quote
            comp-spinner $ %some $ %{} respo-ui.schema/SpinnerOptions
              :label $ %some "|Loading results"
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'Option 'respo-ui.schema/SpinnerOptions
        'comp-switch $ %{} 'CodeEntry
          :doc "|Render a controlled accessible switch backed by a native checkbox. Options: :label, :disabled, :on-change, :class-name, and :style."
          :code $ quote $ defcomp comp-switch (checked options)
            create-element :label
              {}
                :class-name $ str-spaced style-switch-label
                  if (respo-ui.schema/read-field options :disabled) style-control-disabled
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              input $ {} (:type |checkbox) (:checked checked)
                :disabled $ or (respo-ui.schema/read-field options :disabled) false
                :aria-label $ respo-ui.schema/read-field options :label
                :class-name style-switch-input
                :on-change $ fn (e d!)
                  do
                    let
                        on-change $ respo-ui.schema/read-field options :on-change
                      when (some? on-change)
                        on-change
                          or (&map:get e :checked) false
                          fn (op) (d! op)
                    , &unit
              span $ {} $ :class-name
                str-spaced style-switch-track $ if checked style-switch-track-checked
              when
                some? $ respo-ui.schema/read-field options :label
                span ({})
                  <> $ either (respo-ui.schema/read-field options :label) |
          :examples $ [] $ quote
            comp-switch false $ %some $ %{} respo-ui.schema/SwitchOptions
              :label $ %some "|Compact mode"
              :disabled $ %none
              :on-change $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool $ :: 'Option (:: 'respo-ui.schema/SwitchOptions 'Op)
            :generics $ [] 'Op
        'comp-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-tabs (options tabs on-route)
            let
                selected options.:selected
                vertical? $ option:unwrap-or options.:vertical? false
              [] (effect-tab-highlight selected vertical?)
                div
                  {}
                    :class-name $ str-spaced style-tabs (if vertical? css/column css/row) (option:unwrap-or options.:class-name |)
                    :style $ ui/merge-styles
                      if (option:some? options.:width)
                        {} $ :width $ option:unwrap-or options.:width 0
                        {}
                      if (option:some? options.:style) (option:unwrap options.:style) ({})
                  div $ {} $ :class-name
                    str-spaced style-tab-highlight $ if vertical? style-tab-vertical-highlight
                  , & $ -> tabs $ map
                    fn (info)
                      let
                          item $ cond
                              enum? info
                              match info $
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
                              selected? $ = selected $ %some value
                            div
                              {}
                                :class-name $ str-spaced css-tab (option:unwrap-or options.:tab-class-name |) (if selected? style-selected-tab)
                                :style $ ui/merge-styles
                                  if (option:some? options.:tab-style) (option:unwrap options.:tab-style) ({})
                                  if selected?
                                    if (option:some? options.:selected-tab-style) (option:unwrap options.:selected-tab-style) ({})
                                    {}
                                :on-click $ fn (e d!) (on-route item d!)
                              <> display
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'respo-ui.schema/TabsOptions 'Value) (:: 'List 'Item)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] (:: 'respo-ui.schema/TabRoute 'Value) 'DynFn
            :generics $ [] 'Value 'Item
        'comp-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-tag (kind content options)
            div
              {}
                :class-name $ str-spaced style-tag
                  case-default kind | (:info style-tag-info) (:success style-tag-success) (:warning style-tag-warning) (:error style-tag-error)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
                :on-click $ either (respo-ui.schema/read-field options :on-click)
                  fn $ e d!
              <> content
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag 'Content $ :: 'Option 'respo-ui.schema/ButtonOptions
            :generics $ [] 'Content
        'comp-textarea $ %{} 'CodeEntry
          :doc "|Render a controlled textarea. Pass the current value and optional :placeholder, :disabled, :on-input, :class-name, and :style."
          :code $ quote $ defcomp comp-textarea (value options)
            textarea $ {} (:value value)
              :placeholder $ respo-ui.schema/read-field options :placeholder
              :disabled $ or (respo-ui.schema/read-field options :disabled) false
              :class-name $ str-spaced css/textarea $ respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
              :on-input $ respo-ui.schema/read-field options :on-input
          :examples $ [] $ quote
            comp-textarea |notes $ %some $ %{} respo-ui.schema/InputOptions
              :type $ %none
              :placeholder $ %some |Notes
              :disabled $ %none
              :on-input $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'Option 'respo-ui.schema/InputOptions
        'comp-time $ %{} 'CodeEntry
          :doc "|pass a time in string(internally handled by dayjs)\n\nif is today, just show the time of today.\nif not today, only show date and week.\n\nneed to be extended in future..."
          :code $ quote $ defcomp comp-time (time)
            let
                mark $ format-time-mark time
              span $ {} (:class-name css/font-fancy) (:title time) (:inner-text mark)
                :on-click $ fn (e d!)
                  do (js/console.log :time time) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'copy-handler $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn copy-handler (code)
            fn (e d!)
              do (copy! code) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'css-item-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-item-label
            {} $ |$0 $ {} (:font-weight 300) (:font-family ui/font-fancy) (:font-size 15) (:line-height |14px)
              :color $ hsl 0 0 60
          :examples $ []
          :schema $ :: 'String
        'css-placeholder $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-placeholder
            {} $ |$0 $ ui/merge-styles ui/center
              {} (:padding 16) (:font-family ui/font-fancy)
                :color $ hsl 0 0 80
                :font-size 12
                :font-style :italic
          :examples $ []
          :schema $ :: 'String
        'css-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-snippet
            {}
              |& $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height |20px)
                :color $ hsl 0 0 40
                :padding "|4px 32px 4px 6px"
                :border $ str "|1px solid " $ hsl 0 0 90
                :border-radius |4px
                :margin 0
                :position :relative
              "|& > pre" $ {} $ :margin 0
          :examples $ []
          :schema $ :: 'String
        'css-tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-tab
            {}
              |$0 $ {} (:padding "|0 8px") (:font-family ui/font-normal) (:font-weight 300) (:cursor :pointer) (:font-size 14)
                :color $ hsl 0 0 70
                :line-height |24px
                :border-radius |2px
              |$0:hover $ {} $ :background-color (hsl 0 0 98)
          :examples $ []
          :schema $ :: 'String
        'effect-dataset-text $ %{} 'CodeEntry
          :doc "|Respo does not support dataset from attribute, write with effect"
          :code $ quote $ defeffect effect-dataset-text (text) (action el at?)
            when
              or (= action :update) (= action :mount)
              let
                  element $ unsafe-coerce el UiDomElement
                -> element.:dataset .-text $ set! text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'effect-tab-highlight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-tab-highlight (selected vertical?) (action el at?)
            when
              or (= action :mount) (= action :update)
              let
                  root $ unsafe-coerce el UiDomElement
                  target $ root.query-selector $ str |. style-selected-tab
                  cursor $ root.query-selector $ str |. style-tab-highlight
                if
                  and (js-present? target) (js-present? cursor)
                  let
                      target $ unsafe-coerce target UiDomElement
                      cursor $ unsafe-coerce cursor UiDomElement
                      cursor-style cursor.:style
                      left target.:offset-left
                      width target.:client-width
                      height target.:client-height
                    if vertical?
                      do
                        -> cursor-style .-top $ set! $ str target.:offset-top |px
                        -> cursor-style .-bottom $ set! |0px
                        -> cursor-style .-height $ set! $ str height |px
                      do
                        -> cursor-style .-left $ set! $ str left |px
                        -> cursor-style .-width $ set! $ str width |px
                  when (not vertical?)
                    -> cursor.:style .-width $ set! |0px
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'Value 'Bool
            :features $ #{} :js-ffi
            :generics $ [] 'Value
        'format-time-mark $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn format-time-mark (time)
            let
                factory $ unsafe-coerce dayjs DayjsFactoryHost
                plugin $ unsafe-coerce is-today 'JsObject
                _ $ factory.extend! plugin
                now $ unsafe-coerce (dayjs time) DayjsHost
              if (now.is-today?)
                str "|Today " $ now.format |HH:mm
                now.format "|MM-DD ddd"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'literal? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn literal? (v)
            or (string? v) (tag? v) (number? v) (bool? v)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Value
            :generics $ [] 'Value
        'style-alert $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert
            {} $ |& $ {} (:padding "|10px 12px") (:border "|1px solid transparent") (:border-radius |6px) (:line-height |1.5)
          :examples $ []
          :schema $ :: 'String
        'style-alert-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-error
            {} $ |& $ {}
              :color $ hsl 4 68 38
              :background-color $ hsl 4 80 96
              :border-color $ hsl 4 65 86
          :examples $ []
          :schema $ :: 'String
        'style-alert-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-info
            {} $ |& $ {}
              :color $ hsl 210 70 34
              :background-color $ hsl 210 80 96
              :border-color $ hsl 210 60 86
          :examples $ []
          :schema $ :: 'String
        'style-alert-success $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-success
            {} $ |& $ {}
              :color $ hsl 135 55 28
              :background-color $ hsl 135 55 95
              :border-color $ hsl 135 45 84
          :examples $ []
          :schema $ :: 'String
        'style-alert-warning $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-warning
            {} $ |& $ {}
              :color $ hsl 38 80 28
              :background-color $ hsl 45 90 94
              :border-color $ hsl 42 75 80
          :examples $ []
          :schema $ :: 'String
        'style-attributes-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-attributes-title
            {} $ |$0 $ {} (:font-size 18) (:margin-bottom 6)
          :examples $ []
          :schema $ :: 'String
        'style-avatar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:width |32px) (:height |32px) (:overflow :hidden) (:border-radius |50%)
              :background-color $ hsl 220 75 92
              :color $ hsl 220 65 42
              :font-family ui/font-normal
              :font-size |12px
              :font-weight |600
              :text-transform :uppercase
              :flex-shrink |0
          :examples $ []
          :schema $ :: 'String
        'style-avatar-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar-image
            {} $ |& $ {} (:width |100%) (:height |100%) (:object-fit :cover)
          :examples $ []
          :schema $ :: 'String
        'style-avatar-large $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar-large
            {} $ |& $ {} (:width |48px) (:height |48px) (:font-size |16px)
          :examples $ []
          :schema $ :: 'String
        'style-avatar-small $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar-small
            {} $ |& $ {} (:width |24px) (:height |24px) (:font-size |10px)
          :examples $ []
          :schema $ :: 'String
        'style-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card
            {} $ |& $ {}
              :border $ str "|1px solid " $ hsl 0 0 90
              :border-radius |8px
              :background-color :white
              :overflow :hidden
              :box-shadow $ str "|0 2px 10px " $ hsl 0 0 0 0.06
          :examples $ []
          :schema $ :: 'String
        'style-card-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card-body
            {} $ |& $ {} (:padding |16px)
          :examples $ []
          :schema $ :: 'String
        'style-card-footer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card-footer
            {} $ |& $ {} (:padding "|10px 16px")
              :border-top $ str "|1px solid " $ hsl 0 0 92
              :background-color $ hsl 0 0 98
          :examples $ []
          :schema $ :: 'String
        'style-card-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card-title
            {} $ |& $ {} (:padding "|12px 16px")
              :border-bottom $ str "|1px solid " $ hsl 0 0 92
              :font-family ui/font-fancy
              :font-size |16px
              :font-weight |600
          :examples $ []
          :schema $ :: 'String
        'style-catoptric $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-catoptric
            {} $ |&::before $ {} (:content "|attr(data-text)")
          :examples $ []
          :schema $ :: 'String
        'style-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-close
            {}
              |& $ {} (:font-size 16) (:line-height |16px) (:height |16px) (:font-weight 100)
                :color $ hsl 0 90 70
                :opacity 0.5
                :cursor :pointer
                :transition-duration |200ms
                :user-select :none
              |&:hover $ {} $ :opacity 1
              |&:active $ {} (:transform "|scale(1.1)") (:transition-duration |0ms)
          :examples $ []
          :schema $ :: 'String
        'style-control-disabled $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-control-disabled
            {} $ |& $ {} (:opacity 0.5) (:cursor :not-allowed)
          :examples $ []
          :schema $ :: 'String
        'style-copy-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copy-container
            {}
              |& $ {} (:display :inline-block) (:margin "|0 8px 0 4px")
              |&:hover $ {} (:transition-duration |200ms) (:transform "|scale(1.06)")
          :examples $ []
          :schema $ :: 'String
        'style-copy-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copy-outline
            {}
              |& $ {} (:position :relative) (:width 12) (:height 12) (:border-radius |2px)
                :border $ str "|1.5px solid " $ hsl 0 0 80
                :cursor :pointer
                :outline "|1px solid white"
              |&:active $ {}
                :border-color $ hsl 0 0 50
                :transition-duration |0ms
          :examples $ []
          :schema $ :: 'String
        'style-copy-wrapper $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copy-wrapper
            {} $ |& $ {} (:position :absolute) (:top 10) (:right 2)
          :examples $ []
          :schema $ :: 'String
        'style-divider $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-divider
            {} $ |& $ {} (:width |100%) (:height |1px) (:margin "|12px 0")
              :background-color $ hsl 0 0 90
          :examples $ []
          :schema $ :: 'String
        'style-divider-vertical $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-divider-vertical
            {} $ |& $ {} (:display :inline-block) (:width |1px) (:height |1em) (:margin "|0 12px")
              :background-color $ hsl 0 0 90
              :vertical-align :middle
          :examples $ []
          :schema $ :: 'String
        'style-empty $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty
            {} $ |& $ {} (:display :flex) (:flex-direction :column) (:align-items :center) (:justify-content :center) (:min-height |160px) (:padding |24px)
              :border $ str "|1px dashed " $ hsl 220 15 82
              :border-radius |8px
              :text-align :center
              :background-color $ hsl 220 20 99
          :examples $ []
          :schema $ :: 'String
        'style-empty-description $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-description
            {} $ |& $ {} (:margin-top |4px) (:margin-bottom |12px)
              :color $ hsl 220 10 52
          :examples $ []
          :schema $ :: 'String
        'style-empty-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-icon
            {} $ |& $ {} (:font-size |28px) (:line-height |1)
              :color $ hsl 220 20 68
              :margin-bottom |10px
          :examples $ []
          :schema $ :: 'String
        'style-empty-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-title
            {} $ |& $ {} (:font-size |16px) (:font-weight |600)
              :color $ hsl 220 20 25
          :examples $ []
          :schema $ :: 'String
        'style-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-item
            {}
              |$0 $ {} (:min-height 72)
                :background-color $ hsl 0 0 99
                :padding |8px
                :transition-duration |240ms
                :border-radius |4px
              |$0:hover $ {}
                :background-color $ hsl 0 0 100
                :box-shadow $ str "|0 0 4px 1px " $ hsl 0 0 0 0.08
          :examples $ []
          :schema $ :: 'String
        'style-progress $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-progress
            {} $ |& $ {} (:width |100%) (:height |8px) (:overflow :hidden) (:border-radius |999px)
              :background-color $ hsl 220 20 92
          :examples $ []
          :schema $ :: 'String
        'style-progress-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-progress-value
            {} $ |& $ {} (:height |100%) (:border-radius |inherit)
              :background-color $ hsl 220 80 62
              :transition "|width 180ms ease"
          :examples $ []
          :schema $ :: 'String
        'style-selected-tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-selected-tab
            {} $ |& $ {}
          :examples $ []
          :schema $ :: 'String
        'style-skeleton $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton
            {}
              |& $ {} (:display :block)
                :background-color $ hsl 220 18 90
                :animation "|respo-ui-skeleton 1.2s ease-in-out infinite alternate"
              "|@keyframes respo-ui-skeleton" $ {}
                |from $ {} $ :opacity 0.45
                |to $ {} $ :opacity 1
          :examples $ []
          :schema $ :: 'String
        'style-skeleton-circle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton-circle
            {} $ |& $ {} (:width |32px) (:height |32px) (:border-radius |50%)
          :examples $ []
          :schema $ :: 'String
        'style-skeleton-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton-text
            {} $ |& $ {} (:width |100%) (:height |12px) (:border-radius |4px)
          :examples $ []
          :schema $ :: 'String
        'style-spinner $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-spinner
            {}
              |& $ {} (:display :inline-block) (:width |16px) (:height |16px)
                :border $ str "|2px solid " $ hsl 220 30 88
                :border-top-color $ hsl 220 80 60
                :border-radius |50%
                :vertical-align :middle
                :animation "|respo-ui-spin 700ms linear infinite"
              "|@keyframes respo-ui-spin" $ {} $ |to
                {} $ :transform "|rotate(360deg)"
          :examples $ []
          :schema $ :: 'String
        'style-switch-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-input
            {} $ |& $ {} (:position :absolute) (:width |1px) (:height |1px) (:opacity 0) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'String
        'style-switch-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-label
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:gap |8px) (:cursor :pointer) (:user-select :none)
          :examples $ []
          :schema $ :: 'String
        'style-switch-track $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-track
            {}
              |& $ {} (:position :relative) (:display :inline-block) (:width |36px) (:height |20px) (:border-radius |999px)
                :background-color $ hsl 220 12 82
                :transition "|background-color 160ms ease"
              |&::after $ {} (:content ||) (:position :absolute) (:top |2px) (:left |2px) (:width |16px) (:height |16px) (:border-radius |50%) (:background-color :white)
                :box-shadow $ str "|0 1px 4px " $ hsl 0 0 0 0.2
                :transition "|transform 160ms ease"
          :examples $ []
          :schema $ :: 'String
        'style-switch-track-checked $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-track-checked
            {}
              |& $ {} $ :background-color (hsl 220 80 62)
              |&::after $ {} $ :transform "|translateX(16px)"
          :examples $ []
          :schema $ :: 'String
        'style-tab-highlight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab-highlight
            {}
              |& $ {} (:min-width 0) (:left 0) (:height 1)
                :background-color $ hsl 200 60 80
                :bottom 0
                :position :absolute
                :transition-duration |200ms
                :border-radius |2px
              (str |. style-tabs "|:hover &")
                {} $ :height 3
          :examples $ []
          :schema $ :: 'String
        'style-tab-vertical-highlight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab-vertical-highlight
            {}
              |div& $ {} (:width 2) (:left 0)
              (str |. style-tabs "|:hover div&")
                {} $ :width 4
          :examples $ []
          :schema $ :: 'String
        'style-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tabs
            {} $ |& $ {} (:position :relative)
          :examples $ []
          :schema $ :: 'String
        'style-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag
            {}
              |& $ {} (:display :inline-block)
                :background-color $ hsl 0 0 96
                :border $ str "|1px solid " $ hsl 0 0 92
                :border-radius |4px
                :height |20px
                :line-height |20px
                :font-size 12
                :padding "|0px 8px"
                :color $ hsl 0 0 64
                :cursor :default
              |&:hover $ {} $ :background-color (hsl 0 0 94)
              |&:active $ {} $ :transform "|translate(1px,1px)"
          :examples $ []
          :schema $ :: 'String
        'style-tag-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-error
            {}
              |div& $ {} (:color :white) (:border :none)
                :background-color $ hsl 0 90 76
              |div&:hover $ {} $ :background-color (hsl 0 90 72)
          :examples $ []
          :schema $ :: 'String
        'style-tag-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-info
            {}
              |div& $ {} (:color :white) (:border :none)
                :background-color $ hsl 240 99 86
              |div&:hover $ {} $ :background-color (hsl 240 99 84)
          :examples $ []
          :schema $ :: 'String
        'style-tag-success $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-success
            {}
              |div& $ {} (:color :white) (:border :none)
                :color $ hsl 120 99 40
                :background-color $ hsl 120 99 92
              |div&:hover $ {} $ :background-color (hsl 120 99 88)
          :examples $ []
          :schema $ :: 'String
        'style-tag-warning $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-warning
            {}
              |div& $ {} (:color :white) (:border :none)
                :color $ hsl 60 90 30
                :background-color $ hsl 60 98 58
              |div&:hover $ {} $ :background-color (hsl 60 98 49)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp
          :require
            respo.core :refer $ defcomp defeffect div list-> input textarea button span select option a <> pre create-element create-list-element
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            |cirru-color :refer $ generateHtml
            respo.css :refer $ defstyle
            respo-ui.css :as css
            |copy-text-to-clipboard :default copy!
            |dayjs :default dayjs
            respo.schema :refer $ *dispatch-op
            respo-ui.schema :as schema
            |dayjs/plugin/isToday.js :default is-today
    'respo-ui.comp.components $ %{} 'FileEntry
      :defs $ {}
        'BrowserDate $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait BrowserDate
            .to-iso-string $ :: 'Fn $ {}
              :args $ [] 'respo-ui.comp.components/BrowserDate
              :return 'String
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :to-iso-string |toISOString
          :schema $ :: 'Trait
        'comp-components-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-components-page ()
            div
              {} $ :class-name style-components-page
              div
                {} $ :class-name style-page-hero
                div ({}) (<> "|Component examples" style-page-title)
                div ({})
                  <> "|Composable primitives with controlled state and static CSS classes." ui/text-label
                div
                  {} $ :class-name $ str-spaced css/row css/gap8 style-resource-links
                  render-entry |https://github.com/Respo/alerts.calcit |respo-alerts
                  render-entry |https://github.com/Respo/respo-feather.calcit |respo-feather
                  render-entry |https://github.com/Respo/respo-message.calcit |respo-message
                  render-entry |https://github.com/Respo/respo-markdown.calcit |respo-markdown
              comp-demo-form-controls
              comp-demo-data-display
              comp-demo-loading-states
              comp-divider
              div
                {} $ :class-name style-section-title
                <> "|Utility components"
              comp-demo-attributes
              comp-demo-tabs
              comp-demo-cirru-snippet
              comp-demo-snippet
              comp-demo-copy
              comp-demo-time
              comp-demo-tags
              comp-demo-close
              comp-demo-catoptric-text
              comp-demo-placeholder
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-attributes $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-attributes ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Attributes demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                comp-cirru-snippet "|respo-ui.comp/comp-attributes\n\n\ncomp-attributes $ {} (:title \"\\\"Attributes DEMO\")\n  :items $ [] (:: :attr \"\\\"Demo\" \"\\\"content\")\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr-span \"\\\"DEMO 2\" \"\\\"content 2\" 2\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"DEMO 3\" $ a\n      {} (:inner-text \"\\\"Demo\")\n        :href \"\\\"https://respo-mvc.org\"\n        :target \"\\\"_blank\"\n"
                div
                  {} $ :class-name css/flex
                  comp-attributes $ {} (:title "|Attributes DEMO")
                    :items $ [] (:: :attr |Demo |content) (:: :attr "|Demo 2" "|content 2") (:: :attr-span "|DEMO 2" "|content 2" 2) (:: :attr "|Demo 2" "|content 2") (:: :attr "|Demo 2" "|content 2")
                      :: :attr "|DEMO 3" $ a $ {} (:inner-text |Demo) (:href |https://respo-mvc.org) (:target |_blank)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-catoptric-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-catoptric-text ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Catoptric demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-catoptric-text\n\ncomp-catoptric-text \"|Demo Text\" $ {}\n  :style $ {}\n  :class-name $ {}\n"
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} $ :gap |8px
                  comp-catoptric-text "|DEMO Text"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-cirru-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-cirru-snippet ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Cirru snippet demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-cirru-snippet\n\ncomp-cirru-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :style $ {}\n  :class-name style-demo"
                div
                  {} $ :class-name $ str-spaced css/flex css/column
                  comp-snippet "|@import url(cirru-color/assets/cirru.css);"
                  =< 0 8
                  comp-cirru-snippet "|defn f (a b)\n  + a b"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-close $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-close ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Close demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-close\n\ncomp-close $ {}\n  :style $ {}\n  :class-name |\n  :on-click nil"
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} $ :gap |8px
                  comp-close
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-copy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn comp-demo-copy ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Copy demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                comp-cirru-snippet "|respo-ui.comp/comp-copy\n\ncomp-copy \"|demo\"\ncomp-copy \"|demo\" $ fn (e d!)"
                div
                  {} $ :class-name css/flex
                  <> "|demo demo"
                  comp-copy "|DEMO TO COPY"
                  <> "|demo demo"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ []
        'comp-demo-data-display $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-data-display ()
            div
              {} $ :class-name style-demo-section
              div
                {} $ :class-name style-section-title
                <> "|Data display"
              div
                {} $ :class-name style-demo-grid
                comp-card
                  div
                    {} $ :class-name style-avatar-row
                    comp-avatar |CY $ %some $ %{} respo-ui.schema/AvatarOptions
                      :src $ %none
                      :alt $ %none
                      :title $ %some "|Small avatar"
                      :size $ %some :small
                      :class-name $ %none
                      :style $ %none
                    comp-avatar |RS $ %some $ %{} respo-ui.schema/AvatarOptions
                      :src $ %none
                      :alt $ %none
                      :title $ %some "|Default avatar"
                      :size $ %none
                      :class-name $ %none
                      :style $ %none
                    comp-avatar |UI $ %some $ %{} respo-ui.schema/AvatarOptions
                      :src $ %none
                      :alt $ %none
                      :title $ %some "|Large avatar"
                      :size $ %some :large
                      :class-name $ %none
                      :style $ %none
                  %some $ %{} respo-ui.schema/CardOptions
                    :title $ %some |Avatars
                    :footer $ %none
                    :class-name $ %none
                    :style $ %none
                comp-card
                  div
                    {} $ :class-name $ str-spaced css/column css/gap8
                    comp-alert :info "|A neutral product update"
                    comp-alert :success "|All checks passed"
                    comp-alert :warning "|Usage is approaching the limit"
                    comp-alert :error "|The last deployment failed"
                    <> "|Progress · 78%" ui/text-label
                    comp-progress 78
                  %some $ %{} respo-ui.schema/CardOptions
                    :title $ %some "|Status summary"
                    :footer $ %none
                    :class-name $ %none
                    :style $ %none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-form-controls $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-form-controls ()
            div
              {} $ :class-name style-demo-section
              div
                {} $ :class-name style-section-title
                <> "|Form controls"
              div
                {} $ :class-name style-demo-grid
                comp-card
                  div
                    {} $ :class-name $ str-spaced css/column css/gap8
                    comp-input | $ %some $ %{} respo-ui.schema/InputOptions
                      :type $ %none
                      :placeholder $ %some "|Search components"
                      :disabled $ %none
                      :on-input $ %none
                      :class-name $ %none
                      :style $ %none
                    comp-textarea | $ %some $ %{} respo-ui.schema/InputOptions
                      :type $ %none
                      :placeholder $ %some "|Notes about this component"
                      :disabled $ %none
                      :on-input $ %none
                      :class-name $ %none
                      :style $ %none
                    comp-select |calcit language-options $ %some $ %{} respo-ui.schema/SelectOptions
                      :disabled $ %none
                      :on-change $ %none
                      :class-name $ %none
                      :style $ %none
                    comp-switch false $ %some $ %{} respo-ui.schema/SwitchOptions
                      :label $ %some "|Compact mode"
                      :disabled $ %none
                      :on-change $ %none
                      :class-name $ %none
                      :style $ %none
                  %some $ %{} respo-ui.schema/CardOptions
                    :title $ %some "|Controlled values"
                    :footer $ %none
                    :class-name $ %none
                    :style $ %none
                comp-card
                  div
                    {} $ :class-name $ str-spaced css/column css/gap8
                    comp-button "|Default action"
                    comp-button "|Primary action" $ %some $ %{} respo-ui.schema/ButtonOptions
                      :kind $ %some :primary
                      :type $ %none
                      :disabled $ %none
                      :on-click $ %none
                      :class-name $ %none
                      :style $ %none
                    comp-button "|Danger action" $ %some $ %{} respo-ui.schema/ButtonOptions
                      :kind $ %some :danger
                      :type $ %none
                      :disabled $ %none
                      :on-click $ %none
                      :class-name $ %none
                      :style $ %none
                    comp-button "|Danger outline" $ %some $ %{} respo-ui.schema/ButtonOptions
                      :kind $ %some :danger-outline
                      :type $ %none
                      :disabled $ %none
                      :on-click $ %none
                      :class-name $ %none
                      :style $ %none
                    comp-button |Unavailable $ %some $ %{} respo-ui.schema/ButtonOptions
                      :kind $ %none
                      :type $ %none
                      :disabled $ %some true
                      :on-click $ %none
                      :class-name $ %none
                      :style $ %none
                  %some $ %{} respo-ui.schema/CardOptions
                    :title $ %some "|Button states"
                    :footer $ %none
                    :class-name $ %none
                    :style $ %none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-loading-states $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-loading-states ()
            div
              {} $ :class-name style-demo-section
              div
                {} $ :class-name style-section-title
                <> "|Loading and empty states"
              div
                {} $ :class-name style-demo-grid
                comp-card
                  div
                    {} $ :class-name $ str-spaced css/column css/gap8
                    div
                      {} $ :class-name $ str-spaced css/row-middle css/gap8
                      comp-skeleton $ %some $ %{} respo-ui.schema/SkeletonOptions
                        :label $ %some "|Loading avatar"
                        :kind $ %some :circle
                        :width $ %none
                        :height $ %none
                        :class-name $ %none
                        :style $ %none
                      div
                        {} $ :class-name $ str-spaced css/column css/gap8 css/expand
                        comp-skeleton $ %some $ %{} respo-ui.schema/SkeletonOptions
                          :label $ %none
                          :kind $ %none
                          :width $ %some |48%
                          :height $ %none
                          :class-name $ %none
                          :style $ %none
                        comp-skeleton $ %some $ %{} respo-ui.schema/SkeletonOptions
                          :label $ %none
                          :kind $ %none
                          :width $ %some |72%
                          :height $ %none
                          :class-name $ %none
                          :style $ %none
                    comp-divider
                    comp-skeleton $ %some $ %{} respo-ui.schema/SkeletonOptions
                      :label $ %none
                      :kind $ %none
                      :width $ %none
                      :height $ %some |72px
                      :class-name $ %none
                      :style $ %none
                  %some $ %{} respo-ui.schema/CardOptions
                    :title $ %some "|Skeleton composition"
                    :footer $ %none
                    :class-name $ %none
                    :style $ %none
                comp-empty "|No components found" $ %some $ %{} respo-ui.schema/EmptyOptions
                  :icon $ %none
                  :description $ %some "|Try another search term or clear the filters."
                  :action $ %none
                  :class-name $ %none
                  :style $ %none
                comp-card
                  div
                    {} $ :class-name $ str-spaced css/column css/gap8
                    div
                      {} $ :class-name $ str-spaced css/row-middle css/gap8
                      comp-spinner $ %some $ %{} respo-ui.schema/SpinnerOptions
                        :label $ %some "|Loading results"
                        :class-name $ %none
                        :style $ %none
                      <> "|Loading results"
                    comp-divider
                    div
                      {} $ :class-name $ str-spaced css/row-middle css/gap8
                      comp-button |Previous
                      comp-divider $ %some $ %{} respo-ui.schema/DividerOptions
                        :vertical? $ %some true
                        :class-name $ %none
                        :style $ %none
                      comp-button |Next $ %some $ %{} respo-ui.schema/ButtonOptions
                        :kind $ %some :primary
                        :type $ %none
                        :disabled $ %none
                        :on-click $ %none
                        :class-name $ %none
                        :style $ %none
                  %some $ %{} respo-ui.schema/CardOptions
                    :title $ %some "|Spinner and dividers"
                    :footer $ %none
                    :class-name $ %none
                    :style $ %none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-placeholder $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-placeholder ()
            div ({})
              div
                {} $ :class-name css-title
                <> "|Placeholder demo"
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                comp-cirru-snippet "|respo-ui.comp/comp-placeholder\n\ncomp-placeholder \"|demo\"\ncomp-placeholder \"|中文\""
                div
                  {} $ :class-name css/flex
                  comp-placeholder "|This is a demo"
                  comp-placeholder "|中文 Demo"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-snippet ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Snippet demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-snippet\n\ncomp-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :class-name style-demo\n  :style $ {}"
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|defn f (a b)\n  + a b"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-tabs ()
            let
                selected :book
                en-tabs $ [] (:: :tab :book |Book) (:: :tab :card |Card) (:: :tab :pl "|Programming language")
              div ({})
                div
                  {} $ :class-name css-title
                  <> "|Tabs demo"
                div
                  {} $ :class-name $ str-spaced css/row css/gap8
                  comp-cirru-snippet "|respo-ui.comp/comp-tabs\n\nTyped tabs use TabsOptions<Tag> and TabRoute<Tag>."
                  div
                    {} $ :class-name css/flex
                    comp-tabs
                      respo-ui.schema/make-tabs-options selected (%none) (%none) (%none)
                      , en-tabs ignore-tab-route
                    comp-tabs
                      respo-ui.schema/make-tabs-options selected (%none) (%none) (%none)
                      [] (:: :tab :book "|书本") (:: :tab :card "|纸牌") (:: :tab :pl "|编程语言")
                      , ignore-tab-route
                    comp-tabs
                      respo-ui.schema/make-tabs-options selected (%none) (%none)
                        %some $ {} $ :border-bottom
                          str "|1px solid " $ hsl 0 0 94
                      , en-tabs ignore-tab-route
                =< 0 8
                div
                  {} $ :class-name $ str-spaced css/row css/gap8
                  comp-cirru-snippet "|Vertical tabs use the same typed route callback."
                  div
                    {} $ :class-name css/flex
                    comp-tabs
                      respo-ui.schema/make-tabs-options selected (%some true) (%some 200)
                        %some $ {}
                      , en-tabs ignore-tab-route
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-tags $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-tags ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Tags demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-tag\n\ncomp-tag :info \"demo\"\n"
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} $ :gap |8px
                  comp-tag :info "|:info demo"
                  comp-tag :success "|:success demo"
                  comp-tag :warning "|:warning demo"
                  comp-tag :error "|:error demo"
                  comp-tag :default "|:default demo"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-time $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-time ()
            div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "|Time demo"
              =< 0 8
              div
                {} $ :class-name $ str-spaced css/row css/gap8
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "|respo-ui.comp/comp-time\n\ncomp-time |2023-11-17T04:07:18.435Z"
                div
                  {} $ :class-name css/flex
                  div ({})
                    comp-time $ current-iso-string
                  div ({}) (comp-time |2023-11-07T06:23:49.688Z)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
            :features $ #{} :js-ffi
        'css-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-title
            {} $ |$0 $ {} (:margin-top 40) (:font-size 18) (:font-weight :bold)
              :color $ hsl 0 0 10
          :examples $ []
          :schema $ :: 'String
        'current-iso-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn current-iso-string ()
            let
                value $ unsafe-coerce (new js/Date) BrowserDate
              value.to-iso-string
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'ignore-tab-route $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ignore-tab-route (route dispatch!) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'respo-ui.schema/TabRoute 'Value) 'DynFn
            :generics $ [] 'Value
        'language-options $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def language-options
            []
              %{} respo-ui.schema/SelectOption (:value |calcit) (:label |Calcit)
                :disabled $ %none
              %{} respo-ui.schema/SelectOption (:value |clojure) (:label |Clojure)
                :disabled $ %none
              %{} respo-ui.schema/SelectOption (:value |haskell) (:label |Haskell)
                :disabled $ %none
              %{} respo-ui.schema/SelectOption (:value |rust) (:label |Rust)
                :disabled $ %some true
          :examples $ []
          :schema $ :: 'List 'respo-ui.schema/SelectOption
        'render-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-entry (url title)
            div ({})
              a $ {} (:href url) (:target |_blank) (:rel |noreferrer) (:class-name css/link) (:inner-text title)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String
        'style-avatar-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar-row
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap |12px)
          :examples $ []
          :schema $ :: 'String
        'style-components-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-components-page
            {} $ |& $ {} (:max-width |1040px) (:padding "|8px 24px 50vh")
          :examples $ []
          :schema $ :: 'String
        'style-demo-grid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-grid
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(280px, 1fr))") (:gap |16px) (:align-items :stretch)
          :examples $ []
          :schema $ :: 'String
        'style-demo-section $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-section
            {} $ |& $ {} (:margin-top |32px)
          :examples $ []
          :schema $ :: 'String
        'style-demo-surface $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-surface
            {} $ |& $ {} (:display :flex) (:align-items :center) (:justify-content :space-between) (:gap |16px) (:padding |16px)
              :border $ str "|1px solid " $ hsl 220 15 90
              :border-radius |8px
              :background-color :white
          :examples $ []
          :schema $ :: 'String
        'style-page-hero $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-page-hero
            {} $ |& $ {} (:padding |24px)
              :border $ str "|1px solid " $ hsl 220 30 90
              :border-radius |12px
              :background $ str "|linear-gradient(135deg, " (hsl 220 80 98) "|, " (hsl 260 70 98) "|)"
          :examples $ []
          :schema $ :: 'String
        'style-page-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-page-title
            {} $ |& $ {} (:font-family ui/font-fancy) (:font-size |28px) (:font-weight |600) (:line-height |1.3)
              :color $ hsl 220 25 18
          :examples $ []
          :schema $ :: 'String
        'style-resource-links $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-resource-links
            {} $ |& $ {} (:margin-top |14px) (:flex-wrap :wrap)
          :examples $ []
          :schema $ :: 'String
        'style-section-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-section-title
            {} $ |& $ {} (:margin-bottom |12px) (:font-family ui/font-fancy) (:font-size |19px) (:font-weight |600)
              :color $ hsl 220 18 24
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.components
          :require
            respo.core :refer $ defcomp >> div a <> pre code
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-tabs comp-placeholder comp-cirru-snippet comp-button comp-attributes comp-snippet comp-time comp-tag comp-close comp-catoptric-text comp-copy comp-input comp-textarea comp-select comp-switch comp-avatar comp-skeleton comp-spinner comp-empty comp-card comp-progress comp-alert comp-divider
    'respo-ui.comp.container $ %{} 'FileEntry
      :defs $ {}
        'comp-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-container (store)
            let
                router $ respo-ui.schema/route-from-router store
                states store.:states
                route-name $ match router
                  (:index) :index
                  (:widgets) :widgets
                  (:layouts) :layouts
                  (:fonts) :fonts
                  (:components) :components
                  (:utils) :utils
                  (:not-found _) :not-found
                  _ :index
              div
                {}
                  :class-name $ str-spaced css/preset css/global css/fullscreen css/row
                  :style $ {} $ :padding-top 16
                comp-sidebar route-name
                div
                  {} $ :class-name $ str-spaced css/expand css-content
                  match router
                    (:index) (comp-home)
                    (:index) (comp-home)
                    (:widgets) (comp-widgets-page)
                    (:layouts) (comp-layouts-page)
                    (:fonts) (comp-fonts-page)
                    (:components) (comp-components-page)
                    (:utils) (comp-utils-page)
                    (:not-found pp)
                      <> $ to-lispy-string router
                    _ $ do (eprintln |unknown-router router) (comp-home)
                if dev? $ comp-inspect |Store store $ {} (:bottom 0)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'respo-ui.schema/Store
        'comp-utils-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-utils-page ()
            div ({})
              div ({}) (<> |Utils)
              div
                {} $ :class-name $ str-spaced css/column css/gap8
                div ({}) (<> "|tab-echo! to open new tab and show EDN data.")
                div
                  {} $ :class-name $ str-spaced css/row css/gap8
                  div
                    {} $ :class-name $ str-spaced css/row css/gap8
                    button $ {} (:inner-text |Echo) (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo! $ {} (:type :message)
                          :demo $ {} $ :a 1
                          :vv $ range $ random-count
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data"
                div
                  {} $ :class-name $ str-spaced css/row css/gap8
                  div
                    {} $ :class-name $ str-spaced css/row css/gap8
                    button $ {} (:inner-text |Echo) (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo!
                          {} (:type :message)
                            :demo $ {} $ :a 1
                            :html "|code <code> cc c cc </code>"
                          %some :json
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data :json"
                div
                  {} $ :class-name $ str-spaced css/row css/gap8
                  div
                    {} $ :class-name $ str-spaced css/row css/gap8
                    button $ {} (:inner-text |Echo) (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo!
                          {} (:type :message)
                            :demo $ {} $ :a 1
                            :html "|code <code> cc c cc </code>"
                          %some :edn
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data :edn"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'css-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-content
            {} $ |$0 $ {} (:padding 8)
          :examples $ []
          :schema $ :: 'String
        'random-count $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn random-count ()
            unsafe-coerce
              js/Math.floor $ unsafe-coerce
                * 100 $ unsafe-coerce (js/Math.random) 'Number
                , 'Number
              , 'Number
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ []
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.container
          :require
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
    'respo-ui.comp.docs $ %{} 'FileEntry
      :defs $ {} $ 'comp-doc-block
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-doc-block (text)
            div $ {} (:inner-text text)
              :style $ {} (:white-space :pre-wrap) (:line-height 1.6) (:color |#555)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.docs
          :require $ respo.core :refer $ defcomp div
    'respo-ui.comp.fonts-page $ %{} 'FileEntry
      :defs $ {}
        'comp-fonts-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-fonts-page ()
            div ({})
              div
                {} $ :style style-section
                <> "|Normal fonts"
              comp-doc-block "|which can be used with `css/font-normal`. It's Hind fonts."
              render-font-demo css/font-normal ui/font-normal 300
              render-font-demo css/font-normal ui/font-normal 400
              render-font-demo css/font-normal ui/font-normal 500
              =< 0 32
              div
                {} $ :style style-section
                <> "|Fancy fonts"
              comp-doc-block "|which can be used with `css/font-fancy`. Josefin Sans is used here."
              render-font-demo css/font-fancy! ui/font-fancy 100
              render-font-demo css/font-fancy! ui/font-fancy 300
              render-font-demo css/font-fancy! ui/font-fancy 400
              =< 0 32
              div
                {} $ :style style-section
                <> "|Code fonts"
              comp-doc-block "|which can be used with `css/font-code`."
              render-font-demo css/font-code ui/font-code 100
              render-font-demo css/font-code ui/font-code 300
              render-font-demo css/font-code ui/font-code 400
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'css-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-demo
            {} $ |& $ {} (:font-size 16) (:font-weight |bold) (:line-height |32px)
          :examples $ []
          :schema $ :: 'String
        'render-font-demo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-font-demo (css-family family weight)
            div
              {}
                :class-name $ str-spaced css-family css-demo
                :style $ {} $ :font-weight weight
              <> $ str "|This is a demo of the font, guess what you like: " family "| " weight
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'Number
        'style-section $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-section
            {} (:font-size 24) (:font-family ui/font-fancy) (:line-height |60px)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.fonts-page
          :require
            respo.core :refer $ defcomp div <>
            respo-ui.css :as css
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
            respo-ui.comp.docs :refer $ comp-doc-block
    'respo-ui.comp.home $ %{} 'FileEntry
      :defs $ {}
        'comp-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home ()
            div ({})
              div
                {} $ :style style-home
                <> "|Styles for Respo"
              =< 0 32
              div ({})
                comp-doc-block "|Respo UI is some minimal style collections for creating small pieces of apps. It includes variables for Flexbox layouts, basic button and input styles, fonts like \"Josefin Sans\" and \"Hind\".\n\nYou may read code on [GitHub](http://github.com/Respo/respo-ui). [Fonts files](https://github.com/tiye/favored-fonts) are hosted separately on my server."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'style-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-home
            {} (:font-size 32) (:font-family "|Josefin Sans")
              :color $ hsl 200 100 76
              :font-weight 100
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.home
          :require
            respo.core :refer $ defcomp div a img <>
            respo.comp.space :refer $ =<
            respo.util.format :refer $ hsl
            respo-ui.comp.docs :refer $ comp-doc-block
    'respo-ui.comp.layouts-page $ %{} 'FileEntry
      :defs $ {}
        'comp-layouts-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-layouts-page ()
            div
              {} $ :class-name $ str-spaced css/content-container style-layout-page
              div
                {} $ :class-name style-layout-hero
                div
                  {} $ :class-name style-layout-title
                  <> |Layouts
                comp-doc-block "|Use small layout primitives as stable CSS classes, then compose spacing and presentation classes at the call site. The examples below resize naturally without JavaScript layout calculations."
                div
                  {} $ :class-name $ str-spaced css/cluster css/gap8
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
                  {} $ :class-name $ str-spaced css/stack css/gap16
                  render-box "|Primary content"
                  render-box "|Supporting content"
                  div
                    {} $ :class-name $ str-spaced css/cluster css/gap8
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
                {} $ :class-name $ str-spaced css/responsive-grid css/gap16 style-demo-surface
                render-box |Overview
                render-box |Activity
                render-box |Members
                render-box |Usage
                render-box |Settings
              render-layout-section |Sidebar "|Place the navigation first and the main region last. `css/with-sidebar` assigns flexible bases and wraps the regions when the container becomes narrow." $ div
                {} $ :class-name $ str-spaced css/with-sidebar css/gap16 style-demo-surface
                div
                  {} $ :class-name $ str-spaced css/stack css/gap8 style-sidebar-pane
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
                  {} $ :class-name $ str-spaced css/stack css/gap8 style-content-pane
                  <> "|Main content"
                  render-box "|Flexible content region"
                  render-box "|Keeps min-width under control"
              render-layout-section "|Split Toolbar" "|Use `css/split-layout` for two-edge headers and toolbars. It wraps instead of overflowing, while nested `css/cluster` groups keep related actions together." $ div
                {} $ :class-name $ str-spaced css/split-layout css/gap16 style-demo-surface
                div
                  {} $ :class-name $ str-spaced css/stack css/gap8
                  <> "|Project members"
                  div
                    {} $ :class-name style-class-chip
                    <> "|24 active"
                div
                  {} $ :class-name $ str-spaced css/cluster css/gap8
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
                {} $ :class-name $ str-spaced css/reel css/gap16 style-demo-surface
                div
                  {} $ :class-name $ str-spaced style-demo-item style-reel-item
                  <> "|Preview 1"
                div
                  {} $ :class-name $ str-spaced style-demo-item style-reel-item
                  <> "|Preview 2"
                div
                  {} $ :class-name $ str-spaced style-demo-item style-reel-item
                  <> "|Preview 3"
                div
                  {} $ :class-name $ str-spaced style-demo-item style-reel-item
                  <> "|Preview 4"
              render-layout-section "|Cover + Container" "|Combine `css/cover` with `css/content-container` for focused screens such as sign-in, onboarding, empty states, and presentation stages. The preview shortens the cover height only for this documentation page." $ div
                {} $ :class-name $ str-spaced css/cover style-cover-preview
                div
                  {} $ :class-name $ str-spaced css/content-container css/stack css/gap8 style-cover-card
                  div
                    {} $ :class-name style-layout-title
                    <> "|Focused content"
                  <> "|Centered vertically, bounded horizontally."
                  div
                    {} $ :class-name $ str-spaced css/cluster css/gap8 css/row-center
                    div
                      {} $ :class-name style-class-chip
                      <> |Continue
                    div
                      {} $ :class-name style-class-chip
                      <> "|Learn more"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'render-box $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-box (label)
            div
              {} $ :class-name style-demo-item
              <> label
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String
        'render-layout-section $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-layout-section (title description demo)
            div
              {} $ :class-name style-layout-section
              div
                {} $ :class-name style-layout-title
                <> title
              comp-doc-block description
              , demo
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'respo.schema/Element
        'style-class-chip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-class-chip
            {} $ |& $ {} (:padding "|4px 8px") (:border-radius |999px)
              :background-color $ hsl 0 0 93
              :font-family ui/font-code
              :font-size 12
              :line-height |20px
          :examples $ []
          :schema $ :: 'String
        'style-content-pane $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-content-pane
            {} $ |& $ {} (:padding 16) (:border-radius |8px)
              :background-color $ hsl 165 45 94
              :color $ hsl 165 45 28
          :examples $ []
          :schema $ :: 'String
        'style-cover-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-cover-card
            {} $ |& $ {} (:padding "|20px 24px") (:border-radius |12px) (:background-color :white)
              :box-shadow $ str "|0 12px 36px " $ hsl 35 30 70 0.25
              :text-align :center
          :examples $ []
          :schema $ :: 'String
        'style-cover-preview $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-cover-preview
            {} $ |& $ {} (:min-height |240px!important) (:border-radius |12px)
              :background-color $ hsl 35 70 95
          :examples $ []
          :schema $ :: 'String
        'style-demo-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-item
            {} $ |& $ {} (:display :grid) (:place-items :center) (:min-height 72) (:padding 12) (:border-radius |8px)
              :background-color $ hsl 210 60 95
              :color $ hsl 210 55 32
              :font-family ui/font-code
              :font-size 12
              :border $ str "|1px solid " $ hsl 210 40 86
          :examples $ []
          :schema $ :: 'String
        'style-demo-surface $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-surface
            {} $ |& $ {} (:padding 16) (:border-radius |12px)
              :border $ str "|1px solid " $ hsl 0 0 88
              :background-color $ hsl 0 0 99
              :min-width 0
          :examples $ []
          :schema $ :: 'String
        'style-layout-hero $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-layout-hero
            {} $ |& $ {} (:padding "|24px 28px") (:border-radius |16px)
              :background-color $ hsl 210 60 97
              :border $ str "|1px solid " $ hsl 210 30 88
          :examples $ []
          :schema $ :: 'String
        'style-layout-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-layout-page
            {} $ |& $ {} (:padding-block "|24px 64px")
          :examples $ []
          :schema $ :: 'String
        'style-layout-section $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-layout-section
            {} $ |& $ {} (:margin-top 40)
          :examples $ []
          :schema $ :: 'String
        'style-layout-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-layout-title
            {} $ |& $ {} (:font-size 22) (:line-height |1.3) (:font-weight |600) (:margin-bottom 8)
          :examples $ []
          :schema $ :: 'String
        'style-reel-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-reel-item
            {} $ |& $ {} (:width 220) (:min-height 112)
          :examples $ []
          :schema $ :: 'String
        'style-sidebar-pane $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sidebar-pane
            {} $ |& $ {} (:padding 16) (:border-radius |8px)
              :background-color $ hsl 265 50 95
              :color $ hsl 265 45 32
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.layouts-page
          :require
            respo.core :refer $ defcomp div <>
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-ui.comp.docs :refer $ comp-doc-block
    'respo-ui.comp.sidebar $ %{} 'FileEntry
      :defs $ {}
        'comp-sidebar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sidebar (router-name)
            div
              {} $ :style $ {} (:width 160) (:margin-right 24)
              div
                {} $ :style $ {} (:text-align :right)
                div $ {} $ :style style-logo
              =< 0 16
              render-entry |index.html "|Respo UI" $ = :index router-name
              render-entry |layouts.html |Layouts $ = :layouts router-name
              render-entry |widgets.html |Widgets $ = :widgets router-name
              render-entry |fonts.html |Fonts $ = :fonts router-name
              render-entry |components.html |Components $ = :components router-name
              render-entry |utils.html |Utils $ = :utils router-name
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag
        'css-sidebar-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-sidebar-entry
            {}
              |$0 $ {} (:line-height |40px) (:font-size 20) (:cursor |pointer) (:font-weight |lighter) (:font-family ui/font-fancy) (:text-align :right) (:padding "|0 16px")
                :color $ hsl 0 0 20
              |$0:hover $ {} $ :background-color (hsl 0 0 97)
          :examples $ []
          :schema $ :: 'String
        'on-route $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-route (path-name)
            fn (e dispatch!) (dispatch! :router/nav path-name)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String
        'render-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-entry (path title selected?)
            div
              {} (:class-name css-sidebar-entry)
                :style $ if selected? $ {}
                  :background-color $ hsl 0 0 50 0.1
                :on-click $ on-route path
              <> title
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'Bool
        'style-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def style-logo
            {}
              :background-image "|url(https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png)"
              :width 80
              :height 80
              :background-size :cover
              :display :inline-block
              :vertical-align :text-bottom
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.sidebar
          :require
            respo.core :refer $ defcomp div <>
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
    'respo-ui.comp.widgets-page $ %{} 'FileEntry
      :defs $ {}
        'comp-tags-styles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-tags-styles ()
            div
              {} $ :class-name $ str-spaced css/row-middle css/gap8
              span $ {} (:inner-text |css/tag) (:class-name css/tag)
              span $ {} (:inner-text |css/tag-stroke) (:class-name css/tag-stroke)
              span $ {} (:inner-text |css/tag-outline) (:class-name css/tag-outline)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-widgets-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-widgets-page ()
            div ({})
              div ({}) (<> |Widgets)
              div ({}) (<> "|link to external pages" ui/text-label) (=< 0 16)
                a $ {} (:class-name css/link) (:inner-text |link)
              div ({}) (<> "|slight link without underscore" ui/text-label) (=< 0 16)
                a $ {} (:class-name css/link-slight) (:inner-text |link)
              =< 0 16
              div
                {} $ :style $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row) (:gap 16)
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
              =< 0 16
              div ({})
                input $ {} (:placeholder "|Some short text") (:class-name css/input)
                =< 16 0
                button
                  {} $ :class-name css/button
                  <> |Add
                =< 16 0
                <> |nothing ui/text-label
              =< 0 16
              div ({})
                select
                  {} $ :class-name css/select
                  option $ {} (:selected true) (:inner-text |Haskell)
                  option $ {} (:selected false) (:inner-text |Clojure)
                  option $ {} (:selected false) (:inner-text |OCaml)
              =< 0 16
              div ({})
                textarea $ {} (:placeholder "|Some long text") (:class-name css/textarea)
                =< 16 0
                button
                  {} $ :class-name css/button
                  <> |Add
              div $ {} $ :style
                {} (:height 1) (:width |50%)
                  :background-color $ hsl 0 0 90
                  :margin "|48px 12px"
              =< 0 16
              div ({})
                div ({}) (<> |Checkboxes ui/text-label)
                =< 0 4
                comp-checkbox false $ %some $ %{} respo-ui.schema/SwitchOptions
                  :label $ %some "|Option A"
                  :disabled $ %none
                  :on-change $ %none
                  :class-name $ %none
                  :style $ %none
                =< 0 4
                comp-checkbox true $ %some $ %{} respo-ui.schema/SwitchOptions
                  :label $ %some "|Option B (default checked)"
                  :disabled $ %none
                  :on-change $ %none
                  :class-name $ %none
                  :style $ %none
                =< 0 4
                comp-checkbox false $ %some $ %{} respo-ui.schema/SwitchOptions
                  :label $ %some "|Option C (disabled)"
                  :disabled $ %some true
                  :on-change $ %none
                  :class-name $ %none
                  :style $ %none
              =< 0 8
              comp-tags-styles
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.widgets-page
          :require
            respo.core :refer $ defcomp div input textarea button span select option a <> >>
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo-ui.comp :refer $ comp-checkbox
    'respo-ui.config $ %{} 'FileEntry
      :defs $ {}
        'dev? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dev?
            &= |dev $ option:unwrap-or (get-env |mode) |release
          :examples $ []
          :schema $ :: 'Bool
        'site $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def site
            {} (:title "|Respo UI") (:icon |http://cdn.tiye.me/logo/respo.png) (:storage-key |respo-ui)
          :examples $ []
          :schema $ :: 'Map 'Tag 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.config
    'respo-ui.core $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button
            {} (:min-width |80px) (:line-height |24px) (:border-radius |4px) (:font-size 14) (:text-align |center)
              :border $ str "|1px solid " $ hsl 220 100 76
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
          :schema $ :: 'Map 'Tag 'Dynamic
        'button-danger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button-danger
            merge-styles button $ {} (:color :white)
              :background-color $ hsl 6 100 60
              :border-color $ hsl 6 100 60
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'button-primary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button-primary
            merge-styles button $ {} (:color :white)
              :background-color $ hsl 220 80 60
              :border-color $ hsl 220 80 60
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def card
            {} $ :padding |16px
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'center $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def center
            {} (:display |flex) (:flex-direction |column) (:justify-content |center) (:align-items |center)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'checkbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def checkbox
            {}
              :accent-color $ hsl 220 80 60
              :width |16px
              :height |16px
              :cursor :pointer
              :vertical-align :middle
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'checkbox-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def checkbox-label
            {} (:display :flex) (:align-items :center) (:gap |8px) (:line-height |1) (:cursor :pointer) (:user-select :none)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'column $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def column
            {} (:display |flex) (:align-items |stretch) (:flex-direction |column)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'column-dispersive $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def column-dispersive
            {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |column)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'column-evenly $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def column-evenly
            {} (:display |flex) (:align-items |center) (:justify-content |space-evenly) (:flex-direction |column)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'column-parted $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def column-parted
            {} (:display :flex) (:align-items :stretch) (:justify-content :space-between) (:flex-direction :column)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'default-fonts $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def default-fonts "|Hind,Verdana,'Hiragino Sans GB','WenQuanYi Micro Hei','Microsoft Yahei',sans-serif"
          :examples $ []
          :schema $ :: 'String
        'expand $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def expand
            {} (:flex 1) (:overflow :auto)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'flex $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def flex
            {} $ :flex 1
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'font-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def font-code "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace"
          :examples $ []
          :schema $ :: 'String
        'font-fancy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def font-fancy "|Josefin Sans, Helvetica neue, Arial, sans-serif"
          :examples $ []
          :schema $ :: 'String
        'font-normal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def font-normal "|Hind, Helvatica, Arial, sans-serif"
          :examples $ []
          :schema $ :: 'String
        'fullscreen $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def fullscreen
            {} (:position |absolute) (:left 0) (:top 0) (:width |100%) (:height |100%) (:overflow :auto)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'global $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def global
            {} (:line-height |2) (:font-size |14px) (:font-family default-fonts)
              :color $ hsl 0 0 20
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'hsl $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hsl (h s l a)
            match a
              (:some alpha)
                str "|hsl(" h |, s |%, l |%, alpha "|)"
              (:none) (str "|hsl(" h |, s |%, l "|%)")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number 'Number 'Number $ :: 'Option 'Number
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def input
            merge-styles global $ {} (:border |none) (:outline |none)
              :border $ str "|1px solid " $ hsl 0 0 80
              :border-radius |4px
              :font-size |14px
              :padding "|4px 8px"
              :min-width |120px
              :line-height |16px
              :height 28
              :font-family default-fonts
              :vertical-align :top
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:text-decoration :underline) (:height 24) (:line-height |24px) (:margin 4) (:display :inline-block) (:cursor :pointer) (:user-select :none)
              :color $ hsl 200 100 76
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'merge-styles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn merge-styles (base overrides) (&merge base overrides)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] (:: 'Map 'Tag 'Dynamic) (:: 'Map 'Tag 'Dynamic)
            :return $ :: 'Map 'Tag 'Dynamic
        'row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row
            {} (:display |flex) (:align-items |stretch) (:flex-direction |row)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'row-center $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row-center
            {} (:display |flex) (:align-items |center) (:justify-content |center) (:flex-direction |row)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'row-dispersive $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row-dispersive
            {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |row)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'row-evenly $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row-evenly
            {} (:display |flex) (:align-items |center) (:flex-direction |row) (:justify-content |space-evenly)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'row-middle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row-middle
            {} (:display :flex) (:align-items :center) (:justify-content :flex-start) (:flex-direction :row)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'row-parted $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def row-parted
            {} (:display |flex) (:align-items |center) (:justify-content |space-between) (:flex-direction |row)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'select $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def select
            {} (:height 28) (:outline |none) (:font-size 14) (:min-width 120)
              :border $ str "|1px solid " $ hsl 0 0 80
              :padding "|0 4px"
              :border-radius |4px
              :font-family default-fonts
              :vertical-align :top
              :cursor :pointer
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tag
            {}
              :background-color $ hsl 200 80 60
              :line-height |21px
              :font-size 14
              :padding "|0px 8px"
              :border-radius 4
              :color :white
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'tag-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tag-outline
            merge-styles tag $ {} (:background-color :white)
              :border $ str "|1px solid " $ hsl 200 70 80
              :color $ hsl 200 30 40
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'tag-stroke $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tag-stroke
            merge-styles tag $ {}
              :background-color $ hsl 200 70 90
              :color $ hsl 200 20 40
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'text-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def text-label
            {} (:line-height |32px) (:font-size 14)
              :color $ hsl 0 0 20
              :display :inline-block
              :vertical-align :top
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'textarea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def textarea
            {} (:outline :none) (:border :none) (:font-size 14) (:font-family default-fonts)
              :border $ str "|1px solid " $ hsl 0 0 80
              :border-radius |4px
              :padding 8
              :min-width 240
              :vertical-align :top
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.core (:require)
    'respo-ui.css $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button
            {} (|$0 ui/button)
              |$0:hover $ {} $ :background-color (hsl 0 0 98)
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
          :examples $ []
          :schema $ :: 'String
        'button-danger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button-danger
            {} (|$0 ui/button-danger)
              |$0:hover $ {}
                :background-color $ hsl 6 100 64
                :border-color $ hsl 6 100 64
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
                :background-color $ hsl 6 100 68
                :border-color $ hsl 6 100 68
          :examples $ []
          :schema $ :: 'String
        'button-danger-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button-danger-outline
            {}
              |$0 $ ui/merge-styles ui/button $ {}
                :border-color $ hsl 6 100 60
                :color $ hsl 6 100 60
              |$0:hover $ {} $ :background-color (hsl 0 0 98)
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
          :examples $ []
          :schema $ :: 'String
        'button-primary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button-primary
            {} (|$0 ui/button-primary)
              |$0:hover $ {}
                :background-color $ hsl 220 80 64
                :border-color $ hsl 220 80 64
              |$0:active $ {} (:transform "|scale(1.02)") (:transition-duration |0ms)
                :background-color $ hsl 220 80 68
                :border-color $ hsl 220 80 68
          :examples $ []
          :schema $ :: 'String
        'card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle card
            {} $ |& $ {} (:padding |16px)
          :examples $ []
          :schema $ :: 'String
        'center $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle center
            {} $ |$0 ui/center
          :examples $ []
          :schema $ :: 'String
        'checkbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle checkbox
            {} (|$0 ui/checkbox)
              |$0:focus $ {} (:outline :none)
                :box-shadow $ str "|0 0 0 2px " $ hsl 220 80 80 (%some 0.3)
          :examples $ []
          :schema $ :: 'String
        'checkbox-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle checkbox-label
            {} $ |$0 ui/checkbox-label
          :examples $ []
          :schema $ :: 'String
        'cluster $ %{} 'CodeEntry
          :doc "|Wrapping inline group for tags, actions, and compact controls."
          :code $ quote $ defstyle cluster
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:min-width 0)
          :examples $ []
          :schema $ :: 'String
        'column $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle column
            {} $ |$0 ui/column
          :examples $ []
          :schema $ :: 'String
        'column-dispersive $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle column-dispersive
            {} $ |$0 ui/column-dispersive
          :examples $ []
          :schema $ :: 'String
        'column-evenly $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle column-evenly
            {} $ |$0 ui/column-evenly
          :examples $ []
          :schema $ :: 'String
        'column-parted $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle column-parted
            {} $ |$0 ui/column-parted
          :examples $ []
          :schema $ :: 'String
        'content-container $ %{} 'CodeEntry
          :doc "|Centered content container capped at 1120px with 16px viewport gutters."
          :code $ quote $ defstyle content-container
            {} $ |& $ {} (:width "|min(calc(100% - 32px), 1120px)") (:margin-inline :auto) (:min-width 0)
          :examples $ []
          :schema $ :: 'String
        'cover $ %{} 'CodeEntry
          :doc "|Viewport-height centered layout for empty states, authentication, and focused content."
          :code $ quote $ defstyle cover
            {} $ |& $ {} (:display :grid) (:place-items :center) (:min-height |100vh) (:min-width 0)
          :examples $ []
          :schema $ :: 'String
        'expand $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle expand
            {} $ |$0 ui/expand
          :examples $ []
          :schema $ :: 'String
        'flex $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle flex
            {} $ |$0 $ {} (:flex 1)
          :examples $ []
          :schema $ :: 'String
        'font-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-code
            {} $ |$0 $ {}
              :font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace"
          :examples $ []
          :schema $ :: 'String
        'font-code! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-code!
            {} $ |$0 $ {}
              :font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace !important"
          :examples $ []
          :schema $ :: 'String
        'font-fancy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-fancy
            {} $ |$0 $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif")
          :examples $ []
          :schema $ :: 'String
        'font-fancy! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-fancy!
            {} $ |& $ {}
              :font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif !important"
          :examples $ []
          :schema $ :: 'String
        'font-normal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-normal
            {} $ |& $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
          :schema $ :: 'String
        'font-normal! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-normal!
            {} $ |& $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
          :schema $ :: 'String
        'fullscreen $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle fullscreen
            {} $ |$0 $ {} (:position |absolute) (:left 0) (:top 0) (:width |100%) (:height |100%) (:overflow :auto)
          :examples $ []
          :schema $ :: 'String
        'gap16 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle gap16
            {} $ |& $ {} (:gap 16)
          :examples $ []
          :schema $ :: 'String
        'gap8 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle gap8
            {} $ |& $ {} (:gap 8)
          :examples $ []
          :schema $ :: 'String
        'global $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle global
            {} $ |$0 $ {} (:line-height |2) (:font-size |14px) (:font-family ui/default-fonts)
              :color $ hsl 0 0 20
          :examples $ []
          :schema $ :: 'String
        'hsl $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn hsl (h s l a)
            match a
              (:some alpha)
                str "|hsl(" h |, s |%, l |%, alpha "|)"
              (:none) (str "|hsl(" h |, s |%, l "|%)")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'Number 'Number 'Number $ :: 'Option 'Number
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle input
            {} (|$0 ui/input)
              |$0:focus $ {}
                :border $ str "|1px solid " $ hsl 200 50 75
                :box-shadow $ str "|0 0 4px " $ hsl 200 70 50 (%some 0.2)
          :examples $ []
          :schema $ :: 'String
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle link
            {} (|$0 ui/link)
              |$0:hover $ {} $ :color (hsl 200 100 56)
              |$0:active $ {}
                :color $ hsl 200 100 40
                :transform "|scale(1.04)"
          :examples $ []
          :schema $ :: 'String
        'link-slight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle link-slight
            {}
              |$0 $ {} (:text-decoration :none) (:height 24) (:line-height |24px) (:margin 4) (:display :inline-block) (:cursor :pointer) (:user-select :none)
                :color $ hsl 200 100 76
              |$0:hover $ {} $ :color (hsl 200 100 56)
              |$0:active $ {}
                :color $ hsl 200 100 40
                :transform "|scale(1.04)"
          :examples $ []
          :schema $ :: 'String
        'preset $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle preset
            {}
              |body $ {} (:margin 0) (:overscroll-behavior-x :none) (:overscroll-behavior-y :none)
              "|body *" $ {} $ :box-sizing :border-box
              |::-webkit-scrollbar $ {} (:width 4) (:height 4)
              |::-webkit-scrollbar-track $ {} $ :background-color (hsl 0 0 100)
              |::-webkit-scrollbar-thumb $ {} $ :background-color
                hsl 180 40 76 $ %some 0.8
              |::-webkit-scrollbar-corner $ {} $ :background-color :transparent
              |::-webkit-resizer $ {} $ :background-color :transparent
          :examples $ []
          :schema $ :: 'String
        'reel $ %{} 'CodeEntry
          :doc "|Horizontally scrollable row with proximity scroll snapping for cards and previews."
          :code $ quote $ defstyle reel
            {}
              |& $ {} (:display :flex) (:overflow-x :auto) (:overscroll-behavior-inline :contain) (:scroll-snap-type "|x proximity") (:min-width 0)
              "|& > *" $ {} (:flex "|0 0 auto") (:scroll-snap-align :start)
          :examples $ []
          :schema $ :: 'String
        'responsive-grid $ %{} 'CodeEntry
          :doc "|Auto-fit grid with a 240px preferred column width and safe narrow-screen fallback."
          :code $ quote $ defstyle responsive-grid
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(min(100%, 240px), 1fr))") (:align-items :stretch) (:min-width 0)
          :examples $ []
          :schema $ :: 'String
        'row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row
            {} $ |$0 ui/row
          :examples $ []
          :schema $ :: 'String
        'row-center $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row-center
            {} $ |$0 ui/row-center
          :examples $ []
          :schema $ :: 'String
        'row-dispersive $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row-dispersive
            {} $ |$0 ui/row-dispersive
          :examples $ []
          :schema $ :: 'String
        'row-evenly $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row-evenly
            {} $ |$0 ui/row-evenly
          :examples $ []
          :schema $ :: 'String
        'row-middle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row-middle
            {} $ |$0 ui/row-middle
          :examples $ []
          :schema $ :: 'String
        'row-parted $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle row-parted
            {} $ |$0 ui/row-parted
          :examples $ []
          :schema $ :: 'String
        'select $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle select
            {} (|$0 ui/select)
              |$0:focus $ {}
                :border $ str "|1px solid " $ hsl 200 50 75
                :box-shadow $ str "|0 0 4px " $ hsl 200 70 50 (%some 0.2)
          :examples $ []
          :schema $ :: 'String
        'split-layout $ %{} 'CodeEntry
          :doc "|Wrapping two-edge layout for headers, toolbars, and action rows."
          :code $ quote $ defstyle split-layout
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:justify-content :space-between) (:min-width 0)
          :examples $ []
          :schema $ :: 'String
        'stack $ %{} 'CodeEntry
          :doc "|Vertical layout primitive. Compose with gap8 or gap16 to control spacing."
          :code $ quote $ defstyle stack
            {} $ |& $ {} (:display :flex) (:flex-direction :column) (:min-width 0)
          :examples $ []
          :schema $ :: 'String
        'tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle tag
            {} $ :& ui/tag
          :examples $ []
          :schema $ :: 'String
        'tag-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle tag-outline
            {} $ :& ui/tag-outline
          :examples $ []
          :schema $ :: 'String
        'tag-stroke $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle tag-stroke
            {} $ :& ui/tag-stroke
          :examples $ []
          :schema $ :: 'String
        'text-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle text-label
            {} $ |$0 ui/text-label
          :examples $ []
          :schema $ :: 'String
        'textarea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle textarea
            {} (|$0 ui/textarea)
              |$0:focus $ {}
                :border $ str "|1px solid " $ hsl 200 50 75
                :box-shadow $ str "|0 0 4px " $ hsl 200 70 50 (%some 0.2)
          :examples $ []
          :schema $ :: 'String
        'with-sidebar $ %{} 'CodeEntry
          :doc "|Responsive two-region layout. The first child is the sidebar and the last child is the main content."
          :code $ quote $ defstyle with-sidebar
            {}
              |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :flex-start) (:min-width 0)
              "|& > :first-child" $ {} $ :flex "|1 1 220px"
              "|& > :last-child" $ {} (:flex "|999 1 480px") (:min-width "|min(100%, 480px)")
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.css
          :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
    'respo-ui.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defatom *store
            assoc schema/store :router $ initial-router
          :examples $ []
          :schema $ :: 'Ref 'respo-ui.schema/Store
        'BrowserLocation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait BrowserLocation (:hash 'String)
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
          :schema $ :: 'Trait
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ js/console.log |Dispatch: op
            reset! *store $ updater @*store op
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'get-mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-mount-target ()
            let
                document $ unsafe-coerce js/document respo.dom/DomDocument
              unsafe-coerce (document.query-selector |.app) respo.dom/DomElement
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'initial-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn initial-router ()
            let
                location $ unsafe-coerce js/location BrowserLocation
              parse-address (slice location.:hash 1) router/dict
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ []
            :features $ #{} :js-ffi
            :return $ :: 'Map 'Tag 'Dynamic
        'main! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn main! ()
            if config/dev? $ load-console-formatter!
            println "|Running mode:" $ if config/dev? |dev |release
            render-router!
            add-watch *store :changes $ fn (store prev) (render-app!)
            listen! router/dict dispatch! router/mode
            add-watch *store :router-changes $ fn (store prev) (render-router!)
            render-app!
            println "|App started!"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            do
              if (nil? build-errors)
                do (remove-watch *store :changes) (remove-watch *store :router-changes) (clear-cache!)
                  add-watch *store :changes $ fn (store prev) (render-app!)
                  add-watch *store :router-changes $ fn (store prev) (render-router!)
                  render-app!
                  hud! |ok~ |Ok
                  println "|Code updated!"
                hud! |error build-errors
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'render-app! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-app! ()
            render! (get-mount-target) (comp-container @*store) dispatch!
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'render-router! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-router! ()
            let
                store @*store
              do (render-url! store.:router router/dict router/mode) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op)
            match op
              (:states cursor s) (update-states store cursor s)
              (:router/nav t)
                assoc store :router $ parse-address t router/dict
              (:router/route r) (assoc store :router r)
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-ui.schema/Store)
            :args $ [] 'respo-ui.schema/Store 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.main
          :require
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
    'respo-ui.router $ %{} 'FileEntry
      :defs $ {}
        'dict $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dict
            []
              :: :index $ [] |index.html
              :: :dev $ [] |dev.html
              :: :fonts $ [] |fonts.html
              :: :widgets $ [] |widgets.html
              :: :layouts $ [] |layouts.html
              :: :components $ [] |components.html
              :: :utils $ [] |utils.html
          :examples $ []
          :schema $ :: 'Dynamic
        'mode $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def mode :hash
          :examples $ []
          :schema $ :: 'Tag
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.router
    'respo-ui.schema $ %{} 'FileEntry
      :defs $ {}
        'AttributesOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-attributes. Item keeps the collection item type visible to callers."
          :code $ quote $ defstruct AttributesOptions
            [] $ quote Item
            :items $ :: 'List $ quote Item
            :title $ :: 'Option 'String
            :item-width $ :: 'Option 'Number
            :item-height $ :: 'Option 'Number
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
            :css-item $ :: 'Option 'String
            :css-label $ :: 'Option 'String
            :css-value $ :: 'Option 'String
            :css-title $ :: 'Option 'String
          :examples $ [] $ quote
            %{} AttributesOptions
              :items $ []
              :title $ %none
              :item-width $ %none
              :item-height $ %none
              :class-name $ %none
              :style $ %none
              :css-item $ %none
              :css-label $ %none
              :css-value $ %none
              :css-title $ %none
          :schema $ :: 'Enum
        'AvatarOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-avatar image metadata, size, class name, and style."
          :code $ quote $ defstruct AvatarOptions
            :src $ :: 'Option 'String
            :alt $ :: 'Option 'String
            :title $ :: 'Option 'String
            :size $ :: 'Option 'Tag
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} AvatarOptions
              :src $ %none
              :alt $ %none
              :title $ %some "|Chen Yong"
              :size $ %some :large
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'ButtonOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-button: kind, native type, disabled state, click handler, class name, and style."
          :code $ quote $ defstruct ButtonOptions
            :kind $ :: 'Option 'Tag
            :type $ :: 'Option 'String
            :disabled $ :: 'Option 'Bool
            :on-click $ :: 'Option 'respo.schema/EventHandler
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} ButtonOptions
              :kind $ %some :primary
              :type $ %none
              :disabled $ %none
              :on-click $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'CardOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-card with a string title and generic footer content."
          :code $ quote $ defstruct CardOptions
            :title $ :: 'Option 'String
            :footer $ :: 'Option 'Dynamic
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} CardOptions
              :title $ %some |Summary
              :footer $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'DividerOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-divider, including vertical orientation."
          :code $ quote $ defstruct DividerOptions
            :vertical? $ :: 'Option 'Bool
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} DividerOptions
              :vertical? $ %some true
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'EmptyOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-empty with generic icon and action slots."
          :code $ quote $ defstruct EmptyOptions
            :icon $ :: 'Option 'Dynamic
            :description $ :: 'Option 'String
            :action $ :: 'Option 'Dynamic
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} EmptyOptions
              :icon $ %none
              :description $ %some "|Try another search term."
              :action $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'InputOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct InputOptions
            :type $ :: 'Option 'String
            :placeholder $ :: 'Option 'String
            :disabled $ :: 'Option 'Bool
            :on-input $ :: 'Option 'respo.schema/EventHandler
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'PageRoute $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum PageRoute (:index) (:widgets) (:layouts) (:fonts) (:components) (:utils) (:not-found 'String)
          :examples $ []
          :schema $ :: 'EnumDef
        'PresentationOptions $ %{} 'CodeEntry
          :doc "|Shared typed class-name and style options for presentation-only components."
          :code $ quote $ defstruct PresentationOptions
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} PresentationOptions
              :class-name $ %some |status
              :style $ %none
          :schema $ :: 'Enum
        'SelectOption $ %{} 'CodeEntry
          :doc "|A typed native select item with string value and label plus optional disabled state."
          :code $ quote $ defstruct SelectOption (:value 'String) (:label 'String)
            :disabled $ :: 'Option 'Bool
          :examples $ [] $ quote
            %{} SelectOption (:value |calcit) (:label |Calcit)
              :disabled $ %none
          :schema $ :: 'Enum
        'SelectOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-select. The Op generic preserves the operation accepted by the dispatcher passed to on-change."
          :code $ quote $ defstruct SelectOptions
            [] $ quote Op
            :disabled $ :: 'Option 'Bool
            :on-change $ :: 'Option $ :: 'Fn
              {}
                :args $ [] 'String $ :: 'Fn
                  {}
                    :args $ [] $ quote Op
                    :return 'Unit
                :return 'Unit
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} SelectOptions
              :disabled $ %some false
              :on-change $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'SkeletonOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-skeleton: label, kind, dimensions, class name, and style."
          :code $ quote $ defstruct SkeletonOptions
            :label $ :: 'Option 'String
            :kind $ :: 'Option 'Tag
            :width $ :: 'Option 'String
            :height $ :: 'Option 'String
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} SkeletonOptions
              :label $ %none
              :kind $ %some :text
              :width $ %some |60%
              :height $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'SpinnerOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-spinner, including its accessible label."
          :code $ quote $ defstruct SpinnerOptions
            :label $ :: 'Option 'String
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} SpinnerOptions
              :label $ %some "|Loading results"
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'Store $ %{} 'CodeEntry
          :doc "|Typed application store shape for the documentation site."
          :code $ quote $ defstruct Store
            :router $ :: 'Map 'Tag 'Dynamic
            :states $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'Enum
        'SwitchOptions $ %{} 'CodeEntry
          :doc "|Typed options shared by comp-switch and comp-checkbox. The Op generic preserves the dispatched operation type."
          :code $ quote $ defstruct SwitchOptions
            [] $ quote Op
            :label $ :: 'Option 'String
            :disabled $ :: 'Option 'Bool
            :on-change $ :: 'Option $ :: 'Fn
              {}
                :args $ [] 'Bool $ :: 'Fn
                  {}
                    :args $ [] $ quote Op
                    :return 'Unit
                :return 'Unit
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} SwitchOptions
              :label $ %some "|Compact mode"
              :disabled $ %none
              :on-change $ %none
              :class-name $ %none
              :style $ %none
          :schema $ :: 'Enum
        'TabRoute $ %{} 'CodeEntry
          :doc "|Normalized typed tab route carrying a generic value and string display label."
          :code $ quote $ defenum TabRoute
            [] $ quote Value
            :tab (quote Value) 'String
          :examples $ [] $ quote (%:: TabRoute :tab :book |Book)
          :schema $ :: 'Enum
        'TabsOptions $ %{} 'CodeEntry
          :doc "|Typed visual and selection options for comp-tabs with a generic selected value."
          :code $ quote $ defstruct TabsOptions
            [] $ quote Value
            :selected $ :: 'Option $ quote Value
            :vertical? $ :: 'Option 'Bool
            :width $ :: 'Option 'Number
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
            :tab-class-name $ :: 'Option 'String
            :tab-style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
            :selected-tab-style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            %{} TabsOptions
              :selected $ %some :book
              :vertical? $ %none
              :width $ %none
              :class-name $ %none
              :style $ %none
              :tab-class-name $ %none
              :tab-style $ %none
              :selected-tab-style $ %none
          :schema $ :: 'Enum
        'make-tabs-options $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn make-tabs-options (selected vertical? width style)
            %{} TabsOptions
              :selected $ %some selected
              :vertical? vertical?
              :width width
              :class-name $ %none
              :style style
              :tab-class-name $ %none
              :tab-style $ %none
              :selected-tab-style $ %none
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'Tag (:: 'Option 'Bool) (:: 'Option 'Number)
              :: 'Option $ :: 'Map 'Tag 'Dynamic
            :return $ :: 'respo-ui.schema/TabsOptions 'Tag
        'read-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defmacro read-field (value field)
            let
                option-value $ gensym |option-value
                field-value $ gensym |field-value
              quasiquote $ match ~value
                (:some ~option-value)
                  match (~field ~option-value)
                    (:some ~field-value) ~field-value
                    (:none) nil
                (:none) nil
          :examples $ [] $ quote
            let
                option-value |outer
              assert= |status $ read-field
                %some $ %{} PresentationOptions
                  :class-name $ %some |status
                  :style $ %none
                , :class-name
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] 'Syntax 'Syntax
        'route-from-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn route-from-router (store)
            let
                raw-route $ &list:nth
                  assert-type (:: 'List 'Dynamic) (:path store.:router)
                  , 0
              match raw-route
                (:index) (PageRoute :index)
                (:widgets) (PageRoute :widgets)
                (:layouts) (PageRoute :layouts)
                (:fonts) (PageRoute :fonts)
                (:components) (PageRoute :components)
                (:utils) (PageRoute :utils)
                (:404 path) (PageRoute :not-found path)
                _ $ PageRoute :index
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-ui.schema/PageRoute)
            :args $ [] 'respo-ui.schema/Store
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            %{} Store
              :router $ {}
              :states $ {}
          :examples $ []
          :schema $ :: 'Struct
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.schema
          :require
            respo-ui.router :refer $ dict
            respo-router.parser :refer $ parse-address
    'respo-ui.util $ %{} 'FileEntry
      :defs $ {}
        'EchoWindowHost $ %{} 'CodeEntry (:doc |)
          :code $ quote $ deftrait EchoWindowHost (:document 'respo.dom/DomDocument)
            .post-message! $ :: 'Fn $ {}
              :generics $ [] 'T
              :args $ [] 'T 'String 'String
              :return 'Unit
          :examples $ []
          :ffi $ {} (:backend :js) (:kind :external-object)
            :names $ {} $ :post-message! |postMessage
          :schema $ :: 'Trait
        'santinize-html-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn santinize-html-text (content)
            &str:replace
              &str:replace
                &str:replace (&str:replace content |& |&amp;) |< |&lt;
                , |> |&gt;
              , "| " |&nbsp;
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
          :tests $ []
            %{} 'TestEntry (:name |escapes-html-and-spaces)
              :code $ quote $ assert= |&lt;a&gt;&nbsp;b (santinize-html-text "|<a> b")
            %{} 'TestEntry (:name |escapes-html-entities)
              :code $ quote $ assert= |&amp;#60;script&amp;#62; (santinize-html-text |&#60;script&#62;)
        'tab-echo! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn tab-echo! (data format)
            do
              case-default (option:unwrap-or format :viewer)
                let
                    content $ format-cirru-edn $ :: :tab-echo data
                    app |https://r.tiye.me/Memkits/edn-tree-viewer/?mode=dev
                    w $ unsafe-coerce (js/window.open app |_target) EchoWindowHost
                  flipped js/setTimeout 20 $ fn () $ w.post-message! content |https://r.tiye.me
                  flipped js/setTimeout 200 $ fn () $ w.post-message! content |https://r.tiye.me
                :json $ let
                    content $ unsafe-coerce
                      js/JSON.stringify (to-js-data data) js/undefined 2
                      , 'String
                    w $ unsafe-coerce (js/window.open |about:blank |_blank) EchoWindowHost
                    document w.:document
                  respo.dom/set-inner-html! document.:body $ str |<pre> (santinize-html-text content) |</pre>
                :edn $ let
                    content $ format-cirru-edn data
                    w $ unsafe-coerce (js/window.open |about:blank |_blank) EchoWindowHost
                    document w.:document
                  respo.dom/set-inner-html! document.:body $ str |<pre> (santinize-html-text content) |</pre>
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic $ :: 'Option 'Tag
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.util
