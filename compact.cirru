
{} (:about "|file is generated - never edit directly; learn cr edit/tree workflows before changing") (:package |respo-ui)
  :configs $ {} (:init-fn |respo-ui.main/main!) (:reload-fn |respo-ui.main/reload!) (:version |0.6.4)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-router.calcit/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |respo-ui.comp $ %{} :FileEntry
      :defs $ {}
        |comp-attributes $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-attributes (options)
              let
                  items $ &map:get options :items
                  item-width $ either (&map:get options :item-width) 160
                  item-height $ &map:get options :item-height
                  title $ &map:get options :title
                  ret $ list->
                    {}
                      :class-name $ &map:get options :class-name
                      :style $ merge
                        {} (:display :grid)
                          :grid-template-columns $ str "\"repeat(auto-fit, minmax(" item-width "\"px,1fr))"
                          :gap 8
                        &map:get options :style
                    -> items $ map-indexed
                      fn (idx info)
                        [] idx $ let
                            item $ cond
                                map? info
                                , info
                              (tuple? info)
                                tag-match info
                                    :attr l v
                                    {} (:value v) (:label l)
                                  (:attr-span l v s)
                                    {} (:value v) (:label l) (:span s)
                              true $ raise "\"unknown attribute info"
                          div
                            {}
                              :style $ {}
                                :grid-column $ let
                                    sp $ &map:get item :span
                                  if (some? sp) (str-spaced "\"span" sp) "\""
                              :class-name $ str-spaced style-item (&map:get options :css-item)
                            div
                              {} $ :class-name
                                str-spaced css-item-label $ &map:get options :css-label
                              <> $ &map:get item :label
                            div
                              {} $ :class-name (&map:get options :css-value)
                              let
                                  v $ &map:get item :value
                                if (literal? v) (<> v) v
                if (some? title)
                  div ({})
                    div
                      {} $ :class-name
                        str-spaced style-attributes-title $ &map:get options :css-title
                      <> title
                    , ret
                  , ret
          :examples $ []
        |comp-catoptric-text $ %{} :CodeEntry (:doc "|by \"catoptric text\" I mean text added with CSS content, thus unsearchable from browser search or select. The text can still be grabbed from DOM tree though.")
          :code $ quote
            defcomp comp-catoptric-text (text ? options)
              [] (effect-dataset-text text)
                span $ {}
                  :class-name $ str-spaced style-catoptric (get options :class-name)
                  :style $ get options :style
          :examples $ []
        |comp-checkbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-checkbox (checked ? options) (assert-type checked :bool)
              assert-type options $ :: :optional :map
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
                          on-change (:checked e) d!
                if
                  some? $ :label options
                  <> $ :label options
          :examples $ []
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
        |comp-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-close (? options)
              span $ {} (:inner-text "\"✕")
                :style $ get options :style
                :class-name $ str-spaced style-close (get options :class-name)
                :on-click $ get options :on-click
          :examples $ []
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
        |comp-placeholder $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-placeholder (text)
              div
                {} $ :class-name css-placeholder
                <> text
          :examples $ []
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
                                , info
                              (map? info)
                                :: :tab
                                  or (&map:get info :value) (&map:get info :name)
                                  or (&map:get info :display) (&map:get info :title)
                              true $ raise "\"Unknown tab value"
                          tag-match item $
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
        |comp-time $ %{} :CodeEntry (:doc "|pass a time in string(internally handled by dayjs)\n\nif is today, just show the time of today.\nif not today, only show date and week.\n\nneed to be extended in future...")
          :code $ quote
            defcomp comp-time (time & options) (.!extend dayjs is-today)
              let
                  now $ dayjs time
                  mark $ if (.!isToday now)
                    str "\"Today " $ .!format now "\"HH:mm"
                    .!format now "\"MM-DD ddd"
                span $ {} (:class-name css/font-fancy) (:title time) (:inner-text mark)
                  :on-click $ fn (e d!) (js/console.log :time time)
          :examples $ []
        |css-item-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-item-label $ {}
              "\"$0" $ {} (:font-weight 300) (:font-family ui/font-fancy) (:font-size 15) (:line-height "\"14px")
                :color $ hsl 0 0 60
          :examples $ []
        |css-placeholder $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-placeholder $ {}
              "\"$0" $ merge ui/center
                {} (:padding 16) (:font-family ui/font-fancy)
                  :color $ hsl 0 0 80
                  :font-size 12
                  :font-style :italic
          :examples $ []
        |css-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-snippet $ {}
              "\"&" $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height "\"20px")
                :color $ hsl 0 0 40
                :padding "\"4px 32px 4px 6px"
                :border $ str "\"1px solid " (hsl 0 0 90)
                :border-radius "\"4px"
                :margin 0
                :position :relative
              "\"& > pre" $ {} (:margin 0)
          :examples $ []
        |css-tab $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-tab $ {}
              "\"$0" $ {} (:padding "\"0 8px") (:font-family ui/font-normal) (:font-weight 300) (:cursor :pointer) (:font-size 14)
                :color $ hsl 0 0 70
                :line-height "\"24px"
                :border-radius "\"2px"
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 98
          :examples $ []
        |effect-dataset-text $ %{} :CodeEntry (:doc "|Respo does not support dataset from attribute, write with effect")
          :code $ quote
            defeffect effect-dataset-text (text) (action el at?)
              if
                or (= action :update) (= action :mount)
                -> el .-dataset .-text $ set! text
          :examples $ []
        |effect-tab-highlight $ %{} :CodeEntry (:doc |)
          :code $ quote
            defeffect effect-tab-highlight (selected vertical?) (action el at?)
              when
                or (= action :mount) (= action :update)
                let
                    target $ .!querySelector el (str "\"." style-selected-tab)
                    cursor $ .!querySelector el (str "\"." style-tab-highlight)
                  if (some? target)
                    let
                        left $ - (.-offsetLeft target) 0
                        width $ .-clientWidth target
                        height $ .-clientHeight target
                      if vertical?
                        do
                          -> cursor .-style .-top $ set!
                            str (.-offsetTop target) "\"px"
                          -> cursor .-style .-bottom $ set! (str 0 "\"px")
                          -> cursor .-style .-height $ set! (str height "\"px")
                        do
                          -> cursor .-style .-left $ set! (str left "\"px")
                          -> cursor .-style .-width $ set! (str width "\"px")
                    if (not vertical?)
                      -> cursor .-style .-width $ set! (str 0 "\"px")
          :examples $ []
        |literal? $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn literal? (v)
              or (string? v) (tag? v) (number? v) (bool? v)
          :examples $ []
        |style-attributes-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-attributes-title $ {}
              "\"$0" $ {} (:font-size 18) (:margin-bottom 6)
          :examples $ []
        |style-catoptric $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-catoptric $ {}
              "\"&::before" $ {} (:content "\"attr(data-text)")
          :examples $ []
        |style-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-close $ {}
              "\"&" $ {} (:font-size 16) (:line-height "\"16px") (:height "\"16px") (:font-weight 100)
                :color $ hsl 0 90 70
                :opacity 0.5
                :cursor :pointer
                :transition-duration "\"200ms"
                :user-select :none
              "\"&:hover" $ {} (:opacity 1)
              "\"&:active" $ {} (:transform "\"scale(1.1)") (:transition-duration "\"0ms")
          :examples $ []
        |style-copy-container $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-copy-container $ {}
              "\"&" $ {} (:display :inline-block) (:margin "\"0 8px 0 4px")
              "\"&:hover" $ {} (:transition-duration "\"200ms") (:transform "\"scale(1.06)")
          :examples $ []
        |style-copy-outline $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-copy-outline $ {}
              "\"&" $ {} (:position :relative) (:width 12) (:height 12) (:border-radius "\"2px")
                :border $ str "\"1.5px solid " (hsl 0 0 80)
                :cursor :pointer
                :outline "\"1px solid white"
              "\"&:active" $ {}
                :border-color $ hsl 0 0 50
                :transition-duration "\"0ms"
          :examples $ []
        |style-copy-wrapper $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-copy-wrapper $ {}
              "\"&" $ {} (:position :absolute) (:top 10) (:right 2)
          :examples $ []
        |style-item $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-item $ {}
              "\"$0" $ {} (:min-height 72)
                :background-color $ hsl 0 0 99
                :padding "\"8px"
                :transition-duration "\"240ms"
                :border-radius "\"4px"
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 100
                :box-shadow $ str "\"0 0 4px 1px " (hsl 0 0 0 0.08)
          :examples $ []
        |style-selected-tab $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-selected-tab $ {}
              "\"&" $ {}
          :examples $ []
        |style-tab-highlight $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tab-highlight $ {}
              "\"&" $ {} (:min-width 0) (:left 0) (:height 1)
                :background-color $ hsl 200 60 80
                :bottom 0
                :position :absolute
                :transition-duration "\"200ms"
                :border-radius "\"2px"
              (str "\"." style-tabs "\":hover &")
                {} $ :height 3
          :examples $ []
        |style-tab-vertical-highlight $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tab-vertical-highlight $ {}
              "\"div&" $ {} (:width 2) (:left 0)
              (str "\"." style-tabs "\":hover div&")
                {} $ :width 4
          :examples $ []
        |style-tabs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tabs $ {}
              "\"&" $ {} (:position :relative)
          :examples $ []
        |style-tag $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tag $ {}
              "\"&" $ {} (:display :inline-block)
                :background-color $ hsl 0 0 96
                :border $ str "\"1px solid " (hsl 0 0 92)
                :border-radius "\"4px"
                :height "\"20px"
                :line-height "\"20px"
                :font-size 12
                :padding "\"0px 8px"
                :color $ hsl 0 0 64
                :cursor :default
              "\"&:hover" $ {}
                :background-color $ hsl 0 0 94
              "\"&:active" $ {} (:transform "\"translate(1px,1px)")
          :examples $ []
        |style-tag-error $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tag-error $ {}
              "\"div&" $ {} (:color :white) (:border :none)
                :background-color $ hsl 0 90 76
              "\"div&:hover" $ {}
                :background-color $ hsl 0 90 72
          :examples $ []
        |style-tag-info $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tag-info $ {}
              "\"div&" $ {} (:color :white) (:border :none)
                :background-color $ hsl 240 99 86
              "\"div&:hover" $ {}
                :background-color $ hsl 240 99 84
          :examples $ []
        |style-tag-success $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tag-success $ {}
              "\"div&" $ {} (:color :white) (:border :none)
                :color $ hsl 120 99 40
                :background-color $ hsl 120 99 92
              "\"div&:hover" $ {}
                :background-color $ hsl 120 99 88
          :examples $ []
        |style-tag-warning $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-tag-warning $ {}
              "\"div&" $ {} (:color :white) (:border :none)
                :color $ hsl 60 90 30
                :background-color $ hsl 60 98 58
              "\"div&:hover" $ {}
                :background-color $ hsl 60 98 49
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp $ :require
            respo.core :refer $ defcomp defeffect div list-> input textarea button span select option a <> pre create-element
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            "\"cirru-color" :refer $ generateHtml
            respo.css :refer $ defstyle
            respo-ui.css :as css
            "\"copy-text-to-clipboard" :default copy!
            "\"dayjs" :default dayjs
            "\"dayjs/plugin/isToday" :default is-today
        :examples $ []
    |respo-ui.comp.components $ %{} :FileEntry
      :defs $ {}
        |comp-components-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-components-page (states)
              let
                  state $ or (:data states) false
                div
                  {} $ :style
                    {} $ :padding-bottom "\"50vh"
                  div ({}) (<> "|There are also components follow the guidelines of Respo UI:") (render-entry "\"https://github.com/Respo/alerts.calcit" "\"alerts") (render-entry "\"https://github.com/Respo/respo-feather.calcit" "\"respo-feather") (render-entry |https://github.com/Respo/respo-message.calcit "\"respo-message") (render-entry |https://github.com/Respo/respo-markdown.calcit "\"respo-markdown") (; render-entry |https://github.com/Respo/notifier.calcit "\"notifier")
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
        |comp-demo-attributes $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-attributes () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Attributes demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                comp-cirru-snippet "\"respo-ui.comp/comp-attributes\n\n\ncomp-attributes $ {} (:title \"\\\"Attributes DEMO\")\n  :items $ [] (:: :attr \"\\\"Demo\" \"\\\"content\")\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr-span \"\\\"DEMO 2\" \"\\\"content 2\" 2\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"Demo 2\" \"\\\"content 2\"\n    :: :attr \"\\\"DEMO 3\" $ a\n      {} (:inner-text \"\\\"Demo\")\n        :href \"\\\"https://respo-mvc.org\"\n        :target \"\\\"_blank\"\n" $ {}
                  :style $ {} (:flex 1)
                div
                  {} $ :class-name css/flex
                  comp-attributes $ {} (:title "\"Attributes DEMO")
                    :items $ [] (:: :attr "\"Demo" "\"content") (:: :attr "\"Demo 2" "\"content 2") (:: :attr-span "\"DEMO 2" "\"content 2" 2) (:: :attr "\"Demo 2" "\"content 2") (:: :attr "\"Demo 2" "\"content 2")
                      :: :attr "\"DEMO 3" $ a
                        {} (:inner-text "\"Demo") (:href "\"https://respo-mvc.org") (:target "\"_blank")
          :examples $ []
        |comp-demo-catoptric-text $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-catoptric-text () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Catoptric demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"respo-ui.comp/comp-catoptric-text\n\ncomp-catoptric-text \"|Demo Text\" $ {}\n  :style $ {}\n  :class-name $ {}\n" $ {}
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} (:gap "\"8px")
                  comp-catoptric-text "\"DEMO Text"
          :examples $ []
        |comp-demo-cirru-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-cirru-snippet () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Cirru snippet demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"respo-ui.comp/comp-cirru-snippet\n\ncomp-cirru-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :style $ {}\n  :class-name style-demo"
                div
                  {} $ :class-name (str-spaced css/flex css/column)
                  comp-snippet "\"@import url(cirru-color/assets/cirru.css);"
                  =< nil 8
                  comp-cirru-snippet "\"defn f (a b)\n  + a b"
          :examples $ []
        |comp-demo-close $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-close () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Close demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"respo-ui.comp/comp-close\n\ncomp-close $ {}\n  :style $ {}\n  :class-name |\n  :on-click nil" $ {}
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} (:gap "\"8px")
                  comp-close
          :examples $ []
        |comp-demo-copy $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn comp-demo-copy () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Copy demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                comp-cirru-snippet "\"respo-ui.comp/comp-copy\n\ncomp-copy \"|demo\"\ncomp-copy \"|demo\" $ fn (e d!)" $ {} (:flex 1)
                div
                  {} $ :class-name css/flex
                  <> "\"demo demo"
                  comp-copy "\"DEMO TO COPY"
                  <> "\"demo demo"
          :examples $ []
        |comp-demo-placeholder $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-placeholder () $ div ({})
              div
                {} $ :class-name css-title
                <> "\"Placeholder demo"
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                comp-cirru-snippet "\"respo-ui.comp/comp-placeholder\n\ncomp-placeholder \"|demo\"\ncomp-placeholder \"|中文\"" $ {} (:flex 1)
                div
                  {} $ :class-name css/flex
                  comp-placeholder "\"This is a demo"
                  comp-placeholder "\"中文 Demo"
          :examples $ []
        |comp-demo-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-snippet () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Snippet demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"respo-ui.comp/comp-snippet\n\ncomp-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n  :class-name style-demo\n  :style $ {}" $ {}
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"defn f (a b)\n  + a b" $ {}
          :examples $ []
        |comp-demo-tabs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-tabs (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} $ :selected nil
                  en-tabs $ [] (:: :tab :book "\"Book") (:: :tab :card "\"Card") (:: :tab :pl "\"Programming language")
                div ({})
                  div
                    {} $ :class-name css-title
                    <> "\"Tabs demo"
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    comp-cirru-snippet "\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  {}\n    :selected (:selected state)\n    :style {}\n  []\n    :: :tab :book |Book\n    :: :tab :card |Card\n    :: :tab :pl \"|Programming language\"\n  fn (info d!)\n    println |selected info\n    d! cursor $ assoc state :selected $ :name info" $ {} (:flex 1)
                    div
                      {} $ :class-name css/flex
                      comp-tabs
                        {} $ :selected (:selected state)
                        , en-tabs $ fn (info d!)
                          d! cursor $ assoc state :selected (nth info 1)
                      comp-tabs
                        {} $ :selected (:selected state)
                        [] (:: :tab :book "\"书本") (:: :tab :card "\"纸牌") (:: :tab :pl "\"编程语言")
                        fn (info d!)
                          d! cursor $ assoc state :selected (nth info 1)
                      comp-tabs
                        {}
                          :selected $ :selected state
                          :style $ {}
                            :border-bottom $ str "\"1px solid " (hsl 0 0 94)
                        , en-tabs $ fn (info d!) (println "\"selected" info)
                          d! cursor $ assoc state :selected (nth info 1)
                  =< nil 8
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    comp-cirru-snippet "\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  &{} :selected (:selected state) :style ({}) :vertical? true :width 200\n  , tabs\n  fn (info d!)" $ {} (:flex 1)
                    div
                      {} $ :class-name css/flex
                      comp-tabs
                        {}
                          :selected $ :selected state
                          :vertical? true
                          :width 200
                          :style $ {}
                        , en-tabs $ fn (info d!) (println "\"selected" info)
                          d! cursor $ assoc state :selected (nth info 1)
          :examples $ []
        |comp-demo-tags $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-tags () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Tags demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"respo-ui.comp/comp-tag\n\ncomp-tag :info \"demo\"\n" $ {}
                div
                  {}
                    :class-name $ str-spaced css/flex css/row
                    :style $ {} (:gap "\"8px")
                  comp-tag :info "\":info demo"
                  comp-tag :success "\":success demo"
                  comp-tag :warning "\":warning demo"
                  comp-tag :error "\":error demo"
                  comp-tag :default "\":default demo"
          :examples $ []
        |comp-demo-time $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-time () $ div
              {} $ :class-name css/column
              div
                {} $ :class-name css-title
                <> "\"Time demo"
              =< nil 8
              div
                {} $ :class-name (str-spaced css/row css/gap8)
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"respo-ui.comp/comp-time\n\ncomp-time |2023-11-17T04:07:18.435Z $ {}\n  :class-name |demo\n  :on-click $ fn ()" $ {}
                div
                  {} $ :class-name css/flex
                  div ({})
                    comp-time
                      .!toISOString $ new js/Date
                      {}
                  div ({})
                    comp-time "\"2023-11-07T06:23:49.688Z" $ {}
          :examples $ []
        |css-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-title $ {}
              "\"$0" $ {} (:margin-top 40) (:font-size 18) (:font-weight :bold)
                :color $ hsl 0 0 10
          :examples $ []
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-entry (url title)
              div ({})
                a $ {} (:href url) (:inner-text title)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.components $ :require
            respo.core :refer $ defcomp >> div a <> pre code
            respo.comp.space :refer $ =<
            respo-ui.comp :refer $ comp-tabs comp-placeholder comp-cirru-snippet comp-button comp-attributes comp-snippet comp-time comp-tag comp-close comp-catoptric-text comp-copy
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
        :examples $ []
    |respo-ui.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
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
                        :index
                        comp-home
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
                      _ $ do (eprintln "\"unknown router" router) (comp-home)
                  if dev? $ comp-inspect "\"Store" store
                    {} $ :bottom 0
          :examples $ []
        |comp-utils-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-utils-page () $ div ({})
              div ({}) (<> "\"Utils")
              div
                {} $ :class-name (str-spaced css/column css/gap8)
                div ({}) (<> "\"tab-echo! to open new tab and show EDN data.")
                div
                  {} $ :class-name (str-spaced css/row css/gap8)
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    button $ {} (:inner-text "\"Echo") (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo! $ {} (:type :message)
                          :demo $ {} (:a 1)
                          :vv $ range
                            js/Math.floor $ * 100 (js/Math.random)
                  comp-cirru-snippet "\"respo-ui.util/tab-echo! data" $ {}
                div
                  {} $ :class-name (str-spaced css/row css/gap8)
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    button $ {} (:inner-text "\"Echo") (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo!
                          {} (:type :message)
                            :demo $ {} (:a 1)
                            :html "\"code <code> cc c cc </code>"
                          , :json
                  comp-cirru-snippet "\"respo-ui.util/tab-echo! data :json" $ {}
                div
                  {} $ :class-name (str-spaced css/row css/gap8)
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    button $ {} (:inner-text "\"Echo") (:class-name css/button)
                      :on-click $ fn (e d!)
                        tab-echo!
                          {} (:type :message)
                            :demo $ {} (:a 1)
                            :html "\"code <code> cc c cc </code>"
                          , :edn
                  comp-cirru-snippet "\"respo-ui.util/tab-echo! data :edn" $ {}
          :examples $ []
        |css-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-content $ {}
              "\"$0" $ {} (:padding 8)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
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
        :examples $ []
    |respo-ui.comp.fonts-page $ %{} :FileEntry
      :defs $ {}
        |comp-fonts-page $ %{} :CodeEntry (:doc |)
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
        |css-demo $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-demo $ {}
              |& $ {} (:font-size 16) (:font-weight |bold) (:line-height |32px)
          :examples $ []
        |render-font-demo $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-font-demo (css-family family weight)
              div
                {}
                  :class-name $ str-spaced css-family css-demo
                  :style $ {} (:font-weight weight)
                <> $ str "|This is a demo of the font, guess what you like: " family "| " weight
          :examples $ []
        |style-section $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-section $ {} (:font-size 24) (:font-family ui/font-fancy) (:line-height |60px)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.fonts-page $ :require
            respo.core :refer $ defcomp div <>
            respo-ui.css :as css
            respo-ui.core :as ui
            respo.comp.space :refer $ =<
            respo-md.comp.md :refer $ comp-md-block
            respo.css :refer $ defstyle
        :examples $ []
    |respo-ui.comp.home $ %{} :FileEntry
      :defs $ {}
        |comp-home $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-home () $ div ({})
              div
                {} $ :style style-home
                <> "|Styles for Respo"
              =< nil 32
              div ({})
                comp-md-block "|Respo UI is some minimal style collections for creating small pieces of apps. It includes variables for Flexbox layouts, basic button and input styles, fonts like \"Josefin Sans\" and \"Hind\".\n\nYou may read code on [GitHub](http://github.com/Respo/respo-ui). [Fonts files](https://github.com/tiye/favored-fonts) are hosted separately on my server." $ {}
          :examples $ []
        |style-home $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-home $ {} (:font-size 32) (:font-family "|Josefin Sans")
              :color $ hsl 200 100 76
              :font-weight 100
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.home $ :require
            respo.core :refer $ defcomp div a img <>
            respo.comp.space :refer $ =<
            respo.util.format :refer $ hsl
            respo-md.comp.md :refer $ comp-md-block
        :examples $ []
    |respo-ui.comp.layouts-page $ %{} :FileEntry
      :defs $ {}
        |comp-layouts-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-layouts-page () $ div ({})
              div ({}) (<> |Layouts)
              comp-md-block "|Flexbox styles are defined in variables like `css/row` `css/center` in flex containers. Here are how they take effects." $ {}
              div
                {} (:class-name css/row)
                  :style $ {} (:flex-wrap :wrap) (:font-family ui/font-code) (:font-size 12)
                render-demo |center css/center
                render-demo |row-center css/row-center
                render-demo |row-middle css/row-middle
                render-demo |row css/row
                render-demo |column css/column
                render-demo |row-parted css/row-parted
                render-demo |column-parted css/column-parted
                render-demo |row-dispersive css/row-dispersive
                render-demo |column-dispersive css/column-dispersive
                render-demo |row-evenly css/row-evenly
                render-demo |column-evenly css/column-evenly
          :examples $ []
        |css-sample $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-sample $ {}
              "\"$0" $ {} (:padding "|4px 8px") (:font-size 12) (:line-height "\"20px") (:font-family ui/font-code) (:border-radius "\"4px")
                :border $ str "\"1px solid " (hsl 0 0 80)
                :color $ hsl 0 0 30
          :examples $ []
        |render-demo $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-demo (title layout-cls)
              div
                {} $ :style
                  {} $ :margin 16
                div
                  {} $ :style ({})
                  <> title
                div
                  {} (:class-name layout-cls)
                    :style $ {}
                      :border $ str "|1px solid " (hsl 0 0 86)
                      :width 120
                      :height 120
                  div
                    {} (:class-name css-sample)
                      :style $ {}
                        ; :background-color $ hsl 0 80 70
                    <> |A
                  div
                    {} (:class-name css-sample)
                      :style $ {}
                        ; :background-color $ hsl 120 80 70
                    <> |B
                  div
                    {} (:class-name css-sample)
                      :style $ {}
                        ; :background-color $ hsl 240 80 80
                    <> |C
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.layouts-page $ :require
            respo.core :refer $ defcomp div a <>
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo-md.comp.md :refer $ comp-md-block
            respo.css :refer $ defstyle
            respo-ui.css :as css
        :examples $ []
    |respo-ui.comp.sidebar $ %{} :FileEntry
      :defs $ {}
        |comp-sidebar $ %{} :CodeEntry (:doc |)
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
        |css-sidebar-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-sidebar-entry $ {}
              "\"$0" $ {} (:line-height |40px) (:font-size 20) (:cursor |pointer) (:font-weight "\"lighter") (:font-family ui/font-fancy) (:text-align :right) (:padding "|0 16px")
                :color $ hsl 0 0 20
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 97
          :examples $ []
        |on-route $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-route (path-name)
              fn (e dispatch!) (dispatch! :router/nav path-name)
          :examples $ []
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-entry (path title selected?)
              div
                {} (:class-name css-sidebar-entry)
                  :style $ if selected?
                    {} $ :background-color (hsl 0 0 50 0.1)
                  :on-click $ on-route path
                <> title
          :examples $ []
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-logo $ {} (:background-image "|url(https://cos-sh.tiye.me/cos-up/bb4c2755050318e864b56f59145d726e-SubstractRespo.png)") (:width 80) (:height 80) (:background-size :cover) (:display :inline-block) (:vertical-align :text-bottom)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.sidebar $ :require
            respo.core :refer $ defcomp div <>
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
        :examples $ []
    |respo-ui.comp.widgets-page $ %{} :FileEntry
      :defs $ {}
        |comp-tags-styles $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-tags-styles () $ div
              {} $ :class-name (str-spaced css/row-middle css/gap8)
              span $ {} (:inner-text "\"css/tag") (:class-name css/tag)
              span $ {} (:inner-text "\"css/tag-stroke") (:class-name css/tag-stroke)
              span $ {} (:inner-text "\"css/tag-outline") (:class-name css/tag-outline)
          :examples $ []
        |comp-widgets-page $ %{} :CodeEntry (:doc |)
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
                    :style $ {} (:height 1) (:width "\"50%")
                      :background-color $ hsl 0 0 90
                      :margin "\"48px 12px"
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
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.widgets-page $ :require
            respo.core :refer $ defcomp div input textarea button span select option a <> >>
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo-ui.comp :refer $ comp-checkbox
        :examples $ []
    |respo-ui.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ &= "\"dev" (get-env "\"mode" "\"release")
          :examples $ []
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:title "\"Respo UI") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-ui")
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-ui.config)
        :examples $ []
    |respo-ui.core $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button $ {} (:min-width |80px) (:line-height |24px) (:border-radius "\"4px") (:font-size 14) (:text-align |center)
              :border $ str "\"1px solid " (hsl 220 100 76)
              :color $ hsl 220 100 76
              :cursor |pointer
              :display |inline-block
              :padding "|0 8px"
              :outline :none
              :vertical-align :top
              :background-color :white
              :user-select :none
              :transition-duration "\"300ms"
          :examples $ []
        |button-danger $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button-danger $ merge button
              {} (:color :white)
                :background-color $ hsl 6 100 60
                :border-color $ hsl 6 100 60
          :examples $ []
        |button-primary $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button-primary $ merge button
              {} (:color :white)
                :background-color $ hsl 220 80 60
                :border-color $ hsl 220 80 60
          :examples $ []
        |card $ %{} :CodeEntry (:doc |)
          :code $ quote
            def card $ {} (:padding |16px)
          :examples $ []
        |center $ %{} :CodeEntry (:doc |)
          :code $ quote
            def center $ {} (:display |flex) (:flex-direction |column) (:justify-content |center) (:align-items |center)
          :examples $ []
        |checkbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            def checkbox $ {}
              :accent-color $ hsl 220 80 60
              :width |16px
              :height |16px
              :cursor :pointer
              :vertical-align :middle
          :examples $ []
        |checkbox-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            def checkbox-label $ {} (:display :flex) (:align-items :center) (:gap |8px) (:line-height |1) (:cursor :pointer) (:user-select :none)
          :examples $ []
        |column $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column $ {} (:display |flex) (:align-items |stretch) (:flex-direction |column)
          :examples $ []
        |column-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |column)
          :examples $ []
        |column-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column-evenly $ {} (:display |flex) (:align-items |center) (:justify-content |space-evenly) (:flex-direction |column)
          :examples $ []
        |column-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column-parted $ {} (:display :flex) (:align-items :stretch) (:justify-content :space-between) (:flex-direction :column)
          :examples $ []
        |default-fonts $ %{} :CodeEntry (:doc |)
          :code $ quote (def default-fonts "|Hind,Verdana,'Hiragino Sans GB','WenQuanYi Micro Hei','Microsoft Yahei',sans-serif")
          :examples $ []
        |expand $ %{} :CodeEntry (:doc |)
          :code $ quote
            def expand $ {} (:flex 1) (:overflow :auto)
          :examples $ []
        |flex $ %{} :CodeEntry (:doc |)
          :code $ quote
            def flex $ {} (:flex 1)
          :examples $ []
        |font-code $ %{} :CodeEntry (:doc |)
          :code $ quote (def font-code "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
          :examples $ []
        |font-fancy $ %{} :CodeEntry (:doc |)
          :code $ quote (def font-fancy "|Josefin Sans, Helvetica neue, Arial, sans-serif")
          :examples $ []
        |font-normal $ %{} :CodeEntry (:doc |)
          :code $ quote (def font-normal "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
        |fullscreen $ %{} :CodeEntry (:doc |)
          :code $ quote
            def fullscreen $ {} (:position "\"absolute") (:left 0) (:top 0) (:width "\"100%") (:height "\"100%") (:overflow :auto)
          :examples $ []
        |global $ %{} :CodeEntry (:doc |)
          :code $ quote
            def global $ {} (:line-height "\"2") (:font-size "\"14px") (:font-family default-fonts)
              :color $ hsl 0 0 20
          :examples $ []
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hsl (h s l ? a)
              if (some? a) (str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")") (str "\"hsl(" h "\"," s "\"%," l "\"%)")
          :examples $ []
        |input $ %{} :CodeEntry (:doc |)
          :code $ quote
            def input $ merge global
              {} (:border |none) (:outline |none)
                :border $ str "\"1px solid " (hsl 0 0 80)
                :border-radius "\"4px"
                :font-size |14px
                :padding "|4px 8px"
                :min-width |120px
                :line-height |16px
                :height 28
                :font-family default-fonts
                :vertical-align :top
          :examples $ []
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:height 24) (:line-height |24px) (:margin 4) (:display :inline-block) (:cursor :pointer) (:user-select :none)
              :color $ hsl 200 100 76
          :examples $ []
        |row $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row)
          :examples $ []
        |row-center $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-center $ {} (:display |flex) (:align-items |center) (:justify-content |center) (:flex-direction |row)
          :examples $ []
        |row-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |row)
          :examples $ []
        |row-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-evenly $ {} (:display |flex) (:align-items |center) (:flex-direction |row) (:justify-content "\"space-evenly")
          :examples $ []
        |row-middle $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-middle $ {} (:display :flex) (:align-items :center) (:justify-content :flex-start) (:flex-direction :row)
          :examples $ []
        |row-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-parted $ {} (:display |flex) (:align-items |center) (:justify-content |space-between) (:flex-direction |row)
          :examples $ []
        |select $ %{} :CodeEntry (:doc |)
          :code $ quote
            def select $ {} (:height 28) (:outline |none) (:font-size 14) (:min-width 120)
              :border $ str "\"1px solid " (hsl 0 0 80)
              :padding "\"0 4px"
              :border-radius "\"4px"
              :font-family default-fonts
              :vertical-align :top
              :cursor :pointer
          :examples $ []
        |tag $ %{} :CodeEntry (:doc |)
          :code $ quote
            def tag $ {}
              :background-color $ hsl 200 80 60
              :line-height "\"21px"
              :font-size 14
              :padding "\"0px 8px"
              :border-radius 4
              :color :white
          :examples $ []
        |tag-outline $ %{} :CodeEntry (:doc |)
          :code $ quote
            def tag-outline $ merge tag
              {} (:background-color :white)
                :border $ str "\"1px solid " (hsl 200 70 80)
                :color $ hsl 200 30 40
          :examples $ []
        |tag-stroke $ %{} :CodeEntry (:doc |)
          :code $ quote
            def tag-stroke $ merge tag
              {}
                :background-color $ hsl 200 70 90
                :color $ hsl 200 20 40
          :examples $ []
        |text-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            def text-label $ {} (:line-height |32px) (:font-size 14)
              :color $ hsl 0 0 20
              :display :inline-block
              :vertical-align :top
          :examples $ []
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ quote
            def textarea $ {} (:outline :none) (:border :none) (:font-size 14) (:font-family default-fonts)
              :border $ str "\"1px solid " (hsl 0 0 80)
              :border-radius "\"4px"
              :padding 8
              :min-width 240
              :vertical-align :top
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.core $ :require
        :examples $ []
    |respo-ui.css $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle button $ {} ("\"$0" ui/button)
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 98
              "\"$0:active" $ {} (:transform "\"scale(1.02)") (:transition-duration "\"0ms")
          :examples $ []
        |button-danger $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle button-danger $ {} ("\"$0" ui/button-danger)
              "\"$0:hover" $ {}
                :background-color $ hsl 6 100 64
                :border-color $ hsl 6 100 64
              "\"$0:active" $ {} (:transform "\"scale(1.02)") (:transition-duration "\"0ms")
                :background-color $ hsl 6 100 68
                :border-color $ hsl 6 100 68
          :examples $ []
        |button-danger-outline $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle button-danger-outline $ {}
              "\"$0" $ merge ui/button
                {}
                  :border-color $ hsl 6 100 60
                  :color $ hsl 6 100 60
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 98
              "\"$0:active" $ {} (:transform "\"scale(1.02)") (:transition-duration "\"0ms")
          :examples $ []
        |button-primary $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle button-primary $ {} ("\"$0" ui/button-primary)
              "\"$0:hover" $ {}
                :background-color $ hsl 220 80 64
                :border-color $ hsl 220 80 64
              "\"$0:active" $ {} (:transform "\"scale(1.02)") (:transition-duration "\"0ms")
                :background-color $ hsl 220 80 68
                :border-color $ hsl 220 80 68
          :examples $ []
        |card $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle card $ {}
              |& $ {} (:padding |16px)
          :examples $ []
        |center $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle center $ {} ("\"$0" ui/center)
          :examples $ []
        |checkbox $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle checkbox $ {} (|$0 ui/checkbox)
              |$0:focus $ {} (:outline :none)
                :box-shadow $ str "|0 0 0 2px " (hsl 220 80 80 0.3)
          :examples $ []
        |checkbox-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle checkbox-label $ {} (|$0 ui/checkbox-label)
          :examples $ []
        |column $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column $ {} ("\"$0" ui/column)
          :examples $ []
        |column-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column-dispersive $ {} ("\"$0" ui/column-dispersive)
          :examples $ []
        |column-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column-evenly $ {} ("\"$0" ui/column-evenly)
          :examples $ []
        |column-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column-parted $ {} ("\"$0" ui/column-parted)
          :examples $ []
        |expand $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle expand $ {} ("\"$0" ui/expand)
          :examples $ []
        |flex $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle flex $ {}
              "\"$0" $ {} (:flex 1)
          :examples $ []
        |font-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-code $ {}
              "\"$0" $ {} (:font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
          :examples $ []
        |font-code! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-code! $ {}
              "\"$0" $ {} (:font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace !important")
          :examples $ []
        |font-fancy $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-fancy $ {}
              "\"$0" $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif")
          :examples $ []
        |font-fancy! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-fancy! $ {}
              "\"&" $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif !important")
          :examples $ []
        |font-normal $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-normal $ {}
              "\"&" $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
        |font-normal! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-normal! $ {}
              "\"&" $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
          :examples $ []
        |fullscreen $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle fullscreen $ {}
              "\"$0" $ {} (:position "\"absolute") (:left 0) (:top 0) (:width "\"100%") (:height "\"100%") (:overflow :auto)
          :examples $ []
        |gap16 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle gap16 $ {}
              "\"&" $ {} (:gap 16)
          :examples $ []
        |gap8 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle gap8 $ {}
              "\"&" $ {} (:gap 8)
          :examples $ []
        |global $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle global $ {}
              "\"$0" $ {} (:line-height "\"2") (:font-size "\"14px") (:font-family ui/default-fonts)
                :color $ hsl 0 0 20
          :examples $ []
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hsl (h s l ? a)
              if (some? a) (str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")") (str "\"hsl(" h "\"," s "\"%," l "\"%)")
          :examples $ []
        |input $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle input $ {} ("\"$0" ui/input)
              "\"$0:focus" $ {}
                :border $ str "\"1px solid " (hsl 200 50 75)
                :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
          :examples $ []
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle link $ {} ("\"$0" ui/link)
              "\"$0:hover" $ {}
                :color $ hsl 200 100 56
              "\"$0:active" $ {}
                :color $ hsl 200 100 40
                :transform "\"scale(1.04)"
          :examples $ []
        |link-slight $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle link-slight $ {}
              "\"$0" $ merge ui/link
                {} $ :text-decoration :none
              "\"$0:hover" $ {}
                :color $ hsl 200 100 56
              "\"$0:active" $ {}
                :color $ hsl 200 100 40
                :transform "\"scale(1.04)"
          :examples $ []
        |preset $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle preset $ {}
              "\"body" $ {} (:margin 0) (:overscroll-behavior-x :none) (:overscroll-behavior-y :none)
              "\"body *" $ {} (:box-sizing :border-box)
              "\"::-webkit-scrollbar" $ {} (:width 4) (:height 4)
              "\"::-webkit-scrollbar-track" $ {}
                :background-color $ hsl 0 0 100
              "\"::-webkit-scrollbar-thumb" $ {}
                :background-color $ hsl 180 40 76 0.8
              "\"::-webkit-scrollbar-corner" $ {} (:background-color :transparent)
              "\"::-webkit-resizer" $ {} (:background-color :transparent)
          :examples $ []
        |row $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row $ {} ("\"$0" ui/row)
          :examples $ []
        |row-center $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-center $ {} ("\"$0" ui/row-center)
          :examples $ []
        |row-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-dispersive $ {} ("\"$0" ui/row-dispersive)
          :examples $ []
        |row-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-evenly $ {} ("\"$0" ui/row-evenly)
          :examples $ []
        |row-middle $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-middle $ {} ("\"$0" ui/row-middle)
          :examples $ []
        |row-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-parted $ {} ("\"$0" ui/row-parted)
          :examples $ []
        |select $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle select $ {} ("\"$0" ui/select)
              "\"$0:focus" $ {}
                :border $ str "\"1px solid " (hsl 200 50 75)
                :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
          :examples $ []
        |tag $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle tag $ {} (:& ui/tag)
          :examples $ []
        |tag-outline $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle tag-outline $ {} (:& ui/tag-outline)
          :examples $ []
        |tag-stroke $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle tag-stroke $ {} (:& ui/tag-stroke)
          :examples $ []
        |text-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle text-label $ {} ("\"$0" ui/text-label)
          :examples $ []
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle textarea $ {} ("\"$0" ui/textarea)
              "\"$0:focus" $ {}
                :border $ str "\"1px solid " (hsl 200 50 75)
                :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.css $ :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
            respo.util.format :refer $ hsl
        :examples $ []
    |respo-ui.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *store $ merge schema/store
              {} $ :router
                parse-address
                  .!slice (.-hash js/location) 1
                  , router/dict
          :examples $ []
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ js/console.log "\"Dispatch:" op
              reset! *store $ updater @*store op
          :examples $ []
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              render-router!
              add-watch *store :changes $ fn (store prev) (render-app!)
              listen! router/dict dispatch! router/mode
              add-watch *store :router-changes $ fn (store prev) (render-router!)
              render-app!
              println "|App started!"
          :examples $ []
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
          :examples $ []
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors)
              do (remove-watch *store :changes) (remove-watch *store :router-changes) (clear-cache!)
                add-watch *store :changes $ fn (store prev) (render-app!)
                add-watch *store :router-changes $ fn (store prev) (render-router!)
                render-app!
                hud! "\"ok~" "\"Ok"
                println "|Code updated!"
              hud! "\"error" build-errors
          :examples $ []
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! () $ render! mount-target (comp-container @*store) dispatch!
          :examples $ []
        |render-router! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-router! () $ render-url! (:router @*store) router/dict router/mode
          :examples $ []
        |updater $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn updater (store op)
              tag-match op
                  :states cursor s
                  update-states store cursor s
                (:router/nav t)
                  assoc store :router $ parse-address t router/dict
                (:router/route r) (assoc store :router r)
                _ $ do (eprintln "\"Unknown op:" op) store
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
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
            "\"./calcit.build-errors" :default build-errors
            "\"bottom-tip" :default hud!
        :examples $ []
    |respo-ui.router $ %{} :FileEntry
      :defs $ {}
        |dict $ %{} :CodeEntry (:doc |)
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
        |mode $ %{} :CodeEntry (:doc |)
          :code $ quote (def mode :hash)
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-ui.router)
        :examples $ []
    |respo-ui.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {} (:router nil)
              :states $ {}
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.schema $ :require
            respo-ui.router :refer $ dict
            respo-router.parser :refer $ parse-address
        :examples $ []
    |respo-ui.util $ %{} :FileEntry
      :defs $ {}
        |santinize-html-text $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn santinize-html-text (content)
              -> content (.replace "\"<" "\"&lt;") (.replace "\">" "\"&gt;") (.replace "\" " "\"&nbsp;")
          :examples $ []
        |tab-echo! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn tab-echo! (data ? format)
              case-default format
                let
                    content $ format-cirru-edn (:: :tab-echo data)
                    app "\"https://r.tiye.me/Memkits/edn-tree-viewer/?mode=dev"
                    w $ js/window.open app "\"_target"
                  flipped js/setTimeout 20 $ fn () (.!postMessage w content "\"https://r.tiye.me")
                  flipped js/setTimeout 200 $ fn () (.!postMessage w content "\"https://r.tiye.me")
                :json $ let
                    content $ js/JSON.stringify (to-js-data data) nil 2
                    w $ js/window.open "\"about:blank" "\"_blank"
                  -> w .-document .-body .-innerHTML $ set!
                    str "\"<pre>" (santinize-html-text content) "\"</pre>"
                :edn $ let
                    content $ format-cirru-edn data
                    w $ js/window.open "\"about:blank" "\"_blank"
                  -> w .-document .-body .-innerHTML $ set!
                    str "\"<pre>" (santinize-html-text content) "\"</pre>"
          :examples $ []
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-ui.util)
        :examples $ []
