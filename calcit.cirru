
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
        'comp-alert $ %{} 'CodeEntry
          :doc "|Render an accessible alert. Kinds are :info, :success, :warning, and :error; content may be text or a Respo node."
          :code $ quote $ defcomp comp-alert (kind content options)
            div
              {} (:role |alert)
                :class-name $ str-spaced style-alert
                  match kind (:success style-alert-success) (:warning style-alert-warning) (:error style-alert-error) (_ style-alert-info)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              if (literal? content)
                <> $ if (nil? content) | $ respo.util.format/scalar-attribute-text content
                , content
          :examples $ [] $ quote (comp-alert :success "|Changes saved")
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag 'Content $ :: 'calcit.core/Option 'respo-ui.schema/PresentationOptions
            :generics $ [] 'Content
        'comp-attributes $ %{} 'CodeEntry
          :doc "|Render a responsive label/value grid from AttributesOptions :items. Each item may carry :label, :value (text or a Respo node), and :span; options also set the title, item size, and CSS overrides."
          :code $ quote $ defcomp comp-attributes (options)
            let
                items $ :items options
                item-width $ .unwrap-or (:item-width options) 160
                item-height $ :item-height options
                title $ :title options
                ret $ list->
                  {}
                    :class-name $ .unwrap-or (:class-name options) |
                    :style $ ui/merge-styles
                      {} (:display :grid)
                        :grid-template-columns $ str "|repeat(auto-fit, minmax(" item-width "|px,1fr))"
                        :gap tokens/space-2
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
                            match (get item :span)
                              (:some sp)
                                if (non-nil? sp) (str-spaced |span sp) |
                              (:none) |
                          :class-name $ str-spaced style-item $ .unwrap-or (:css-item options) |
                        div
                          {} $ :class-name $ str-spaced css-item-label
                            .unwrap-or (:css-label options) |
                          <> $ match (get item :label)
                            (:some label-value)
                              if (nil? label-value) | $ respo.util.format/scalar-attribute-text label-value
                            (:none) |
                        div
                          {} $ :class-name $ .unwrap-or (:css-value options) |
                          match (get item :value)
                            (:some v)
                              if (literal? v)
                                <> $ if (nil? v) | $ respo.util.format/scalar-attribute-text v
                                , v
                            (:none) nil
              if (option:some? title)
                div ({})
                  div
                    {} $ :class-name $ str-spaced style-attributes-title
                      .unwrap-or (:css-title options) |
                    <> $ if
                      nil? $ option:unwrap-or title |
                      , | $ respo.util.format/scalar-attribute-text (option:unwrap-or title |)
                  , ret
                , ret
          :examples $ [] $ quote
            comp-attributes $ respo-ui.schema/AttributesOptions :title (Option :some |Project) :items $ [] (:: :attr |Name |Respo) (:: :attr-span |Description "|A virtual DOM library in Calcit" 2)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'respo-ui.schema/AttributesOptions 'Item
            :generics $ [] 'Item
          :tests $ [] $ %{} 'TestEntry (:name |absence-migration-attributes)
            :code $ quote $ let
                render $ fn (items)
                  hint-fn $ {}
                    :generics $ [] 'Item
                    :args $ [] $ :: 'List 'Item
                    :return 'String
                  respo.render.html/make-string $ comp-attributes $ respo-ui.schema/AttributesOptions :items items
                absent-html $ render $ [] (&{})
                nil-html $ render $ [] (&{} :span nil :label nil :value nil)
                mixed-html $ render $ [] (&{} :span 0 :label 0 :value false) (&{} :span 2 :label |empty :value |) (&{} :span false :label false :value 0)
                child-html $ render $ []
                  &{} :label |child :value $ respo.core/<> |child-boundary
              assert= absent-html nil-html
              assert= true $ .includes? mixed-html "|span 0"
              assert= true $ .includes? mixed-html "|span 2"
              assert= true $ .includes? mixed-html "|span false"
              assert= true $ .includes? mixed-html |>false<
              assert= true $ .includes? mixed-html |>0<
              assert= false $ .includes? mixed-html |>nil<
              assert= true $ .includes? child-html |child-boundary
            :tags $ #{} :js-only :migration
        'comp-avatar $ %{} 'CodeEntry
          :doc "|Render initials or an image avatar. Options: :src, :alt, :title, :size (:small or :large), :class-name, and :style."
          :code $ quote $ defcomp comp-avatar (text options)
            div
              {}
                :title $ respo-ui.schema/read-field options :title
                :class-name $ str-spaced style-avatar
                  match (respo-ui.schema/read-field options :size) (:small style-avatar-small) (:large style-avatar-large) (_ |)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              if
                non-nil? $ respo-ui.schema/read-field options :src
                create-element :img $ {}
                  :src $ respo-ui.schema/read-field options :src
                  :alt $ either (respo-ui.schema/read-field options :alt) (str text)
                  :class-name style-avatar-image
                <> text
          :examples $ [] $ quote
            comp-avatar |CY $ Option :some $ respo-ui.schema/AvatarOptions :title (Option :some "|Chen Yong") :size (Option :some :large)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option 'respo-ui.schema/AvatarOptions
        'comp-badge $ %{} 'CodeEntry
          :doc "|Render a small count or status badge. Options: :kind (:info, :success, :warning, :error), :dot? (render a dot and expose content as aria-label), :class-name, and :style."
          :code $ quote $ defcomp comp-badge (content options)
            let
                dot? $ or (respo-ui.schema/read-field options :dot?) false
              span
                {}
                  :class-name $ str-spaced style-badge
                    match
                      either (respo-ui.schema/read-field options :kind) :neutral
                      :info style-badge-info
                      :success style-badge-success
                      :warning style-badge-warning
                      :error style-badge-error
                      _ |
                    if dot? style-badge-dot
                    respo-ui.schema/read-field options :class-name
                  :role $ if dot? |img
                  :aria-label $ if dot? content
                  :style $ respo-ui.schema/read-field options :style
                if dot? nil $ <> content
          :examples $ [] $ quote
            comp-badge |12 $ Option :some $ respo-ui.schema/BadgeOptions :kind (Option :some :error)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option 'respo-ui.schema/BadgeOptions
          :tests $ [] $ %{} 'TestEntry (:name |render-options)
            :code $ quote $ let
                count-html $ respo.render.html/make-string $ comp-badge |12
                  Option :some $ respo-ui.schema/BadgeOptions :kind $ Option :some :success
                dot-html $ respo.render.html/make-string $ comp-badge "|3 unread"
                  Option :some $ respo-ui.schema/BadgeOptions :dot? $ Option :some true
                plain-html $ respo.render.html/make-string $ comp-badge |new (Option :none)
              assert= true $ .includes? count-html |>12<
              assert= true $ .includes? count-html |style-badge-success
              assert= true $ .includes? dot-html |style-badge-dot
              assert= true $ .includes? dot-html "|aria-label=\"3 unread\""
              assert= true $ .includes? dot-html "|role=\"img\""
              assert= false $ .includes? dot-html "|>3 unread<"
              assert= true $ .includes? plain-html |>new<
            :tags $ #{} :js-only
        'comp-breadcrumb $ %{} 'CodeEntry
          :doc "|Render a breadcrumb trail. Items with :href render links; the last item is marked aria-current=page. Options: :separator (default /), :class-name, and :style."
          :code $ quote $ defcomp comp-breadcrumb (items options)
            let
                separator $ either (respo-ui.schema/read-field options :separator) |/
                last-idx $ dec $ count items
              create-element :nav
                {} (:aria-label |Breadcrumb)
                  :class-name $ str-spaced style-breadcrumb $ respo-ui.schema/read-field options :class-name
                  :style $ respo-ui.schema/read-field options :style
                create-list-element :ol
                  {} $ :class-name style-breadcrumb-list
                  -> items $ map-indexed $ fn (idx item)
                    [] (str idx)
                      create-element :li
                        {} $ :class-name style-breadcrumb-item
                        if (= idx last-idx)
                          span $ {} (:aria-current |page) (:class-name style-breadcrumb-current) (:inner-text item.:label)
                          match item.:href
                            (:some href)
                              a $ {} (:href href) (:class-name style-breadcrumb-link) (:inner-text item.:label)
                            (:none)
                              span $ {} $ :inner-text item.:label
                        if (< idx last-idx)
                          span $ {} (:class-name style-breadcrumb-separator) (:aria-hidden |true) (:inner-text separator)
          :examples $ [] $ quote
            comp-breadcrumb
              []
                respo-ui.schema/BreadcrumbItem :label |Home :href $ Option :some |#/
                respo-ui.schema/BreadcrumbItem :label |Components
              Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'List 'respo-ui.schema/BreadcrumbItem) (:: 'calcit.core/Option 'respo-ui.schema/BreadcrumbOptions)
          :tests $ [] $ %{} 'TestEntry (:name |render-links)
            :code $ quote $ let
                html $ respo.render.html/make-string $ comp-breadcrumb
                  []
                    respo-ui.schema/BreadcrumbItem :label |Home :href $ Option :some |#/
                    respo-ui.schema/BreadcrumbItem :label |Docs
                    respo-ui.schema/BreadcrumbItem :label |Badge :href $ Option :some |#/badge
                  Option :some $ respo-ui.schema/BreadcrumbOptions :separator $ Option :some "|›"
              assert= true $ .includes? html "|href=\"#/\""
              assert= true $ .includes? html |>Docs<
              assert= false $ .includes? html "|href=\"#/badge\""
              assert= true $ .includes? html "|aria-current=\"page\""
              assert= true $ .includes? html "|>›<"
            :tags $ #{} :js-only
        'comp-button $ %{} 'CodeEntry
          :doc "|Render a native button with Respo UI variants. Options: :kind (:primary, :danger, :danger-outline), :type, :disabled, :on-click, :class-name, :style."
          :code $ quote $ defcomp comp-button (content options)
            button
              {}
                :type $ either (respo-ui.schema/read-field options :type) |button
                :disabled $ or (respo-ui.schema/read-field options :disabled) false
                :class-name $ str-spaced
                  match (respo-ui.schema/read-field options :kind) (:primary css/button-primary) (:danger css/button-danger) (:danger-outline css/button-danger-outline) (_ css/button)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
                :on-click $ respo-ui.schema/read-field options :on-click
              if (literal? content)
                <> $ if (nil? content) | $ respo.util.format/scalar-attribute-text content
                , content
          :examples $ [] $ quote
            comp-button |Save $ Option :some $ respo-ui.schema/ButtonOptions :kind (Option :some :primary)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Content $ :: 'calcit.core/Option 'respo-ui.schema/ButtonOptions
            :generics $ [] 'Content
        'comp-card $ %{} 'CodeEntry
          :doc "|Render a composable card. Content may be text or a Respo node; options support :title, :footer, :class-name, and :style."
          :code $ quote $ defcomp comp-card (content options)
            div
              {}
                :class-name $ str-spaced style-card $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              when
                non-nil? $ respo-ui.schema/read-field options :title
                div
                  {} $ :class-name style-card-title
                  <> $ if
                    nil? $ either (respo-ui.schema/read-field options :title) |
                    , | $ respo.util.format/scalar-attribute-text
                      either (respo-ui.schema/read-field options :title) |
              div
                {} $ :class-name style-card-body
                if (literal? content)
                  <> $ if (nil? content) | $ respo.util.format/scalar-attribute-text content
                  , content
              when
                non-nil? $ respo-ui.schema/read-field options :footer
                div
                  {} $ :class-name style-card-footer
                  respo-ui.schema/read-field options :footer
          :examples $ [] $ quote
            comp-card |Content $ Option :some $ respo-ui.schema/CardOptions :title (Option :some |Summary)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Content $ :: 'calcit.core/Option 'respo-ui.schema/CardOptions
            :generics $ [] 'Content
        'comp-catoptric-text $ %{} 'CodeEntry
          :doc "|by \"catoptric text\" I mean text added with CSS content, thus unsearchable from browser search or select. The text can still be grabbed from DOM tree though."
          :code $ quote $ defcomp comp-catoptric-text (text options)
            [] (effect-dataset-text text)
              span $ {}
                :class-name $ str-spaced style-catoptric $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
          :examples $ [] $ quote
            comp-catoptric-text |Respo $ Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option 'respo-ui.schema/PresentationOptions
        'comp-checkbox $ %{} 'CodeEntry
          :doc "|Render a controlled native checkbox. Shares SwitchOptions with comp-switch: :label, :disabled, :on-change (receives the next Bool and d!), :class-name, and :style."
          :code $ quote $ defcomp comp-checkbox (checked options) (assert-type checked 'Bool)
            create-element :label
              {}
                :class-name $ str-spaced css/checkbox-label $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              input $ {} (:type |checkbox) (:class-name css/checkbox) (:checked checked)
                :disabled $ or (respo-ui.schema/read-field options :disabled) false
                :on $ {} $ :input
                  fn (e d!)
                    hint-fn $ {}
                      :args $ [] (:: 'Map 'Tag 'Dynamic)
                        :: 'Fn $ {}
                          :args $ [] 'Op
                          :return 'Unit
                      :return 'Unit
                    let
                        on-change $ respo-ui.schema/read-field options :on-change
                      when (non-nil? on-change)
                        on-change
                          match
                            try-decode-map-as
                              match (get e :checked)
                                (:some checked-value) (or checked-value false)
                                (:none) false
                              , 'Bool
                            (:ok checked-value) checked-value
                            (:err message) (raise message)
                          , d!
                    , &unit
              if
                non-nil? $ respo-ui.schema/read-field options :label
                <> $ str $ respo-ui.schema/read-field options :label
          :examples $ [] $ quote
            comp-checkbox true $ Option :some $ respo-ui.schema/SwitchOptions :label (Option :some "|Remember me")
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool $ :: 'calcit.core/Option (:: 'respo-ui.schema/SwitchOptions 'Op)
            :generics $ [] 'Op
        'comp-cirru-snippet $ %{} 'CodeEntry
          :doc "|Render Cirru code with syntax highlighting. Options: :class-name and :style."
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
          :examples $ [] $ quote
            comp-cirru-snippet "|defn f (x) x" $ Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option 'respo-ui.schema/PresentationOptions
        'comp-close $ %{} 'CodeEntry
          :doc "|Render a clickable close (✕) mark. ButtonOptions :on-click handles the click; :class-name and :style adjust presentation."
          :code $ quote $ defcomp comp-close (options)
            span $ {} (:inner-text "|✕")
              :style $ respo-ui.schema/read-field options :style
              :class-name $ str-spaced style-close $ respo-ui.schema/read-field options :class-name
              :on-click $ respo-ui.schema/read-field options :on-click
          :examples $ [] $ quote
            comp-close $ Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'calcit.core/Option 'respo-ui.schema/ButtonOptions
        'comp-collapse $ %{} 'CodeEntry
          :doc "|Render a native details/summary disclosure. Content may be text or a Respo node. Options: :open? (initial state), :name (details sharing a name open one at a time), :class-name, and :style."
          :code $ quote $ defcomp comp-collapse (title content options)
            create-element :details
              {}
                :open $ respo-ui.schema/read-field options :open?
                :name $ respo-ui.schema/read-field options :name
                :class-name $ str-spaced style-collapse $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              create-element :summary
                {} $ :class-name style-collapse-summary
                <> title
              div
                {} $ :class-name style-collapse-body
                if (literal? content)
                  <> $ respo.util.format/scalar-attribute-text content
                  , content
          :examples $ [] $ quote
            comp-collapse "|What is Respo?" "|A virtual DOM library in Calcit." $ Option :some $ respo-ui.schema/CollapseOptions :open? (Option :some true)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'Content $ :: 'calcit.core/Option 'respo-ui.schema/CollapseOptions
            :generics $ [] 'Content
          :tests $ [] $ %{} 'TestEntry (:name |render-disclosure)
            :code $ quote $ let
                html $ respo.render.html/make-string $ comp-collapse |Title |Body
                  Option :some $ respo-ui.schema/CollapseOptions :open? (Option :some true) :name $ Option :some |faq
                closed $ respo.render.html/make-string $ comp-collapse |Title (respo.core/<> |Node) (Option :none)
              assert= true $ .includes? html |<details
              assert= true $ .includes? html "|name=\"faq\""
              assert= true $ .includes? html "|open=\"true\""
              assert= true $ .includes? html |>Title<
              assert= true $ .includes? html |>Body<
              assert= false $ .includes? closed |open=
              assert= true $ .includes? closed |>Node<
            :tags $ #{} :js-only
        'comp-copy $ %{} 'CodeEntry
          :doc "|Render a copy icon. Clicking copies code to the clipboard, unless a handler is passed, which then replaces the default copy."
          :code $ quote $ defcomp comp-copy (code f)
            div
              {}
                :class-name $ str-spaced style-copy-outline style-copy-container
                :on-click $ match f
                  (:some handler) handler
                  (:none) (copy-handler code)
              div $ {} (:class-name style-copy-outline)
                :style $ {} (:top -5) (:right -2)
          :examples $ [] $ quote
            comp-copy "|caps --ci" $ Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option 'respo.schema/EventHandler
        'comp-divider $ %{} 'CodeEntry
          :doc "|Render a horizontal divider, or a vertical divider with :vertical? true."
          :code $ quote $ defcomp comp-divider (options)
            div $ {} (:role |separator)
              :class-name $ str-spaced
                if (respo-ui.schema/read-field options :vertical?) style-divider-vertical style-divider
                respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
          :examples $ [] $ quote
            comp-divider $ Option :some $ respo-ui.schema/DividerOptions :vertical? (Option :some true)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'calcit.core/Option 'respo-ui.schema/DividerOptions
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
                  non-nil? $ respo-ui.schema/read-field options :icon
                  respo-ui.schema/read-field options :icon
                  <> "|◇"
              div
                {} $ :class-name style-empty-title
                <> title
              when
                non-nil? $ respo-ui.schema/read-field options :description
                div
                  {} $ :class-name style-empty-description
                  <> $ either (respo-ui.schema/read-field options :description) |
              when
                non-nil? $ respo-ui.schema/read-field options :action
                div ({}) (respo-ui.schema/read-field options :action)
          :examples $ [] $ quote
            comp-empty "|No results" $ Option :some $ respo-ui.schema/EmptyOptions :description (Option :some "|Try another search term.")
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option 'respo-ui.schema/EmptyOptions
        'comp-field $ %{} 'CodeEntry
          :doc "|Wrap a form control with a label, optional description, and error message. Options: :for (id of the labelled control), :description, :error (rendered with role=alert), :required?, :class-name, and :style."
          :code $ quote $ defcomp comp-field (label control options)
            div
              {}
                :class-name $ str-spaced style-field $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              create-element :label
                {} (:class-name style-field-label)
                  :for $ respo-ui.schema/read-field options :for
                <> label
                if (respo-ui.schema/read-field options :required?)
                  span $ {} (:class-name style-field-required) (:aria-hidden |true) (:inner-text |*)
              , control
                when
                  non-nil? $ respo-ui.schema/read-field options :description
                  div
                    {} $ :class-name style-field-description
                    <> $ either (respo-ui.schema/read-field options :description) |
                when
                  non-nil? $ respo-ui.schema/read-field options :error
                  div
                    {} (:class-name style-field-error) (:role |alert)
                    <> $ either (respo-ui.schema/read-field options :error) |
          :examples $ [] $ quote
            comp-field |Email
              comp-input | $ Option :some $ respo-ui.schema/InputOptions :placeholder (Option :some |you@example.com)
              Option :some $ respo-ui.schema/FieldOptions :description (Option :some "|Used for notifications.") :required? $ Option :some true
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String 'Control $ :: 'calcit.core/Option 'respo-ui.schema/FieldOptions
            :generics $ [] 'Control
          :tests $ [] $ %{} 'TestEntry (:name |render-options)
            :code $ quote $ let
                control $ comp-input | $ Option :none
                html $ respo.render.html/make-string $ comp-field |Email control
                  Option :some $ respo-ui.schema/FieldOptions :for (Option :some |email) :description (Option :some |Hint) :error (Option :some |Invalid) :required? $ Option :some true
                plain $ respo.render.html/make-string $ comp-field |Name control (Option :none)
              assert= true $ .includes? html "|for=\"email\""
              assert= true $ .includes? html |>Hint<
              assert= true $ .includes? html "|role=\"alert\""
              assert= true $ .includes? html |>Invalid<
              assert= true $ .includes? html |style-field-required
              assert= true $ .includes? plain |>Name<
              assert= false $ .includes? plain "|role=\"alert\""
              assert= false $ .includes? plain |style-field-required
            :tags $ #{} :js-only
        'comp-input $ %{} 'CodeEntry
          :doc "|Render a controlled text input. Pass the current value and optional :type, :placeholder, :disabled, :on-input, :class-name, and :style."
          :code $ quote $ defcomp comp-input (value options)
            input $ {}
              :id $ respo-ui.schema/read-field options :id
              :type $ either (respo-ui.schema/read-field options :type) |text
              :value value
              :placeholder $ respo-ui.schema/read-field options :placeholder
              :disabled $ or (respo-ui.schema/read-field options :disabled) false
              :class-name $ str-spaced css/input $ respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
              :on-input $ input-handler options
          :examples $ [] $ quote
            comp-input |query $ Option :some $ respo-ui.schema/InputOptions :placeholder (Option :some |Search)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option (:: 'respo-ui.schema/InputOptions 'Op)
            :generics $ [] 'Op
        'comp-kbd $ %{} 'CodeEntry
          :doc "|Render a keyboard shortcut from key names, joined with +. Options: :class-name and :style."
          :code $ quote $ defcomp comp-kbd (key-names options)
            create-list-element :span
              {}
                :class-name $ str-spaced style-kbd-group $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              -> key-names $ map-indexed $ fn (idx key)
                [] (str idx)
                  if (= idx 0)
                    create-element :kbd $ {} (:class-name style-kbd) (:inner-text key)
                    span ({})
                      span $ {} (:class-name style-kbd-plus) (:aria-hidden |true) (:inner-text |+)
                      create-element :kbd $ {} (:class-name style-kbd) (:inner-text key)
          :examples $ [] $ quote
            comp-kbd ([] |Ctrl |K) (Option :none)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'List 'String) (:: 'calcit.core/Option 'respo-ui.schema/PresentationOptions)
          :tests $ [] $ %{} 'TestEntry (:name |render-keys)
            :code $ quote $ let
                html $ respo.render.html/make-string $ comp-kbd ([] |Ctrl |Shift |P) (Option :none)
              assert= true $ .includes? html |>Ctrl</kbd>
              assert= true $ .includes? html |>P</kbd>
              assert= 2 $ dec $ count (.split html |>+<)
            :tags $ #{} :js-only
        'comp-pagination $ %{} 'CodeEntry
          :doc "|Render page buttons for a 1-based page out of total pages, collapsing distant pages into gaps. Options: :siblings (pages beside the current one, default 1), :on-change (receives the next page and d!), :class-name, and :style."
          :code $ quote $ defcomp comp-pagination (page total options)
            let
                total $ &max 0 total
                page $ &max 1 $ &min page (&max 1 total)
                siblings $ &max 0 $ match options
                  (:some o) (option:unwrap-or o.:siblings 1)
                  (:none) 1
              create-list-element :nav
                {} (:aria-label |Pagination)
                  :class-name $ str-spaced style-pagination $ respo-ui.schema/read-field options :class-name
                  :style $ respo-ui.schema/read-field options :style
                concat
                  [] $ [] |prev $ render-page-button page total (dec page) "|‹" "|Previous page" options
                  -> (pagination-pages page total siblings)
                    map-indexed $ fn (idx n)
                      if (= n 0)
                        [] (str |gap- idx)
                          span $ {} (:class-name style-pagination-gap) (:aria-hidden |true) (:inner-text "|…")
                        [] (str |page- n)
                          render-page-button page total n (str n) (str "|Page " n) options
                  [] $ [] |next $ render-page-button page total (inc page) "|›" "|Next page" options
          :examples $ [] $ quote
            comp-pagination 5 20 $ Option :some $ respo-ui.schema/PaginationOptions :siblings (Option :some 1)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Number 'Number $ :: 'calcit.core/Option (:: 'respo-ui.schema/PaginationOptions 'Op)
            :generics $ [] 'Op
          :tests $ []
            %{} 'TestEntry (:name |render-and-current)
              :code $ quote $ let
                  html $ respo.render.html/make-string $ comp-pagination 5 10 (Option :none)
                  first-html $ respo.render.html/make-string $ comp-pagination 1 3 (Option :none)
                assert= true $ .includes? html "|aria-label=\"Pagination\""
                assert= true $ .includes? html "|aria-current=\"page\""
                assert= true $ .includes? html |style-pagination-current
                assert= true $ .includes? html "|…"
                assert= true $ .includes? html "|aria-label=\"Page 10\""
                assert= false $ .includes? html "|disabled=\"true\""
                assert= true $ .includes? first-html "|disabled=\"true\""
              :tags $ #{} :js-only
            %{} 'TestEntry (:name |clamps-out-of-range)
              :code $ quote $ let
                  past-end $ respo.render.html/make-string $ comp-pagination 50 20 (Option :none)
                  no-pages $ respo.render.html/make-string $ comp-pagination 1 -3 (Option :none)
                  narrow $ respo.render.html/make-string $ comp-pagination 4 9
                    Option :some $ respo-ui.schema/PaginationOptions :siblings $ Option :some -1
                assert= true $ .includes? past-end "|aria-current=\"page\""
                assert= true $ .includes? no-pages "|aria-label=\"Pagination\""
                assert= true $ .includes? narrow "|aria-current=\"page\""
              :tags $ #{} :js-only
        'comp-placeholder $ %{} 'CodeEntry
          :doc "|Render a muted placeholder text block for empty areas."
          :code $ quote $ defcomp comp-placeholder (text)
            div
              {} $ :class-name css-placeholder
              <> text
          :examples $ [] $ quote (comp-placeholder "|Nothing here yet")
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
            :args $ [] 'Number $ :: 'calcit.core/Option 'respo-ui.schema/PresentationOptions
        'comp-radio-group $ %{} 'CodeEntry
          :doc "|Render a controlled radio group from SelectOption items. Options: :name, :label (group aria-label), :vertical?, :disabled, :on-change (receives the picked value and d!), :class-name, and :style."
          :code $ quote $ defcomp comp-radio-group (value items options)
            create-list-element :div
              {} (:role |radiogroup)
                :aria-label $ respo-ui.schema/read-field options :label
                :class-name $ str-spaced style-radio-group
                  if (respo-ui.schema/read-field options :vertical?) style-radio-group-vertical
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              -> items $ map $ fn (item)
                let
                    item-value item.:value
                    disabled? $ or (respo-ui.schema/read-field options :disabled) (option:unwrap-or item.:disabled false)
                  [] item-value $ create-element :label
                    {} $ :class-name $ str-spaced style-radio-item (if disabled? style-control-disabled)
                    input $ {} (:type |radio) (:value item-value)
                      :name $ respo-ui.schema/read-field options :name
                      :checked $ = value item-value
                      :disabled disabled?
                      :class-name style-radio-input
                      :on-change $ fn (e d!)
                        hint-fn $ {}
                          :args $ [] (:: 'Map 'Tag 'Dynamic)
                            :: 'Fn $ {}
                              :args $ [] 'Op
                              :return 'Unit
                          :return 'Unit
                        let
                            on-change $ respo-ui.schema/read-field options :on-change
                          when (non-nil? on-change) (on-change item-value d!)
                        , &unit
                    span ({}) (<> item.:label)
          :examples $ [] $ quote
            comp-radio-group |calcit
              [] (respo-ui.schema/SelectOption :value |calcit :label |Calcit) (respo-ui.schema/SelectOption :value |clojure :label |Clojure)
              Option :some $ respo-ui.schema/RadioGroupOptions :name (Option :some |language) :label $ Option :some |Language
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String (:: 'List 'respo-ui.schema/SelectOption)
              :: 'calcit.core/Option $ :: 'respo-ui.schema/RadioGroupOptions 'Op
            :generics $ [] 'Op
          :tests $ [] $ %{} 'TestEntry (:name |render-options)
            :code $ quote $ let
                items $ [] (respo-ui.schema/SelectOption :value |a :label |Alpha)
                  respo-ui.schema/SelectOption :value |b :label |Beta :disabled $ Option :some true
                html $ respo.render.html/make-string $ comp-radio-group |a items
                  Option :some $ respo-ui.schema/RadioGroupOptions :name (Option :some |pick) :label (Option :some "|Pick one") :vertical? $ Option :some true
                plain $ respo.render.html/make-string $ comp-radio-group |b items (Option :none)
              assert= true $ .includes? html "|role=\"radiogroup\""
              assert= true $ .includes? html "|aria-label=\"Pick one\""
              assert= true $ .includes? html "|name=\"pick\""
              assert= true $ .includes? html |style-radio-group-vertical
              assert= true $ .includes? html |>Alpha<
              assert= true $ .includes? html |style-control-disabled
              assert= false $ .includes? plain |style-radio-group-vertical
              assert= false $ .includes? plain |name=
            :tags $ #{} :js-only
        'comp-select $ %{} 'CodeEntry
          :doc "|Render a controlled native select from SelectOption items, each with :value, :label, and optional :disabled. Options: :disabled, :on-change (receives the next value and d!), :class-name, and :style."
          :code $ quote $ defcomp comp-select (value items options)
            create-list-element :select
              {} (:value value)
                :id $ respo-ui.schema/read-field options :id
                :disabled $ or (respo-ui.schema/read-field options :disabled) false
                :class-name $ str-spaced css/select $ respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
                :on-change $ fn (e d!)
                  hint-fn $ {}
                    :args $ [] (:: 'Map 'Tag 'Dynamic)
                      :: 'Fn $ {}
                        :args $ [] 'Op
                        :return 'Unit
                    :return 'Unit
                  let
                      on-change $ respo-ui.schema/read-field options :on-change
                    when (non-nil? on-change)
                      on-change
                        match (get e :value)
                          (:some event-value) (str event-value)
                          (:none) |
                        fn (op)
                          hint-fn $ {}
                            :args $ [] 'Op
                            :return 'Unit
                          d! op
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
              [] $ respo-ui.schema/SelectOption :value |calcit :label |Calcit
              Option :some $ respo-ui.schema/SelectOptions
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String (:: 'List 'respo-ui.schema/SelectOption)
              :: 'calcit.core/Option $ :: 'respo-ui.schema/SelectOptions 'Op
            :generics $ [] 'Op
        'comp-skeleton $ %{} 'CodeEntry
          :doc "|Render an animated loading placeholder. Unlabeled skeletons are decorative; pass :label to expose role=status. Options: :kind (:text or :circle), :width, :height, :class-name, and :style."
          :code $ quote $ defcomp comp-skeleton (options)
            div $ {}
              :role $ if
                non-nil? $ respo-ui.schema/read-field options :label
                , |status |
              :aria-label $ respo-ui.schema/read-field options :label
              :aria-hidden $ nil? $ respo-ui.schema/read-field options :label
              :class-name $ str-spaced style-skeleton
                if
                  = :circle $ either (respo-ui.schema/read-field options :kind) :text
                  , style-skeleton-circle style-skeleton-text
                respo-ui.schema/read-field options :class-name
              :style $ ui/merge-styles
                {}
                  :width $ respo-ui.schema/read-field options :width
                  :height $ respo-ui.schema/read-field options :height
                either (respo-ui.schema/read-field options :style) ({})
          :examples $ [] $ quote
            comp-skeleton $ Option :some $ respo-ui.schema/SkeletonOptions :label (Option :some "|Loading title") :width (Option :some |60%)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'calcit.core/Option 'respo-ui.schema/SkeletonOptions
        'comp-snippet $ %{} 'CodeEntry
          :doc "|Render plain preformatted code. Options: :class-name and :style."
          :code $ quote $ defcomp comp-snippet (code options)
            div
              {} $ :class-name $ str-spaced css/row css-snippet (respo-ui.schema/read-field options :class-name)
              pre $ {} (:class-name css/expand)
                :style $ respo-ui.schema/read-field options :style
                :inner-text code
              span
                {} $ :class-name style-copy-wrapper
                comp-copy code
          :examples $ [] $ quote
            comp-snippet "|yarn install" $ Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option 'respo-ui.schema/PresentationOptions
        'comp-spinner $ %{} 'CodeEntry
          :doc "|Render an accessible loading spinner. Options support :label, :class-name, and :style."
          :code $ quote $ defcomp comp-spinner (options)
            span $ {} (:role |status)
              :aria-label $ either (respo-ui.schema/read-field options :label) |Loading
              :class-name $ str-spaced style-spinner $ respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
          :examples $ [] $ quote
            comp-spinner $ Option :some $ respo-ui.schema/SpinnerOptions :label (Option :some "|Loading results")
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] $ :: 'calcit.core/Option 'respo-ui.schema/SpinnerOptions
        'comp-steps $ %{} 'CodeEntry
          :doc "|Render a step indicator. current is the 0-based active step; earlier steps show as done. Items carry :title and optional :description. Options: :vertical?, :class-name, and :style."
          :code $ quote $ defcomp comp-steps (current items options)
            create-list-element :ol
              {}
                :class-name $ str-spaced style-steps
                  if (respo-ui.schema/read-field options :vertical?) style-steps-vertical
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              -> items $ map-indexed $ fn (idx item)
                [] (str idx)
                  create-element :li
                    {}
                      :class-name $ str-spaced style-step $ if (= idx current) style-step-current
                      :aria-current $ if (= idx current) |step
                    span $ {}
                      :class-name $ str-spaced style-step-marker $ cond
                          < idx current
                          , style-step-marker-done
                        (= idx current) style-step-marker-current
                        true |
                      :inner-text $ if (< idx current) "|✓" $ str (inc idx)
                    div ({})
                      div $ {} (:class-name style-step-title) (:inner-text item.:title)
                      match item.:description
                        (:some description)
                          div $ {} (:class-name style-step-description) (:inner-text description)
                        (:none) nil
          :examples $ [] $ quote
            comp-steps 1
              [] (respo-ui.schema/StepItem :title |Account) (respo-ui.schema/StepItem :title |Profile) (respo-ui.schema/StepItem :title |Done)
              Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Number (:: 'List 'respo-ui.schema/StepItem) (:: 'calcit.core/Option 'respo-ui.schema/StepsOptions)
          :tests $ [] $ %{} 'TestEntry (:name |render-status)
            :code $ quote $ let
                html $ respo.render.html/make-string $ comp-steps 1
                  [] (respo-ui.schema/StepItem :title |Account)
                    respo-ui.schema/StepItem :title |Profile :description $ Option :some |About
                    respo-ui.schema/StepItem :title |Done
                  Option :some $ respo-ui.schema/StepsOptions :vertical? $ Option :some true
              assert= true $ .includes? html |style-step-marker-done
              assert= true $ .includes? html "|>✓<"
              assert= true $ .includes? html "|aria-current=\"step\""
              assert= true $ .includes? html |>About<
              assert= true $ .includes? html |>3<
              assert= true $ .includes? html |style-steps-vertical
            :tags $ #{} :js-only
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
                :on-input $ fn (e d!)
                  hint-fn $ {}
                    :args $ [] (:: 'Map 'Tag 'Dynamic)
                      :: 'Fn $ {}
                        :args $ [] 'Op
                        :return 'Unit
                    :return 'Unit
                  let
                      on-change $ respo-ui.schema/read-field options :on-change
                    when (non-nil? on-change)
                      on-change
                        match
                          try-decode-map-as
                            match (get e :checked)
                              (:some checked-value) (or checked-value false)
                              (:none) false
                            , 'Bool
                          (:ok checked-value) checked-value
                          (:err message) (raise message)
                        fn (op)
                          hint-fn $ {}
                            :args $ [] 'Op
                            :return 'Unit
                          d! op
                  , &unit
              span $ {} $ :class-name
                str-spaced style-switch-track $ if checked style-switch-track-checked
              when
                non-nil? $ respo-ui.schema/read-field options :label
                span ({})
                  <> $ either (respo-ui.schema/read-field options :label) |
          :examples $ [] $ quote
            comp-switch false $ Option :some $ respo-ui.schema/SwitchOptions :label (Option :some "|Compact mode")
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Bool $ :: 'calcit.core/Option (:: 'respo-ui.schema/SwitchOptions 'Op)
            :generics $ [] 'Op
        'comp-tabs $ %{} 'CodeEntry
          :doc "|Render horizontal or vertical tabs from TabRoute items. TabsOptions sets :selected, :vertical?, :width, and styles; on-route receives the clicked TabRoute."
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
                    fn (item)
                      hint-fn $ {}
                        :args $ [] $ :: 'respo-ui.schema/TabRoute 'Value
                        :return 'respo.schema/Element
                      match item $
                        :tab value display
                        let
                            selected? $ and (option:some? selected)
                              = (option:unwrap selected) value
                          div
                            {}
                              :class-name $ str-spaced css-tab (option:unwrap-or options.:tab-class-name |) (if selected? style-selected-tab)
                              :style $ ui/merge-styles
                                if (option:some? options.:tab-style) (option:unwrap options.:tab-style) ({})
                                if selected?
                                  if (option:some? options.:selected-tab-style) (option:unwrap options.:selected-tab-style) ({})
                                  {}
                              :on-click $ fn (e d!)
                                hint-fn $ {}
                                  :args $ [] (:: 'Map 'Tag 'Dynamic)
                                    :: 'Fn $ {}
                                      :args $ [] 'Op
                                      :return 'Unit
                                  :return 'Unit
                                on-route item $ fn (op)
                                  hint-fn $ {}
                                    :args $ [] 'Op
                                    :return 'Unit
                                  d! op
                            <> display
          :examples $ [] $ quote
            comp-tabs
              respo-ui.schema/TabsOptions :selected $ Option :some :book
              [] (respo-ui.schema/TabRoute :tab :book |Book) (respo-ui.schema/TabRoute :tab :card |Card)
              fn (route d!)
                hint-fn $ {} (:return 'Unit)
                  :args $ [] (:: 'respo-ui.schema/TabRoute 'Tag)
                    :: 'Fn $ {}
                      :args $ [] 'Dynamic
                      :return 'Unit
                match route $
                  :tab value _title
                  d! $ :: :select-tab value
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] (:: 'respo-ui.schema/TabsOptions 'Value)
              :: 'List $ :: 'respo-ui.schema/TabRoute 'Value
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] (:: 'respo-ui.schema/TabRoute 'Value)
                  :: 'Fn $ {} (:return 'Unit)
                    :args $ [] 'Op
            :generics $ [] 'Value 'Op
        'comp-tag $ %{} 'CodeEntry
          :doc "|Render a small semantic tag. Kinds are :info, :success, :warning, and :error; any other tag uses the neutral style. ButtonOptions :on-click, :class-name, and :style apply."
          :code $ quote $ defcomp comp-tag (kind content options)
            div
              {}
                :class-name $ str-spaced style-tag
                  match kind (:info style-tag-info) (:success style-tag-success) (:warning style-tag-warning) (:error style-tag-error) (_ |)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
                :on-click $ either (respo-ui.schema/read-field options :on-click)
                  fn $ e d!
              <> $ if (nil? content) | $ respo.util.format/scalar-attribute-text content
          :examples $ [] $ quote
            comp-tag :success |Stable $ Option :none
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag 'Content $ :: 'calcit.core/Option 'respo-ui.schema/ButtonOptions
            :generics $ [] 'Content
        'comp-textarea $ %{} 'CodeEntry
          :doc "|Render a controlled textarea. Pass the current value and optional :placeholder, :disabled, :on-input, :class-name, and :style."
          :code $ quote $ defcomp comp-textarea (value options)
            textarea $ {} (:value value)
              :id $ respo-ui.schema/read-field options :id
              :placeholder $ respo-ui.schema/read-field options :placeholder
              :disabled $ or (respo-ui.schema/read-field options :disabled) false
              :class-name $ str-spaced css/textarea $ respo-ui.schema/read-field options :class-name
              :style $ respo-ui.schema/read-field options :style
              :on-input $ input-handler options
          :examples $ [] $ quote
            comp-textarea |notes $ Option :some $ respo-ui.schema/InputOptions :placeholder (Option :some |Notes)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String $ :: 'calcit.core/Option (:: 'respo-ui.schema/InputOptions 'Op)
            :generics $ [] 'Op
        'comp-time $ %{} 'CodeEntry
          :doc "|Render a time string, parsed with dayjs. Today's times show only the clock time; other days show the date and weekday."
          :code $ quote $ defcomp comp-time (time)
            let
                mark $ format-time-mark time
              span $ {} (:class-name css/font-fancy) (:title time) (:inner-text mark)
                :on-click $ fn (e d!) (js/console.log :time time) &unit
          :examples $ [] $ quote (comp-time |2026-10-20T08:00:00Z)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'comp-tooltip $ %{} 'CodeEntry
          :doc "|Show a CSS-only tooltip when the content is hovered or focused. Options: :placement (:top by default, or :bottom), :class-name, and :style."
          :code $ quote $ defcomp comp-tooltip (content tip options)
            span
              {}
                :class-name $ str-spaced style-tooltip
                  match (respo-ui.schema/read-field options :placement) (:bottom style-tooltip-bottom) (_ |)
                  respo-ui.schema/read-field options :class-name
                :style $ respo-ui.schema/read-field options :style
              if (literal? content)
                <> $ respo.util.format/scalar-attribute-text content
                , content
              span $ {} (:role |tooltip) (:class-name style-tooltip-tip) (:inner-text tip)
          :examples $ [] $ quote
            comp-tooltip |Save "|Saves the draft" $ Option :some $ respo-ui.schema/TooltipOptions :placement (Option :some :bottom)
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Content 'String $ :: 'calcit.core/Option 'respo-ui.schema/TooltipOptions
            :generics $ [] 'Content
          :tests $ [] $ %{} 'TestEntry (:name |render-tip)
            :code $ quote $ let
                html $ respo.render.html/make-string $ comp-tooltip |Save |Hint
                  Option :some $ respo-ui.schema/TooltipOptions :placement $ Option :some :bottom
                top $ respo.render.html/make-string $ comp-tooltip |Save |Hint (Option :none)
              assert= true $ .includes? html "|role=\"tooltip\""
              assert= true $ .includes? html |>Hint<
              assert= true $ .includes? html |style-tooltip-bottom
              assert= false $ .includes? top |style-tooltip-bottom
            :tags $ #{} :js-only
        'copy-handler $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn copy-handler (code)
            fn (e d!) (copy! code) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'css-item-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-item-label
            {} $ |$0 $ {} (:font-size tokens/text-xs) (:font-weight tokens/weight-medium) (:line-height tokens/leading-normal) (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'css-placeholder $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-placeholder
            {} $ |$0 $ ui/merge-styles ui/center
              {} (:padding tokens/space-4) (:font-size tokens/text-sm) (:font-style :italic) (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'css-snippet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-snippet
            {}
              |& $ {} (:position :relative) (:margin 0) (:padding "|8px 36px 8px 12px") (:border-radius tokens/radius-md) (:font-family tokens/font-mono) (:font-size tokens/text-xs) (:line-height tokens/leading-normal) (:white-space :pre) (:overflow-x :auto) (:color tokens/color-text) (:background-color tokens/color-surface-subtle)
                :border $ str "|1px solid " tokens/color-border
              "|& > pre" $ {} $ :margin 0
          :examples $ []
          :schema $ :: 'String
        'css-tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-tab
            {}
              |$0 $ {} (:padding "|0 12px") (:border-radius tokens/radius-sm) (:font-family tokens/font-sans) (:font-size tokens/text-md) (:line-height tokens/control-md) (:color tokens/color-text-secondary) (:cursor :pointer) (:user-select :none) (:transition tokens/transition-colors)
              |$0:hover $ {} (:color tokens/color-text) (:background-color tokens/color-surface-subtle)
          :examples $ []
          :schema $ :: 'String
        'effect-dataset-text $ %{} 'CodeEntry
          :doc "|Respo does not support dataset from attribute, write with effect"
          :code $ quote $ defeffect effect-dataset-text (text) (action el at?)
            when
              or (= action :update) (= action :mount)
              if (string? text)
                browser/element-data-set! (unsafe-coerce el 'js-ffi.browser/DomElementHost) |text text
                raise "|effect-dataset-text expected a String text"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Effect)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'effect-tab-highlight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defeffect effect-tab-highlight (selected vertical?) (action el at?)
            when
              or (= action :mount) (= action :update)
              let
                  root $ unsafe-coerce el 'js-ffi.browser/DomElementHost
                  target $ browser/element-query-selector root $ str |. style-selected-tab
                  cursor $ browser/element-query-selector root $ str |. style-tab-highlight
                if
                  and (option:some? target) (option:some? cursor)
                  let
                      target $ option:unwrap target
                      cursor $ option:unwrap cursor
                    if vertical?
                      do
                        browser/element-set-style! cursor |top $ str (target :offset-top) |px
                        browser/element-set-style! cursor |bottom |0px
                        browser/element-set-style! cursor |height $ str (target :client-height) |px
                      do
                        browser/element-set-style! cursor |left $ str (target :offset-left) |px
                        browser/element-set-style! cursor |width $ str (target :client-width) |px
                  when (not vertical?)
                    if (option:some? cursor)
                      browser/element-set-style! (option:unwrap cursor) |width |0px
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
        'input-handler $ %{} 'CodeEntry
          :doc "|Event handler for comp-input and comp-textarea: :on-change gets the text value, otherwise the raw :on-input handler is used."
          :code $ quote $ defn input-handler (options)
            match options
              (:some o)
                match o.:on-change
                  (:some on-change)
                    fn (e d!)
                      hint-fn $ {}
                        :args $ [] (:: 'Map 'Tag 'Dynamic)
                          :: 'Fn $ {}
                            :args $ [] 'Op
                            :return 'Unit
                        :return 'Unit
                      on-change
                        match (get e :value)
                          (:some event-value) (str event-value)
                          (:none) |
                        , d!
                  (:none) (respo-ui.schema/read-field options :on-input)
              (:none) nil
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Dynamic)
            :args $ [] $ :: 'calcit.core/Option (:: 'respo-ui.schema/InputOptions 'Op)
            :generics $ [] 'Op
        'literal? $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn literal? (v)
            or (string? v) (tag? v) (number? v) (bool? v)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Bool)
            :args $ [] 'Value
            :generics $ [] 'Value
        'pagination-pages $ %{} 'CodeEntry
          :doc "|Page numbers shown by comp-pagination for a 1-based page, the total page count, and how many siblings sit beside the current page. 0 marks a collapsed gap."
          :code $ quote $ defn pagination-pages (page total siblings)
            let
                window $ inc $ * 2 siblings
              if
                <= total $ + window 4
                range 1 $ inc total
                let
                    start $ &max 2 $ &min (- page siblings) (- total window)
                    end $ dec $ + start window
                  concat ([] 1)
                    cond
                        = start 2
                        []
                      (= start 3) ([] 2)
                      true $ [] 0
                    range start $ inc end
                    cond
                        = end $ dec total
                        []
                      (= end (- total 2))
                        [] $ dec total
                      true $ [] 0
                    [] total
          :examples $ [] $ quote (pagination-pages 5 20 1)
          :schema $ :: 'Fn $ {}
            :args $ [] 'Number 'Number 'Number
            :return $ :: 'List 'Number
          :tests $ [] $ %{} 'TestEntry (:name |window-and-gaps)
            :code $ quote $ do
              assert= ([] 1 2 3 4 5) (pagination-pages 3 5 1)
              assert= ([] 1 2 3 4 5 6 7) (pagination-pages 1 7 1)
              assert= ([] 1 2 3 4 0 10) (pagination-pages 1 10 1)
              assert= ([] 1 0 4 5 6 0 10) (pagination-pages 5 10 1)
              assert= ([] 1 2 3 4 5 0 10) (pagination-pages 4 10 1)
              assert= ([] 1 0 7 8 9 10) (pagination-pages 10 10 1)
              assert=
                [] 1 0 8 9 10 11 12 0 20
                pagination-pages 10 20 2
            :tags $ #{} :boundary
        'render-page-button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-page-button (page total target text label options)
            let
                current? $ and (= target page)
                  = text $ str target
                disabled? $ or (< target 1) (> target total)
              button $ {} (:type |button) (:inner-text text) (:aria-label label) (:disabled disabled?)
                :aria-current $ if current? |page
                :class-name $ str-spaced style-pagination-item $ if current? style-pagination-current
                :on-click $ fn (e d!)
                  hint-fn $ {}
                    :args $ [] (:: 'Map 'Tag 'Dynamic)
                      :: 'Fn $ {}
                        :args $ [] 'Op
                        :return 'Unit
                    :return 'Unit
                  let
                      on-change $ respo-ui.schema/read-field options :on-change
                    when
                      and (non-nil? on-change) (not current?) (not disabled?)
                      on-change target d!
                  , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'Number 'Number 'Number 'String 'String $ :: 'calcit.core/Option (:: 'respo-ui.schema/PaginationOptions 'Op)
            :generics $ [] 'Op
        'style-alert $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert
            {} $ |& $ {} (:padding "|10px 12px") (:border "|1px solid transparent") (:border-radius tokens/radius-lg) (:font-size tokens/text-md) (:line-height tokens/leading-normal)
          :examples $ []
          :schema $ :: 'String
        'style-alert-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-error
            {} $ |& $ {} (:color tokens/color-danger-text) (:background-color tokens/color-danger-soft) (:border-color tokens/color-danger-border)
          :examples $ []
          :schema $ :: 'String
        'style-alert-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-info
            {} $ |& $ {} (:color tokens/color-info-text) (:background-color tokens/color-info-soft) (:border-color tokens/color-info-border)
          :examples $ []
          :schema $ :: 'String
        'style-alert-success $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-success
            {} $ |& $ {} (:color tokens/color-success-text) (:background-color tokens/color-success-soft) (:border-color tokens/color-success-border)
          :examples $ []
          :schema $ :: 'String
        'style-alert-warning $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-alert-warning
            {} $ |& $ {} (:color tokens/color-warning-text) (:background-color tokens/color-warning-soft) (:border-color tokens/color-warning-border)
          :examples $ []
          :schema $ :: 'String
        'style-attributes-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-attributes-title
            {} $ |$0 $ {} (:margin-bottom tokens/space-2) (:font-size tokens/text-lg) (:font-weight tokens/weight-semibold) (:line-height tokens/leading-tight)
          :examples $ []
          :schema $ :: 'String
        'style-avatar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:flex-shrink |0) (:width tokens/control-md) (:height tokens/control-md) (:overflow :hidden) (:border-radius tokens/radius-full) (:font-family tokens/font-sans) (:font-size tokens/text-xs) (:font-weight tokens/weight-semibold) (:text-transform :uppercase) (:color tokens/color-primary-active) (:background-color tokens/color-primary-soft)
              :box-shadow $ str "|inset 0 0 0 1px " tokens/color-primary-border
          :examples $ []
          :schema $ :: 'String
        'style-avatar-image $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar-image
            {} $ |& $ {} (:width |100%) (:height |100%) (:object-fit :cover)
          :examples $ []
          :schema $ :: 'String
        'style-avatar-large $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar-large
            {} $ |& $ {} (:width tokens/control-lg) (:height tokens/control-lg) (:font-size tokens/text-md)
          :examples $ []
          :schema $ :: 'String
        'style-avatar-small $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-avatar-small
            {} $ |& $ {} (:width tokens/control-sm) (:height tokens/control-sm) (:font-size |10px)
          :examples $ []
          :schema $ :: 'String
        'style-badge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:box-sizing :border-box) (:min-width tokens/space-5) (:height tokens/space-5) (:padding "|0 6px") (:border-radius tokens/radius-full) (:font-size tokens/text-xs) (:font-weight tokens/weight-medium) (:line-height |1) (:white-space :nowrap) (:color tokens/color-text-secondary) (:background-color tokens/color-surface-muted)
          :examples $ []
          :schema $ :: 'String
        'style-badge-dot $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge-dot
            {} $ |& $ {} (:min-width tokens/space-2) (:width tokens/space-2) (:height tokens/space-2) (:padding 0) (:border-radius tokens/radius-full)
          :examples $ []
          :schema $ :: 'String
        'style-badge-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge-error
            {} $ |& $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-danger)
          :examples $ []
          :schema $ :: 'String
        'style-badge-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge-info
            {} $ |& $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-info)
          :examples $ []
          :schema $ :: 'String
        'style-badge-success $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge-success
            {} $ |& $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-success)
          :examples $ []
          :schema $ :: 'String
        'style-badge-warning $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-badge-warning
            {} $ |& $ {} (:color tokens/color-warning-text) (:background-color tokens/color-warning)
          :examples $ []
          :schema $ :: 'String
        'style-breadcrumb $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-breadcrumb
            {} $ |& $ {} (:font-size tokens/text-md) (:line-height tokens/leading-normal)
          :examples $ []
          :schema $ :: 'String
        'style-breadcrumb-current $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-breadcrumb-current
            {} $ |& $ {} (:font-weight tokens/weight-medium) (:color tokens/color-text)
          :examples $ []
          :schema $ :: 'String
        'style-breadcrumb-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-breadcrumb-item
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:gap tokens/space-1-5) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-breadcrumb-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-breadcrumb-link
            {}
              |& $ {} (:color :inherit) (:text-decoration :none) (:border-radius tokens/radius-sm) (:transition tokens/transition-colors)
              |&:hover $ {} (:color tokens/color-primary) (:text-decoration :underline)
              |&:focus-visible $ {} (:outline :none) (:box-shadow tokens/focus-ring)
          :examples $ []
          :schema $ :: 'String
        'style-breadcrumb-list $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-breadcrumb-list
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:gap tokens/space-1-5) (:margin 0) (:padding 0) (:list-style :none)
          :examples $ []
          :schema $ :: 'String
        'style-breadcrumb-separator $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-breadcrumb-separator
            {} $ |& $ {} (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'style-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card
            {} $ |& $ {} (:overflow :hidden) (:border-radius tokens/radius-lg) (:background-color tokens/color-surface) (:box-shadow tokens/shadow-xs)
              :border $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-card-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card-body
            {} $ |& $ {} (:padding tokens/space-4) (:font-size tokens/text-md) (:line-height tokens/leading-normal)
          :examples $ []
          :schema $ :: 'String
        'style-card-footer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card-footer
            {} $ |& $ {} (:padding "|10px 16px") (:background-color tokens/color-surface-subtle)
              :border-top $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-card-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-card-title
            {} $ |& $ {} (:padding "|12px 16px") (:font-size tokens/text-lg) (:font-weight tokens/weight-semibold) (:line-height tokens/leading-tight) (:color tokens/color-text)
              :border-bottom $ str "|1px solid " tokens/color-border
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
              |& $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:width tokens/control-sm) (:height tokens/control-sm) (:border-radius tokens/radius-sm) (:font-size tokens/text-md) (:line-height |1) (:color tokens/color-text-muted) (:cursor :pointer) (:user-select :none) (:transition tokens/transition-colors)
              |&:hover $ {} (:color tokens/color-text) (:background-color tokens/color-surface-muted)
              |&:active $ {} (:color tokens/color-danger-text) (:background-color tokens/color-danger-soft)
              |&:focus-visible $ {} (:outline :none) (:box-shadow tokens/focus-ring)
          :examples $ []
          :schema $ :: 'String
        'style-collapse $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-collapse
            {} $ |& $ {} (:overflow :hidden) (:border-radius tokens/radius-lg) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-collapse-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-collapse-body
            {} $ |& $ {} (:padding "|0 16px 12px") (:font-size tokens/text-md) (:line-height tokens/leading-normal) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-collapse-summary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-collapse-summary
            {}
              |& $ {} (:padding "|10px 16px") (:font-size tokens/text-md) (:font-weight tokens/weight-medium) (:line-height tokens/leading-normal) (:cursor :pointer) (:list-style-position :inside) (:transition tokens/transition-colors)
              |&:hover $ {} $ :background-color tokens/color-surface-subtle
              |&:focus-visible $ {} (:outline :none)
                :box-shadow $ str "|inset " tokens/focus-ring
          :examples $ []
          :schema $ :: 'String
        'style-control-disabled $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-control-disabled
            {} $ |& $ {} (:opacity |0.5) (:cursor :not-allowed)
          :examples $ []
          :schema $ :: 'String
        'style-copy-container $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copy-container
            {}
              |& $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:width tokens/control-sm) (:height tokens/control-sm) (:border-radius tokens/radius-sm) (:cursor :pointer) (:transition tokens/transition-colors)
              |&:hover $ {} $ :background-color tokens/color-surface-muted
          :examples $ []
          :schema $ :: 'String
        'style-copy-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copy-outline
            {}
              |& $ {} (:position :relative) (:width tokens/space-3) (:height tokens/space-3) (:border-radius |2px) (:cursor :pointer)
                :border $ str "|1.5px solid " tokens/color-text-muted
                :outline $ str "|1px solid " tokens/color-surface
              |&:active $ {} $ :border-color tokens/color-text
          :examples $ []
          :schema $ :: 'String
        'style-copy-wrapper $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-copy-wrapper
            {} $ |& $ {} (:position :absolute) (:top tokens/space-1) (:right tokens/space-1)
          :examples $ []
          :schema $ :: 'String
        'style-divider $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-divider
            {} $ |& $ {} (:width |100%) (:height |1px) (:margin "|12px 0") (:background-color tokens/color-border)
          :examples $ []
          :schema $ :: 'String
        'style-divider-vertical $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-divider-vertical
            {} $ |& $ {} (:display :inline-block) (:width |1px) (:height |1em) (:margin "|0 12px") (:vertical-align :middle) (:background-color tokens/color-border)
          :examples $ []
          :schema $ :: 'String
        'style-empty $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty
            {} $ |& $ {} (:display :flex) (:flex-direction :column) (:align-items :center) (:justify-content :center) (:min-height |160px) (:padding tokens/space-6) (:border-radius tokens/radius-lg) (:text-align :center) (:background-color tokens/color-surface-subtle)
              :border $ str "|1px dashed " tokens/color-border-strong
          :examples $ []
          :schema $ :: 'String
        'style-empty-description $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-description
            {} $ |& $ {} (:margin-top tokens/space-1) (:margin-bottom tokens/space-3) (:font-size tokens/text-sm) (:line-height tokens/leading-normal) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-empty-icon $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-icon
            {} $ |& $ {} (:margin-bottom tokens/space-3) (:font-size tokens/text-3xl) (:line-height |1) (:color tokens/color-text-disabled)
          :examples $ []
          :schema $ :: 'String
        'style-empty-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-empty-title
            {} $ |& $ {} (:font-size tokens/text-lg) (:font-weight tokens/weight-semibold) (:line-height tokens/leading-tight) (:color tokens/color-text)
          :examples $ []
          :schema $ :: 'String
        'style-field $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-field
            {} $ |& $ {} (:display :flex) (:flex-direction :column) (:gap tokens/space-1-5)
          :examples $ []
          :schema $ :: 'String
        'style-field-description $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-field-description
            {} $ |& $ {} (:font-size tokens/text-xs) (:line-height tokens/leading-normal) (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'style-field-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-field-error
            {} $ |& $ {} (:font-size tokens/text-xs) (:line-height tokens/leading-normal) (:color tokens/color-danger-text)
          :examples $ []
          :schema $ :: 'String
        'style-field-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-field-label
            {} $ |& $ {} (:font-size tokens/text-sm) (:font-weight tokens/weight-medium) (:line-height tokens/leading-normal) (:color tokens/color-text)
          :examples $ []
          :schema $ :: 'String
        'style-field-required $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-field-required
            {} $ |& $ {} (:margin-left tokens/space-1) (:color tokens/color-danger-text)
          :examples $ []
          :schema $ :: 'String
        'style-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-item
            {}
              |$0 $ {} (:min-height |72px) (:padding tokens/space-2) (:border-radius tokens/radius-md) (:background-color tokens/color-surface-subtle) (:transition tokens/transition-colors)
              |$0:hover $ {} (:background-color tokens/color-surface) (:box-shadow tokens/shadow-sm)
          :examples $ []
          :schema $ :: 'String
        'style-kbd $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-kbd
            {} $ |& $ {} (:display :inline-block) (:min-width tokens/space-5) (:padding "|1px 6px") (:border-radius tokens/radius-sm) (:font-family tokens/font-mono) (:font-size tokens/text-xs) (:line-height tokens/leading-normal) (:text-align :center) (:color tokens/color-text) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border-strong
              :box-shadow $ str "|inset 0 -1px 0 " tokens/color-border-strong
          :examples $ []
          :schema $ :: 'String
        'style-kbd-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-kbd-group
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:gap tokens/space-1)
          :examples $ []
          :schema $ :: 'String
        'style-kbd-plus $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-kbd-plus
            {} $ |& $ {} (:margin-right tokens/space-1) (:font-size tokens/text-xs) (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'style-pagination $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-pagination
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:gap tokens/space-1)
          :examples $ []
          :schema $ :: 'String
        'style-pagination-current $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-pagination-current
            {}
              |&& $ {} (:cursor :default) (:color tokens/color-text-inverse) (:background-color tokens/color-primary) (:border-color tokens/color-primary)
              "|&&:hover:not(:disabled)" $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-primary-hover)
          :examples $ []
          :schema $ :: 'String
        'style-pagination-gap $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-pagination-gap
            {} $ |& $ {} (:min-width tokens/control-sm) (:text-align :center) (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'style-pagination-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-pagination-item
            {}
              |& $ {} (:box-sizing :border-box) (:min-width tokens/control-md) (:height tokens/control-md) (:padding "|0 8px") (:border-radius tokens/radius-md) (:font-family tokens/font-sans) (:font-size tokens/text-md) (:color tokens/color-text) (:background-color tokens/color-surface) (:cursor :pointer) (:transition tokens/transition-colors)
                :border $ str "|1px solid " tokens/color-border-strong
              "|&:hover:not(:disabled)" $ {} (:color tokens/color-primary) (:border-color tokens/color-primary)
              |&:focus-visible $ {} (:outline :none) (:box-shadow tokens/focus-ring)
              |&:disabled $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:background-color tokens/color-surface-muted) (:border-color tokens/color-border)
          :examples $ []
          :schema $ :: 'String
        'style-progress $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-progress
            {} $ |& $ {} (:width |100%) (:height tokens/space-2) (:overflow :hidden) (:border-radius tokens/radius-full) (:background-color tokens/color-surface-muted)
          :examples $ []
          :schema $ :: 'String
        'style-progress-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-progress-value
            {} $ |& $ {} (:height |100%) (:border-radius |inherit) (:background-color tokens/color-primary)
              :transition $ str "|width " tokens/duration-normal "| " tokens/ease
          :examples $ []
          :schema $ :: 'String
        'style-radio-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-radio-group
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:gap "|8px 16px")
          :examples $ []
          :schema $ :: 'String
        'style-radio-group-vertical $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-radio-group-vertical
            {} $ |& $ {} (:flex-direction :column) (:align-items :flex-start) (:gap tokens/space-2)
          :examples $ []
          :schema $ :: 'String
        'style-radio-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-radio-input
            {}
              |& $ {} (:margin 0) (:width tokens/space-4) (:height tokens/space-4) (:cursor :inherit) (:accent-color tokens/color-primary)
              |&:focus-visible $ {} (:outline :none) (:box-shadow tokens/focus-ring) (:border-radius tokens/radius-full)
          :examples $ []
          :schema $ :: 'String
        'style-radio-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-radio-item
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:gap tokens/space-2) (:font-size tokens/text-md) (:line-height tokens/leading-normal) (:cursor :pointer)
          :examples $ []
          :schema $ :: 'String
        'style-selected-tab $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-selected-tab
            {} $ |&& $ {} (:color tokens/color-primary) (:font-weight tokens/weight-medium)
          :examples $ []
          :schema $ :: 'String
        'style-skeleton $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton
            {}
              |& $ {} (:display :block) (:background-color tokens/color-surface-muted)
                :animation "|respo-ui-skeleton 1.2s ease-in-out infinite alternate"
              "|@keyframes respo-ui-skeleton" $ {}
                |from $ {} $ :opacity 0.45
                |to $ {} $ :opacity 1
          :examples $ []
          :schema $ :: 'String
        'style-skeleton-circle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton-circle
            {} $ |& $ {} (:width tokens/control-md) (:height tokens/control-md) (:border-radius tokens/radius-full)
          :examples $ []
          :schema $ :: 'String
        'style-skeleton-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-skeleton-text
            {} $ |& $ {} (:width |100%) (:height tokens/space-3) (:border-radius tokens/radius-sm)
          :examples $ []
          :schema $ :: 'String
        'style-spinner $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-spinner
            {}
              |& $ {} (:display :inline-block) (:box-sizing :border-box) (:width tokens/space-4) (:height tokens/space-4) (:border-radius tokens/radius-full) (:vertical-align :middle) (:border-width |2px) (:border-style :solid) (:animation "|respo-ui-spin 700ms linear infinite")
                :border-color $ str tokens/color-primary "| " tokens/color-primary-border "| " tokens/color-primary-border "| " tokens/color-primary-border
              "|@keyframes respo-ui-spin" $ {} $ |to
                {} $ :transform "|rotate(360deg)"
          :examples $ []
          :schema $ :: 'String
        'style-step $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-step
            {} $ |& $ {} (:display :flex) (:align-items :flex-start) (:gap tokens/space-2) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-step-current $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-step-current
            {} $ |& $ {} (:font-weight tokens/weight-medium) (:color tokens/color-text)
          :examples $ []
          :schema $ :: 'String
        'style-step-description $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-step-description
            {} $ |& $ {} (:font-size tokens/text-xs) (:line-height tokens/leading-normal) (:font-weight tokens/weight-regular) (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'style-step-marker $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-step-marker
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:flex-shrink |0) (:box-sizing :border-box) (:width tokens/control-sm) (:height tokens/control-sm) (:border-radius tokens/radius-full) (:font-size tokens/text-xs) (:color tokens/color-text-secondary) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border-strong
          :examples $ []
          :schema $ :: 'String
        'style-step-marker-current $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-step-marker-current
            {} $ |& $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-primary) (:border-color tokens/color-primary)
          :examples $ []
          :schema $ :: 'String
        'style-step-marker-done $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-step-marker-done
            {} $ |& $ {} (:color tokens/color-primary-active) (:background-color tokens/color-primary-soft) (:border-color tokens/color-primary)
          :examples $ []
          :schema $ :: 'String
        'style-step-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-step-title
            {} $ |& $ {} (:font-size tokens/text-md) (:line-height tokens/control-sm)
          :examples $ []
          :schema $ :: 'String
        'style-steps $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-steps
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:gap "|12px 24px") (:margin 0) (:padding 0) (:list-style :none)
          :examples $ []
          :schema $ :: 'String
        'style-steps-vertical $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-steps-vertical
            {} $ |& $ {} (:flex-direction :column) (:gap tokens/space-4)
          :examples $ []
          :schema $ :: 'String
        'style-switch-input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-input
            {} $ |& $ {} (:position :absolute) (:top 0) (:left 0) (:width |1px) (:height |1px) (:margin 0) (:opacity 0) (:pointer-events :none)
          :examples $ []
          :schema $ :: 'String
        'style-switch-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-label
            {}
              |& $ {} (:position :relative) (:display :inline-flex) (:align-items :center) (:gap tokens/space-2) (:font-size tokens/text-md) (:cursor :pointer) (:user-select :none)
              "|& > input:focus-visible + span" $ {} $ :box-shadow tokens/focus-ring
          :examples $ []
          :schema $ :: 'String
        'style-switch-track $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-track
            {}
              |& $ {} (:position :relative) (:display :inline-block) (:flex-shrink 0) (:width |36px) (:height tokens/space-5) (:border-radius tokens/radius-full) (:background-color tokens/color-border-strong)
                :transition $ str "|background-color " tokens/duration-fast "| " tokens/ease
              |&::after $ {} (:content "|\"\"") (:position :absolute) (:top |2px) (:left |2px) (:width tokens/space-4) (:height tokens/space-4) (:border-radius tokens/radius-full) (:background-color tokens/color-surface) (:box-shadow tokens/shadow-sm)
                :transition $ str "|transform " tokens/duration-fast "| " tokens/ease
          :examples $ []
          :schema $ :: 'String
        'style-switch-track-checked $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-switch-track-checked
            {}
              |& $ {} $ :background-color tokens/color-primary
              |&::after $ {} $ :transform "|translateX(16px)"
          :examples $ []
          :schema $ :: 'String
        'style-tab-highlight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab-highlight
            {} $ |& $ {} (:position :absolute) (:bottom 0) (:left 0) (:min-width 0) (:height |2px) (:border-radius |2px) (:background-color tokens/color-primary)
              :transition $ str "|left " tokens/duration-normal "| " tokens/ease "|, width " tokens/duration-normal "| " tokens/ease "|, top " tokens/duration-normal "| " tokens/ease "|, height " tokens/duration-normal "| " tokens/ease
          :examples $ []
          :schema $ :: 'String
        'style-tab-vertical-highlight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tab-vertical-highlight
            {} $ |div& $ {} (:width |2px) (:left 0)
          :examples $ []
          :schema $ :: 'String
        'style-tabs $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tabs
            {} $ |& $ {} (:position :relative)
          :examples $ []
          :schema $ :: 'String
        'style-tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag
            {} $ |& $ {} (:display :inline-block) (:box-sizing :border-box) (:height tokens/space-5) (:padding "|0 8px") (:border-radius tokens/radius-sm) (:font-size tokens/text-xs) (:line-height |18px) (:color tokens/color-text-secondary) (:background-color tokens/color-surface-muted) (:cursor :default)
              :border $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-tag-error $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-error
            {} $ |&& $ {} (:color tokens/color-danger-text) (:background-color tokens/color-danger-soft) (:border-color tokens/color-danger-border)
          :examples $ []
          :schema $ :: 'String
        'style-tag-info $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-info
            {} $ |&& $ {} (:color tokens/color-info-text) (:background-color tokens/color-info-soft) (:border-color tokens/color-info-border)
          :examples $ []
          :schema $ :: 'String
        'style-tag-success $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-success
            {} $ |&& $ {} (:color tokens/color-success-text) (:background-color tokens/color-success-soft) (:border-color tokens/color-success-border)
          :examples $ []
          :schema $ :: 'String
        'style-tag-warning $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tag-warning
            {} $ |&& $ {} (:color tokens/color-warning-text) (:background-color tokens/color-warning-soft) (:border-color tokens/color-warning-border)
          :examples $ []
          :schema $ :: 'String
        'style-tooltip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tooltip
            {}
              |& $ {} (:position :relative) (:display :inline-flex)
              "|&:hover > [role=tooltip], &:focus-within > [role=tooltip]" $ {} (:opacity 1) (:visibility :visible)
          :examples $ []
          :schema $ :: 'String
        'style-tooltip-bottom $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tooltip-bottom
            {} $ "|& > [role=tooltip]" $ {} (:top "|calc(100% + 6px)") (:bottom :auto)
          :examples $ []
          :schema $ :: 'String
        'style-tooltip-tip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-tooltip-tip
            {} $ |& $ {} (:position :absolute) (:bottom "|calc(100% + 6px)") (:left |50%) (:transform "|translateX(-50%)") (:z-index tokens/z-tooltip) (:padding "|4px 8px") (:border-radius tokens/radius-sm) (:font-size tokens/text-xs) (:line-height tokens/leading-normal) (:white-space :nowrap) (:color tokens/color-text-inverse) (:background-color tokens/color-text) (:box-shadow tokens/shadow-md) (:pointer-events :none) (:opacity 0) (:visibility :hidden)
              :transition $ str "|opacity " tokens/duration-fast "| " tokens/ease
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp
          :require
            respo.core :refer $ defcomp defeffect div list-> input textarea button span select option a <> pre create-element create-list-element
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo-ui.tokens :as tokens
            |cirru-color :refer $ generateHtml
            respo.css :refer $ defstyle
            respo-ui.css :as css
            |copy-text-to-clipboard :default copy!
            |dayjs :default dayjs
            respo.schema :refer $ *dispatch-op
            respo-ui.schema :as schema
            |dayjs/plugin/isToday.js :default is-today
            js-ffi.browser :as browser
    'respo-ui.comp.components $ %{} 'FileEntry
      :defs $ {}
        'comp-component-index $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-component-index ()
            list->
              {} $ :class-name style-index
              map component-groups $ fn (group)
                [] group.:id $ render-index-group group
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-components-page $ %{} 'CodeEntry
          :doc "|Component showcase: hero, an index of every component, then one demo-block per component grouped by category."
          :code $ quote $ defcomp comp-components-page ()
            div
              {} $ :class-name style-components-page
              div
                {} $ :class-name style-page-hero
                div ({}) (<> |Components style-page-title)
                div
                  {} $ :class-name style-hero-lead
                  <> "|33 typed components with controlled state and static CSS classes. Every block shows the live component and the code that produced it. Pick one below to jump to it."
                div
                  {} $ :class-name $ str-spaced css/row css/gap8 style-resource-links
                  render-entry |https://github.com/Respo/respo-ui.calcit |respo-ui
                  render-entry |https://github.com/Respo/alerts.calcit |respo-alerts
                  render-entry |https://github.com/Respo/respo-feather.calcit |respo-feather
                  render-entry |https://github.com/Respo/respo-message.calcit |respo-message
                  render-entry |https://github.com/Respo/respo-markdown.calcit |respo-markdown
              comp-component-index
              comp-demo-form-controls
              comp-demo-navigation
              comp-demo-disclosure
              comp-demo-feedback
              comp-demo-data-display
              comp-demo-code-utilities
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-code-utilities $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-code-utilities ()
            div
              {} $ :class-name style-demo-section
              render-category-head |utilities "|Code and utilities" "|Show source, copy text, close panels and fill empty areas."
              demo-block |cirru-snippet |comp-cirru-snippet |PresentationOptions "|Syntax-highlighted Cirru code. Every snippet on this page is rendered with it." $ comp-cirru-snippet "|defn f (a b)\n  + a b" $ Option :none
              demo-block |snippet |comp-snippet |PresentationOptions "|Plain preformatted text for code or logs." $ comp-snippet "|@import url(cirru-color/assets/cirru.css);" $ Option :none
              demo-block |copy |comp-copy | "|Copy icon that writes text to the clipboard." (<> "|demo text") (comp-copy "|DEMO TO COPY")
              demo-block |close |comp-close |ButtonOptions "|Clickable close mark; takes ButtonOptions for :on-click." $ comp-close $ Option :none
              demo-block |placeholder |comp-placeholder | "|Muted text for areas that have no content yet." $ comp-placeholder "|This is a demo"
              demo-block |catoptric-text |comp-catoptric-text |PresentationOptions "|Text with a CSS-generated reflection." $ comp-catoptric-text "|Demo Text" $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-data-display $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-data-display ()
            div
              {} $ :class-name style-demo-section
              render-category-head |data "|Data display" "|Present content: cards, people, labelled values, tags and time."
              demo-block |card |comp-card |CardOptions "|Composable container with an optional title and footer." $ div
                {} $ :style $ {} (:width |320px) (:max-width |100%)
                comp-card "|Cards hold any content: text or nodes." $ Option :some $ CardOptions :title (Option :some |Summary) :footer
                  Option :some $ comp-button |Open
              demo-block |avatar |comp-avatar |AvatarOptions "|Initials or an image in three sizes."
                comp-avatar |CY $ Option :some $ AvatarOptions :title (Option :some "|Small avatar") :size (Option :some :small)
                comp-avatar |RS $ Option :some $ AvatarOptions :title (Option :some "|Default avatar")
                comp-avatar |UI $ Option :some $ AvatarOptions :title (Option :some "|Large avatar") :size (Option :some :large)
              demo-block |tag |comp-tag | "|Small semantic label in five kinds." (comp-tag :default |default) (comp-tag :info |info) (comp-tag :success |success) (comp-tag :warning |warning) (comp-tag :error |error)
              demo-block |attributes |comp-attributes |AttributesOptions "|Responsive grid of label/value pairs; an item may span several columns." $ div
                {} $ :style $ {} (:width |560px) (:max-width |100%)
                comp-attributes $ AttributesOptions :items
                  [] (:: :attr |Name |Respo) (:: :attr |Language |Calcit) (:: :attr-span |Homepage |respo-mvc.org 2)
                  , :title $ Option :some |Project
              demo-block |divider |comp-divider |DividerOptions "|Horizontal rule, or a vertical one between inline items." $ div
                {} $ :class-name $ str-spaced css/row-middle css/gap8
                comp-button |Previous
                comp-divider $ Option :some $ DividerOptions :vertical? (Option :some true)
                comp-button |Next
              demo-block |time |comp-time | "|Parsed with dayjs. Today's times show clock time, other days show the date."
                comp-time $ current-iso-string
                comp-time |2023-11-07T06:23:49.688Z
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-disclosure $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-disclosure ()
            div
              {} $ :class-name style-demo-section
              render-category-head |disclosure "|Disclosure and hints" "|Show more on demand, or explain a control without leaving the page."
              demo-block |collapse |comp-collapse |CollapseOptions "|Native details/summary disclosure. A shared :name makes the group exclusive." $ div
                {}
                  :class-name $ str-spaced css/column css/gap8
                  :style $ {} (:width |420px) (:max-width |100%)
                comp-collapse "|What does Respo UI include?" "|Form controls, navigation, feedback and display components with typed options." $ Option :some $ CollapseOptions :open? (Option :some true) :name (Option :some |demo-faq)
                comp-collapse "|Does it need JavaScript to toggle?" "|No. The browser handles toggling and keyboard access." $ Option :some $ CollapseOptions :name (Option :some |demo-faq)
              demo-block |tooltip |comp-tooltip |TooltipOptions "|CSS-only hint shown on hover or keyboard focus. Placement defaults to top."
                comp-tooltip
                  comp-button |Save $ Option :none
                  , "|Saves the current draft" $ Option :none
                comp-tooltip
                  comp-button |Publish $ Option :none
                  , "|Shown below the trigger" $ Option :some $ TooltipOptions :placement (Option :some :bottom)
              demo-block |kbd |comp-kbd | "|Keyboard shortcuts rendered from key names." (<> "|Search with")
                comp-kbd ([] |Ctrl |K) (Option :none)
                <> |or
                comp-kbd ([] |Cmd |Shift |P) (Option :none)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-feedback $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-feedback ()
            div
              {} $ :class-name style-demo-section
              render-category-head |feedback |Feedback "|Tell the user what is happening: results, progress, loading and empty states."
              demo-block |alert |comp-alert | "|Inline message with a kind and role=alert for urgent feedback." $ div
                {}
                  :class-name $ str-spaced css/column css/gap8
                  :style $ {} (:width |420px) (:max-width |100%)
                comp-alert :info "|A neutral product update"
                comp-alert :success "|All checks passed"
                comp-alert :warning "|Usage is approaching the limit"
                comp-alert :error "|The last deployment failed"
              demo-block |progress |comp-progress | "|Accessible progress bar. The value is clamped between 0 and 100." $ div
                {} $ :style $ {} (:width |320px)
                comp-progress 78
              demo-block |spinner |comp-spinner |SpinnerOptions "|Indeterminate loading indicator with an accessible label."
                comp-spinner $ Option :some $ SpinnerOptions :label (Option :some "|Loading results")
                <> "|Loading results"
              demo-block |skeleton |comp-skeleton |SkeletonOptions "|Animated placeholder shapes that hold the layout while data loads." $ div
                {}
                  :class-name $ str-spaced css/row-middle css/gap8
                  :style $ {} $ :width |320px
                comp-skeleton $ Option :some $ SkeletonOptions :label (Option :some "|Loading avatar") :kind (Option :some :circle)
                div
                  {} $ :class-name $ str-spaced css/column css/gap8 css/expand
                  comp-skeleton $ Option :some $ SkeletonOptions :width (Option :some |48%)
                  comp-skeleton $ Option :some $ SkeletonOptions :width (Option :some |72%)
              demo-block |empty |comp-empty |EmptyOptions "|Empty state with an optional icon, description and action." $ comp-empty "|No components found" $ Option :some
                EmptyOptions :description $ Option :some "|Try another search term or clear the filters."
              demo-block |badge |comp-badge |BadgeOptions "|Small count or status marker. A dot badge keeps its text for screen readers."
                comp-badge |3 $ Option :none
                comp-badge |12 $ Option :some $ BadgeOptions :kind (Option :some :info)
                comp-badge |New $ Option :some $ BadgeOptions :kind (Option :some :success)
                comp-badge |99+ $ Option :some $ BadgeOptions :kind (Option :some :error)
                comp-badge "|Unread messages" $ Option :some $ BadgeOptions :kind (Option :some :warning) :dot? (Option :some true)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-form-controls $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-form-controls ()
            div
              {} $ :class-name style-demo-section
              render-category-head |form "|Form controls" "|Controlled inputs: pass the current value in, receive the next value through :on-change."
              demo-block |button |comp-button |ButtonOptions "|Native button with kinds, a disabled state and :on-click." (comp-button |Default)
                comp-button |Primary $ Option :some $ ButtonOptions :kind (Option :some :primary)
                comp-button |Danger $ Option :some $ ButtonOptions :kind (Option :some :danger)
                comp-button "|Danger outline" $ Option :some $ ButtonOptions :kind (Option :some :danger-outline)
                comp-button |Disabled $ Option :some $ ButtonOptions :disabled (Option :some true)
              demo-block |input |comp-input |InputOptions "|Controlled text input. The first argument is the displayed value; edits arrive through :on-change."
                comp-input | $ Option :some $ InputOptions :placeholder (Option :some "|Search components")
                comp-input |Respo $ Option :some $ InputOptions :disabled (Option :some true)
              demo-block |textarea |comp-textarea |InputOptions "|Multi-line text input sharing InputOptions with comp-input." $ comp-textarea | $ Option :some
                InputOptions :placeholder $ Option :some "|Notes about this component"
              demo-block |select |comp-select |SelectOptions "|Native select built from SelectOption items. The same items also feed comp-radio-group."
                comp-select |calcit language-options $ Option :none
                comp-select |clojure language-options $ Option :some $ SelectOptions :disabled (Option :some true)
              demo-block |checkbox |comp-checkbox |SwitchOptions "|Controlled native checkbox with an optional label."
                comp-checkbox true $ Option :some $ SwitchOptions :label (Option :some |Subscribed)
                comp-checkbox false $ Option :some $ SwitchOptions :label (Option :some |Unchecked)
              demo-block |switch |comp-switch |SwitchOptions "|Switch-styled native checkbox with an optional label."
                comp-switch true $ Option :some $ SwitchOptions :label (Option :some "|Compact mode")
                comp-switch false $ Option :some $ SwitchOptions :label (Option :some |Disabled) :disabled (Option :some true)
              demo-block |radio-group |comp-radio-group |RadioGroupOptions "|Visible choices that share a :name. Supports vertical layout and disabled items." $ comp-radio-group |calcit language-options $ Option :some
                RadioGroupOptions :name (Option :some |demo-language) :label $ Option :some |Language
              demo-block |field |comp-field |FieldOptions "|Wraps any control with a label, description, error text and required marker." $ div
                {} $ :class-name $ str-spaced css/column css/gap16
                comp-field |Email
                  comp-input | $ Option :some $ InputOptions :placeholder (Option :some |you@example.com)
                  Option :some $ FieldOptions :description (Option :some "|Used for notifications.") :required? $ Option :some true
                comp-field |Name
                  comp-input | $ Option :some $ InputOptions :placeholder (Option :some |Name)
                  Option :some $ FieldOptions :error $ Option :some "|Name is required."
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-demo-navigation $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-demo-navigation ()
            div
              {} $ :class-name style-demo-section
              render-category-head |navigation |Navigation "|Where the user is and how to move: tabs, breadcrumbs, pages and steps."
              demo-block |tabs |comp-tabs |TabsOptions "|Horizontal or vertical tabs. The selected tab is controlled; clicks call the route callback."
                div
                  {} $ :style $ {} (:min-width |320px)
                  comp-tabs
                    TabsOptions :selected $ Option :some :book
                    [] (TabRoute :tab :book |Book) (TabRoute :tab :card |Card) (TabRoute :tab :pl "|Programming language")
                    , ignore-tab-route
                comp-tabs
                  TabsOptions :selected (Option :some :card) :vertical? (Option :some true) :width $ Option :some 160
                  [] (TabRoute :tab :book |Book) (TabRoute :tab :card |Card) (TabRoute :tab :pl |Language)
                  , ignore-tab-route
              demo-block |breadcrumb |comp-breadcrumb |BreadcrumbOptions "|A trail of links ending with the current page." $ comp-breadcrumb
                []
                  BreadcrumbItem :label |Home :href $ Option :some |#/index.html
                  BreadcrumbItem :label |Components :href $ Option :some |#/components.html
                  BreadcrumbItem :label |Navigation
                Option :none
              demo-block |pagination |comp-pagination |PaginationOptions "|Page buttons for a 1-based page. Long ranges collapse into ellipses around the current page." $ div
                {} $ :class-name $ str-spaced css/column css/gap8
                comp-pagination 6 20 $ Option :none
                comp-pagination 2 5 $ Option :none
              demo-block |steps |comp-steps |StepsOptions "|Progress through a sequence. The current step is 0-based; vertical layout shows descriptions."
                comp-steps 1
                  [] (StepItem :title |Account) (StepItem :title |Profile) (StepItem :title |Review)
                  Option :none
                comp-steps 1
                  []
                    StepItem :title "|Create project" :description $ Option :some "|Pick a name."
                    StepItem :title "|Add members" :description $ Option :some "|Invite people."
                    StepItem :title |Deploy :description $ Option :some "|Ship the build."
                  Option :some $ StepsOptions :vertical? $ Option :some true
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'current-iso-string $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn current-iso-string ()
            :iso $ shared/date-now-snapshot
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ []
            :features $ #{} :js-ffi
        'demo-block $ %{} 'CodeEntry
          :doc "|Render one component block for the components page: title and options struct in the head, the given expressions as the live preview, and the same expressions formatted as Cirru code underneath. The code text is generated when the macro expands, so the preview and the code cannot drift apart. id becomes the element id demo-<id> that the index chips scroll to."
          :code $ quote $ defmacro demo-block (id title opts desc & exprs)
            let
                code $ trim $ ->
                  join-string
                    map exprs $ fn (e)
                      trim $ format-to-cirru e
                    , "|\n"
                  &str:replace "|\"\\\"" "|\""
                  &str:replace "|\\\"\"" "|\""
              quasiquote $ div
                {}
                  :id $ str |demo- ~id
                  :class-name style-demo-block
                render-demo-head ~title ~desc ~opts
                div
                  {} $ :class-name style-demo-stage
                  ~@ exprs
                div
                  {} $ :class-name style-demo-code
                  comp-cirru-snippet ~code $ Option :none
          :examples $ []
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'respo.schema/Element
            :required $ [] 'Syntax 'Syntax 'Syntax 'Syntax
            :rest $ :: 'Expr 'Dynamic
        'ignore-tab-route $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn ignore-tab-route (route dispatch!) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] (:: 'respo-ui.schema/TabRoute 'Value)
              :: 'Fn $ {} (:return 'Unit)
                :args $ [] 'Op
            :generics $ [] 'Value 'Op
        'language-options $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def language-options
            [] (respo-ui.schema/SelectOption :value |calcit :label |Calcit) (respo-ui.schema/SelectOption :value |clojure :label |Clojure) (respo-ui.schema/SelectOption :value |haskell :label |Haskell)
              respo-ui.schema/SelectOption :value |rust :label |Rust :disabled $ Option :some true
          :examples $ []
          :schema $ :: 'List 'respo-ui.schema/SelectOption
        'render-category-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-category-head (id title lead)
            div
              {}
                :id $ str |category- id
                :class-name style-category-head
              div
                {} $ :class-name style-section-title
                <> title
              div
                {} $ :class-name style-category-lead
                <> lead
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'String
        'render-chip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-chip (id)
            button
              {} (:type |button) (:class-name style-index-chip)
                :on-click $ on-jump $ str |#demo- id
              <> id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String
        'render-demo-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-demo-head (title desc opts)
            div
              {} $ :class-name style-demo-head
              div
                {} $ :class-name style-demo-title-row
                div
                  {} $ :class-name style-demo-name
                  <> title
                when
                  not $ blank? opts
                  div
                    {} $ :class-name style-demo-opts
                    <> opts
              div
                {} $ :class-name style-demo-desc
                <> desc
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'String
        'render-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-entry (url title)
            div ({})
              a $ {} (:href url) (:target |_blank) (:rel |noreferrer) (:class-name css/link) (:inner-text title)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String
        'render-index-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-index-group (group)
            div
              {} $ :class-name style-index-group
              button
                {} (:type |button) (:class-name style-index-title)
                  :on-click $ on-jump $ str |#category- group.:id
                <> group.:title
              list->
                {} $ :class-name $ str-spaced css/row style-index-chips
                map group.:items $ fn (id)
                  [] id $ render-chip id
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'respo-ui.comp.sidebar/ComponentGroup
        'style-category-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-category-head
            {} $ |& $ {} (:margin-bottom |16px) (:scroll-margin-top |16px)
          :examples $ []
          :schema $ :: 'String
        'style-category-lead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-category-lead
            {} $ |& $ {} (:font-size |14px) (:line-height |1.6)
              :color $ hsl 220 10 40
          :examples $ []
          :schema $ :: 'String
        'style-components-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-components-page
            {} $ |& $ {} (:max-width |1040px) (:padding "|8px 24px 50vh")
          :examples $ []
          :schema $ :: 'String
        'style-demo-block $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-block
            {} $ |& $ {} (:margin-bottom |20px) (:overflow :hidden) (:scroll-margin-top |16px)
              :border $ str "|1px solid " $ hsl 220 15 90
              :border-radius |10px
              :background-color :white
          :examples $ []
          :schema $ :: 'String
        'style-demo-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-code
            {} $ |& $ {} (:padding "|4px 18px 10px")
          :examples $ []
          :schema $ :: 'String
        'style-demo-desc $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-desc
            {} $ |& $ {} (:margin-top |6px) (:font-size |13px) (:line-height |1.6)
              :color $ hsl 220 10 40
          :examples $ []
          :schema $ :: 'String
        'style-demo-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-head
            {} $ |& $ {} (:padding "|14px 18px 12px")
          :examples $ []
          :schema $ :: 'String
        'style-demo-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-name
            {} $ |& $ {} (:font-family ui/font-code) (:font-size |15px) (:font-weight |600)
              :color $ hsl 220 45 32
          :examples $ []
          :schema $ :: 'String
        'style-demo-opts $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-opts
            {} $ |& $ {} (:font-family ui/font-code) (:font-size |12px) (:padding "|1px 8px") (:border-radius |10px)
              :color $ hsl 260 35 42
              :background-color $ hsl 260 60 96
          :examples $ []
          :schema $ :: 'String
        'style-demo-section $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-section
            {} $ |& $ {} (:margin-top |32px)
          :examples $ []
          :schema $ :: 'String
        'style-demo-stage $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-stage
            {} $ |& $ {} (:display :flex) (:flex-wrap :wrap) (:align-items :center) (:gap |12px) (:padding "|24px 18px") (:background-size "|16px 16px")
              :border-top $ str "|1px solid " $ hsl 220 15 93
              :border-bottom $ str "|1px solid " $ hsl 220 15 93
              :background-color $ hsl 220 25 99
              :background-image $ str "|radial-gradient(" (hsl 220 15 88) "|  1px, transparent 1px)"
          :examples $ []
          :schema $ :: 'String
        'style-demo-title-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-demo-title-row
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap |8px) (:flex-wrap :wrap)
          :examples $ []
          :schema $ :: 'String
        'style-hero-lead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-lead
            {} $ |& $ {} (:margin-top |8px) (:font-size |14px) (:line-height |1.7)
              :color $ hsl 220 10 36
          :examples $ []
          :schema $ :: 'String
        'style-index $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-index
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(240px, 1fr))") (:gap |16px) (:margin "|20px 0 8px")
          :examples $ []
          :schema $ :: 'String
        'style-index-chip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-index-chip
            {}
              |& $ {} (:padding "|2px 8px") (:border |none) (:border-radius |10px) (:font-family ui/font-code) (:font-size |12px) (:cursor :pointer) (:transition "|background-color 120ms")
                :color $ hsl 220 45 38
                :background-color $ hsl 220 60 96
              |&:hover $ {} $ :background-color (hsl 220 70 92)
          :examples $ []
          :schema $ :: 'String
        'style-index-chips $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-index-chips
            {} $ |& $ {} (:flex-wrap :wrap) (:gap |6px)
          :examples $ []
          :schema $ :: 'String
        'style-index-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-index-group
            {} $ |& $ {} (:padding |14px) (:border-radius |8px) (:background-color :white)
              :border $ str "|1px solid " $ hsl 220 15 90
          :examples $ []
          :schema $ :: 'String
        'style-index-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-index-title
            {}
              |& $ {} (:display :block) (:margin-bottom |8px) (:padding |0) (:border |none) (:background :none) (:font-family :inherit) (:font-size |13px) (:font-weight |600) (:cursor :pointer) (:text-align :left)
                :color $ hsl 220 18 24
              |&:hover $ {} $ :color (hsl 220 55 40)
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
            {} $ |& $ {} (:margin-bottom |4px) (:font-family ui/font-fancy) (:font-size |24px) (:font-weight |600)
              :color $ hsl 220 25 18
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.components
          :require
            respo.core :refer $ defcomp >> div a <> pre code list-> button
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
            respo-ui.comp :refer $ comp-tabs comp-placeholder comp-cirru-snippet comp-button comp-attributes comp-snippet comp-time comp-tag comp-close comp-catoptric-text comp-copy comp-input comp-textarea comp-select comp-switch comp-checkbox comp-avatar comp-skeleton comp-spinner comp-empty comp-card comp-progress comp-alert comp-divider comp-radio-group comp-field comp-badge comp-breadcrumb comp-pagination comp-steps comp-collapse comp-kbd comp-tooltip
            js-ffi.shared :as shared
            respo-ui.schema :refer $ ButtonOptions InputOptions SelectOption SelectOptions SwitchOptions RadioGroupOptions FieldOptions BadgeOptions CardOptions CollapseOptions TooltipOptions AvatarOptions SkeletonOptions SpinnerOptions EmptyOptions DividerOptions TabsOptions TabRoute BreadcrumbItem StepItem StepsOptions AttributesOptions PresentationOptions
            respo-ui.comp.sidebar :refer $ on-jump component-groups
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
                  (:design) :design
                  (:components) :components
                  (:utils) :utils
                  (:not-found _) :not-found
                  _ :index
              div
                {}
                  :class-name $ str-spaced css/preset css/global css/fullscreen css/column
                  :style $ {} $ :overflow :hidden
                comp-topbar route-name
                div
                  {} $ :class-name style-shell-body
                  when (not= route-name :index) (comp-sidenav route-name)
                  div
                    {} $ :class-name $ if (= route-name :index) css-content-home css-content
                    match router
                      (:index) (comp-home)
                      (:widgets) (comp-widgets-page)
                      (:layouts) (comp-layouts-page)
                      (:fonts) (comp-fonts-page)
                      (:design) (comp-design-page)
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
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data" $ Option :none
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
                          Option :some :json
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data :json" $ Option :none
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
                          Option :some :edn
                  comp-cirru-snippet "|respo-ui.util/tab-echo! data :edn" $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'css-content $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-content
            {}
              |$0 $ {} (:flex |1) (:min-width |0) (:overflow-y :auto) (:box-sizing :border-box) (:padding "|8px 32px 48px")
              |$0$0 $ {} (:contained "|@media (max-width: 760px)") (:padding "|8px 16px 48px")
          :examples $ []
          :schema $ :: 'String
        'css-content-home $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-content-home
            {} $ |$0 $ {} (:flex |1) (:min-width |0) (:overflow-y :auto)
          :examples $ []
          :schema $ :: 'String
        'random-count $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn random-count ()
            floor $ * 100 $ js-ffi.contract/expect-number |Math.random (js/Math.random)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Number)
            :args $ []
            :features $ #{} :js-ffi
        'style-shell-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-shell-body
            {} $ |& $ {} (:display :flex) (:flex |1) (:min-height |0)
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.container
          :require
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp >> div span input button <>
            respo.comp.space :refer $ =<
            respo.comp.inspect :refer $ comp-inspect
            respo-ui.core :as ui
            respo-ui.comp.sidebar :refer $ comp-topbar comp-sidenav
            respo-ui.comp.home :refer $ comp-home
            respo-ui.comp.widgets-page :refer $ comp-widgets-page
            respo-ui.comp.layouts-page :refer $ comp-layouts-page
            respo-ui.comp.fonts-page :refer $ comp-fonts-page
            respo-ui.comp.design-page :refer $ comp-design-page
            respo-ui.comp.components :refer $ comp-components-page
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-ui.config :refer $ dev?
            respo-ui.util :refer $ tab-echo!
            respo-ui.comp :refer $ comp-cirru-snippet
    'respo-ui.comp.design-page $ %{} 'FileEntry
      :defs $ {}
        'DesignNote $ %{} 'CodeEntry (:doc "|A titled paragraph on the design system page.")
          :code $ quote $ defstruct DesignNote (:title 'String) (:body 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'TokenGroup $ %{} 'CodeEntry (:doc "|A titled set of token names shown together.")
          :code $ quote $ defstruct TokenGroup (:title 'String)
            :names $ :: 'List 'String
          :examples $ []
          :schema $ :: 'StructDef
        'color-groups $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def color-groups
            []
              TokenGroup :title |Text :names $ [] |color-text |color-text-secondary |color-text-muted |color-text-disabled |color-text-inverse
              TokenGroup :title "|Surface and border" :names $ [] |color-bg |color-surface |color-surface-subtle |color-surface-muted |color-border |color-border-strong |color-border-hover
              TokenGroup :title |Primary :names $ [] |color-primary |color-primary-hover |color-primary-active |color-primary-soft |color-primary-border |color-focus
              TokenGroup :title |Info :names $ [] |color-info |color-info-soft |color-info-border |color-info-text
              TokenGroup :title |Success :names $ [] |color-success |color-success-soft |color-success-border |color-success-text
              TokenGroup :title |Warning :names $ [] |color-warning |color-warning-soft |color-warning-border |color-warning-text
              TokenGroup :title |Danger :names $ [] |color-danger |color-danger-soft |color-danger-border |color-danger-text |color-overlay
          :examples $ []
          :schema $ :: 'List 'respo-ui.comp.design-page/TokenGroup
        'comp-design-page $ %{} 'CodeEntry
          :doc "|Design system page: principles, every token and the component conventions."
          :code $ quote $ defcomp comp-design-page ()
            div
              {} $ :class-name style-page
              div
                {} $ :class-name style-hero
                div
                  {} $ :class-name style-eyebrow
                  <> |Foundations
                div
                  {} $ :class-name style-title
                  <> "|Design system"
                div
                  {} $ :class-name style-lead
                  <> "|One set of tokens and rules behind every Respo UI component. Tokens are CSS custom properties named --rui-*, declared on :root by respo-ui.tokens, and read in Calcit through defs such as tokens/color-primary. Override the variables to theme an app; never write raw colors or sizes inside a component."
              render-principles
              render-section-head |color |Color "|A neutral gray ramp carries the interface. Blue is the single accent for actions, selection and focus. Green, amber and red only signal state. Components use the semantic names below, not the palette."
              render-palette
              render-color-groups
              render-section-head |typography |Typography "|Hind for interface text, Source Code Pro for code and keys, Josefin Sans only for brand titles. Body and controls use text-md; labels and descriptions step down to text-sm."
              render-token-table (tokens-of |font) :font
              render-token-table (tokens-of |text) :text
              render-section-head |spacing |Spacing "|Every padding, gap and offset comes from a 4px grid. Components own their inner spacing; space between components belongs to layout classes such as css/stack and css/cluster."
              render-token-table (tokens-of |space) :space
              render-section-head |shape |Shape "|Four radii: sm for small marks, md for controls, lg for containers, full for pills."
              render-token-table (tokens-of |radius) :radius
              render-section-head |sizing "|Control sizing" "|All interactive controls share three heights so they line up in a toolbar or a form row. md is the default."
              render-token-table (tokens-of |control) :control
              render-section-head |elevation |Elevation "|Shadows are reserved for surfaces that float. Resting cards use a border; hover and popovers lift with shadows; focus uses its own ring."
              render-token-table (tokens-of |shadow) :shadow
              render-section-head |motion "|Motion and layers" "|Transitions animate color, opacity and transform only, with duration-fast for hover and press. Layers keep floating surfaces in a fixed order."
              render-token-table (tokens-of |motion) :plain
              render-token-table (tokens-of |layer) :plain
              render-section-head |conventions "|Component conventions" "|Rules every component follows. New components and reviews check against this list."
              render-rules
              render-section-head |usage "|Using tokens" "|Read tokens in defstyle through respo-ui.tokens. To theme an app, override the variables after the library styles load."
              div
                {} $ :class-name style-usage
                comp-cirru-snippet "|ns app.comp.panel\n  :require\n    respo-ui.tokens :as tokens\n    respo.css :refer $ defstyle\n\ndefstyle style-panel $ {}\n  |& $ {} (:padding tokens/space-4) (:border-radius tokens/radius-lg)\n    :background-color tokens/color-surface\n    :border $ str \"|1px solid \" tokens/color-border" $ Option :none
                comp-snippet "|:root {\n  --rui-blue-500: hsl(262 70% 56%);\n  --rui-blue-600: hsl(262 64% 48%);\n  --rui-radius-md: 4px;\n}" $ Option :none
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'palette-families $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def palette-families ([] |gray |blue |green |amber |red)
          :examples $ []
          :schema $ :: 'List 'String
        'principles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def principles
            []
              DesignNote :title "|Quiet by default" :body "|Neutral surfaces and one accent. Color appears only when it means something: an action, a selection or a state."
              DesignNote :title "|Native first" :body "|Buttons, inputs, selects, details and checkboxes are native elements, so keyboard and screen reader behaviour come for free."
              DesignNote :title "|Controlled state" :body "|Values come in as arguments and changes go out through :on-change. Components keep no hidden state."
              DesignNote :title "|One geometry" :body "|Sizes come from a 4px grid, three control heights and four radii, so components line up without tweaks."
          :examples $ []
          :schema $ :: 'List 'respo-ui.comp.design-page/DesignNote
        'render-color-groups $ %{} 'CodeEntry
          :doc "|Semantic colors as swatch cards, one row per role."
          :code $ quote $ defn render-color-groups ()
            list->
              {} $ :class-name style-color-groups
              map color-groups $ fn (group)
                [] group.:title $ div ({})
                  div
                    {} $ :class-name style-group-title
                    <> group.:title
                  list->
                    {} $ :class-name style-swatch-grid
                    map
                      filter (tokens-of |color)
                        fn (token) (includes? group.:names token.:name)
                      fn (token)
                        [] token.:name $ div
                          {} $ :class-name style-swatch-card
                          div $ {} (:class-name style-swatch-color)
                            :style $ {} $ :background-color (token-var token.:name)
                          div
                            {} $ :class-name style-swatch-meta
                            div
                              {} $ :class-name style-code
                              <> $ str |tokens/ token.:name
                            div
                              {} $ :class-name style-value
                              <> token.:value
                            div
                              {} $ :class-name style-swatch-note
                              <> token.:note
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ []
        'render-palette $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-palette ()
            list->
              {} $ :class-name style-palette
              map palette-families $ fn (family)
                [] family $ div
                  {} $ :class-name style-palette-row
                  div
                    {} $ :class-name style-palette-name
                    <> family
                  list->
                    {} $ :class-name style-palette-ramp
                    map
                      filter (tokens-of |palette)
                        fn (token)
                          starts-with? token.:name $ str family |-
                      fn (token)
                        [] token.:name $ div
                          {} (:class-name style-ramp-step) (:title token.:value)
                          div $ {} (:class-name style-ramp-chip)
                            :style $ {} $ :background-color (token-var token.:name)
                          div
                            {} $ :class-name style-ramp-label
                            <> $ &str:replace token.:name (str family |-) |
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ []
        'render-principles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-principles ()
            list->
              {} $ :class-name style-principles
              map principles $ fn (item)
                let
                    title item.:title
                    body item.:body
                  [] title $ div
                    {} $ :class-name style-principle
                    div
                      {} $ :class-name style-principle-title
                      <> title
                    div
                      {} $ :class-name style-principle-body
                      <> body
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ []
        'render-rules $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-rules ()
            list->
              {} $ :class-name style-rules
              map rules $ fn (item)
                let
                    title item.:title
                    body item.:body
                  [] title $ div
                    {} $ :class-name style-rule
                    div
                      {} $ :class-name style-rule-title
                      <> title
                    div
                      {} $ :class-name style-principle-body
                      <> body
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ []
        'render-sample $ %{} 'CodeEntry
          :doc "|Visual sample of one token, chosen by the kind of table."
          :code $ quote $ defn render-sample (kind token)
            let
                css-ref $ token-var token.:name
              case-default kind
                div
                  {} $ :class-name style-sample-plain
                  <> token.:value
                :swatch $ div $ {} (:class-name style-sample-swatch)
                  :style $ {} $ :background-color css-ref
                :font $ div
                  {} (:class-name style-sample-text)
                    :style $ {} $ :font-family css-ref
                  <> "|Aa 组件 0123"
                :text $ div
                  {} (:class-name style-sample-text)
                    :style $ if (starts-with? token.:name |text-)
                      {} $ :font-size css-ref
                      if (starts-with? token.:name |weight-)
                        {} $ :font-weight css-ref
                        {} $ :line-height css-ref
                  <> |Aa
                :space $ div $ {} (:class-name style-sample-space)
                  :style $ {} $ :width css-ref
                :radius $ div $ {} (:class-name style-sample-radius)
                  :style $ {} $ :border-radius css-ref
                :control $ div
                  {} (:class-name style-sample-control)
                    :style $ if (ends-with? token.:name |-padding)
                      {} $ :padding-inline css-ref
                      {} $ :height css-ref
                  <> |Button
                :shadow $ div $ {} (:class-name style-sample-shadow)
                  :style $ {} $ :box-shadow css-ref
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'Tag 'respo-ui.tokens/DesignToken
        'render-section-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-section-head (id title lead)
            div
              {}
                :id $ str |design- id
                :class-name style-section-head
              div
                {} $ :class-name style-section-title
                <> title
              div
                {} $ :class-name style-section-lead
                <> lead
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'String
        'render-token-table $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-token-table (tokens kind)
            div
              {} $ :class-name style-table
              div
                {} $ :class-name $ str-spaced style-row style-row-head
                <> |Sample
                <> |Token
                <> |Usage
              list-> ({})
                map tokens $ fn (token)
                  [] token.:name $ div
                    {} $ :class-name style-row
                    div
                      {} $ :class-name style-cell-sample
                      render-sample kind token
                    div ({})
                      div
                        {} $ :class-name style-code
                        <> $ str |tokens/ token.:name
                      div
                        {} $ :class-name style-value
                        <> $ str |--rui- token.:name "| · " token.:value
                    div
                      {} $ :class-name style-note
                      <> token.:note
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] (:: 'List 'respo-ui.tokens/DesignToken) 'Tag
        'rules $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def rules
            []
              DesignNote :title |Sizes :body "|Controls are control-md high with control-md-padding and text-md, so inputs, selects and buttons line up. control-sm (with text-sm) suits dense toolbars and table rows; control-lg (with text-lg) suits prominent actions. Controls use radius-md; tags, badges and kbd use radius-sm."
              DesignNote :title |States :body "|Every interactive element styles hover, active, :focus-visible and disabled. Focus adds focus-ring and never removes the outline without it. Disabled uses color-text-disabled on color-surface-muted, cursor not-allowed and no hover."
              DesignNote :title |Intent :body "|:kind picks the intent: :info, :success, :warning or :error, mapped to the info, success, warning and danger tokens. Solid fills use color-*; soft surfaces use color-*-soft, color-*-border and color-*-text."
              DesignNote :title |Validation :body "|An invalid field gets a color-danger border, aria-invalid and a message in color-danger-text below it. Required marks use color-danger-text."
              DesignNote :title |Spacing :body "|Inner padding and gaps use space-* tokens. A component sets no outer margin; the parent layout spaces its children."
              DesignNote :title |Text :body "|Body and controls: text-md, leading-normal. Labels: text-sm, weight-medium. Captions: text-xs, color-text-muted. Titles use weight-semibold, not the display font."
              DesignNote :title |Motion :body "|Animate color, background, opacity and transform with duration-fast and ease. Expanding content uses duration-normal. Wrap anything larger in prefers-reduced-motion."
              DesignNote :title |Accessibility :body "|Text contrast is at least 4.5:1. Icon-only controls carry aria-label. Targets are at least 24px. State is exposed with aria attributes, not only color."
              DesignNote :title |Naming :body "|Options structs are named <Component>Options in respo-ui.schema. Style defs are style-<component>-<part>. Components read colors, font sizes, radii, control heights, shadows and durations from tokens/<name> and contain no raw hsl values. Paddings and gaps stay on the 4px grid."
          :examples $ []
          :schema $ :: 'List 'respo-ui.comp.design-page/DesignNote
        'style-cell-sample $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-cell-sample
            {} $ |& $ {} (:display :flex) (:align-items :center) (:min-height tokens/control-md) (:min-width 0) (:overflow :hidden)
          :examples $ []
          :schema $ :: 'String
        'style-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-code
            {} $ |& $ {} (:font-family tokens/font-mono) (:font-size tokens/text-xs) (:color tokens/color-text) (:overflow-wrap :anywhere)
          :examples $ []
          :schema $ :: 'String
        'style-color-groups $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-color-groups
            {} $ |& $ {} (:display :flex) (:flex-direction :column) (:gap tokens/space-6) (:margin-top tokens/space-8)
          :examples $ []
          :schema $ :: 'String
        'style-eyebrow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-eyebrow
            {} $ |& $ {} (:font-size tokens/text-sm) (:font-weight tokens/weight-semibold) (:color tokens/color-primary) (:line-height tokens/leading-normal)
          :examples $ []
          :schema $ :: 'String
        'style-group-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-group-title
            {} $ |& $ {} (:margin-bottom tokens/space-2) (:font-size tokens/text-sm) (:font-weight tokens/weight-semibold) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-hero $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero
            {} $ |& $ {} (:padding "|32px 0 8px") (:max-width |760px)
          :examples $ []
          :schema $ :: 'String
        'style-lead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-lead
            {} $ |& $ {} (:margin-top tokens/space-3) (:font-size tokens/text-lg) (:line-height tokens/leading-relaxed) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-note $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-note
            {} $ |& $ {} (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-page $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-page
            {} $ |& $ {} (:max-width |1080px) (:padding-bottom tokens/space-16) (:color tokens/color-text)
          :examples $ []
          :schema $ :: 'String
        'style-palette $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette
            {} $ |& $ {} (:display :flex) (:flex-direction :column) (:gap tokens/space-3) (:margin-bottom tokens/space-6)
          :examples $ []
          :schema $ :: 'String
        'style-palette-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-name
            {} $ |& $ {} (:width |56px) (:flex-shrink 0) (:font-family tokens/font-mono) (:font-size tokens/text-sm) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-palette-ramp $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-ramp
            {} $ |& $ {} (:display :flex) (:flex 1) (:min-width 0) (:gap tokens/space-1) (:overflow-x :auto)
          :examples $ []
          :schema $ :: 'String
        'style-palette-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-palette-row
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap tokens/space-4)
          :examples $ []
          :schema $ :: 'String
        'style-principle $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-principle
            {} $ |& $ {} (:padding tokens/space-5) (:border-radius tokens/radius-lg) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border
              :border-top $ str "|3px solid " tokens/color-primary
          :examples $ []
          :schema $ :: 'String
        'style-principle-body $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-principle-body
            {} $ |& $ {} (:margin-top tokens/space-2) (:font-size tokens/text-sm) (:line-height tokens/leading-normal) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-principle-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-principle-title
            {} $ |& $ {} (:font-size tokens/text-lg) (:font-weight tokens/weight-semibold) (:line-height tokens/leading-tight)
          :examples $ []
          :schema $ :: 'String
        'style-principles $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-principles
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(220px, 1fr))") (:gap tokens/space-4) (:margin-top tokens/space-8)
          :examples $ []
          :schema $ :: 'String
        'style-ramp-chip $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ramp-chip
            {} $ |& $ {} (:height tokens/control-lg) (:border-radius tokens/radius-md)
              :box-shadow $ str "|inset 0 0 0 1px " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-ramp-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ramp-label
            {} $ |& $ {} (:margin-top tokens/space-1) (:font-family tokens/font-mono) (:font-size tokens/text-xs) (:line-height tokens/leading-normal) (:color tokens/color-text-muted)
          :examples $ []
          :schema $ :: 'String
        'style-ramp-step $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-ramp-step
            {} $ |& $ {} (:flex "|1 0 56px") (:max-width |96px)
          :examples $ []
          :schema $ :: 'String
        'style-row $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-row
            {}
              |& $ {} (:display :grid)
                :grid-template-columns "|112px minmax(160px, 1.2fr) minmax(140px, 1fr) minmax(160px, 1.4fr)"
                :gap tokens/space-4
                :align-items :center
                :padding "|10px 16px"
                :font-size tokens/text-sm
                :line-height tokens/leading-normal
                :border-top $ str "|1px solid " tokens/color-border
              |&:first-child $ {} $ :border-top :none
          :examples $ []
          :schema $ :: 'String
        'style-row-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-row-head
            {} $ |& $ {} (:font-size tokens/text-xs) (:font-weight tokens/weight-semibold) (:text-transform :uppercase) (:letter-spacing |0.04em) (:color tokens/color-text-muted) (:background-color tokens/color-surface-subtle)
          :examples $ []
          :schema $ :: 'String
        'style-rule $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-rule
            {} $ |& $ {} (:padding tokens/space-4) (:border-radius tokens/radius-lg) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-rule-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-rule-title
            {} $ |& $ {} (:font-size tokens/text-md) (:font-weight tokens/weight-semibold) (:line-height tokens/leading-tight)
          :examples $ []
          :schema $ :: 'String
        'style-rules $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-rules
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(300px, 1fr))") (:gap tokens/space-3)
          :examples $ []
          :schema $ :: 'String
        'style-sample-control $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sample-control
            {} $ |& $ {} (:display :inline-flex) (:align-items :center) (:height tokens/control-md) (:padding-inline tokens/control-md-padding) (:border-radius tokens/radius-md) (:font-size tokens/text-sm) (:color tokens/color-text) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border-strong
          :examples $ []
          :schema $ :: 'String
        'style-sample-plain $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sample-plain
            {} $ |& $ {} (:font-family tokens/font-mono) (:font-size tokens/text-xs) (:color tokens/color-text-secondary) (:overflow-wrap :anywhere)
          :examples $ []
          :schema $ :: 'String
        'style-sample-radius $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sample-radius
            {} $ |& $ {} (:width tokens/control-lg) (:height tokens/control-lg) (:background-color tokens/color-primary-soft)
              :border $ str "|2px solid " tokens/color-primary
          :examples $ []
          :schema $ :: 'String
        'style-sample-shadow $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sample-shadow
            {} $ |& $ {} (:width |72px) (:height tokens/control-md) (:border-radius tokens/radius-md) (:background-color tokens/color-surface)
          :examples $ []
          :schema $ :: 'String
        'style-sample-space $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sample-space
            {} $ |& $ {} (:height tokens/space-3) (:border-radius tokens/radius-sm) (:background-color tokens/color-primary)
          :examples $ []
          :schema $ :: 'String
        'style-sample-swatch $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sample-swatch
            {} $ |& $ {} (:width |72px) (:height tokens/control-md) (:border-radius tokens/radius-md)
              :box-shadow $ str "|inset 0 0 0 1px " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-sample-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sample-text
            {} $ |& $ {} (:white-space :nowrap) (:line-height tokens/leading-tight)
          :examples $ []
          :schema $ :: 'String
        'style-section-head $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-section-head
            {} $ |& $ {} (:margin-top tokens/space-12) (:margin-bottom tokens/space-4) (:scroll-margin-top tokens/space-4) (:max-width |760px)
          :examples $ []
          :schema $ :: 'String
        'style-section-lead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-section-lead
            {} $ |& $ {} (:margin-top tokens/space-2) (:font-size tokens/text-md) (:line-height tokens/leading-normal) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-section-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-section-title
            {} $ |& $ {} (:font-size tokens/text-2xl) (:font-weight tokens/weight-semibold) (:line-height tokens/leading-tight)
          :examples $ []
          :schema $ :: 'String
        'style-swatch-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-swatch-card
            {} $ |& $ {} (:border-radius tokens/radius-lg) (:overflow :hidden) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-swatch-color $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-swatch-color
            {} $ |& $ {} (:height |56px)
              :border-bottom $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-swatch-grid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-swatch-grid
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fill, minmax(150px, 1fr))") (:gap tokens/space-3)
          :examples $ []
          :schema $ :: 'String
        'style-swatch-meta $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-swatch-meta
            {} $ |& $ {} (:padding "|8px 12px 10px") (:line-height tokens/leading-normal)
          :examples $ []
          :schema $ :: 'String
        'style-swatch-note $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-swatch-note
            {} $ |& $ {} (:margin-top tokens/space-1) (:font-size tokens/text-xs) (:color tokens/color-text-secondary)
          :examples $ []
          :schema $ :: 'String
        'style-table $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-table
            {} $ |& $ {} (:margin-bottom tokens/space-4) (:border-radius tokens/radius-lg) (:overflow :hidden) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-border
          :examples $ []
          :schema $ :: 'String
        'style-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-title
            {} $ |& $ {} (:margin-top tokens/space-1) (:font-size tokens/text-3xl) (:font-weight tokens/weight-semibold) (:line-height tokens/leading-tight)
          :examples $ []
          :schema $ :: 'String
        'style-usage $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-usage
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(min(100%, 420px), 1fr))") (:gap tokens/space-4) (:align-items :start)
          :examples $ []
          :schema $ :: 'String
        'style-value $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-value
            {} $ |& $ {} (:font-family tokens/font-mono) (:font-size tokens/text-xs) (:color tokens/color-text-muted) (:overflow-wrap :anywhere)
          :examples $ []
          :schema $ :: 'String
        'token-var $ %{} 'CodeEntry (:doc "|CSS var() reference for a token name.")
          :code $ quote $ defn token-var (name) (str "|var(--rui-" name "|)")
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'String)
            :args $ [] 'String
        'tokens-of $ %{} 'CodeEntry (:doc "|Tokens of one group, in declaration order.")
          :code $ quote $ defn tokens-of (group)
            filter tokens/design-tokens $ fn (token) (= token.:group group)
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] 'String
            :return $ :: 'List 'respo-ui.tokens/DesignToken
      :ns $ %{} 'NsEntry (:doc "|Design system page of the showcase site.")
        :code $ quote $ ns respo-ui.comp.design-page
          :require
            respo.core :refer $ defcomp div <> list->
            respo.css :refer $ defstyle
            respo-ui.tokens :as tokens
            respo-ui.comp :refer $ comp-cirru-snippet comp-snippet
    'respo-ui.comp.docs $ %{} 'FileEntry
      :defs $ {} $ 'comp-doc-block
        %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-doc-block (text)
            div $ {} (:inner-text text)
              :style $ {} (:white-space :pre-wrap) (:line-height |1.6) (:color |#555)
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
                {} $ :class-name style-hero
                div
                  {} $ :class-name style-hero-inner
                  div
                    {} $ :class-name style-hero-badge
                    <> $ str |v config/version "| · Calcit + Respo"
                  div
                    {} $ :class-name style-hero-title
                    <> "|Respo UI"
                  div
                    {} $ :class-name style-hero-tagline
                    <> "|Typed UI components for Respo apps"
                  div
                    {} $ :class-name style-hero-lead
                    <> "|Controlled controls, named option structs and static CSS classes, written in Calcit. Copy a snippet, pass your state in, and keep the rest of the app in your store."
                  div
                    {} $ :class-name style-hero-actions
                    comp-button "|Browse components" $ Option :some $ ButtonOptions :kind (Option :some :primary) :on-click
                      Option :some $ on-route |components.html
                    comp-button "|Layout classes" $ Option :some $ ButtonOptions :on-click
                      Option :some $ on-route |layouts.html
                    a $ {} (:href |https://github.com/Respo/respo-ui.calcit) (:target |_blank) (:rel |noreferrer)
                      :class-name $ str-spaced css/button style-hero-link
                      :inner-text |GitHub
                  div
                    {} $ :class-name style-hero-install
                    comp-cirru-snippet (str "|Respo/respo-ui.calcit |" config/version) (Option :none)
              div
                {} $ :class-name style-home-section
                div
                  {} $ :class-name style-feature-grid
                  render-feature "|Typed option structs" "|Every component takes positional data and one Option of a named struct. Write only the fields you use; the checker catches typos."
                  render-feature "|Controlled by design" "|Values go in, :on-change comes out with d!. No hidden component state, so the store stays the single source of truth."
                  render-feature "|Static CSS" "|Styles are generated once by defstyle. Rendering only joins short class names, with no per-render style objects."
                  render-feature "|Accessible defaults" "|Native details, radio and checkbox elements, roles and aria labels, and visible keyboard focus come built in."
              div
                {} $ :class-name style-home-section
                div
                  {} $ :class-name style-home-heading
                  <> "|See it at a glance"
                div
                  {} $ :class-name style-home-sub
                  <> "|Real components from the library, rendered live. Open the components page for each one with its code."
                div
                  {} $ :class-name style-gallery-sheet
                  comp-home-gallery
              div
                {} $ :class-name style-home-section
                div
                  {} $ :class-name style-home-heading
                  <> "|Everything in the box"
                div
                  {} $ :class-name style-home-sub
                  <> "|33 components in six groups. Pick a group to jump into the components page."
                list->
                  {} $ :class-name style-cat-grid
                  map component-groups $ fn (group)
                    [] group.:id $ render-cat-card group
              div
                {} $ :class-name style-home-section
                div
                  {} $ :class-name style-home-heading
                  <> "|Quick start"
                div
                  {} $ :class-name style-home-sub
                  <> "|Add the module to deps.cirru, run caps, then import components and their option structs."
                div
                  {} $ :class-name $ str-spaced css/stack css/gap8
                  comp-cirru-snippet
                    str "|{} (:calcit-version |0.30.1-alpha.4)\n  :dependencies $ {}\n    |Respo/respo-ui.calcit |" config/version
                    Option :none
                  comp-cirru-snippet "|ns app.comp.demo $ :require\n  respo-ui.comp :refer $ comp-button\n  respo-ui.schema :refer $ ButtonOptions\n\ncomp-button |Save $ Option :some $ ButtonOptions :kind (Option :some :primary)" $ Option :none
                  div
                    {} $ :class-name style-home-sub
                    <> "|Options are the last argument: pass Option :none for defaults, or write only the fields you use. Dialogs and prompts live in respo-alerts."
              div
                {} $ :class-name style-footer
                <> $ str "|Respo UI " config/version "| · MIT · Built with Calcit and Respo"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'comp-home-gallery $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-home-gallery ()
            div
              {} $ :class-name style-gallery
              comp-card
                div
                  {} $ :class-name $ str-spaced css/column css/gap8
                  comp-input | $ Option :some $ InputOptions :placeholder (Option :some "|Search components")
                  comp-select |calcit language-options $ Option :none
                  comp-switch true $ Option :some $ SwitchOptions :label (Option :some "|Compact mode")
                  div
                    {} $ :class-name $ str-spaced css/row css/gap8
                    comp-button |Cancel
                    comp-button |Save $ Option :some $ ButtonOptions :kind (Option :some :primary)
                Option :some $ CardOptions :title $ Option :some "|Form controls"
              comp-card
                div
                  {} $ :class-name $ str-spaced css/column css/gap8
                  comp-alert :success "|All checks passed"
                  comp-alert :warning "|Usage is approaching the limit"
                  comp-progress 72
                  div
                    {} $ :class-name $ str-spaced css/row-middle css/gap8
                    comp-badge |12 $ Option :some $ BadgeOptions :kind (Option :some :info)
                    comp-badge |New $ Option :some $ BadgeOptions :kind (Option :some :success)
                    comp-tag :info |beta
                    comp-tag :error |deprecated
                Option :some $ CardOptions :title $ Option :some |Feedback
              comp-card
                div
                  {} $ :class-name $ str-spaced css/column css/gap16
                  comp-tabs
                    TabsOptions :selected $ Option :some :book
                    [] (TabRoute :tab :book |Book) (TabRoute :tab :card |Card) (TabRoute :tab :pl |Language)
                    , ignore-tab-route
                  comp-pagination 4 9 $ Option :none
                  comp-steps 1
                    [] (StepItem :title |Account) (StepItem :title |Profile) (StepItem :title |Review)
                    Option :none
                Option :some $ CardOptions :title $ Option :some |Navigation
              comp-card
                div
                  {} $ :class-name $ str-spaced css/column css/gap16
                  div
                    {} $ :class-name $ str-spaced css/row-middle css/gap8
                    comp-avatar |CY $ Option :some $ AvatarOptions :size (Option :some :small)
                    comp-avatar |RS $ Option :none
                    comp-avatar |UI $ Option :some $ AvatarOptions :size (Option :some :large)
                  div
                    {} $ :class-name $ str-spaced css/row-middle css/gap8
                    <> "|Search with"
                    comp-kbd ([] |Ctrl |K) (Option :none)
                  comp-attributes $ AttributesOptions :items $ [] (:: :attr |Name |Respo) (:: :attr |Language |Calcit)
                Option :some $ CardOptions :title $ Option :some "|Data display"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ []
        'render-cat-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-cat-card (group)
            div
              {} (:class-name style-cat-card)
                :on-click $ on-route |components.html
              div
                {} $ :class-name style-cat-title
                <> group.:title
              div
                {} $ :class-name style-cat-items
                <> $ join-string group.:items "|  "
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'respo-ui.comp.sidebar/ComponentGroup
        'render-feature $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-feature (title text)
            div
              {} $ :class-name style-feature-card
              div
                {} $ :class-name style-feature-title
                <> title
              div
                {} $ :class-name style-feature-text
                <> text
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String
        'style-cat-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-cat-card
            {}
              |& $ {} (:padding "|16px 18px") (:border-radius |10px) (:cursor :pointer) (:background-color :white) (:transition "|border-color 120ms, box-shadow 120ms")
                :border $ str "|1px solid " $ hsl 220 15 91
              |&:hover $ {}
                :border-color $ hsl 205 70 75
                :box-shadow $ str "|0 2px 10px " $ hsl 205 60 50 0.12
          :examples $ []
          :schema $ :: 'String
        'style-cat-grid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-cat-grid
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(300px, 1fr))") (:gap |16px)
          :examples $ []
          :schema $ :: 'String
        'style-cat-items $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-cat-items
            {} $ |& $ {} (:margin-top |8px) (:font-size |13px) (:line-height |1.8) (:font-family ui/font-code)
              :color $ hsl 220 10 46
          :examples $ []
          :schema $ :: 'String
        'style-cat-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-cat-title
            {} $ |& $ {} (:font-size |15px) (:font-weight |600)
              :color $ hsl 220 25 18
          :examples $ []
          :schema $ :: 'String
        'style-feature-card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-feature-card
            {} $ |& $ {} (:padding "|18px 20px") (:border-radius |10px) (:background-color :white)
              :border $ str "|1px solid " $ hsl 220 15 91
              :border-top $ str "|3px solid " $ hsl 205 85 62
          :examples $ []
          :schema $ :: 'String
        'style-feature-grid $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-feature-grid
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(230px, 1fr))") (:gap |16px)
          :examples $ []
          :schema $ :: 'String
        'style-feature-text $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-feature-text
            {} $ |& $ {} (:margin-top |6px) (:font-size |14px) (:line-height |1.7)
              :color $ hsl 220 10 40
          :examples $ []
          :schema $ :: 'String
        'style-feature-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-feature-title
            {} $ |& $ {} (:font-size |16px) (:font-weight |600) (:line-height |1.4)
              :color $ hsl 220 25 18
          :examples $ []
          :schema $ :: 'String
        'style-footer $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-footer
            {} $ |& $ {} (:margin-top |64px) (:padding "|24px 24px 40px") (:text-align :center) (:font-size |13px)
              :color $ hsl 220 10 50
              :border-top $ str "|1px solid " $ hsl 220 15 93
          :examples $ []
          :schema $ :: 'String
        'style-gallery $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-gallery
            {} $ |& $ {} (:display :grid) (:grid-template-columns "|repeat(auto-fit, minmax(min(100%, 440px), 1fr))") (:gap |16px)
          :examples $ []
          :schema $ :: 'String
        'style-gallery-sheet $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-gallery-sheet
            {} $ |& $ {} (:padding |20px) (:border-radius |12px) (:background-size "|16px 16px")
              :border $ str "|1px solid " $ hsl 220 15 93
              :background-color $ hsl 220 25 99
              :background-image $ str "|radial-gradient(" (hsl 220 15 88) "|  1px, transparent 1px)"
          :examples $ []
          :schema $ :: 'String
        'style-hero $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero
            {} $ |& $ {} (:padding "|72px 24px 56px") (:text-align :center)
              :background-image $ str "|radial-gradient(ellipse 80% 70% at 50% 0%, " (hsl 205 90 95) "|, transparent 70%)"
          :examples $ []
          :schema $ :: 'String
        'style-hero-actions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-actions
            {} $ |& $ {} (:display :flex) (:justify-content :center) (:flex-wrap :wrap) (:gap |12px) (:margin-top |28px)
          :examples $ []
          :schema $ :: 'String
        'style-hero-badge $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-badge
            {} $ |& $ {} (:display :inline-block) (:padding "|2px 12px") (:border-radius |12px) (:font-size |13px) (:line-height |22px)
              :color $ hsl 205 70 38
              :background-color $ hsl 205 90 95
              :border $ str "|1px solid " $ hsl 205 80 88
          :examples $ []
          :schema $ :: 'String
        'style-hero-inner $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-inner
            {} $ |& $ {} (:max-width |760px) (:margin "|0 auto")
          :examples $ []
          :schema $ :: 'String
        'style-hero-install $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-install
            {} $ |& $ {} (:max-width |420px) (:margin "|28px auto 0") (:text-align :left)
          :examples $ []
          :schema $ :: 'String
        'style-hero-lead $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-lead
            {} $ |& $ {} (:max-width |600px) (:margin "|14px auto 0") (:font-size |16px) (:line-height |1.7)
              :color $ hsl 220 10 40
          :examples $ []
          :schema $ :: 'String
        'style-hero-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-link
            {} $ |& $ {} (:text-decoration :none) (:display :inline-flex) (:align-items :center) (:box-sizing :border-box)
          :examples $ []
          :schema $ :: 'String
        'style-hero-tagline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-tagline
            {} $ |& $ {} (:margin-top |12px) (:font-size |24px) (:font-weight |500) (:line-height |1.3)
              :color $ hsl 220 25 18
          :examples $ []
          :schema $ :: 'String
        'style-hero-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-hero-title
            {} $ |& $ {} (:margin-top |20px) (:font-family ui/font-fancy) (:font-size |64px) (:font-weight |300) (:line-height |1.1) (:letter-spacing |-0.01em) (:color :transparent) (:background-clip |text) (:-webkit-background-clip |text)
              :background-image $ str "|linear-gradient(120deg, " (hsl 205 90 48) "|, " (hsl 265 70 56) "|)"
          :examples $ []
          :schema $ :: 'String
        'style-home-heading $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-home-heading
            {} $ |& $ {} (:font-family ui/font-fancy) (:font-size |30px) (:font-weight |500) (:line-height |1.3)
              :color $ hsl 220 25 18
          :examples $ []
          :schema $ :: 'String
        'style-home-section $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-home-section
            {} $ |& $ {} (:max-width |1080px) (:margin "|0 auto") (:padding "|48px 24px 0") (:box-sizing :border-box)
          :examples $ []
          :schema $ :: 'String
        'style-home-sub $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-home-sub
            {} $ |& $ {} (:margin "|6px 0 22px") (:font-size |15px) (:line-height |1.6)
              :color $ hsl 220 10 42
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.home
          :require
            respo.core :refer $ defcomp div a <> list->
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
            respo-ui.comp :refer $ comp-cirru-snippet comp-button comp-card comp-input comp-select comp-switch comp-alert comp-progress comp-badge comp-tag comp-tabs comp-pagination comp-steps comp-avatar comp-kbd comp-attributes
            respo-ui.css :as css
            respo-ui.core :as ui
            respo-ui.config :as config
            respo-ui.schema :refer $ ButtonOptions InputOptions SwitchOptions CardOptions BadgeOptions TabsOptions TabRoute StepItem AvatarOptions AttributesOptions
            respo-ui.comp.sidebar :refer $ on-route component-groups
            respo-ui.comp.components :refer $ ignore-tab-route language-options
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
        'ComponentGroup $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct ComponentGroup (:id 'String) (:title 'String)
            :items $ :: 'List 'String
          :examples $ []
          :schema $ :: 'StructDef
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
        'comp-sidenav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-sidenav (route-name)
            div
              {} $ :class-name style-sidenav
              div
                {} $ :class-name style-nav-title
                <> |Overview
              render-nav-item |index.html |Introduction $ = route-name :index
              div
                {} $ :class-name style-nav-title
                <> |Foundations
              render-nav-item |design.html "|Design system" $ = route-name :design
              when (= route-name :design)
                list-> ({})
                  map design-sections $ fn (section)
                    [] section.:id $ div
                      {} (:class-name css-nav-sub)
                        :on-click $ on-jump $ str |#design- section.:id
                      <> section.:title
              render-nav-item |layouts.html |Layouts $ = route-name :layouts
              render-nav-item |fonts.html |Fonts $ = route-name :fonts
              div
                {} $ :class-name style-nav-title
                <> |Components
              render-nav-item |components.html "|All components" $ = route-name :components
              when (= route-name :components)
                list-> ({})
                  map component-groups $ fn (group)
                    [] group.:id $ render-nav-group group
              div
                {} $ :class-name style-nav-title
                <> |More
              render-nav-item |widgets.html |Widgets $ = route-name :widgets
              render-nav-item |utils.html |Utils $ = route-name :utils
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag
        'comp-topbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defcomp comp-topbar (route-name)
            div
              {} $ :class-name style-topbar
              div
                {} (:class-name style-brand)
                  :on-click $ on-route |index.html
                div $ {} $ :class-name style-brand-logo
                div
                  {} $ :class-name style-brand-name
                  <> "|Respo UI"
                div
                  {} $ :class-name style-version
                  <> config/version
              div
                {} $ :class-name style-topbar-nav
                render-top-link |design.html |Design $ = route-name :design
                render-top-link |components.html |Components $ = route-name :components
                render-top-link |layouts.html |Layouts $ = route-name :layouts
                render-top-link |widgets.html |Widgets $ = route-name :widgets
                render-top-link |fonts.html |Fonts $ = route-name :fonts
                render-top-link |utils.html |Utils $ = route-name :utils
              div $ {} $ :class-name css/expand
              a $ {} (:href |https://github.com/Respo/respo-ui.calcit) (:target |_blank) (:rel |noreferrer) (:class-name css-nav-link) (:inner-text |GitHub)
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Component)
            :args $ [] 'Tag
        'component-groups $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def component-groups
            []
              ComponentGroup :id |form :title "|Form controls" :items $ [] |button |input |textarea |select |checkbox |switch |radio-group |field
              ComponentGroup :id |navigation :title |Navigation :items $ [] |tabs |breadcrumb |pagination |steps
              ComponentGroup :id |disclosure :title "|Disclosure and hints" :items $ [] |collapse |tooltip |kbd
              ComponentGroup :id |feedback :title |Feedback :items $ [] |alert |progress |spinner |skeleton |empty |badge
              ComponentGroup :id |data :title "|Data display" :items $ [] |card |avatar |tag |attributes |divider |time
              ComponentGroup :id |utilities :title "|Code and utilities" :items $ [] |cirru-snippet |snippet |copy |close |placeholder |catoptric-text
          :examples $ []
          :schema $ :: 'List 'respo-ui.comp.sidebar/ComponentGroup
        'css-nav-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav-item
            {}
              |$0 $ {} (:padding "|0 10px") (:line-height |30px) (:border-radius |6px) (:font-size |14px) (:cursor :pointer) (:transition "|background-color 120ms")
                :color $ hsl 220 12 32
              |$0:hover $ {} $ :background-color (hsl 220 20 96)
          :examples $ []
          :schema $ :: 'String
        'css-nav-item-active $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav-item-active
            {} $ |$0 $ {} (:padding "|0 10px") (:line-height |30px) (:border-radius |6px) (:font-size |14px) (:font-weight |600) (:cursor :pointer)
              :color $ hsl 205 80 40
              :background-color $ hsl 205 90 96
          :examples $ []
          :schema $ :: 'String
        'css-nav-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav-link
            {}
              |$0 $ {} (:padding "|0 12px") (:line-height |32px) (:border-radius |6px) (:font-size |14px) (:cursor :pointer) (:text-decoration :none) (:transition "|background-color 120ms")
                :color $ hsl 220 12 38
              |$0:hover $ {}
                :color $ hsl 220 25 16
                :background-color $ hsl 220 20 96
          :examples $ []
          :schema $ :: 'String
        'css-nav-link-active $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav-link-active
            {} $ |$0 $ {} (:padding "|0 12px") (:line-height |32px) (:border-radius |6px) (:font-size |14px) (:font-weight |600) (:cursor :pointer) (:text-decoration :none)
              :color $ hsl 205 80 40
              :background-color $ hsl 205 90 96
          :examples $ []
          :schema $ :: 'String
        'css-nav-sub $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-nav-sub
            {}
              |$0 $ {} (:padding "|0 10px 0 22px") (:line-height |26px) (:border-radius |6px) (:font-size |13px) (:cursor :pointer) (:font-family ui/font-code)
                :color $ hsl 220 10 44
              |$0:hover $ {}
                :color $ hsl 205 80 40
                :background-color $ hsl 220 20 97
          :examples $ []
          :schema $ :: 'String
        'css-sidebar-entry $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle css-sidebar-entry
            {}
              |$0 $ {} (:line-height |40px) (:font-size 20) (:cursor |pointer) (:font-weight |lighter) (:font-family ui/font-fancy) (:text-align :right) (:padding "|0 16px")
                :color $ hsl 0 0 20
              |$0:hover $ {} $ :background-color (hsl 0 0 97)
          :examples $ []
          :schema $ :: 'String
        'design-sections $ %{} 'CodeEntry
          :doc "|Sections of the design system page, linked from the side navigation."
          :code $ quote $ def design-sections
            []
              ComponentGroup :id |color :title |Color :items $ []
              ComponentGroup :id |typography :title |Typography :items $ []
              ComponentGroup :id |spacing :title |Spacing :items $ []
              ComponentGroup :id |shape :title |Shape :items $ []
              ComponentGroup :id |sizing :title "|Control sizing" :items $ []
              ComponentGroup :id |elevation :title |Elevation :items $ []
              ComponentGroup :id |motion :title "|Motion and layers" :items $ []
              ComponentGroup :id |conventions :title |Conventions :items $ []
              ComponentGroup :id |usage :title "|Using tokens" :items $ []
          :examples $ []
          :schema $ :: 'List 'respo-ui.comp.sidebar/ComponentGroup
        'on-jump $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-jump (selector)
            fn (e d!)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic)
                  :: 'Fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Unit
                :return 'Unit
              match (query-selector selector)
                (:some el) (element-scroll-into-view! el)
                (:none) &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/EventHandler)
            :args $ [] 'String
            :features $ #{} :js-ffi
        'on-route $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn on-route (path-name)
            fn (e dispatch!)
              hint-fn $ {}
                :args $ [] (:: 'Map 'Tag 'Dynamic)
                  :: 'Fn $ {}
                    :args $ [] 'Dynamic
                    :return 'Unit
                :return 'Unit
              dispatch! $ :: :router/nav path-name
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
        'render-nav-group $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-nav-group (group)
            div ({})
              div
                {} (:class-name style-nav-sub-title)
                  :on-click $ on-jump $ str |#category- group.:id
                <> group.:title
              list-> ({})
                map group.:items $ fn (item)
                  [] item $ div
                    {} (:class-name css-nav-sub)
                      :on-click $ on-jump $ str |#demo- item
                    <> item
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'respo-ui.comp.sidebar/ComponentGroup
        'render-nav-item $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-nav-item (path title active?)
            div
              {}
                :class-name $ if active? css-nav-item-active css-nav-item
                :on-click $ on-route path
              <> title
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'Bool
        'render-top-link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn render-top-link (path title active?)
            div
              {}
                :class-name $ if active? css-nav-link-active css-nav-link
                :on-click $ on-route path
              <> title
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.schema/Element)
            :args $ [] 'String 'String 'Bool
        'style-brand $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-brand
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap |10px) (:cursor :pointer) (:flex-shrink 0)
          :examples $ []
          :schema $ :: 'String
        'style-brand-logo $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-brand-logo
            {} $ |& $ {} (:width |28px) (:height |28px) (:background-size :cover) (:border-radius |6px)
              :background-image "|url(https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png)"
          :examples $ []
          :schema $ :: 'String
        'style-brand-name $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-brand-name
            {} $ |& $ {} (:font-family ui/font-fancy) (:font-size |22px) (:font-weight |300) (:line-height |1) (:white-space :nowrap)
              :color $ hsl 220 25 16
          :examples $ []
          :schema $ :: 'String
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
        'style-nav-sub-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-sub-title
            {} $ |& $ {} (:margin "|10px 0 2px") (:padding "|0 10px 0 12px") (:font-size |13px) (:font-weight |600) (:cursor :pointer)
              :color $ hsl 220 15 30
          :examples $ []
          :schema $ :: 'String
        'style-nav-title $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-nav-title
            {} $ |& $ {} (:margin "|18px 0 6px") (:padding "|0 10px") (:font-size |12px) (:font-weight |600) (:letter-spacing |0.04em) (:text-transform :uppercase)
              :color $ hsl 220 10 52
          :examples $ []
          :schema $ :: 'String
        'style-sidenav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-sidenav
            {}
              |& $ {} (:width |232px) (:flex-shrink 0) (:box-sizing :border-box) (:overflow-y :auto) (:padding "|20px 12px 48px 20px")
                :border-right $ str "|1px solid " $ hsl 220 15 94
              |&& $ {} (:contained "|@media (max-width: 760px)") (:display :none)
          :examples $ []
          :schema $ :: 'String
        'style-topbar $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-topbar
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap |20px) (:flex-shrink 0) (:height |56px) (:padding "|0 16px") (:box-sizing :border-box) (:background-color :white)
              :border-bottom $ str "|1px solid " $ hsl 220 15 92
          :examples $ []
          :schema $ :: 'String
        'style-topbar-nav $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-topbar-nav
            {} $ |& $ {} (:display :flex) (:align-items :center) (:gap |4px) (:min-width 0) (:overflow-x :auto) (:white-space :nowrap)
          :examples $ []
          :schema $ :: 'String
        'style-version $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle style-version
            {} $ |& $ {} (:padding "|1px 8px") (:border-radius |10px) (:font-family ui/font-code) (:font-size |12px) (:line-height |18px)
              :color $ hsl 220 15 42
              :background-color $ hsl 220 20 95
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.comp.sidebar
          :require
            respo.core :refer $ defcomp div <> a list->
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
            respo-ui.css :as css
            respo-ui.config :as config
            js-ffi.browser :refer $ query-selector element-scroll-into-view!
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
                comp-checkbox false $ Option :some $ respo-ui.schema/SwitchOptions :label (Option :some "|Option A")
                =< 0 4
                comp-checkbox true $ Option :some $ respo-ui.schema/SwitchOptions :label (Option :some "|Option B (default checked)")
                =< 0 4
                comp-checkbox false $ Option :some $ respo-ui.schema/SwitchOptions :label (Option :some "|Option C (disabled)") :disabled (Option :some true)
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
        'version $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def version |0.8.0
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.config
    'respo-ui.core $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button
            {} (:display :inline-flex) (:align-items :center) (:justify-content :center) (:gap tokens/space-1-5) (:box-sizing :border-box) (:min-width tokens/space-16) (:height tokens/control-md) (:padding-block 0) (:border-radius tokens/radius-md) (:font-family tokens/font-sans) (:font-size tokens/text-md) (:font-weight tokens/weight-medium) (:line-height tokens/leading-tight) (:text-align :center) (:white-space :nowrap) (:vertical-align :middle) (:cursor :pointer) (:user-select :none) (:outline :none) (:padding-inline tokens/control-md-padding)
              :border $ str "|1px solid " tokens/color-border-strong
              :color tokens/color-text
              :background-color tokens/color-surface
              :transition tokens/transition-colors
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'button-danger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button-danger
            merge-styles button $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-danger) (:border-color tokens/color-danger)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'button-primary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def button-primary
            merge-styles button $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-primary) (:border-color tokens/color-primary)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def card
            {} $ :padding tokens/space-4
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'center $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def center
            {} (:display |flex) (:flex-direction |column) (:justify-content |center) (:align-items |center)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'checkbox $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def checkbox
            {} (:accent-color tokens/color-primary) (:width tokens/space-4) (:height tokens/space-4) (:margin 0) (:cursor :pointer) (:vertical-align :middle)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'checkbox-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def checkbox-label
            {} (:display :inline-flex) (:align-items :center) (:gap tokens/space-2) (:line-height tokens/leading-tight) (:cursor :pointer) (:user-select :none)
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
            {} (:flex |1) (:overflow :auto)
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
            {} (:line-height tokens/leading-normal) (:font-size tokens/text-md) (:font-family tokens/font-sans) (:color tokens/color-text)
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
            :args $ [] 'Number 'Number 'Number $ :: 'calcit.core/Option 'Number
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def input
            {} (:box-sizing :border-box) (:height tokens/control-md) (:min-width |120px) (:padding-inline tokens/control-md-padding) (:border-radius tokens/radius-md) (:outline :none) (:font-family tokens/font-sans) (:font-size tokens/text-md) (:line-height tokens/leading-tight) (:vertical-align :middle)
              :border $ str "|1px solid " tokens/color-border-strong
              :color tokens/color-text
              :background-color tokens/color-surface
              :transition tokens/transition-colors
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def link
            {} (:display :inline-block) (:height tokens/control-sm) (:line-height tokens/control-sm) (:margin tokens/space-1) (:color tokens/color-primary) (:text-decoration :underline) (:text-underline-offset |2px) (:cursor :pointer) (:user-select :none) (:transition tokens/transition-colors)
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
            {} (:box-sizing :border-box) (:height tokens/control-md) (:min-width |120px) (:padding-inline tokens/control-md-padding) (:border-radius tokens/radius-md) (:outline :none) (:font-family tokens/font-sans) (:font-size tokens/text-md) (:vertical-align :middle) (:cursor :pointer)
              :border $ str "|1px solid " tokens/color-border-strong
              :color tokens/color-text
              :background-color tokens/color-surface
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'tag $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tag
            {} (:display :inline-block) (:padding "|0 8px") (:border-radius tokens/radius-sm) (:font-size tokens/text-sm) (:line-height tokens/space-5) (:color tokens/color-text-inverse) (:background-color tokens/color-primary)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'tag-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tag-outline
            merge-styles tag $ {} (:color tokens/color-primary-active) (:background-color tokens/color-surface)
              :border $ str "|1px solid " tokens/color-primary-border
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'tag-stroke $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def tag-stroke
            merge-styles tag $ {} (:color tokens/color-primary-active) (:background-color tokens/color-primary-soft)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'text-label $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def text-label
            {} (:display :inline-block) (:line-height tokens/control-md) (:font-size tokens/text-md) (:color tokens/color-text) (:vertical-align :middle)
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
        'textarea $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def textarea
            {} (:box-sizing :border-box) (:min-width |240px) (:padding "|8px 12px") (:border-radius tokens/radius-md) (:outline :none) (:font-family tokens/font-sans) (:font-size tokens/text-md) (:line-height tokens/leading-normal) (:vertical-align :top)
              :border $ str "|1px solid " tokens/color-border-strong
              :color tokens/color-text
              :background-color tokens/color-surface
              :transition tokens/transition-colors
          :examples $ []
          :schema $ :: 'Map 'Tag 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.core
          :require $ respo-ui.tokens :as tokens
    'respo-ui.css $ %{} 'FileEntry
      :defs $ {}
        'button $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button
            {} (|$0 ui/button)
              |$0:hover $ {} (:color tokens/color-primary) (:border-color tokens/color-primary) (:background-color tokens/color-surface)
              |$0:active $ {} (:color tokens/color-primary-active) (:border-color tokens/color-primary-active) (:background-color tokens/color-primary-soft)
              |$0:focus-visible $ {} (:border-color tokens/color-primary) (:box-shadow tokens/focus-ring)
              "|$0:disabled, $0:disabled:hover, $0:disabled:active" $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:border-color tokens/color-border) (:background-color tokens/color-surface-muted) (:box-shadow :none)
          :examples $ []
          :schema $ :: 'String
        'button-danger $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button-danger
            {} (|$0 ui/button-danger)
              |$0:hover $ {} (:background-color tokens/color-danger-text) (:border-color tokens/color-danger-text)
              |$0:active $ {} (:background-color tokens/color-danger-text) (:border-color tokens/color-danger-text)
              |$0:focus-visible $ {} $ :box-shadow tokens/focus-ring
              "|$0:disabled, $0:disabled:hover, $0:disabled:active" $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:border-color tokens/color-border) (:background-color tokens/color-surface-muted) (:box-shadow :none)
          :examples $ []
          :schema $ :: 'String
        'button-danger-outline $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button-danger-outline
            {}
              |$0 $ ui/merge-styles ui/button $ {} (:color tokens/color-danger-text) (:border-color tokens/color-danger)
              |$0:hover $ {} $ :background-color tokens/color-danger-soft
              |$0:active $ {} (:background-color tokens/color-danger-soft) (:border-color tokens/color-danger-text)
              |$0:focus-visible $ {} $ :box-shadow tokens/focus-ring
              "|$0:disabled, $0:disabled:hover, $0:disabled:active" $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:border-color tokens/color-border) (:background-color tokens/color-surface-muted) (:box-shadow :none)
          :examples $ []
          :schema $ :: 'String
        'button-primary $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle button-primary
            {} (|$0 ui/button-primary)
              |$0:hover $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-primary-hover) (:border-color tokens/color-primary-hover)
              |$0:active $ {} (:color tokens/color-text-inverse) (:background-color tokens/color-primary-active) (:border-color tokens/color-primary-active)
              |$0:focus-visible $ {} $ :box-shadow tokens/focus-ring
              "|$0:disabled, $0:disabled:hover, $0:disabled:active" $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:border-color tokens/color-border) (:background-color tokens/color-surface-muted) (:box-shadow :none)
          :examples $ []
          :schema $ :: 'String
        'card $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle card
            {} $ |& $ {} (:padding tokens/space-4)
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
              |$0:focus-visible $ {} (:outline :none) (:box-shadow tokens/focus-ring) (:border-radius tokens/radius-sm)
              |$0:disabled $ {} $ :cursor :not-allowed
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
            {} $ |$0 $ {} (:flex |1)
          :examples $ []
          :schema $ :: 'String
        'font-code $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-code
            {} $ |$0 $ {} (:font-family tokens/font-mono)
          :examples $ []
          :schema $ :: 'String
        'font-code! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-code!
            {} $ |$0 $ {}
              :font-family $ str tokens/font-mono "| !important"
          :examples $ []
          :schema $ :: 'String
        'font-fancy $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-fancy
            {} $ |$0 $ {} (:font-family tokens/font-display)
          :examples $ []
          :schema $ :: 'String
        'font-fancy! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-fancy!
            {} $ |& $ {}
              :font-family $ str tokens/font-display "| !important"
          :examples $ []
          :schema $ :: 'String
        'font-normal $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-normal
            {} $ |& $ {} (:font-family tokens/font-sans)
          :examples $ []
          :schema $ :: 'String
        'font-normal! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle font-normal!
            {} $ |& $ {}
              :font-family $ str tokens/font-sans "| !important"
          :examples $ []
          :schema $ :: 'String
        'fullscreen $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle fullscreen
            {} $ |$0 $ {} (:position |absolute) (:left 0) (:top 0) (:width |100%) (:height |100%) (:overflow :auto)
          :examples $ []
          :schema $ :: 'String
        'gap16 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle gap16
            {} $ |& $ {} (:gap tokens/space-4)
          :examples $ []
          :schema $ :: 'String
        'gap8 $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle gap8
            {} $ |& $ {} (:gap tokens/space-2)
          :examples $ []
          :schema $ :: 'String
        'global $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle global
            {} $ |$0 ui/global
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
            :args $ [] 'Number 'Number 'Number $ :: 'calcit.core/Option 'Number
        'input $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle input
            {} (|$0 ui/input)
              |$0::placeholder $ {} $ :color tokens/color-text-muted
              "|$0:hover:not(:disabled):not(:focus)" $ {} $ :border-color tokens/color-border-hover
              |$0:focus $ {} (:border-color tokens/color-primary) (:box-shadow tokens/focus-ring)
              |$0:disabled $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:background-color tokens/color-surface-muted)
          :examples $ []
          :schema $ :: 'String
        'link $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle link
            {} (|$0 ui/link)
              |$0:hover $ {} $ :color tokens/color-primary-hover
              |$0:active $ {} $ :color tokens/color-primary-active
              |$0:focus-visible $ {} (:outline :none) (:box-shadow tokens/focus-ring) (:border-radius tokens/radius-sm)
          :examples $ []
          :schema $ :: 'String
        'link-slight $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle link-slight
            {}
              |$0 $ ui/merge-styles ui/link $ {} (:text-decoration :none)
              |$0:hover $ {} (:color tokens/color-primary-hover) (:text-decoration :underline)
              |$0:active $ {} $ :color tokens/color-primary-active
              |$0:focus-visible $ {} (:outline :none) (:box-shadow tokens/focus-ring) (:border-radius tokens/radius-sm)
          :examples $ []
          :schema $ :: 'String
        'preset $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstyle preset
            {}
              |body $ {} (:margin 0) (:overscroll-behavior-x :none) (:overscroll-behavior-y :none)
              "|body *" $ {} $ :box-sizing :border-box
              |::-webkit-scrollbar $ {} (:width tokens/space-1) (:height tokens/space-1)
              |::-webkit-scrollbar-track $ {} $ :background-color tokens/color-surface
              |::-webkit-scrollbar-thumb $ {} (:background-color tokens/color-border-strong) (:border-radius tokens/radius-full)
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
            {}
              |$0 $ merge ui/select $ {} (:appearance :none) (:background-repeat :no-repeat) (:background-position "|right 10px center") (:transition tokens/transition-colors)
                :padding-right $ str "|calc(" tokens/control-md-padding "| + 16px)"
                :background-image "|url(\"data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='12' height='12' viewBox='0 0 12 12'%3E%3Cpath d='M3 4.5l3 3 3-3' fill='none' stroke='%238a93a6' stroke-width='1.5' stroke-linecap='round' stroke-linejoin='round'/%3E%3C/svg%3E\")"
              "|$0:hover:not(:disabled):not(:focus)" $ {} $ :border-color tokens/color-border-hover
              |$0:focus $ {} (:border-color tokens/color-primary) (:box-shadow tokens/focus-ring)
              |$0:disabled $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:background-color tokens/color-surface-muted)
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
              |$0::placeholder $ {} $ :color tokens/color-text-muted
              "|$0:hover:not(:disabled):not(:focus)" $ {} $ :border-color tokens/color-border-hover
              |$0:focus $ {} (:border-color tokens/color-primary) (:box-shadow tokens/focus-ring)
              |$0:disabled $ {} (:cursor :not-allowed) (:color tokens/color-text-disabled) (:background-color tokens/color-surface-muted)
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
          :require (respo-ui.core :as ui) (respo-ui.tokens :as tokens)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
    'respo-ui.main $ %{} 'FileEntry
      :defs $ {}
        '*store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defref *store
            assoc schema/store :router $ initial-router
          :examples $ []
          :schema $ :: 'Ref 'respo-ui.schema/Store
        'dispatch! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn dispatch! (op)
            when config/dev? $ shared/console-log! $ str |Dispatch: op
            reset! *store $ updater @*store op
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic
            :features $ #{} :js-ffi
        'get-mount-target $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn get-mount-target ()
            unsafe-coerce
              option:unwrap $ browser/query-selector |.app
              , 'respo.dom/DomElement
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo.dom/DomElement)
            :args $ []
            :features $ #{} :js-ffi
        'initial-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn initial-router ()
            let
                location $ browser/location-snapshot
              parse-address
                slice (location :hash) 1
                , router/dict
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
            add-watch! *store :changes $ fn (store prev)
              hint-fn $ {}
                :args $ [] 'respo-ui.schema/Store 'respo-ui.schema/Store
                :return 'Unit
              render-app!
              , &unit
            listen! router/dict dispatch! router/mode
            add-watch! *store :router-changes $ fn (store prev)
              hint-fn $ {}
                :args $ [] 'respo-ui.schema/Store 'respo-ui.schema/Store
                :return 'Unit
              render-router!
              , &unit
            render-app!
            println "|App started!"
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
        'reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn reload! ()
            if (nil? build-errors)
              do (remove-watch! *store :changes) (remove-watch! *store :router-changes) (clear-cache!)
                add-watch! *store :changes $ fn (store prev)
                  hint-fn $ {}
                    :args $ [] 'respo-ui.schema/Store 'respo-ui.schema/Store
                    :return 'Unit
                  render-app!
                  , &unit
                add-watch! *store :router-changes $ fn (store prev)
                  hint-fn $ {}
                    :args $ [] 'respo-ui.schema/Store 'respo-ui.schema/Store
                    :return 'Unit
                  render-router!
                  , &unit
                render-app!
                hud! |ok~ |Ok
                println "|Code updated!"
              hud! |error build-errors
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
            :features $ #{} :js-ffi
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
              render-url! store.:router router/dict router/mode
              , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ []
        'updater $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn updater (store op)
            match op
              (:states cursor s)
                match
                  try-decode-map-as cursor $ :: 'List 'Dynamic
                  (:ok checked-cursor)
                    match
                      try-decode-map-as
                        update-state-tree (:states store) checked-cursor s
                        :: 'Map 'Tag 'Dynamic
                      (:ok states) (assoc store :states states)
                      (:err error) (raise error)
                  (:err error) (raise error)
              (:router/nav t)
                match (try-decode-map-as t 'String)
                  (:ok path)
                    assoc store :router $ parse-address path router/dict
                  (:err error) (raise error)
              (:router/route r)
                match
                  try-decode-map-as r $ :: 'Map 'Tag 'Dynamic
                  (:ok route) (assoc store :router route)
                  (:err error) (raise error)
              _ $ do (eprintln "|Unknown op:" op) store
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-ui.schema/Store)
            :args $ [] 'respo-ui.schema/Store 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.main
          :require
            respo.core :refer $ render! clear-cache!
            respo.cursor :refer $ update-state-tree
            respo-ui.comp.container :refer $ comp-container
            respo-ui.router :as router
            respo-ui.schema :as schema
            respo-ui.config :as config
            respo-router.parser :refer $ parse-address
            respo-router.core :refer $ render-url!
            respo-router.listener :refer $ listen!
            |./calcit.build-errors :default build-errors
            |bottom-tip :default hud!
            js-ffi.browser :as browser
            js-ffi.shared :as shared
    'respo-ui.router $ %{} 'FileEntry
      :defs $ {}
        'dict $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def dict
            []
              :: :index $ [] |index.html
              :: :dev $ [] |dev.html
              :: :fonts $ [] |fonts.html
              :: :design $ [] |design.html
              :: :widgets $ [] |widgets.html
              :: :layouts $ [] |layouts.html
              :: :components $ [] |components.html
              :: :utils $ [] |utils.html
          :examples $ []
          :schema $ :: 'List 'Enum
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
            AttributesOptions :items $ []
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
            AvatarOptions :title (Option :some "|Chen Yong") :size $ Option :some :large
          :schema $ :: 'Enum
        'BadgeOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct BadgeOptions
            :kind $ :: 'Option 'Tag
            :dot? $ :: 'Option 'Bool
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            BadgeOptions :dot? $ Option :some true
          :schema $ :: 'Enum
        'BreadcrumbItem $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct BreadcrumbItem (:label 'String)
            :href $ :: 'Option 'String
          :examples $ [] $ quote
            BreadcrumbItem :label |Home :href $ Option :some |#/
          :schema $ :: 'Enum
        'BreadcrumbOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct BreadcrumbOptions
            :separator $ :: 'Option 'String
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ []
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
            ButtonOptions :kind $ Option :some :primary
          :schema $ :: 'Enum
        'CardOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-card with a string title and generic footer content."
          :code $ quote $ defstruct CardOptions
            :title $ :: 'Option 'String
            :footer $ :: 'Option 'Dynamic
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            CardOptions :title $ Option :some |Summary
          :schema $ :: 'Enum
        'CollapseOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct CollapseOptions
            :open? $ :: 'Option 'Bool
            :name $ :: 'Option 'String
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            CollapseOptions :name $ Option :some |faq
          :schema $ :: 'Enum
        'DividerOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-divider, including vertical orientation."
          :code $ quote $ defstruct DividerOptions
            :vertical? $ :: 'Option 'Bool
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            DividerOptions :vertical? $ Option :some true
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
            EmptyOptions :description $ Option :some "|Try another search term."
          :schema $ :: 'Enum
        'FieldOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct FieldOptions
            :for $ :: 'Option 'String
            :description $ :: 'Option 'String
            :error $ :: 'Option 'String
            :required? $ :: 'Option 'Bool
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            FieldOptions :error $ Option :some "|Required field"
          :schema $ :: 'Enum
        'InputOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-input and comp-textarea. :on-change receives the current text and d!; :on-input still receives the raw event map."
          :code $ quote $ defstruct InputOptions
            [] $ quote Op
            :id $ :: 'Option 'String
            :type $ :: 'Option 'String
            :placeholder $ :: 'Option 'String
            :disabled $ :: 'Option 'Bool
            :on-input $ :: 'Option 'respo.schema/EventHandler
            :on-change $ :: 'Option $ :: 'Fn
              {}
                :args $ [] 'String $ :: 'Fn
                  {}
                    :args $ [] $ quote Op
                    :return 'Unit
                :return 'Unit
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ []
          :schema $ :: 'StructDef
        'PageRoute $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defenum PageRoute (:index) (:widgets) (:layouts) (:fonts) (:design) (:components) (:utils) (:not-found 'String)
          :examples $ []
          :schema $ :: 'EnumDef
        'PaginationOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct PaginationOptions
            [] $ quote Op
            :siblings $ :: 'Option 'Number
            :on-change $ :: 'Option $ :: 'Fn
              {}
                :args $ [] 'Number $ :: 'Fn
                  {}
                    :args $ [] $ quote Op
                    :return 'Unit
                :return 'Unit
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            PaginationOptions :siblings $ Option :some 2
          :schema $ :: 'Enum
        'PresentationOptions $ %{} 'CodeEntry
          :doc "|Shared typed class-name and style options for presentation-only components."
          :code $ quote $ defstruct PresentationOptions
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            PresentationOptions :class-name $ Option :some |status
          :schema $ :: 'Enum
        'RadioGroupOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct RadioGroupOptions
            [] $ quote Op
            :name $ :: 'Option 'String
            :label $ :: 'Option 'String
            :vertical? $ :: 'Option 'Bool
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
            RadioGroupOptions :name $ Option :some |language
          :schema $ :: 'Enum
        'SelectOption $ %{} 'CodeEntry
          :doc "|A typed native select item with string value and label plus optional disabled state."
          :code $ quote $ defstruct SelectOption (:value 'String) (:label 'String)
            :disabled $ :: 'Option 'Bool
          :examples $ [] $ quote (SelectOption :value |calcit :label |Calcit)
          :schema $ :: 'Enum
        'SelectOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-select. The Op generic preserves the operation accepted by the dispatcher passed to on-change."
          :code $ quote $ defstruct SelectOptions
            [] $ quote Op
            :id $ :: 'Option 'String
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
            SelectOptions :disabled $ Option :some false
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
            SkeletonOptions :kind (Option :some :text) :width $ Option :some |60%
          :schema $ :: 'Enum
        'SpinnerOptions $ %{} 'CodeEntry
          :doc "|Typed options for comp-spinner, including its accessible label."
          :code $ quote $ defstruct SpinnerOptions
            :label $ :: 'Option 'String
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            SpinnerOptions :label $ Option :some "|Loading results"
          :schema $ :: 'Enum
        'StepItem $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StepItem (:title 'String)
            :description $ :: 'Option 'String
          :examples $ [] $ quote
            StepItem :title |Profile :description $ Option :some "|Tell us about you"
          :schema $ :: 'Enum
        'StepsOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct StepsOptions
            :vertical? $ :: 'Option 'Bool
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ []
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
            SwitchOptions :label $ Option :some "|Compact mode"
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
            TabsOptions :selected $ Option :some :book
          :schema $ :: 'Enum
        'TooltipOptions $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defstruct TooltipOptions
            :placement $ :: 'Option 'Tag
            :class-name $ :: 'Option 'String
            :style $ :: 'Option $ :: 'Map 'Tag 'Dynamic
          :examples $ [] $ quote
            TooltipOptions :placement $ Option :some :bottom
          :schema $ :: 'Enum
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
                Option :some $ PresentationOptions :class-name $ Option :some |status
                , :class-name
          :schema $ :: 'Macro $ {}
            :capabilities $ #{}
            :expansion $ :: 'Expr 'Dynamic
            :required $ [] 'Syntax 'Syntax
        'route-from-router $ %{} 'CodeEntry (:doc |)
          :code $ quote $ defn route-from-router (store)
            let
                raw-path $ .unwrap-or
                  get (:router store) :path
                  []
                path $ if (list? raw-path) raw-path $ raise "|Router path must be a List"
              match (first path)
                (:none) (PageRoute :index)
                (:some raw-route)
                  if (enum? raw-route)
                    match raw-route
                      (:index) (PageRoute :index)
                      (:widgets) (PageRoute :widgets)
                      (:layouts) (PageRoute :layouts)
                      (:fonts) (PageRoute :fonts)
                      (:design) (PageRoute :design)
                      (:components) (PageRoute :components)
                      (:utils) (PageRoute :utils)
                      (:404 path)
                        PageRoute :not-found $ .join-string (respo-router.schema/path-segments path) |/
                      _ $ PageRoute :index
                    raise "|Router route must be an Enum"
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'respo-ui.schema/PageRoute)
            :args $ [] 'respo-ui.schema/Store
          :tests $ []
            %{} 'TestEntry (:name |missing-and-empty-path)
              :code $ quote $ do
                assert= (PageRoute :index)
                  route-from-router $ Store :router ({}) :states $ {}
                assert= (PageRoute :index)
                  route-from-router $ Store :router
                    {} $ :path $ []
                    , :states $ {}
              :tags $ #{} :boundary :router
            %{} 'TestEntry (:name |all-published-page-routes)
              :code $ quote $ do
                assert= (PageRoute :index)
                  route-from-router $ Store :router (parse-address |/index.html dict) :states $ {}
                assert= (PageRoute :index)
                  route-from-router $ Store :router (parse-address |/dev.html dict) :states $ {}
                assert= (PageRoute :widgets)
                  route-from-router $ Store :router (parse-address |/widgets.html dict) :states $ {}
                assert= (PageRoute :layouts)
                  route-from-router $ Store :router (parse-address |/layouts.html dict) :states $ {}
                assert= (PageRoute :fonts)
                  route-from-router $ Store :router (parse-address |/fonts.html dict) :states $ {}
                assert= (PageRoute :design)
                  route-from-router $ Store :router (parse-address |/design.html dict) :states $ {}
                assert= (PageRoute :components)
                  route-from-router $ Store :router (parse-address |/components.html dict) :states $ {}
                assert= (PageRoute :utils)
                  route-from-router $ Store :router (parse-address |/utils.html dict) :states $ {}
              :tags $ #{} :regression :router
            %{} 'TestEntry (:name |published-router-unicode-404)
              :code $ quote $ assert= (PageRoute :not-found "|missing/中文😀")
                route-from-router $ Store :router (parse-address "|/missing/中文😀" dict) :states $ {}
              :tags $ #{} :boundary :router
            %{} 'TestEntry (:name |reject-wrong-path-container)
              :code $ quote $ assert= "|Router path must be a List"
                try
                  route-from-router $ Store :router
                    {} $ :path |wrong
                    , :states $ {}
                  fn (error) error
              :tags $ #{} :boundary :router
            %{} 'TestEntry (:name |reject-non-enum-route)
              :code $ quote $ assert= "|Router route must be an Enum"
                try
                  route-from-router $ Store :router
                    {} $ :path $ [] |wrong
                    , :states $ {}
                  fn (error) error
              :tags $ #{} :boundary :router
            %{} 'TestEntry (:name |reject-wrong-404-container)
              :code $ quote $ assert= "|[respo-router/path-segments] expected List"
                try
                  route-from-router $ Store :router
                    {} $ :path $ [] (:: :404 |wrong)
                    , :states $ {}
                  fn (error) error
              :tags $ #{} :boundary :router
            %{} 'TestEntry (:name |reject-wrong-404-element)
              :code $ quote $ assert= "|[respo-router/path-segments] expected String segment"
                try
                  route-from-router $ Store :router
                    {} $ :path $ []
                      :: :404 $ [] 1
                    , :states $ {}
                  fn (error) error
              :tags $ #{} :boundary :router
        'store $ %{} 'CodeEntry (:doc |)
          :code $ quote $ def store
            Store :router ({}) :states $ {}
          :examples $ []
          :schema $ :: 'Struct
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.schema
          :require
            respo-ui.router :refer $ dict
            respo-router.parser :refer $ parse-address
    'respo-ui.tokens $ %{} 'FileEntry
      :defs $ {}
        'DesignToken $ %{} 'CodeEntry
          :doc "|One design token: its group, CSS variable name without the --rui- prefix, default value and usage note."
          :code $ quote $ defstruct DesignToken (:group 'String) (:name 'String) (:value 'String) (:note 'String)
          :examples $ []
          :schema $ :: 'StructDef
        'amber-200 $ %{} 'CodeEntry (:doc "|Default: hsl(42 80% 76%)")
          :code $ quote $ def amber-200 "|var(--rui-amber-200)"
          :examples $ []
          :schema $ :: 'String
        'amber-50 $ %{} 'CodeEntry (:doc "|Default: hsl(45 95% 94%)")
          :code $ quote $ def amber-50 "|var(--rui-amber-50)"
          :examples $ []
          :schema $ :: 'String
        'amber-500 $ %{} 'CodeEntry (:doc "|Default: hsl(38 92% 50%)")
          :code $ quote $ def amber-500 "|var(--rui-amber-500)"
          :examples $ []
          :schema $ :: 'String
        'amber-700 $ %{} 'CodeEntry (:doc "|Default: hsl(32 85% 28%)")
          :code $ quote $ def amber-700 "|var(--rui-amber-700)"
          :examples $ []
          :schema $ :: 'String
        'blue-100 $ %{} 'CodeEntry (:doc "|Default: hsl(220 85% 93%)")
          :code $ quote $ def blue-100 "|var(--rui-blue-100)"
          :examples $ []
          :schema $ :: 'String
        'blue-200 $ %{} 'CodeEntry (:doc "|Default: hsl(220 80% 85%)")
          :code $ quote $ def blue-200 "|var(--rui-blue-200)"
          :examples $ []
          :schema $ :: 'String
        'blue-300 $ %{} 'CodeEntry (:doc "|Default: hsl(220 80% 74%)")
          :code $ quote $ def blue-300 "|var(--rui-blue-300)"
          :examples $ []
          :schema $ :: 'String
        'blue-50 $ %{} 'CodeEntry (:doc "|Default: hsl(220 90% 97%)")
          :code $ quote $ def blue-50 "|var(--rui-blue-50)"
          :examples $ []
          :schema $ :: 'String
        'blue-500 $ %{} 'CodeEntry (:doc "|Default: hsl(220 78% 56%)")
          :code $ quote $ def blue-500 "|var(--rui-blue-500)"
          :examples $ []
          :schema $ :: 'String
        'blue-600 $ %{} 'CodeEntry (:doc "|Default: hsl(220 72% 48%)")
          :code $ quote $ def blue-600 "|var(--rui-blue-600)"
          :examples $ []
          :schema $ :: 'String
        'blue-700 $ %{} 'CodeEntry (:doc "|Default: hsl(220 70% 40%)")
          :code $ quote $ def blue-700 "|var(--rui-blue-700)"
          :examples $ []
          :schema $ :: 'String
        'color-bg $ %{} 'CodeEntry (:doc "|Page background. Default: var(--rui-gray-50)")
          :code $ quote $ def color-bg "|var(--rui-color-bg)"
          :examples $ []
          :schema $ :: 'String
        'color-border $ %{} 'CodeEntry
          :doc "|Dividers and card borders. Default: var(--rui-gray-200)"
          :code $ quote $ def color-border "|var(--rui-color-border)"
          :examples $ []
          :schema $ :: 'String
        'color-border-hover $ %{} 'CodeEntry
          :doc "|Hovered control borders. Default: var(--rui-gray-400)"
          :code $ quote $ def color-border-hover "|var(--rui-color-border-hover)"
          :examples $ []
          :schema $ :: 'String
        'color-border-strong $ %{} 'CodeEntry (:doc "|Control borders. Default: var(--rui-gray-300)")
          :code $ quote $ def color-border-strong "|var(--rui-color-border-strong)"
          :examples $ []
          :schema $ :: 'String
        'color-danger $ %{} 'CodeEntry (:doc "|Solid danger fill. Default: var(--rui-red-500)")
          :code $ quote $ def color-danger "|var(--rui-color-danger)"
          :examples $ []
          :schema $ :: 'String
        'color-danger-border $ %{} 'CodeEntry (:doc "|Soft danger border. Default: var(--rui-red-200)")
          :code $ quote $ def color-danger-border "|var(--rui-color-danger-border)"
          :examples $ []
          :schema $ :: 'String
        'color-danger-soft $ %{} 'CodeEntry
          :doc "|Soft danger background. Default: var(--rui-red-50)"
          :code $ quote $ def color-danger-soft "|var(--rui-color-danger-soft)"
          :examples $ []
          :schema $ :: 'String
        'color-danger-text $ %{} 'CodeEntry
          :doc "|Danger text on soft background. Default: var(--rui-red-700)"
          :code $ quote $ def color-danger-text "|var(--rui-color-danger-text)"
          :examples $ []
          :schema $ :: 'String
        'color-focus $ %{} 'CodeEntry
          :doc "|Focus ring color. Default: hsl(220 78% 56% / 0.28)"
          :code $ quote $ def color-focus "|var(--rui-color-focus)"
          :examples $ []
          :schema $ :: 'String
        'color-info $ %{} 'CodeEntry (:doc "|Solid info fill. Default: var(--rui-blue-500)")
          :code $ quote $ def color-info "|var(--rui-color-info)"
          :examples $ []
          :schema $ :: 'String
        'color-info-border $ %{} 'CodeEntry (:doc "|Soft info border. Default: var(--rui-blue-200)")
          :code $ quote $ def color-info-border "|var(--rui-color-info-border)"
          :examples $ []
          :schema $ :: 'String
        'color-info-soft $ %{} 'CodeEntry
          :doc "|Soft info background. Default: var(--rui-blue-50)"
          :code $ quote $ def color-info-soft "|var(--rui-color-info-soft)"
          :examples $ []
          :schema $ :: 'String
        'color-info-text $ %{} 'CodeEntry
          :doc "|Info text on soft background. Default: var(--rui-blue-700)"
          :code $ quote $ def color-info-text "|var(--rui-color-info-text)"
          :examples $ []
          :schema $ :: 'String
        'color-overlay $ %{} 'CodeEntry
          :doc "|Backdrop behind dialogs. Default: hsl(220 25% 14% / 0.45)"
          :code $ quote $ def color-overlay "|var(--rui-color-overlay)"
          :examples $ []
          :schema $ :: 'String
        'color-primary $ %{} 'CodeEntry
          :doc "|Primary actions, selection, links. Default: var(--rui-blue-500)"
          :code $ quote $ def color-primary "|var(--rui-color-primary)"
          :examples $ []
          :schema $ :: 'String
        'color-primary-active $ %{} 'CodeEntry
          :doc "|Pressed primary fills, link text. Default: var(--rui-blue-700)"
          :code $ quote $ def color-primary-active "|var(--rui-color-primary-active)"
          :examples $ []
          :schema $ :: 'String
        'color-primary-border $ %{} 'CodeEntry
          :doc "|Borders of soft primary surfaces. Default: var(--rui-blue-200)"
          :code $ quote $ def color-primary-border "|var(--rui-color-primary-border)"
          :examples $ []
          :schema $ :: 'String
        'color-primary-hover $ %{} 'CodeEntry
          :doc "|Hover on primary fills. Default: var(--rui-blue-600)"
          :code $ quote $ def color-primary-hover "|var(--rui-color-primary-hover)"
          :examples $ []
          :schema $ :: 'String
        'color-primary-soft $ %{} 'CodeEntry
          :doc "|Selected rows, soft fills. Default: var(--rui-blue-50)"
          :code $ quote $ def color-primary-soft "|var(--rui-color-primary-soft)"
          :examples $ []
          :schema $ :: 'String
        'color-success $ %{} 'CodeEntry
          :doc "|Solid success fill. Default: var(--rui-green-500)"
          :code $ quote $ def color-success "|var(--rui-color-success)"
          :examples $ []
          :schema $ :: 'String
        'color-success-border $ %{} 'CodeEntry
          :doc "|Soft success border. Default: var(--rui-green-200)"
          :code $ quote $ def color-success-border "|var(--rui-color-success-border)"
          :examples $ []
          :schema $ :: 'String
        'color-success-soft $ %{} 'CodeEntry
          :doc "|Soft success background. Default: var(--rui-green-50)"
          :code $ quote $ def color-success-soft "|var(--rui-color-success-soft)"
          :examples $ []
          :schema $ :: 'String
        'color-success-text $ %{} 'CodeEntry
          :doc "|Success text on soft background. Default: var(--rui-green-700)"
          :code $ quote $ def color-success-text "|var(--rui-color-success-text)"
          :examples $ []
          :schema $ :: 'String
        'color-surface $ %{} 'CodeEntry
          :doc "|Controls, cards, popovers. Default: var(--rui-gray-0)"
          :code $ quote $ def color-surface "|var(--rui-color-surface)"
          :examples $ []
          :schema $ :: 'String
        'color-surface-muted $ %{} 'CodeEntry
          :doc "|Code blocks, skeletons, tracks. Default: var(--rui-gray-100)"
          :code $ quote $ def color-surface-muted "|var(--rui-color-surface-muted)"
          :examples $ []
          :schema $ :: 'String
        'color-surface-subtle $ %{} 'CodeEntry
          :doc "|Hover fills and table stripes. Default: var(--rui-gray-50)"
          :code $ quote $ def color-surface-subtle "|var(--rui-color-surface-subtle)"
          :examples $ []
          :schema $ :: 'String
        'color-text $ %{} 'CodeEntry
          :doc "|Body text and headings. Default: var(--rui-gray-900)"
          :code $ quote $ def color-text "|var(--rui-color-text)"
          :examples $ []
          :schema $ :: 'String
        'color-text-disabled $ %{} 'CodeEntry (:doc "|Disabled controls. Default: var(--rui-gray-400)")
          :code $ quote $ def color-text-disabled "|var(--rui-color-text-disabled)"
          :examples $ []
          :schema $ :: 'String
        'color-text-inverse $ %{} 'CodeEntry (:doc "|Text on solid fills. Default: var(--rui-gray-0)")
          :code $ quote $ def color-text-inverse "|var(--rui-color-text-inverse)"
          :examples $ []
          :schema $ :: 'String
        'color-text-muted $ %{} 'CodeEntry
          :doc "|Hints, placeholders, separators. Default: var(--rui-gray-500)"
          :code $ quote $ def color-text-muted "|var(--rui-color-text-muted)"
          :examples $ []
          :schema $ :: 'String
        'color-text-secondary $ %{} 'CodeEntry
          :doc "|Descriptions and labels. Default: var(--rui-gray-600)"
          :code $ quote $ def color-text-secondary "|var(--rui-color-text-secondary)"
          :examples $ []
          :schema $ :: 'String
        'color-warning $ %{} 'CodeEntry
          :doc "|Solid warning fill. Default: var(--rui-amber-500)"
          :code $ quote $ def color-warning "|var(--rui-color-warning)"
          :examples $ []
          :schema $ :: 'String
        'color-warning-border $ %{} 'CodeEntry
          :doc "|Soft warning border. Default: var(--rui-amber-200)"
          :code $ quote $ def color-warning-border "|var(--rui-color-warning-border)"
          :examples $ []
          :schema $ :: 'String
        'color-warning-soft $ %{} 'CodeEntry
          :doc "|Soft warning background. Default: var(--rui-amber-50)"
          :code $ quote $ def color-warning-soft "|var(--rui-color-warning-soft)"
          :examples $ []
          :schema $ :: 'String
        'color-warning-text $ %{} 'CodeEntry
          :doc "|Warning text on soft background. Default: var(--rui-amber-700)"
          :code $ quote $ def color-warning-text "|var(--rui-color-warning-text)"
          :examples $ []
          :schema $ :: 'String
        'control-lg $ %{} 'CodeEntry (:doc "|Height of lg controls. Default: 40px")
          :code $ quote $ def control-lg "|var(--rui-control-lg)"
          :examples $ []
          :schema $ :: 'String
        'control-lg-padding $ %{} 'CodeEntry
          :doc "|Horizontal padding of lg controls. Default: 16px"
          :code $ quote $ def control-lg-padding "|var(--rui-control-lg-padding)"
          :examples $ []
          :schema $ :: 'String
        'control-md $ %{} 'CodeEntry (:doc "|Height of md controls. Default: 32px")
          :code $ quote $ def control-md "|var(--rui-control-md)"
          :examples $ []
          :schema $ :: 'String
        'control-md-padding $ %{} 'CodeEntry
          :doc "|Horizontal padding of md controls. Default: 12px"
          :code $ quote $ def control-md-padding "|var(--rui-control-md-padding)"
          :examples $ []
          :schema $ :: 'String
        'control-sm $ %{} 'CodeEntry (:doc "|Height of sm controls. Default: 24px")
          :code $ quote $ def control-sm "|var(--rui-control-sm)"
          :examples $ []
          :schema $ :: 'String
        'control-sm-padding $ %{} 'CodeEntry (:doc "|Horizontal padding of sm controls. Default: 8px")
          :code $ quote $ def control-sm-padding "|var(--rui-control-sm-padding)"
          :examples $ []
          :schema $ :: 'String
        'css-variables $ %{} 'CodeEntry
          :doc "|Turn tokens into a map of --rui-* custom properties."
          :code $ quote $ defn css-variables (tokens)
            foldl tokens ({})
              fn (acc token)
                assoc acc (str |--rui- token.:name) token.:value
          :examples $ []
          :schema $ :: 'Fn $ {}
            :args $ [] $ :: 'List 'respo-ui.tokens/DesignToken
            :return $ :: 'Map 'String 'String
        'design-tokens $ %{} 'CodeEntry
          :doc "|Every token with its default value. The theme style and the design system page are both generated from this list."
          :code $ quote $ def design-tokens
            []
              DesignToken :group |palette :name |gray-0 :value "|hsl(220 0% 100%)" :note |
              DesignToken :group |palette :name |gray-50 :value "|hsl(220 20% 98%)" :note |
              DesignToken :group |palette :name |gray-100 :value "|hsl(220 18% 96%)" :note |
              DesignToken :group |palette :name |gray-200 :value "|hsl(220 16% 92%)" :note |
              DesignToken :group |palette :name |gray-300 :value "|hsl(220 14% 84%)" :note |
              DesignToken :group |palette :name |gray-400 :value "|hsl(220 12% 70%)" :note |
              DesignToken :group |palette :name |gray-500 :value "|hsl(220 10% 55%)" :note |
              DesignToken :group |palette :name |gray-600 :value "|hsl(220 12% 42%)" :note |
              DesignToken :group |palette :name |gray-700 :value "|hsl(220 16% 30%)" :note |
              DesignToken :group |palette :name |gray-800 :value "|hsl(220 20% 20%)" :note |
              DesignToken :group |palette :name |gray-900 :value "|hsl(220 25% 14%)" :note |
              DesignToken :group |palette :name |blue-50 :value "|hsl(220 90% 97%)" :note |
              DesignToken :group |palette :name |blue-100 :value "|hsl(220 85% 93%)" :note |
              DesignToken :group |palette :name |blue-200 :value "|hsl(220 80% 85%)" :note |
              DesignToken :group |palette :name |blue-300 :value "|hsl(220 80% 74%)" :note |
              DesignToken :group |palette :name |blue-500 :value "|hsl(220 78% 56%)" :note |
              DesignToken :group |palette :name |blue-600 :value "|hsl(220 72% 48%)" :note |
              DesignToken :group |palette :name |blue-700 :value "|hsl(220 70% 40%)" :note |
              DesignToken :group |palette :name |green-50 :value "|hsl(145 55% 96%)" :note |
              DesignToken :group |palette :name |green-200 :value "|hsl(145 40% 80%)" :note |
              DesignToken :group |palette :name |green-500 :value "|hsl(145 55% 38%)" :note |
              DesignToken :group |palette :name |green-700 :value "|hsl(145 60% 26%)" :note |
              DesignToken :group |palette :name |amber-50 :value "|hsl(45 95% 94%)" :note |
              DesignToken :group |palette :name |amber-200 :value "|hsl(42 80% 76%)" :note |
              DesignToken :group |palette :name |amber-500 :value "|hsl(38 92% 50%)" :note |
              DesignToken :group |palette :name |amber-700 :value "|hsl(32 85% 28%)" :note |
              DesignToken :group |palette :name |red-50 :value "|hsl(4 85% 96%)" :note |
              DesignToken :group |palette :name |red-200 :value "|hsl(4 70% 86%)" :note |
              DesignToken :group |palette :name |red-500 :value "|hsl(4 72% 52%)" :note |
              DesignToken :group |palette :name |red-700 :value "|hsl(4 68% 40%)" :note |
              DesignToken :group |color :name |color-text :value "|var(--rui-gray-900)" :note "|Body text and headings"
              DesignToken :group |color :name |color-text-secondary :value "|var(--rui-gray-600)" :note "|Descriptions and labels"
              DesignToken :group |color :name |color-text-muted :value "|var(--rui-gray-500)" :note "|Hints, placeholders, separators"
              DesignToken :group |color :name |color-text-disabled :value "|var(--rui-gray-400)" :note "|Disabled controls"
              DesignToken :group |color :name |color-text-inverse :value "|var(--rui-gray-0)" :note "|Text on solid fills"
              DesignToken :group |color :name |color-bg :value "|var(--rui-gray-50)" :note "|Page background"
              DesignToken :group |color :name |color-surface :value "|var(--rui-gray-0)" :note "|Controls, cards, popovers"
              DesignToken :group |color :name |color-surface-subtle :value "|var(--rui-gray-50)" :note "|Hover fills and table stripes"
              DesignToken :group |color :name |color-surface-muted :value "|var(--rui-gray-100)" :note "|Code blocks, skeletons, tracks"
              DesignToken :group |color :name |color-border :value "|var(--rui-gray-200)" :note "|Dividers and card borders"
              DesignToken :group |color :name |color-border-strong :value "|var(--rui-gray-300)" :note "|Control borders"
              DesignToken :group |color :name |color-border-hover :value "|var(--rui-gray-400)" :note "|Hovered control borders"
              DesignToken :group |color :name |color-primary :value "|var(--rui-blue-500)" :note "|Primary actions, selection, links"
              DesignToken :group |color :name |color-primary-hover :value "|var(--rui-blue-600)" :note "|Hover on primary fills"
              DesignToken :group |color :name |color-primary-active :value "|var(--rui-blue-700)" :note "|Pressed primary fills, link text"
              DesignToken :group |color :name |color-primary-soft :value "|var(--rui-blue-50)" :note "|Selected rows, soft fills"
              DesignToken :group |color :name |color-primary-border :value "|var(--rui-blue-200)" :note "|Borders of soft primary surfaces"
              DesignToken :group |color :name |color-info :value "|var(--rui-blue-500)" :note "|Solid info fill"
              DesignToken :group |color :name |color-info-soft :value "|var(--rui-blue-50)" :note "|Soft info background"
              DesignToken :group |color :name |color-info-border :value "|var(--rui-blue-200)" :note "|Soft info border"
              DesignToken :group |color :name |color-info-text :value "|var(--rui-blue-700)" :note "|Info text on soft background"
              DesignToken :group |color :name |color-success :value "|var(--rui-green-500)" :note "|Solid success fill"
              DesignToken :group |color :name |color-success-soft :value "|var(--rui-green-50)" :note "|Soft success background"
              DesignToken :group |color :name |color-success-border :value "|var(--rui-green-200)" :note "|Soft success border"
              DesignToken :group |color :name |color-success-text :value "|var(--rui-green-700)" :note "|Success text on soft background"
              DesignToken :group |color :name |color-warning :value "|var(--rui-amber-500)" :note "|Solid warning fill"
              DesignToken :group |color :name |color-warning-soft :value "|var(--rui-amber-50)" :note "|Soft warning background"
              DesignToken :group |color :name |color-warning-border :value "|var(--rui-amber-200)" :note "|Soft warning border"
              DesignToken :group |color :name |color-warning-text :value "|var(--rui-amber-700)" :note "|Warning text on soft background"
              DesignToken :group |color :name |color-danger :value "|var(--rui-red-500)" :note "|Solid danger fill"
              DesignToken :group |color :name |color-danger-soft :value "|var(--rui-red-50)" :note "|Soft danger background"
              DesignToken :group |color :name |color-danger-border :value "|var(--rui-red-200)" :note "|Soft danger border"
              DesignToken :group |color :name |color-danger-text :value "|var(--rui-red-700)" :note "|Danger text on soft background"
              DesignToken :group |color :name |color-focus :value "|hsl(220 78% 56% / 0.28)" :note "|Focus ring color"
              DesignToken :group |color :name |color-overlay :value "|hsl(220 25% 14% / 0.45)" :note "|Backdrop behind dialogs"
              DesignToken :group |font :name |font-sans :value "|Hind, Verdana, 'Hiragino Sans GB', 'WenQuanYi Micro Hei', 'Microsoft Yahei', sans-serif" :note "|Interface text"
              DesignToken :group |font :name |font-mono :value "|'Source Code Pro', Menlo, 'Ubuntu Mono', Consolas, monospace" :note "|Code, keys, numbers in tables"
              DesignToken :group |font :name |font-display :value "|'Josefin Sans', 'Helvetica Neue', Arial, sans-serif" :note "|Brand and hero titles only"
              DesignToken :group |text :name |text-xs :value |12px :note "|Badges, captions"
              DesignToken :group |text :name |text-sm :value |13px :note "|Secondary text, small controls"
              DesignToken :group |text :name |text-md :value |14px :note "|Body and controls"
              DesignToken :group |text :name |text-lg :value |16px :note "|Card titles, large controls"
              DesignToken :group |text :name |text-xl :value |20px :note "|Section titles"
              DesignToken :group |text :name |text-2xl :value |24px :note "|Page titles"
              DesignToken :group |text :name |text-3xl :value |32px :note "|Hero titles"
              DesignToken :group |text :name |leading-tight :value |1.25 :note "|Headings, controls"
              DesignToken :group |text :name |leading-normal :value |1.5 :note "|Body text"
              DesignToken :group |text :name |leading-relaxed :value |1.75 :note "|Long-form docs"
              DesignToken :group |text :name |weight-regular :value |400 :note |
              DesignToken :group |text :name |weight-medium :value |500 :note |
              DesignToken :group |text :name |weight-semibold :value |600 :note |
              DesignToken :group |space :name |space-0-5 :value |2px :note |
              DesignToken :group |space :name |space-1 :value |4px :note |
              DesignToken :group |space :name |space-1-5 :value |6px :note |
              DesignToken :group |space :name |space-2 :value |8px :note |
              DesignToken :group |space :name |space-3 :value |12px :note |
              DesignToken :group |space :name |space-4 :value |16px :note |
              DesignToken :group |space :name |space-5 :value |20px :note |
              DesignToken :group |space :name |space-6 :value |24px :note |
              DesignToken :group |space :name |space-8 :value |32px :note |
              DesignToken :group |space :name |space-10 :value |40px :note |
              DesignToken :group |space :name |space-12 :value |48px :note |
              DesignToken :group |space :name |space-16 :value |64px :note |
              DesignToken :group |radius :name |radius-sm :value |4px :note "|Tags, kbd, checkboxes"
              DesignToken :group |radius :name |radius-md :value |6px :note "|Buttons, inputs, selects"
              DesignToken :group |radius :name |radius-lg :value |10px :note "|Cards, alerts, popovers"
              DesignToken :group |radius :name |radius-full :value |999px :note "|Pills, switches, avatars"
              DesignToken :group |control :name |control-sm :value |24px :note "|Height of sm controls"
              DesignToken :group |control :name |control-sm-padding :value |8px :note "|Horizontal padding of sm controls"
              DesignToken :group |control :name |control-md :value |32px :note "|Height of md controls"
              DesignToken :group |control :name |control-md-padding :value |12px :note "|Horizontal padding of md controls"
              DesignToken :group |control :name |control-lg :value |40px :note "|Height of lg controls"
              DesignToken :group |control :name |control-lg-padding :value |16px :note "|Horizontal padding of lg controls"
              DesignToken :group |shadow :name |shadow-xs :value "|0 1px 2px hsl(220 30% 20% / 0.06)" :note "|Controls and resting cards"
              DesignToken :group |shadow :name |shadow-sm :value "|0 1px 3px hsl(220 30% 20% / 0.08), 0 1px 2px hsl(220 30% 20% / 0.04)" :note "|Hovered cards"
              DesignToken :group |shadow :name |shadow-md :value "|0 6px 16px hsl(220 30% 20% / 0.12)" :note "|Tooltips, dropdowns"
              DesignToken :group |shadow :name |shadow-lg :value "|0 16px 40px hsl(220 30% 20% / 0.18)" :note "|Dialogs and drawers"
              DesignToken :group |shadow :name |focus-ring :value "|0 0 0 3px var(--rui-color-focus)" :note "|Applied on :focus-visible"
              DesignToken :group |motion :name |duration-fast :value |120ms :note "|Hover and press feedback"
              DesignToken :group |motion :name |duration-normal :value |200ms :note "|Expand, fade, slide"
              DesignToken :group |motion :name |duration-slow :value |320ms :note "|Large surfaces"
              DesignToken :group |motion :name |ease :value "|cubic-bezier(0.2, 0, 0, 1)" :note "|Standard easing"
              DesignToken :group |layer :name |z-dropdown :value |1000 :note |
              DesignToken :group |layer :name |z-sticky :value |1100 :note |
              DesignToken :group |layer :name |z-overlay :value |1200 :note |
              DesignToken :group |layer :name |z-modal :value |1300 :note |
              DesignToken :group |layer :name |z-tooltip :value |1400 :note |
          :examples $ []
          :schema $ :: 'List 'respo-ui.tokens/DesignToken
        'duration-fast $ %{} 'CodeEntry (:doc "|Hover and press feedback. Default: 120ms")
          :code $ quote $ def duration-fast "|var(--rui-duration-fast)"
          :examples $ []
          :schema $ :: 'String
        'duration-normal $ %{} 'CodeEntry (:doc "|Expand, fade, slide. Default: 200ms")
          :code $ quote $ def duration-normal "|var(--rui-duration-normal)"
          :examples $ []
          :schema $ :: 'String
        'duration-slow $ %{} 'CodeEntry (:doc "|Large surfaces. Default: 320ms")
          :code $ quote $ def duration-slow "|var(--rui-duration-slow)"
          :examples $ []
          :schema $ :: 'String
        'ease $ %{} 'CodeEntry
          :doc "|Standard easing. Default: cubic-bezier(0.2, 0, 0, 1)"
          :code $ quote $ def ease "|var(--rui-ease)"
          :examples $ []
          :schema $ :: 'String
        'focus-ring $ %{} 'CodeEntry
          :doc "|Applied on :focus-visible. Default: 0 0 0 3px var(--rui-color-focus)"
          :code $ quote $ def focus-ring "|var(--rui-focus-ring)"
          :examples $ []
          :schema $ :: 'String
        'font-display $ %{} 'CodeEntry
          :doc "|Brand and hero titles only. Default: 'Josefin Sans', 'Helvetica Neue', Arial, sans-serif"
          :code $ quote $ def font-display "|var(--rui-font-display)"
          :examples $ []
          :schema $ :: 'String
        'font-mono $ %{} 'CodeEntry
          :doc "|Code, keys, numbers in tables. Default: 'Source Code Pro', Menlo, 'Ubuntu Mono', Consolas, monospace"
          :code $ quote $ def font-mono "|var(--rui-font-mono)"
          :examples $ []
          :schema $ :: 'String
        'font-sans $ %{} 'CodeEntry
          :doc "|Interface text. Default: Hind, Verdana, 'Hiragino Sans GB', 'WenQuanYi Micro Hei', 'Microsoft Yahei', sans-serif"
          :code $ quote $ def font-sans "|var(--rui-font-sans)"
          :examples $ []
          :schema $ :: 'String
        'gray-0 $ %{} 'CodeEntry (:doc "|Default: hsl(220 0% 100%)")
          :code $ quote $ def gray-0 "|var(--rui-gray-0)"
          :examples $ []
          :schema $ :: 'String
        'gray-100 $ %{} 'CodeEntry (:doc "|Default: hsl(220 18% 96%)")
          :code $ quote $ def gray-100 "|var(--rui-gray-100)"
          :examples $ []
          :schema $ :: 'String
        'gray-200 $ %{} 'CodeEntry (:doc "|Default: hsl(220 16% 92%)")
          :code $ quote $ def gray-200 "|var(--rui-gray-200)"
          :examples $ []
          :schema $ :: 'String
        'gray-300 $ %{} 'CodeEntry (:doc "|Default: hsl(220 14% 84%)")
          :code $ quote $ def gray-300 "|var(--rui-gray-300)"
          :examples $ []
          :schema $ :: 'String
        'gray-400 $ %{} 'CodeEntry (:doc "|Default: hsl(220 12% 70%)")
          :code $ quote $ def gray-400 "|var(--rui-gray-400)"
          :examples $ []
          :schema $ :: 'String
        'gray-50 $ %{} 'CodeEntry (:doc "|Default: hsl(220 20% 98%)")
          :code $ quote $ def gray-50 "|var(--rui-gray-50)"
          :examples $ []
          :schema $ :: 'String
        'gray-500 $ %{} 'CodeEntry (:doc "|Default: hsl(220 10% 55%)")
          :code $ quote $ def gray-500 "|var(--rui-gray-500)"
          :examples $ []
          :schema $ :: 'String
        'gray-600 $ %{} 'CodeEntry (:doc "|Default: hsl(220 12% 42%)")
          :code $ quote $ def gray-600 "|var(--rui-gray-600)"
          :examples $ []
          :schema $ :: 'String
        'gray-700 $ %{} 'CodeEntry (:doc "|Default: hsl(220 16% 30%)")
          :code $ quote $ def gray-700 "|var(--rui-gray-700)"
          :examples $ []
          :schema $ :: 'String
        'gray-800 $ %{} 'CodeEntry (:doc "|Default: hsl(220 20% 20%)")
          :code $ quote $ def gray-800 "|var(--rui-gray-800)"
          :examples $ []
          :schema $ :: 'String
        'gray-900 $ %{} 'CodeEntry (:doc "|Default: hsl(220 25% 14%)")
          :code $ quote $ def gray-900 "|var(--rui-gray-900)"
          :examples $ []
          :schema $ :: 'String
        'green-200 $ %{} 'CodeEntry (:doc "|Default: hsl(145 40% 80%)")
          :code $ quote $ def green-200 "|var(--rui-green-200)"
          :examples $ []
          :schema $ :: 'String
        'green-50 $ %{} 'CodeEntry (:doc "|Default: hsl(145 55% 96%)")
          :code $ quote $ def green-50 "|var(--rui-green-50)"
          :examples $ []
          :schema $ :: 'String
        'green-500 $ %{} 'CodeEntry (:doc "|Default: hsl(145 55% 38%)")
          :code $ quote $ def green-500 "|var(--rui-green-500)"
          :examples $ []
          :schema $ :: 'String
        'green-700 $ %{} 'CodeEntry (:doc "|Default: hsl(145 60% 26%)")
          :code $ quote $ def green-700 "|var(--rui-green-700)"
          :examples $ []
          :schema $ :: 'String
        'leading-normal $ %{} 'CodeEntry (:doc "|Body text. Default: 1.5")
          :code $ quote $ def leading-normal "|var(--rui-leading-normal)"
          :examples $ []
          :schema $ :: 'String
        'leading-relaxed $ %{} 'CodeEntry (:doc "|Long-form docs. Default: 1.75")
          :code $ quote $ def leading-relaxed "|var(--rui-leading-relaxed)"
          :examples $ []
          :schema $ :: 'String
        'leading-tight $ %{} 'CodeEntry (:doc "|Headings, controls. Default: 1.25")
          :code $ quote $ def leading-tight "|var(--rui-leading-tight)"
          :examples $ []
          :schema $ :: 'String
        'radius-full $ %{} 'CodeEntry (:doc "|Pills, switches, avatars. Default: 999px")
          :code $ quote $ def radius-full "|var(--rui-radius-full)"
          :examples $ []
          :schema $ :: 'String
        'radius-lg $ %{} 'CodeEntry (:doc "|Cards, alerts, popovers. Default: 10px")
          :code $ quote $ def radius-lg "|var(--rui-radius-lg)"
          :examples $ []
          :schema $ :: 'String
        'radius-md $ %{} 'CodeEntry (:doc "|Buttons, inputs, selects. Default: 6px")
          :code $ quote $ def radius-md "|var(--rui-radius-md)"
          :examples $ []
          :schema $ :: 'String
        'radius-sm $ %{} 'CodeEntry (:doc "|Tags, kbd, checkboxes. Default: 4px")
          :code $ quote $ def radius-sm "|var(--rui-radius-sm)"
          :examples $ []
          :schema $ :: 'String
        'red-200 $ %{} 'CodeEntry (:doc "|Default: hsl(4 70% 86%)")
          :code $ quote $ def red-200 "|var(--rui-red-200)"
          :examples $ []
          :schema $ :: 'String
        'red-50 $ %{} 'CodeEntry (:doc "|Default: hsl(4 85% 96%)")
          :code $ quote $ def red-50 "|var(--rui-red-50)"
          :examples $ []
          :schema $ :: 'String
        'red-500 $ %{} 'CodeEntry (:doc "|Default: hsl(4 72% 52%)")
          :code $ quote $ def red-500 "|var(--rui-red-500)"
          :examples $ []
          :schema $ :: 'String
        'red-700 $ %{} 'CodeEntry (:doc "|Default: hsl(4 68% 40%)")
          :code $ quote $ def red-700 "|var(--rui-red-700)"
          :examples $ []
          :schema $ :: 'String
        'shadow-lg $ %{} 'CodeEntry
          :doc "|Dialogs and drawers. Default: 0 16px 40px hsl(220 30% 20% / 0.18)"
          :code $ quote $ def shadow-lg "|var(--rui-shadow-lg)"
          :examples $ []
          :schema $ :: 'String
        'shadow-md $ %{} 'CodeEntry
          :doc "|Tooltips, dropdowns. Default: 0 6px 16px hsl(220 30% 20% / 0.12)"
          :code $ quote $ def shadow-md "|var(--rui-shadow-md)"
          :examples $ []
          :schema $ :: 'String
        'shadow-sm $ %{} 'CodeEntry
          :doc "|Hovered cards. Default: 0 1px 3px hsl(220 30% 20% / 0.08), 0 1px 2px hsl(220 30% 20% / 0.04)"
          :code $ quote $ def shadow-sm "|var(--rui-shadow-sm)"
          :examples $ []
          :schema $ :: 'String
        'shadow-xs $ %{} 'CodeEntry
          :doc "|Controls and resting cards. Default: 0 1px 2px hsl(220 30% 20% / 0.06)"
          :code $ quote $ def shadow-xs "|var(--rui-shadow-xs)"
          :examples $ []
          :schema $ :: 'String
        'space-0-5 $ %{} 'CodeEntry (:doc "|Default: 2px")
          :code $ quote $ def space-0-5 "|var(--rui-space-0-5)"
          :examples $ []
          :schema $ :: 'String
        'space-1 $ %{} 'CodeEntry (:doc "|Default: 4px")
          :code $ quote $ def space-1 "|var(--rui-space-1)"
          :examples $ []
          :schema $ :: 'String
        'space-1-5 $ %{} 'CodeEntry (:doc "|Default: 6px")
          :code $ quote $ def space-1-5 "|var(--rui-space-1-5)"
          :examples $ []
          :schema $ :: 'String
        'space-10 $ %{} 'CodeEntry (:doc "|Default: 40px")
          :code $ quote $ def space-10 "|var(--rui-space-10)"
          :examples $ []
          :schema $ :: 'String
        'space-12 $ %{} 'CodeEntry (:doc "|Default: 48px")
          :code $ quote $ def space-12 "|var(--rui-space-12)"
          :examples $ []
          :schema $ :: 'String
        'space-16 $ %{} 'CodeEntry (:doc "|Default: 64px")
          :code $ quote $ def space-16 "|var(--rui-space-16)"
          :examples $ []
          :schema $ :: 'String
        'space-2 $ %{} 'CodeEntry (:doc "|Default: 8px")
          :code $ quote $ def space-2 "|var(--rui-space-2)"
          :examples $ []
          :schema $ :: 'String
        'space-3 $ %{} 'CodeEntry (:doc "|Default: 12px")
          :code $ quote $ def space-3 "|var(--rui-space-3)"
          :examples $ []
          :schema $ :: 'String
        'space-4 $ %{} 'CodeEntry (:doc "|Default: 16px")
          :code $ quote $ def space-4 "|var(--rui-space-4)"
          :examples $ []
          :schema $ :: 'String
        'space-5 $ %{} 'CodeEntry (:doc "|Default: 20px")
          :code $ quote $ def space-5 "|var(--rui-space-5)"
          :examples $ []
          :schema $ :: 'String
        'space-6 $ %{} 'CodeEntry (:doc "|Default: 24px")
          :code $ quote $ def space-6 "|var(--rui-space-6)"
          :examples $ []
          :schema $ :: 'String
        'space-8 $ %{} 'CodeEntry (:doc "|Default: 32px")
          :code $ quote $ def space-8 "|var(--rui-space-8)"
          :examples $ []
          :schema $ :: 'String
        'text-2xl $ %{} 'CodeEntry (:doc "|Page titles. Default: 24px")
          :code $ quote $ def text-2xl "|var(--rui-text-2xl)"
          :examples $ []
          :schema $ :: 'String
        'text-3xl $ %{} 'CodeEntry (:doc "|Hero titles. Default: 32px")
          :code $ quote $ def text-3xl "|var(--rui-text-3xl)"
          :examples $ []
          :schema $ :: 'String
        'text-lg $ %{} 'CodeEntry (:doc "|Card titles, large controls. Default: 16px")
          :code $ quote $ def text-lg "|var(--rui-text-lg)"
          :examples $ []
          :schema $ :: 'String
        'text-md $ %{} 'CodeEntry (:doc "|Body and controls. Default: 14px")
          :code $ quote $ def text-md "|var(--rui-text-md)"
          :examples $ []
          :schema $ :: 'String
        'text-sm $ %{} 'CodeEntry (:doc "|Secondary text, small controls. Default: 13px")
          :code $ quote $ def text-sm "|var(--rui-text-sm)"
          :examples $ []
          :schema $ :: 'String
        'text-xl $ %{} 'CodeEntry (:doc "|Section titles. Default: 20px")
          :code $ quote $ def text-xl "|var(--rui-text-xl)"
          :examples $ []
          :schema $ :: 'String
        'text-xs $ %{} 'CodeEntry (:doc "|Badges, captions. Default: 12px")
          :code $ quote $ def text-xs "|var(--rui-text-xs)"
          :examples $ []
          :schema $ :: 'String
        'theme $ %{} 'CodeEntry
          :doc "|Declares every --rui-* token on :root. Loaded with this namespace; override the variables in your own CSS to theme components."
          :code $ quote $ defstyle theme
            {} $ |:root $ css-variables design-tokens
          :examples $ []
          :schema $ :: 'String
        'transition-colors $ %{} 'CodeEntry
          :doc "|Transition shorthand for hover and press feedback on color, background, border and shadow."
          :code $ quote $ def transition-colors
            str "|color " duration-fast "| " ease "|, background-color " duration-fast "| " ease "|, border-color " duration-fast "| " ease "|, box-shadow " duration-fast "| " ease
          :examples $ []
          :schema $ :: 'String
        'weight-medium $ %{} 'CodeEntry (:doc "|Default: 500")
          :code $ quote $ def weight-medium "|var(--rui-weight-medium)"
          :examples $ []
          :schema $ :: 'String
        'weight-regular $ %{} 'CodeEntry (:doc "|Default: 400")
          :code $ quote $ def weight-regular "|var(--rui-weight-regular)"
          :examples $ []
          :schema $ :: 'String
        'weight-semibold $ %{} 'CodeEntry (:doc "|Default: 600")
          :code $ quote $ def weight-semibold "|var(--rui-weight-semibold)"
          :examples $ []
          :schema $ :: 'String
        'z-dropdown $ %{} 'CodeEntry (:doc "|Default: 1000")
          :code $ quote $ def z-dropdown "|var(--rui-z-dropdown)"
          :examples $ []
          :schema $ :: 'String
        'z-modal $ %{} 'CodeEntry (:doc "|Default: 1300")
          :code $ quote $ def z-modal "|var(--rui-z-modal)"
          :examples $ []
          :schema $ :: 'String
        'z-overlay $ %{} 'CodeEntry (:doc "|Default: 1200")
          :code $ quote $ def z-overlay "|var(--rui-z-overlay)"
          :examples $ []
          :schema $ :: 'String
        'z-sticky $ %{} 'CodeEntry (:doc "|Default: 1100")
          :code $ quote $ def z-sticky "|var(--rui-z-sticky)"
          :examples $ []
          :schema $ :: 'String
        'z-tooltip $ %{} 'CodeEntry (:doc "|Default: 1400")
          :code $ quote $ def z-tooltip "|var(--rui-z-tooltip)"
          :examples $ []
          :schema $ :: 'String
      :ns $ %{} 'NsEntry
        :doc "|Design tokens as CSS custom properties. Components read tokens through these defs so a theme can override --rui-* variables."
        :code $ quote $ ns respo-ui.tokens
          :require $ respo.css :refer $ defstyle
    'respo-ui.util $ %{} 'FileEntry
      :defs $ {}
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
            match (option:unwrap-or format :viewer)
              :json $ let
                  content $ js-ffi.contract/expect-string |JSON.stringify $ js/JSON.stringify (to-js-data data) js/undefined 2
                option:fold (browser/window-open |about:blank)
                  fn () &unit
                  fn (window)
                    let
                        document window.:document
                      respo.dom/set-inner-html! (unsafe-coerce document.:body 'respo.dom/DomElement)
                        str |<pre> (santinize-html-text content) |</pre>
                    , &unit
              :edn $ let
                  content $ format-cirru-edn data
                option:fold (browser/window-open |about:blank)
                  fn () &unit
                  fn (window)
                    let
                        document window.:document
                      respo.dom/set-inner-html! (unsafe-coerce document.:body 'respo.dom/DomElement)
                        str |<pre> (santinize-html-text content) |</pre>
                    , &unit
              _ $ let
                  content $ format-cirru-edn $ :: :tab-echo data
                  app |https://r.tiye.me/Memkits/edn-tree-viewer/?mode=dev
                option:fold (browser/window-open app)
                  fn () &unit
                  fn (window)
                    browser/set-timeout!
                      fn () $ window .post-message! content |https://r.tiye.me
                      , 20
                    browser/set-timeout!
                      fn () $ window .post-message! content |https://r.tiye.me
                      , 200
                    , &unit
            , &unit
          :examples $ []
          :schema $ :: 'Fn $ {} (:return 'Unit)
            :args $ [] 'Dynamic $ :: 'calcit.core/Option 'Tag
            :features $ #{} :js-ffi
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote $ ns respo-ui.util
          :require $ js-ffi.browser :as browser
