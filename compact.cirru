
{} (:package |respo-ui)
  :configs $ {} (:init-fn |respo-ui.main/main!) (:reload-fn |respo-ui.main/reload!) (:version |0.5.0-a3)
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
                      fn (idx item)
                        [] idx $ div
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
                            <> $ &map:get item :value
                if (some? title)
                  div ({})
                    div
                      {} $ :class-name
                        str-spaced style-attributes-title $ &map:get options :css-title
                      <> title
                    , ret
                  , ret
        |comp-cirru-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-cirru-snippet (text styles)
              div
                {} (:class-name css-snippet) (:style styles)
                pre $ {}
                  :innerHTML $ generateHtml text
        |comp-placeholder $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-placeholder (text)
              div
                {} $ :class-name css-placeholder
                <> text
        |comp-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-snippet (code ? options)
              pre $ {}
                :class-name $ str-spaced css-snippet (:class-name options)
                :style $ :styles options
                :inner-text code
        |comp-tabs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-tabs (options tabs on-route)
              list->
                {}
                  :class-name $ if (:vertical? options) css/column css/row
                  :style $ merge
                    {} (:padding "\"4px 16px")
                      :width $ :width options
                    :style options
                -> tabs $ map
                  fn (info)
                    [] (:name info)
                      div
                        {} (:class-name css-tab)
                          :style $ merge (:tab-style options)
                            if
                              = (:selected options) (:name info)
                              merge
                                {}
                                  :color $ hsl 0 0 100
                                  :background-color $ hsl 200 80 70
                                :selected-tab-style options
                          :on-click $ fn (e d!) (on-route info d!)
                        <> $ :title info
        |css-item-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-item-label $ {}
              "\"$0" $ {} (:font-weight 300) (:font-family ui/font-fancy) (:font-size 15) (:line-height "\"14px")
                :color $ hsl 0 0 60
        |css-placeholder $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-placeholder $ {}
              "\"$0" $ merge ui/center
                {} (:padding 16) (:font-family ui/font-fancy)
                  :color $ hsl 0 0 80
                  :font-size 12
                  :font-style :italic
        |css-snippet $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-snippet $ {}
              "\"$0" $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height "\"20px")
                :color $ hsl 0 0 40
                :padding "\"4px 6px"
                :border $ str "\"1px solid " (hsl 0 0 90)
                :border-radius "\"4px"
                :margin 0
        |css-tab $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-tab $ {}
              "\"$0" $ {} (:padding "\"0 8px") (:font-family ui/font-normal) (:font-weight 300) (:cursor :pointer) (:font-size 14)
                :color $ hsl 0 0 70
                :line-height "\"24px"
                :border-radius "\"2px"
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 98
        |style-attributes-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle style-attributes-title $ {}
              "\"$0" $ {} (:font-size 18) (:margin-bottom 6)
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
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp $ :require
            respo.core :refer $ defcomp div list-> input textarea button span select option a <> pre
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            "\"cirru-color" :refer $ generateHtml
            respo.css :refer $ defstyle
            respo-ui.css :as css
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
                  comp-demo-placeholder
                  comp-demo-tabs $ >> states :tabs
                  comp-demo-attributes
                  comp-demo-cirru-snippet
                  comp-demo-snippet
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
                comp-cirru-snippet "\"respo-ui.comp/comp-attributes\n\n\ncomp-attributes $ {}\n  :items $ []\n    {} (:label \"\\\"DEMO\")\n      :value \"\\\"content\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n      :span 2\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n    {} (:label \"\\\"DEMO 2\")\n      :value \"\\\"content 2\"\n\n" $ {} (:flex 1)
                div
                  {} $ :class-name css/flex
                  comp-attributes $ {} (:title "\"Attributes DEMO")
                    :items $ []
                      {} (:label "\"DEMO") (:value "\"content")
                      {} (:label "\"DEMO 2") (:value "\"content 2")
                      {} (:label "\"DEMO 2") (:value "\"content 2") (:span 2)
                      {} (:label "\"DEMO 2") (:value "\"content 2")
                      {} (:label "\"DEMO 2") (:value "\"content 2")
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
                  comp-cirru-snippet "\"respo-ui.comp/comp-cirru-snippet\n\ncomp-cirru-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n" $ {}
                div
                  {} $ :class-name css/flex
                  comp-cirru-snippet "\"defn f (a b)\n  + a b" $ {}
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
                  comp-cirru-snippet "\"respo-ui.comp/comp-snippet\n\ncomp-snippet \"\\\"defn f (a b)\\n  + a b\" $ {}\n" $ {}
                div
                  {} $ :class-name css/flex
                  comp-snippet "\"defn f (a b)\n  + a b" $ {}
        |comp-demo-tabs $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-demo-tabs (states)
              let
                  cursor $ :cursor states
                  state $ or (:data states)
                    {} $ :selected nil
                  en-tabs $ []
                    {} (:name :book) (:title "\"Book")
                    {} (:name :card) (:title "\"Card")
                    {} (:name :pl) (:title "\"Programming language")
                div ({})
                  div
                    {} $ :class-name css-title
                    <> "\"Tabs demo"
                  div
                    {} $ :class-name (str-spaced css/row css/gap8)
                    comp-cirru-snippet "\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  {}\n    :selected (:selected state)\n    :style {}\n  []\n    &{} :name :book :title |Book\n    &{} :name :card :title |Card\n    &{} :name :pl :title \"|Programming language\"\n  fn (info d!)\n    println |selected info\n    d! cursor $ assoc state :selected $ :name info" $ {} (:flex 1)
                    div
                      {} $ :class-name css/flex
                      comp-tabs
                        {} $ :selected (:selected state)
                        , en-tabs $ fn (info d!) (println "\"selected" info)
                          d! cursor $ assoc state :selected (:name info)
                      comp-tabs
                        {} $ :selected (:selected state)
                        []
                          {} (:name :book) (:title "\"书本")
                          {} (:name :card) (:title "\"纸牌")
                          {} (:name :pl) (:title "\"编程语言")
                        fn (info d!) (println "\"selected" info)
                          d! cursor $ assoc state :selected (:name info)
                      comp-tabs
                        {}
                          :selected $ :selected state
                          :style $ {}
                            :border-bottom $ str "\"1px solid " (hsl 0 0 90)
                        , en-tabs $ fn (info d!) (println "\"selected" info)
                          d! cursor $ assoc state :selected (:name info)
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
                          d! cursor $ assoc state :selected (:name info)
        |css-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-title $ {}
              "\"$0" $ {} (:margin-top 40) (:font-size 18) (:font-weight :bold)
                :color $ hsl 0 0 10
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-entry (url title)
              div ({})
                a $ {} (:href url) (:inner-text title)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.components $ :require
            respo.core :refer $ defcomp >> div a <> pre code
            respo.comp.space :refer $ =<
            respo-ui.comp :refer $ comp-tabs comp-placeholder comp-cirru-snippet comp-button comp-attributes comp-snippet
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
            respo.css :refer $ defstyle
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
                    :class-name $ str-spaced css/global css/fullscreen css/row
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
                      (:lay-out) (comp-lay-out-page)
                      (:fonts) (comp-fonts-page)
                      (:components)
                        comp-components-page $ >> states :components
                      (:404 pp)
                        <> $ to-lispy-string router
                      _ $ do (eprintln "\"unknown router" router) (comp-home)
        |css-content $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-content $ {}
              "\"$0" $ {} (:padding 8)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.container $ :require
            respo.util.format :refer $ hsl
            respo.core :refer $ defcomp >> div span input <>
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.comp.sidebar :refer $ comp-sidebar
            respo-ui.comp.home :refer $ comp-home
            respo-ui.comp.widgets-page :refer $ comp-widgets-page
            respo-ui.comp.layouts-page :refer $ comp-layouts-page
            respo-ui.comp.fonts-page :refer $ comp-fonts-page
            respo-ui.comp.components :refer $ comp-components-page
            respo-ui.comp.lay-out-page :refer $ comp-lay-out-page
            respo.css :refer $ defstyle
            respo-ui.css :as css
    |respo-ui.comp.fonts-page $ %{} :FileEntry
      :defs $ {}
        |comp-fonts-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-fonts-page () $ div ({})
              div
                {} $ :style style-section
                <> "|Normal fonts"
              comp-md-block "|which can be used with `ui/font-normal`. It's Hind fonts." $ {}
              render-font-demo css/font-normal ui/font-normal 300
              render-font-demo css/font-normal ui/font-normal 400
              render-font-demo css/font-normal ui/font-normal 500
              =< nil 32
              div
                {} $ :style style-section
                <> "|Fancy fonts"
              comp-md-block "|which can be used with `ui/font-fancy`. Josefin Sans is used here." $ {}
              render-font-demo css/font-fancy! ui/font-fancy 100
              render-font-demo css/font-fancy! ui/font-fancy 300
              render-font-demo css/font-fancy! ui/font-fancy 400
              =< nil 32
              div
                {} $ :style style-section
                <> "|Code fonts"
              comp-md-block "|which can be used with `ui/font-code`." $ {}
              render-font-demo css/font-code ui/font-code 100
              render-font-demo css/font-code ui/font-code 300
              render-font-demo css/font-code ui/font-code 400
        |css-demo $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-demo $ {}
              "\"$0" $ {} (:font-size 16) (:font-weight |bold) (:line-height |32px)
        |render-font-demo $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-font-demo (css-family family weight)
              div
                {}
                  :class-name $ str-spaced css-family css-demo
                  :style $ {} (:font-weight weight)
                <> $ str "|This is a demo of the font, guess what you like: " family "| " weight
        |style-section $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-section $ {} (:font-size 24) (:font-family ui/font-fancy) (:line-height |60px)
      :ns $ %{} :CodeEntry (:doc |)
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
        |comp-home $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-home () $ div ({})
              div
                {} $ :style style-home
                <> "|Styles for Respo"
              =< nil 32
              div ({})
                comp-md-block "|Respo UI is some minimal style collections for creating small pieces of apps. It includes variables for Flexbox layouts, basic button and input styles, fonts like \"Josefin Sans\" and \"Hind\".\n\nYou may read code on [GitHub](http://github.com/Respo/respo-ui). [Fonts files](https://github.com/tiye/favored-fonts) are hosted separately on my server." $ {}
        |style-home $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-home $ {} (:font-size 32) (:font-family "|Josefin Sans")
              :color $ hsl 200 100 76
              :font-weight 100
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.home $ :require
            respo.core :refer $ defcomp div a img <>
            respo.comp.space :refer $ =<
            respo.util.format :refer $ hsl
            respo-md.comp.md :refer $ comp-md-block
    |respo-ui.comp.lay-out-page $ %{} :FileEntry
      :defs $ {}
        |comp-lay-out-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-lay-out-page () $ div ({}) (<> "\"Flex layout" style-title)
              lay-out
                {} (:type :flex)
                  :style $ {}
                    :border $ str "\"1px solid " (hsl 0 0 80)
                  :layout :row
                  :gap 10
                  :items $ []
                    {} (:type :flex) (:layout :column) (:gap 4)
                      :items $ []
                        {} (:type :item) (:fill :a)
                        {} (:type :item) (:fill :a)
                    {} (:type :item) (:fill :b)
                    {} (:type :item) (:fill :c)
                {}
                  :a $ \ div
                    {} $ :style %
                    <> "\"TODO A"
                  :b $ \ div
                    {} $ :style %
                    <> "\"TODO BB"
                  :c $ \ div
                    {} $ :style %
                    <> "\"TODO CCC"
              <> "\"Flex flow layout" style-title
              lay-out
                {} (:type :flex)
                  :style $ {}
                    :border $ str "\"1px solid " (hsl 0 0 80)
                  :layout :flow
                  :gap $ [] 4 4
                  :items $ []
                    {} (:type :item) (:fill :a)
                    {} (:type :item) (:fill :b)
                    {} (:type :item) (:fill :c)
                {}
                  :a $ \ div
                    {} $ :style %
                    <> "\"TODO A"
                  :b $ \ div
                    {} $ :style %
                    <> "\"TODO BB"
                  :c $ \ div
                    {} $ :style %
                    <> "\"TODO CCC"
              <> "\"Flex layout" style-title
              lay-out
                {} (:type :list)
                  :style $ {}
                    :border $ str "\"1px solid " (hsl 0 0 80)
                  :layout :column
                  :size 4
                  :gap 10
                fn (idx styles ? arg)
                  div
                    {} $ :style styles
                    <> "\"TODO list"
              <> "\"Flex list layout" style-title
              lay-out
                {} (:type :list)
                  :style $ {}
                    :border $ str "\"1px solid " (hsl 0 0 80)
                  :layout :flow
                  :size 4
                  :gap $ [] 4 4
                fn (idx styles ? arg)
                  div
                    {} $ :style
                      merge styles $ {} (:display :inline-block)
                    <> "\"TODO list"
        |style-title $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-title $ {} (:font-size 24) (:font-family ui/font-fancy) (:font-weight 300)
              :color $ hsl 0 0 80
              :margin "\"16px 0"
              :display :inline-block
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.lay-out-page $ :require
            respo.core :refer $ defcomp div <>
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo-ui.lay-out :refer $ lay-out
    |respo-ui.comp.layouts-page $ %{} :FileEntry
      :defs $ {}
        |comp-layouts-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-layouts-page () $ div ({})
              div ({}) (<> |Layouts) (=< 8 nil)
                a $ {} (:href |https://github.com/Respo/respo-ui/blob/master/src/respo_ui/comp/layouts_page.cljs) (:inner-text |Source) (:target |_blank)
              comp-md-block "|Flexbox styles are defined in variables like `ui/row` `ui/center` in flex containers. Here are how they take effects." $ {}
              div
                {} (:class-name css/row)
                  :style $ {} (:flex-wrap :wrap) (:font-family ui/font-code) (:font-size 12)
                render-demo |ui/center css/center
                render-demo |ui/row-center css/row-center
                render-demo |ui/row-middle css/row-middle
                render-demo |ui/row css/row
                render-demo |ui/column css/column
                render-demo |ui/row-parted css/row-parted
                render-demo |ui/column-parted css/column-parted
                render-demo |ui/row-dispersive css/row-dispersive
                render-demo |ui/column-dispersive css/column-dispersive
                render-demo |ui/row-evenly css/row-evenly
                render-demo |ui/column-evenly css/column-evenly
        |css-sample $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-sample $ {}
              "\"$0" $ {} (:padding "|4px 8px") (:color :white) (:font-size 12) (:font-family ui/font-code)
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
                        :background-color $ hsl 0 80 70
                    <> |A
                  div
                    {} (:class-name css-sample)
                      :style $ {}
                        :background-color $ hsl 120 80 70
                    <> |B
                  div
                    {} (:class-name css-sample)
                      :style $ {}
                        :background-color $ hsl 240 80 80
                    <> |C
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
                render-entry |lay-out.html "|Lay Out" $ = :lay-out router-name
                render-entry |widgets.html |Widgets $ = :widgets router-name
                render-entry |fonts.html |Fonts $ = :fonts router-name
                render-entry |components.html |Components $ = :components router-name
        |css-sidebar-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle css-sidebar-entry $ {}
              "\"$0" $ {} (:line-height |40px) (:font-size 20) (:cursor |pointer) (:font-weight "\"lighter") (:font-family ui/font-fancy) (:text-align :right) (:padding "|0 16px")
                :color $ hsl 0 0 20
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 97
        |on-route $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn on-route (path-name)
              fn (e dispatch!) (dispatch! :router/nav path-name)
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-entry (path title selected?)
              div
                {} (:class-name css-sidebar-entry)
                  :style $ if selected?
                    {} $ :background-color (hsl 0 0 50 0.1)
                  :on-click $ on-route path
                <> title
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-logo $ {} (:background-image "|url(http://cdn.tiye.me/logo/respo.png)") (:width 80) (:height 80) (:background-size :cover) (:display :inline-block) (:vertical-align :text-bottom)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.sidebar $ :require
            respo.core :refer $ defcomp div <>
            respo-ui.core :as ui
            respo.util.format :refer $ hsl
            respo.comp.space :refer $ =<
            respo.css :refer $ defstyle
    |respo-ui.comp.widgets-page $ %{} :FileEntry
      :defs $ {}
        |comp-widgets-page $ %{} :CodeEntry (:doc |)
          :code $ quote
            defcomp comp-widgets-page (states)
              let
                  cursor $ :cursor states
                  state $ :data states
                div ({})
                  div ({}) (<> |Widgets) (=< 8 nil)
                    a $ {} (:href |https://github.com/Respo/respo-ui/blob/master/src/respo_ui/comp/widgets_page.cljs) (:target |_blank) (:inner-text |Source)
                  div ({}) (<> "|Some text as description" ui/text-label) (=< nil 16)
                    a $ {} (:class-name css/link) (:inner-text |link)
                  =< nil 16
                  div
                    {} $ :style
                      merge ui/row $ {} (:gap 16)
                    button
                      {} $ :class-name css/button-primary
                      <> |Yes
                    button
                      {} $ :class-name css/button
                      <> |Yes
                    button
                      {} (:class-name css/button)
                        :style $ {}
                          :border-color $ hsl 6 100 60
                          :color $ hsl 6 100 60
                      <> |Yes
                    button
                      {} $ :class-name css/button-danger
                      <> |Yes
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
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.comp.widgets-page $ :require
            respo.core :refer $ defcomp div input textarea button span select option a <>
            respo.comp.space :refer $ =<
            respo-ui.core :as ui
            respo-ui.css :as css
            respo.util.format :refer $ hsl
    |respo-ui.config $ %{} :FileEntry
      :defs $ {}
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ quote
            def dev? $ &= "\"dev" (get-env "\"mode" "\"release")
        |site $ %{} :CodeEntry (:doc |)
          :code $ quote
            def site $ {} (:title "\"Respo UI") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-ui")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-ui.config)
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
        |button-danger $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button-danger $ merge button
              {} (:color :white)
                :background-color $ hsl 6 100 60
                :border-color $ hsl 6 100 60
        |button-primary $ %{} :CodeEntry (:doc |)
          :code $ quote
            def button-primary $ merge button
              {} (:color :white)
                :background-color $ hsl 220 80 60
                :border-color $ hsl 220 80 60
        |card $ %{} :CodeEntry (:doc |)
          :code $ quote
            def card $ {} (:padding |16px)
        |center $ %{} :CodeEntry (:doc |)
          :code $ quote
            def center $ {} (:display |flex) (:flex-direction |column) (:justify-content |center) (:align-items |center)
        |column $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column $ {} (:display |flex) (:align-items |stretch) (:flex-direction |column)
        |column-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |column)
        |column-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column-evenly $ {} (:display |flex) (:align-items |center) (:justify-content |space-evenly) (:flex-direction |column)
        |column-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            def column-parted $ {} (:display :flex) (:align-items :stretch) (:justify-content :space-between) (:flex-direction :column)
        |default-fonts $ %{} :CodeEntry (:doc |)
          :code $ quote (def default-fonts "|Hind,Verdana,'Hiragino Sans GB','WenQuanYi Micro Hei','Microsoft Yahei',sans-serif")
        |expand $ %{} :CodeEntry (:doc |)
          :code $ quote
            def expand $ {} (:flex 1) (:overflow :auto)
        |flex $ %{} :CodeEntry (:doc |)
          :code $ quote
            def flex $ {} (:flex 1)
        |font-code $ %{} :CodeEntry (:doc |)
          :code $ quote (def font-code "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
        |font-fancy $ %{} :CodeEntry (:doc |)
          :code $ quote (def font-fancy "|Josefin Sans, Helvetica neue, Arial, sans-serif")
        |font-normal $ %{} :CodeEntry (:doc |)
          :code $ quote (def font-normal "|Hind, Helvatica, Arial, sans-serif")
        |fullscreen $ %{} :CodeEntry (:doc |)
          :code $ quote
            def fullscreen $ {} (:position "\"absolute") (:left 0) (:top 0) (:width "\"100%") (:height "\"100%") (:overflow :auto)
        |global $ %{} :CodeEntry (:doc |)
          :code $ quote
            def global $ {} (:line-height "\"2") (:font-size "\"14px") (:font-family default-fonts)
              :color $ hsl 0 0 20
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hsl (h s l ? a)
              if (some? a) (str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")") (str "\"hsl(" h "\"," s "\"%," l "\"%)")
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
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            def link $ {} (:text-decoration :underline) (:user-select :no-select) (:height 24) (:line-height |24px) (:margin 4) (:display :inline-block) (:cursor :pointer) (:user-select :none)
              :color $ hsl 200 100 76
        |row $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row)
        |row-center $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-center $ {} (:display |flex) (:align-items |center) (:justify-content |center) (:flex-direction |row)
        |row-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |row)
        |row-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-evenly $ {} (:display |flex) (:align-items |center) (:flex-direction |row) (:justify-content "\"space-evenly")
        |row-middle $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-middle $ {} (:display :flex) (:align-items :center) (:justify-content :flex-start) (:flex-direction :row)
        |row-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            def row-parted $ {} (:display |flex) (:align-items |center) (:justify-content |space-between) (:flex-direction |row)
        |select $ %{} :CodeEntry (:doc |)
          :code $ quote
            def select $ {} (:height 28) (:outline |none) (:font-size 14) (:min-width 120)
              :border $ str "\"1px solid " (hsl 0 0 80)
              :padding "\"0 4px"
              :border-radius "\"4px"
              :font-family default-fonts
              :vertical-align :top
              :cursor :pointer
        |text-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            def text-label $ {} (:line-height |32px) (:font-size 14)
              :color $ hsl 0 0 20
              :display :inline-block
              :vertical-align :top
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ quote
            def textarea $ {} (:outline :none) (:border :none) (:font-size 14) (:font-family default-fonts)
              :border $ str "\"1px solid " (hsl 0 0 80)
              :border-radius "\"4px"
              :padding 8
              :min-width 240
              :vertical-align :top
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.core $ :require
    |respo-ui.css $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle button $ {} ("\"$0" ui/button)
              "\"$0:hover" $ {}
                :background-color $ hsl 0 0 98
              "\"$0:active" $ {} (:transform "\"scale(1.02)") (:transition-duration "\"0ms")
        |button-danger $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle button-danger $ {} ("\"$0" ui/button-danger)
              "\"$0:hover" $ {}
                :background-color $ hsl 6 100 64
                :border-color $ hsl 6 100 64
              "\"$0:active" $ {} (:transform "\"scale(1.02)") (:transition-duration "\"0ms")
                :background-color $ hsl 6 100 68
                :border-color $ hsl 6 100 68
        |button-primary $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle button-primary $ {} ("\"$0" ui/button-primary)
              "\"$0:hover" $ {}
                :background-color $ hsl 220 80 64
                :border-color $ hsl 220 80 64
              "\"$0:active" $ {} (:transform "\"scale(1.02)") (:transition-duration "\"0ms")
                :background-color $ hsl 220 80 68
                :border-color $ hsl 220 80 68
        |card $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle card $ {}
              "\"$0" $ {} (:padding |16px)
        |center $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle center $ {} ("\"$0" ui/center)
        |column $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column $ {} ("\"$0" ui/column)
        |column-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column-dispersive $ {} ("\"$0" ui/column-dispersive)
        |column-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column-evenly $ {} ("\"$0" ui/column-evenly)
        |column-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle column-parted $ {} ("\"$0" ui/column-parted)
        |expand $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle expand $ {} ("\"$0" ui/expand)
        |flex $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle flex $ {}
              "\"$0" $ {} (:flex 1)
        |font-code $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-code $ {}
              "\"$0" $ {} (:font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
        |font-code! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-code! $ {}
              "\"$0" $ {} (:font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace !important")
        |font-fancy $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-fancy $ {}
              "\"$0" $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif")
        |font-fancy! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-fancy! $ {}
              "\"&" $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif !important")
        |font-normal $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-normal $ {}
              "\"&" $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
        |font-normal! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle font-normal! $ {}
              "\"&" $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
        |fullscreen $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle fullscreen $ {}
              "\"$0" $ {} (:position "\"absolute") (:left 0) (:top 0) (:width "\"100%") (:height "\"100%") (:overflow :auto)
        |gap16 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle gap16 $ {}
              "\"&" $ {} (:gap 16)
        |gap8 $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle gap8 $ {}
              "\"&" $ {} (:gap 8)
        |global $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle global $ {}
              "\"$0" $ {} (:line-height "\"2") (:font-size "\"14px") (:font-family ui/default-fonts)
                :color $ hsl 0 0 20
        |hsl $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn hsl (h s l ? a)
              if (some? a) (str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")") (str "\"hsl(" h "\"," s "\"%," l "\"%)")
        |input $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle input $ {} ("\"$0" ui/input)
              "\"$0:focus" $ {}
                :border $ str "\"1px solid " (hsl 200 50 75)
                :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
        |link $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle link $ {} ("\"$0" ui/link)
              "\"$0:hover" $ {}
                :color $ hsl 200 100 56
              "\"$0:active" $ {}
                :color $ hsl 200 100 40
                :transform "\"scale(1.04)"
        |row $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row $ {} ("\"$0" ui/row)
        |row-center $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-center $ {} ("\"$0" ui/row-center)
        |row-dispersive $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-dispersive $ {} ("\"$0" ui/row-dispersive)
        |row-evenly $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-evenly $ {} ("\"$0" ui/row-evenly)
        |row-middle $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-middle $ {} ("\"$0" ui/row-middle)
        |row-parted $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle row-parted $ {} ("\"$0" ui/row-parted)
        |select $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle select $ {} ("\"$0" ui/select)
              "\"$0:focus" $ {}
                :border $ str "\"1px solid " (hsl 200 50 75)
                :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
        |text-label $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle text-label $ {} ("\"$0" ui/text-label)
        |textarea $ %{} :CodeEntry (:doc |)
          :code $ quote
            defstyle textarea $ {} ("\"$0" ui/textarea)
              "\"$0:focus" $ {}
                :border $ str "\"1px solid " (hsl 200 50 75)
                :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.css $ :require (respo-ui.core :as ui)
            respo.css :refer $ defstyle
    |respo-ui.lay-out $ %{} :FileEntry
      :defs $ {}
        |add-gap $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-gap (xs f)
              add-gap-iter ([]) 0 f xs
        |add-gap-iter $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn add-gap-iter (acc n f xs)
              if (empty? xs) acc $ recur
                if (empty? acc)
                  [] $ first xs
                  -> acc
                    conj $ f n
                    conj $ first xs
                inc n
                , f (rest xs)
        |gen-gap-fn $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn gen-gap-fn (rule)
              fn (idx)
                [] (str idx "\"-gap")
                  cond
                      includes? (#{} :row :row-parted :row-middle :row-center) (:layout rule)
                      =< (:gap rule) nil
                    (= :flow (:layout rule))
                      =<
                        let
                            gap $ :gap rule
                          cond
                              list? gap
                              first gap
                            (number? gap) gap
                            true nil
                        , nil
                    (includes? (#{} :column :column-parted :center) (:layout rule))
                      =< nil $ :gap rule
                    true $ div
                      {} $ :style
                        {} (:background-color :red) (:width 4) (:height 4)
        |get-layout-style $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-layout-style (layout-name)
              case-default layout-name style-no-match (:row ui/row) (:column ui/column) (:center ui/center) (:row-middle ui/row-middle) (:row-center ui/row-center) (:row-parted ui/row-parted) (:column-parted ui/column-parted)
                :flow $ {}
        |lay-out $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn lay-out (rule child-map & args)
              let
                  options $ either (first args) ({})
                case-default (:type rule)
                  <>
                    str "\"Unknown rule: " $ to-lispy-string rule
                    , style-todo
                  :flex $ render-layout-flex rule child-map options
                  :list $ render-layout-list rule child-map options
                  :grid $ <> "\"TODO grid" style-todo
                  :item $ render-fill-item rule child-map options
        |lilac-flex-rule $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-flex-rule $ record+
              {}
                :type $ is+ :flex
                :layout lilac-layout-names
                :style lilac-style
                :gap lilac-gap
                :items $ list+
                  or+ $ []
                    record+ $ {}
                      :type $ is+ :item
                      :style lilac-style
                      :fill $ any+
                    record+ $ {}
                      :type $ is+ :flex
                  {}
              {} $ :check-keys? true
        |lilac-gap $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-gap $ optional+
              or+ $ [] (number+)
                tuple+ $ [] (number+) (number+)
        |lilac-grid-rule $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-grid-rule $ record+
              {}
                :type $ is+ :grid
                :style lilac-style
                :size lilac-number-pair
                :gap lilac-gap
                :items $ list+
                  record+ $ {} (:from lilac-number-pair) (:size lilac-number-pair)
                    :item $ record+
                      {}
                        :type $ enum+ (#{} :item)
                        :fill $ any+
        |lilac-item-rule $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-item-rule $ record+
              {}
                :type $ is+ :item
                :style lilac-style
                :fill $ optional+ (any+)
              {} $ :check-keys? true
        |lilac-layout-names $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-layout-names $ optional+
              enum+ $ #{} :column :row :row-parted :column-parted :center :row-center :row-middle :flow
        |lilac-list-rule $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-list-rule $ record+
              {}
                :type $ is+ :list
                :layout lilac-layout-names
                :style lilac-style
                :size $ number+
                :gap lilac-gap
        |lilac-number-pair $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-number-pair $ optional+
              tuple+ $ [] (number+) (number+)
        |lilac-style $ %{} :CodeEntry (:doc |)
          :code $ quote
            def lilac-style $ optional+
              dict+ (tag+) (any+)
        |render-fill-item $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-fill-item (rule child-map options) (dev-check rule lilac-item-rule)
              let
                  item $ get child-map (:fill rule)
                cond
                    nil? item
                    <>
                      str "\"nothing to fill: " $ to-lispy-string rule
                      , style-todo
                  (fn? item)
                    item (merge ui/flex) options
                  (some? (:item item))
                    :item item
                  (fn? (:render item))
                    (:render item)
                      merge ui/flex $ :style item
                      , options
                  :else $ <>
                    str "\"Unknown case: " $ to-lispy-string item
                    , style-todo
        |render-layout-flex $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-layout-flex (rule child-map options) (dev-check rule lilac-flex-rule)
              list->
                {} $ :style
                  merge
                    get-layout-style $ :layout rule
                    :style rule
                -> (:items rule)
                  map-indexed $ fn (idx item)
                    [] (str idx)
                      let
                          custom-style $ if
                            = :flow $ :layout rule
                            {} $ :margin-bottom
                              last $ :gap rule
                            , ui/flex
                        lay-out (assoc item :style custom-style) child-map options
                  add-gap $ gen-gap-fn rule
        |render-layout-list $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-layout-list (rule item-renderer options) (dev-check rule lilac-list-rule)
              list->
                {} $ :style
                  merge
                    get-layout-style $ :layout rule
                    :style rule
                ->
                  range $ :size rule
                  map-indexed $ fn (idx item)
                    [] (str idx)
                      let
                          custom-style $ if
                            = :flow $ :layout rule
                            {} $ :margin-bottom
                              last $ :gap rule
                            , ui/flex
                        item-renderer idx custom-style options
                  add-gap $ gen-gap-fn rule
        |style-no-match $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-no-match $ {}
              :outline $ str "\"1px solid red"
        |style-todo $ %{} :CodeEntry (:doc |)
          :code $ quote
            def style-todo $ {}
              :color $ hsl 0 80 80
              :border $ str "\"1px solid " (hsl 0 0 94)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns respo-ui.lay-out $ :require
            respo.core :refer $ <> list-> div
            respo.comp.space :refer $ =<
            respo.util.format :refer $ hsl
            respo-ui.core :as ui
            lilac.core :refer $ dev-check number+ record+ string+ tag+ or+ list+ any+ dict+ enum+ tuple+ is+ optional+
    |respo-ui.main $ %{} :FileEntry
      :defs $ {}
        |*store $ %{} :CodeEntry (:doc |)
          :code $ quote
            defatom *store $ merge schema/store
              {} $ :router
                w-log $ parse-address
                  str (.-pathname js/location) (.-search js/location)
                  , router/dict
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dispatch! (op)
              when config/dev? $ println "\"Dispatch:" op
              reset! *store $ updater @*store op
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              if config/dev? $ load-console-formatter!
              println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
              render-app! render!
              add-watch *store :changes $ fn (store prev) (render-app! render!)
              render-router!
              listen! router/dict dispatch! router/mode
              add-watch *store :router-changes $ fn (store prev) (render-router!)
              println "|App started!"
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ quote
            def mount-target $ js/document.querySelector |.app
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ if (nil? build-errors) 
              do (remove-watch *store :changes) (remove-watch *store :router-changes) (clear-cache!)
                add-watch *store :changes $ fn (store prev) (render-app! render!)
                add-watch *store :router-changes $ fn (store prev) (render-router!)
                render-app! render!
                hud! "\"ok~" "\"Ok"
                println "|Code updated!"
              hud! "\"error" build-errors
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-app! (renderer)
              renderer mount-target (comp-container @*store) dispatch!
        |render-router! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn render-router! () $ render-url! (:router @*store) router/dict router/mode
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
              :: :lay-out $ [] |lay-out.html
              :: :components $ [] |components.html
        |mode $ %{} :CodeEntry (:doc |)
          :code $ quote (def mode :hash)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-ui.router)
    |respo-ui.schema $ %{} :FileEntry
      :defs $ {}
        |store $ %{} :CodeEntry (:doc |)
          :code $ quote
            def store $ {} (:router nil)
              :states $ {}
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns respo-ui.schema)
