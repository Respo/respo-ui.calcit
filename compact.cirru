
{} (:package |respo-ui)
  :configs $ {} (:init-fn |respo-ui.main/main!) (:reload-fn |respo-ui.main/reload!) (:version |0.4.7)
    :modules $ [] |respo.calcit/ |lilac/ |memof/ |respo-router.calcit/ |respo-markdown.calcit/
  :entries $ {}
  :files $ {}
    |respo-ui.comp $ {}
      :defs $ {}
        |comp-button $ quote
          defcomp comp-button (props)
            div $ {}
              :class-name $ cx style-button
                if (:disabled? props) style-button-disabled $ case-default style-button-normal nil (:type props) (:main style-button-main) (:cancel style-button-cancel)
                :class-name props
              :style $ :style props
              :on-click $ if (:disabled? props) nil (:on-click props)
              :disabled $ :disabled? props
              :inner-text $ or (:text props) "\"BUTTON"
        |comp-link $ quote
          defcomp comp-link (props)
            a $ {}
              :href $ :href props
              :on-click $ :on-click props
              :class-name $ cx style-link (:class-name props)
              :style $ :style props
              :inner-text $ or (:text props) "\"LINK"
        |comp-placeholder $ quote
          defcomp comp-placeholder (text)
            div
              {} $ :class-name css-placeholder
              <> text
        |comp-snippet $ quote
          defcomp comp-snippet (text styles)
            div
              {} (:class-name css-snippet) (:style styles)
              pre $ {}
                :innerHTML $ generateHtml text
        |comp-tabs $ quote
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
        |css $ quote
          defn css (& args) "\"TODO"
        |css-placeholder $ quote
          defstyle css-placeholder $ {}
            "\"$0" $ merge ui/center
              {} (:padding 16) (:font-family ui/font-fancy)
                :color $ hsl 0 0 80
                :font-size 12
                :font-style :italic
        |css-snippet $ quote
          defstyle css-snippet $ {}
            "\"$0" $ {} (:font-family ui/font-code) (:white-space :pre) (:font-size 12) (:line-height "\"20px")
              :color $ hsl 0 0 40
              :padding "\"4px 6px"
              :border $ str "\"1px solid " (hsl 0 0 90)
              :border-radius "\"4px"
        |css-tab $ quote
          defstyle css-tab $ {}
            "\"$0" $ {} (:padding "\"0 8px") (:font-family ui/font-normal) (:font-weight 300) (:cursor :pointer) (:font-size 14)
              :color $ hsl 0 0 70
              :line-height "\"24px"
              :border-radius "\"2px"
            "\"$0:hover" $ {}
              :background-color $ hsl 0 0 98
        |cx $ quote
          defn cx (& args) "\"TODO"
        |style-button $ quote
          def style-button $ css "\"background-color: white;\npadding: 0px 12px;\ndisplay: inline-block;\nfont-size: 13px;\nline-height: 24px;\nborder-radius: 4px;\ncursor: pointer;\nuser-select: none;\ntransition-duration: 100ms;\n\n&:active {\ntransition-duration: 0ms;\n}"
        |style-button-cancel $ quote
          def style-button-cancel $ css "\"border: 1px solid hsl(0,0%,80%);\ncolor: hsl(0,0%,40%);\n\n&:hover {\n  border-color: hsl(0,0%,85%);\n}\n\n&:active {\n  transform: scale(1.05);\n}\n"
        |style-button-disabled $ quote
          def style-button-disabled $ css "\"background-color: hsl(0,0%,80%);\ncolor: white;\ncursor: not-allowed;"
        |style-button-main $ quote
          def style-button-main $ css "\"background-color: hsl(200,90%,60%);\ncolor: white;\n\n&:hover {\nbackground-color: hsl(200,90%,65%);\n}\n\n&:active {\ntransform: scale(1.05);\n}"
        |style-button-normal $ quote
          def style-button-normal $ css "\"border: 1px solid hsl(0,0%,80%);\ncursor: pointer;\n\n&:active {\ntransform: scale(1.05);\n}"
        |style-link $ quote
          def style-link $ css "\"color: hsl(240,80%,70%);\ntext-decoration: underline;\ncursor: pointer;\ntransition-duration: 100ms;\nuser-select: none;\n\n&:hover {\ncolor: hsl(240,80%,80%);\n}\n\n&:active {\ntransition-duration: 0ms;\ntransform: scale(1.05);\ncolor: hsl(240,80%,65%);\n}"
      :ns $ quote
        ns respo-ui.comp $ :require
          respo.core :refer $ defcomp div list-> input textarea button span select option a <> pre
          respo.comp.space :refer $ =<
          respo-ui.core :as ui
          respo.util.format :refer $ hsl
          "\"cirru-color" :refer $ generateHtml
          respo.css :refer $ defstyle
          respo-ui.css :as css
    |respo-ui.comp.components $ {}
      :defs $ {}
        |comp-components-page $ quote
          defcomp comp-components-page (states)
            let
                state $ or (:data states) false
              div
                {} $ :style
                  {} $ :padding-bottom "\"50vh"
                div ({}) (<> "|There are also components follow the guidelines of Respo UI:") (render-entry "\"https://github.com/Respo/alerts" "\"alerts") (render-entry "\"https://github.com/Respo/respo-feather" "\"respo-feather") (render-entry |https://github.com/Respo/respo-message "\"respo-message") (render-entry |https://github.com/Respo/respo-markdown "\"respo-markdown") (render-entry |https://github.com/Respo/notifier "\"notifier")
                =< nil 32
                div ({}) (<> "|Built-in Components") (=< 8 nil)
                  a $ {} (:href |https://github.com/Respo/respo-ui/blob/master/src/respo_ui/comp/components.cljs) (:target |_blank) (:inner-text |Source)
                comp-demo-placeholder
                comp-demo-tabs $ >> states :tabs
                comp-demo-buttons
                comp-demo-links
        |comp-demo-buttons $ quote
          defcomp comp-demo-buttons () $ div ({})
            div
              {} $ :class-name css-title
              <> "\"Buttons demo"
            div ({})
              comp-button $ {} (:text "\"Normal button")
              comp-button $ {} (:type :main) (:text "\"Main button")
                :on-click $ fn (e d!) (js/alert "\"Click on main button")
              comp-button $ {} (:type :cancel) (:text "\"Cancel button")
              comp-button $ {} (:disabled? true) (:text "\"Button disabled")
            =< nil 8
            comp-snippet "\"respo-ui.comp/comp-button\n\ncomp-button $ &{} :type :normal\ncomp-button $ &{} :type :main\ncomp-button $ &{} :type :cancel\ncomp-button $ &{} :disabled? true\n\n" $ {}
        |comp-demo-links $ quote
          defcomp comp-demo-links () $ div ({})
            div
              {} $ :class-name css-title
              <> "\"Links demo"
            comp-link $ {} (:text "\"a link")
              :on-click $ fn (e d!) (println "\"clicked")
            comp-snippet "\"respo-ui.comp/comp-link\n\ncomp-link $ &{} :text \"|demo\"\n" $ {}
        |comp-demo-placeholder $ quote
          defcomp comp-demo-placeholder () $ div ({})
            div
              {} $ :class-name css-title
              <> "\"Placeholder demo"
            comp-placeholder "\"This is a demo"
            comp-placeholder "\"中文 Demo"
            comp-snippet "\"respo-ui.comp/comp-placeholder\n\ncomp-placeholder \"|demo\"\ncomp-placeholder \"|中文\"" $ {}
        |comp-demo-tabs $ quote
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
                comp-snippet "\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  {}\n    :selected (:selected state)\n    :style {}\n  []\n    &{} :name :book :title |Book\n    &{} :name :card :title |Card\n    &{} :name :pl :title \"|Programming language\"\n  fn (info d!)\n    println |selected info\n    d! cursor $ assoc state :selected $ :name info" $ {}
                comp-tabs
                  {}
                    :selected $ :selected state
                    :vertical? true
                    :width 200
                    :style $ {}
                  , en-tabs $ fn (info d!) (println "\"selected" info)
                    d! cursor $ assoc state :selected (:name info)
                comp-snippet "\"respo-ui.comp/comp-tabs\n\ncomp-tabs\n  &{} :selected (:selected state) :style ({}) :vertical? true :width 200\n  , tabs\n  fn (info d!)" $ {}
        |css-title $ quote
          defstyle css-title $ {}
            "\"$0" $ {} (:margin-top 40) (:font-size 18) (:font-family ui/font-fancy)
              :color $ hsl 0 0 70
        |render-entry $ quote
          defn render-entry (url title)
            div ({})
              a $ {} (:href url) (:inner-text title)
      :ns $ quote
        ns respo-ui.comp.components $ :require
          respo.core :refer $ defcomp >> div a <> pre code
          respo.comp.space :refer $ =<
          respo-ui.comp :refer $ comp-tabs comp-placeholder comp-snippet comp-button comp-link
          respo-ui.core :as ui
          respo.util.format :refer $ hsl
          respo.css :refer $ defstyle
    |respo-ui.comp.container $ {}
      :defs $ {}
        |comp-container $ quote
          defcomp comp-container (store)
            let
                router $ either
                  first $ :path
                    either (:router store) ({})
                  {}
                states $ :states store
              div
                {}
                  :class-name $ str-spaced css/global css/fullscreen css/row
                  :style $ {} (:padding-top 16)
                comp-sidebar $ or (:name router) |index.html
                div
                  {} $ :class-name (str-spaced css/expand css-content)
                  case-default (:name router)
                    <> $ pr-str router
                    nil $ comp-home
                    |home $ comp-home
                    |index.html $ comp-home
                    |dev.html $ comp-home
                    |widgets.html $ comp-widgets-page (>> states :widgets)
                    |layouts.html $ comp-layouts-page
                    |lay-out.html $ comp-lay-out-page
                    |fonts.html $ comp-fonts-page
                    |components.html $ comp-components-page (>> states :components)
        |css-content $ quote
          defstyle css-content $ {}
            "\"$0" $ {} (:padding 8)
      :ns $ quote
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
    |respo-ui.comp.fonts-page $ {}
      :defs $ {}
        |comp-fonts-page $ quote
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
            render-font-demo css/font-fancy ui/font-fancy 100
            render-font-demo css/font-fancy ui/font-fancy 300
            render-font-demo css/font-fancy ui/font-fancy 400
            =< nil 32
            div
              {} $ :style style-section
              <> "|Code fonts"
            comp-md-block "|which can be used with `ui/font-code`." $ {}
            render-font-demo css/font-code ui/font-code 100
            render-font-demo css/font-code ui/font-code 300
            render-font-demo css/font-code ui/font-code 400
        |css-demo $ quote
          defstyle css-demo $ {}
            "\"$0" $ {} (:font-size 16) (:font-weight |bold) (:line-height |32px)
        |render-font-demo $ quote
          defn render-font-demo (css-family family weight)
            div
              {}
                :class-name $ str-spaced css-family css-demo
                :style $ {} (:font-weight weight)
              <> $ str "|This is a demo of the font, guess what you like: " family "| " weight
        |style-section $ quote
          def style-section $ {} (:font-size 24) (:font-family ui/font-fancy) (:line-height |60px)
      :ns $ quote
        ns respo-ui.comp.fonts-page $ :require
          respo.core :refer $ defcomp div <>
          respo-ui.css :as css
          respo-ui.core :as ui
          respo.comp.space :refer $ =<
          respo-md.comp.md :refer $ comp-md-block
          respo.css :refer $ defstyle
    |respo-ui.comp.home $ {}
      :defs $ {}
        |comp-home $ quote
          defcomp comp-home () $ div ({})
            div
              {} $ :style style-home
              <> "|Styles for Respo"
            =< nil 32
            div ({})
              comp-md-block "|Respo UI is some minimal style collections for creating small pieces of apps. It includes variables for Flexbox layouts, basic button and input styles, fonts like \"Josefin Sans\" and \"Hind\".\n\nYou may read code on [GitHub](http://github.com/Respo/respo-ui). [Fonts files](https://github.com/tiye/favored-fonts) are hosted separately on my server." $ {}
        |style-home $ quote
          def style-home $ {} (:font-size 32) (:font-family "|Josefin Sans")
            :color $ hsl 200 100 76
            :font-weight 100
      :ns $ quote
        ns respo-ui.comp.home $ :require
          respo.core :refer $ defcomp div a img <>
          respo.comp.space :refer $ =<
          respo.util.format :refer $ hsl
          respo-md.comp.md :refer $ comp-md-block
    |respo-ui.comp.lay-out-page $ {}
      :defs $ {}
        |comp-lay-out-page $ quote
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
        |style-title $ quote
          def style-title $ {} (:font-size 24) (:font-family ui/font-fancy) (:font-weight 300)
            :color $ hsl 0 0 80
            :margin "\"16px 0"
            :display :inline-block
      :ns $ quote
        ns respo-ui.comp.lay-out-page $ :require
          respo.core :refer $ defcomp div <>
          respo-ui.core :as ui
          respo.util.format :refer $ hsl
          respo.comp.space :refer $ =<
          respo-ui.lay-out :refer $ lay-out
    |respo-ui.comp.layouts-page $ {}
      :defs $ {}
        |comp-layouts-page $ quote
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
        |css-sample $ quote
          defstyle css-sample $ {}
            "\"$0" $ {} (:padding "|4px 8px") (:color :white) (:font-size 12) (:font-family ui/font-code)
        |render-demo $ quote
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
      :ns $ quote
        ns respo-ui.comp.layouts-page $ :require
          respo.core :refer $ defcomp div a <>
          respo.comp.space :refer $ =<
          respo-ui.core :as ui
          respo.util.format :refer $ hsl
          respo-md.comp.md :refer $ comp-md-block
          respo.css :refer $ defstyle
          respo-ui.css :as css
    |respo-ui.comp.sidebar $ {}
      :defs $ {}
        |comp-sidebar $ quote
          defcomp comp-sidebar (router-name)
            div
              {} $ :style
                {} (:width 160) (:margin-right 24)
              div
                {} $ :style
                  {} $ :text-align :right
                div $ {} (:style style-logo)
              =< nil 16
              render-entry |index.html "|Respo UI" router-name
              render-entry |layouts.html |Layouts router-name
              render-entry |lay-out.html "|Lay Out" router-name
              render-entry |widgets.html |Widgets router-name
              render-entry |fonts.html |Fonts router-name
              render-entry |components.html |Components router-name
        |css-sidebar-entry $ quote
          defstyle css-sidebar-entry $ {}
            "\"$0" $ {} (:line-height |40px) (:font-size 20) (:cursor |pointer) (:font-weight "\"lighter") (:font-family ui/font-fancy) (:text-align :right) (:padding "|0 16px")
              :color $ hsl 0 0 20
            "\"$0:hover" $ {}
              :background-color $ hsl 0 0 97
        |on-route $ quote
          defn on-route (path-name)
            fn (e dispatch!) (dispatch! :router/nav path-name)
        |render-entry $ quote
          defn render-entry (path title router-name)
            div
              {} (:class-name css-sidebar-entry)
                :style $ if (= path router-name)
                  {} $ :background-color (hsl 0 0 50 0.1)
                :on-click $ on-route path
              <> title
        |style-logo $ quote
          def style-logo $ {} (:background-image "|url(http://cdn.tiye.me/logo/respo.png)") (:width 80) (:height 80) (:background-size :cover) (:display :inline-block) (:vertical-align :text-bottom)
      :ns $ quote
        ns respo-ui.comp.sidebar $ :require
          respo.core :refer $ defcomp div <>
          respo-ui.core :as ui
          respo.util.format :refer $ hsl
          respo.comp.space :refer $ =<
          respo.css :refer $ defstyle
    |respo-ui.comp.widgets-page $ {}
      :defs $ {}
        |comp-widgets-page $ quote
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
                div ({})
                  button
                    {} (:class-name css/button)
                      :style $ {}
                        :border-color $ hsl 220 100 76
                        :color $ hsl 220 100 76
                    <> |Yes
                  =< 16 nil
                  button
                    {} (:class-name css/button)
                      :style $ {}
                        :border-color $ hsl 6 100 60
                        :color $ hsl 6 100 60
                    <> |Yes
                  =< 16 nil
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
      :ns $ quote
        ns respo-ui.comp.widgets-page $ :require
          respo.core :refer $ defcomp div input textarea button span select option a <>
          respo.comp.space :refer $ =<
          respo-ui.core :as ui
          respo-ui.css :as css
          respo.util.format :refer $ hsl
    |respo-ui.config $ {}
      :defs $ {}
        |dev? $ quote
          def dev? $ let
              debug? $ do "\"TODO" false
            cond
                exists? js/window
                , debug?
              (exists? js/process) (not= "\"true" js/process.env.release)
              :else true
        |site $ quote
          def site $ {} (:title "\"Respo UI") (:icon "\"http://cdn.tiye.me/logo/respo.png") (:storage-key "\"respo-ui")
      :ns $ quote (ns respo-ui.config)
    |respo-ui.core $ {}
      :defs $ {}
        |button $ quote
          def button $ {} (:min-width |80px) (:line-height |24px) (:border-radius "\"4px") (:font-size 14) (:text-align |center)
            :border $ str "\"1px solid " (hsl 200 100 76)
            :color $ hsl 200 100 76
            :cursor |pointer
            :display |inline-block
            :padding "|0 8px"
            :outline :none
            :vertical-align :top
            :background-color :white
            :user-select :none
        |card $ quote
          def card $ {} (:padding |16px)
        |center $ quote
          def center $ {} (:display |flex) (:flex-direction |column) (:justify-content |center) (:align-items |center)
        |column $ quote
          def column $ {} (:display |flex) (:align-items |stretch) (:flex-direction |column)
        |column-dispersive $ quote
          def column-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |column)
        |column-evenly $ quote
          def column-evenly $ {} (:display |flex) (:align-items |center) (:justify-content |space-evenly) (:flex-direction |column)
        |column-parted $ quote
          def column-parted $ {} (:display :flex) (:align-items :stretch) (:justify-content :space-between) (:flex-direction :column)
        |default-fonts $ quote (def default-fonts "|Hind,Verdana,'Hiragino Sans GB','WenQuanYi Micro Hei','Microsoft Yahei',sans-serif")
        |expand $ quote
          def expand $ {} (:flex 1) (:overflow :auto)
        |flex $ quote
          def flex $ {} (:flex 1)
        |font-code $ quote (def font-code "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
        |font-fancy $ quote (def font-fancy "|Josefin Sans, Helvetica neue, Arial, sans-serif")
        |font-normal $ quote (def font-normal "|Hind, Helvatica, Arial, sans-serif")
        |fullscreen $ quote
          def fullscreen $ {} (:position "\"absolute") (:left 0) (:top 0) (:width "\"100%") (:height "\"100%") (:overflow :auto)
        |global $ quote
          def global $ {} (:line-height "\"2") (:font-size "\"14px") (:font-family default-fonts)
            :color $ hsl 0 0 20
        |hsl $ quote
          defn hsl (h s l ? a)
            if (some? a) (str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")") (str "\"hsl(" h "\"," s "\"%," l "\"%)")
        |input $ quote
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
        |link $ quote
          def link $ {} (:text-decoration :underline) (:user-select :no-select) (:height 24) (:line-height |24px) (:margin 4) (:display :inline-block) (:cursor :pointer) (:user-select :none)
            :color $ hsl 200 100 76
        |row $ quote
          def row $ {} (:display |flex) (:align-items |stretch) (:flex-direction |row)
        |row-center $ quote
          def row-center $ {} (:display |flex) (:align-items |center) (:justify-content |center) (:flex-direction |row)
        |row-dispersive $ quote
          def row-dispersive $ {} (:display |flex) (:align-items |center) (:justify-content |space-around) (:flex-direction |row)
        |row-evenly $ quote
          def row-evenly $ {} (:display |flex) (:align-items |center) (:flex-direction |row) (:justify-content "\"space-evenly")
        |row-middle $ quote
          def row-middle $ {} (:display :flex) (:align-items :center) (:justify-content :flex-start) (:flex-direction :row)
        |row-parted $ quote
          def row-parted $ {} (:display |flex) (:align-items |center) (:justify-content |space-between) (:flex-direction |row)
        |select $ quote
          def select $ {} (:height 28) (:outline |none) (:font-size 14) (:min-width 120)
            :border $ str "\"1px solid " (hsl 0 0 80)
            :padding "\"0 4px"
            :border-radius "\"4px"
            :font-family default-fonts
            :vertical-align :top
            :cursor :pointer
        |text-label $ quote
          def text-label $ {} (:line-height |32px) (:font-size 14)
            :color $ hsl 0 0 20
            :display :inline-block
            :vertical-align :top
        |textarea $ quote
          def textarea $ {} (:outline :none) (:border :none) (:font-size 14) (:font-family default-fonts)
            :border $ str "\"1px solid " (hsl 0 0 80)
            :border-radius "\"4px"
            :padding 8
            :min-width 240
            :vertical-align :top
      :ns $ quote
        ns respo-ui.core $ :require
    |respo-ui.css $ {}
      :defs $ {}
        |button $ quote
          defstyle button $ {} ("\"$0" ui/button)
            "\"$0:hover" $ {}
              :background-color $ hsl 0 0 98
            "\"$0:active" $ {} (:transform "\"scale(1.04)") (:transition-duration "\"0ms")
        |card $ quote
          defstyle card $ {}
            "\"$0" $ {} (:padding |16px)
        |center $ quote
          defstyle center $ {} ("\"$0" ui/center)
        |column $ quote
          defstyle column $ {} ("\"$0" ui/column)
        |column-dispersive $ quote
          defstyle column-dispersive $ {} ("\"$0" ui/column-dispersive)
        |column-evenly $ quote
          defstyle column-evenly $ {} ("\"$0" ui/column-evenly)
        |column-parted $ quote
          defstyle column-parted $ {} ("\"$0" ui/column-parted)
        |expand $ quote
          defstyle expand $ {} ("\"$0" ui/expand)
        |flex $ quote
          defstyle flex $ {}
            "\"$0" $ {} (:flex 1)
        |font-code $ quote
          defstyle font-code $ {}
            "\"$0" $ {} (:font-family "|Source Code Pro, Menlo, Ubuntu Mono, Consolas, monospace")
        |font-fancy $ quote
          defstyle font-fancy $ {}
            "\"$0" $ {} (:font-family "|Josefin Sans, Helvetica neue, Arial, sans-serif")
        |font-normal $ quote
          defstyle font-normal $ {}
            "\"$0" $ {} (:font-family "|Hind, Helvatica, Arial, sans-serif")
        |fullscreen $ quote
          defstyle fullscreen $ {}
            "\"$0" $ {} (:position "\"absolute") (:left 0) (:top 0) (:width "\"100%") (:height "\"100%") (:overflow :auto)
        |global $ quote
          defstyle global $ {}
            "\"$0" $ {} (:line-height "\"2") (:font-size "\"14px") (:font-family ui/default-fonts)
              :color $ hsl 0 0 20
        |hsl $ quote
          defn hsl (h s l ? a)
            if (some? a) (str "\"hsl(" h "\"," s "\"%," l "\"%," a "\")") (str "\"hsl(" h "\"," s "\"%," l "\"%)")
        |input $ quote
          defstyle input $ {} ("\"$0" ui/input)
            "\"$0:focus" $ {}
              :border $ str "\"1px solid " (hsl 200 50 75)
              :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
        |link $ quote
          defstyle link $ {} ("\"$0" ui/link)
            "\"$0:hover" $ {}
              :color $ hsl 200 100 56
            "\"$0:active" $ {}
              :color $ hsl 200 100 40
              :transform "\"scale(1.04)"
        |row $ quote
          defstyle row $ {} ("\"$0" ui/row)
        |row-center $ quote
          defstyle row-center $ {} ("\"$0" ui/row-center)
        |row-dispersive $ quote
          defstyle row-dispersive $ {} ("\"$0" ui/row-dispersive)
        |row-evenly $ quote
          defstyle row-evenly $ {} ("\"$0" ui/row-evenly)
        |row-middle $ quote
          defstyle row-middle $ {} ("\"$0" ui/row-middle)
        |row-parted $ quote
          defstyle row-parted $ {} ("\"$0" ui/row-parted)
        |select $ quote
          defstyle select $ {} ("\"$0" ui/select)
            "\"$0:focus" $ {}
              :border $ str "\"1px solid " (hsl 200 50 75)
              :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
        |text-label $ quote
          defstyle text-label $ {} ("\"$0" ui/text-label)
        |textarea $ quote
          defstyle textarea $ {} ("\"$0" ui/textarea)
            "\"$0:focus" $ {}
              :border $ str "\"1px solid " (hsl 200 50 75)
              :box-shadow $ str "\"0 0 4px " (hsl 200 70 50 0.2)
      :ns $ quote
        ns respo-ui.css $ :require (respo-ui.core :as ui)
          respo.css :refer $ defstyle
    |respo-ui.lay-out $ {}
      :defs $ {}
        |add-gap $ quote
          defn add-gap (xs f)
            add-gap-iter ([]) 0 f xs
        |add-gap-iter $ quote
          defn add-gap-iter (acc n f xs)
            if (empty? xs) acc $ recur
              if (empty? acc)
                [] $ first xs
                -> acc
                  conj $ f n
                  conj $ first xs
              inc n
              , f (rest xs)
        |gen-gap-fn $ quote
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
        |get-layout-style $ quote
          defn get-layout-style (layout-name)
            case-default layout-name style-no-match (:row ui/row) (:column ui/column) (:center ui/center) (:row-middle ui/row-middle) (:row-center ui/row-center) (:row-parted ui/row-parted) (:column-parted ui/column-parted)
              :flow $ {}
        |lay-out $ quote
          defn lay-out (rule child-map & args)
            let
                options $ either (first args) ({})
              case-default (:type rule)
                <>
                  str "\"Unknown rule: " $ pr-str rule
                  , style-todo
                :flex $ render-layout-flex rule child-map options
                :list $ render-layout-list rule child-map options
                :grid $ <> "\"TODO grid" style-todo
                :item $ render-fill-item rule child-map options
        |lilac-flex-rule $ quote
          def lilac-flex-rule $ record+
            {}
              :type $ is+ :flex
              :layout lilac-layout-names
              :style lilac-style
              :gap lilac-gap
              :items $ list+
                or+ $ []
                  list+ $ {}
                    :type $ is+ :item
                    :style lilac-style
                    :fill $ any+
                  list+ $ {}
                    :type $ is+ :flex
                {} $ :allow-seq? true
            {} $ :check-keys? true
        |lilac-gap $ quote
          def lilac-gap $ optional+
            or+ $ [] (number+)
              tuple+ $ [] (number+) (number+)
        |lilac-grid-rule $ quote
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
        |lilac-item-rule $ quote
          def lilac-item-rule $ record+
            {}
              :type $ is+ :item
              :style lilac-style
              :fill $ optional+ (any+)
            {} $ :check-keys? true
        |lilac-layout-names $ quote
          def lilac-layout-names $ optional+
            enum+ $ #{} :column :row :row-parted :column-parted :center :row-center :row-middle :flow
        |lilac-list-rule $ quote
          def lilac-list-rule $ record+
            {}
              :type $ is+ :list
              :layout lilac-layout-names
              :style lilac-style
              :size $ number+
              :gap lilac-gap
        |lilac-number-pair $ quote
          def lilac-number-pair $ optional+
            tuple+ $ [] (number+) (number+)
        |lilac-style $ quote
          def lilac-style $ optional+
            dict+ (keyword+) (any+)
        |render-fill-item $ quote
          defn render-fill-item (rule child-map options) (dev-check rule lilac-item-rule)
            let
                item $ get child-map (:fill rule)
              cond
                  nil? item
                  <>
                    str "\"nothing to fill: " $ pr-str rule
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
                  str "\"Unknown case: " $ pr-str item
                  , style-todo
        |render-layout-flex $ quote
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
        |render-layout-list $ quote
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
        |style-no-match $ quote
          def style-no-match $ {}
            :outline $ str "\"1px solid red"
        |style-todo $ quote
          def style-todo $ {}
            :color $ hsl 0 80 80
            :border $ str "\"1px solid " (hsl 0 0 94)
      :ns $ quote
        ns respo-ui.lay-out $ :require
          respo.core :refer $ <> list-> div
          respo.comp.space :refer $ =<
          respo.util.format :refer $ hsl
          respo-ui.core :as ui
          lilac.core :refer $ dev-check number+ record+ string+ keyword+ or+ list+ any+ dict+ enum+ tuple+ is+ optional+
    |respo-ui.main $ {}
      :defs $ {}
        |*store $ quote
          defatom *store $ merge schema/store
            {} $ :router
              do
                ; parse-address
                  str (.-pathname js/location) (.-search js/location)
                  , router/dict
                , nil
        |dispatch! $ quote
          defn dispatch! (op op-data)
            when config/dev? $ println "\"Dispatch:" op
            reset! *store $ updater @*store op op-data
        |main! $ quote
          defn main! ()
            println "\"Running mode:" $ if config/dev? "\"dev" "\"release"
            render-app! render!
            add-watch *store :changes $ fn (store prev) (render-app! render!)
            render-router!
            listen! router/dict dispatch! router/mode
            add-watch *store :router-changes $ fn (store prev) (render-router!)
            println "|App started!"
        |mount-target $ quote
          def mount-target $ js/document.querySelector |.app
        |reload! $ quote
          defn reload! () $ if (nil? build-errors) 
            do (remove-watch *store :changes) (remove-watch *store :router-changes) (clear-cache!)
              add-watch *store :changes $ fn (store prev) (render-app! render!)
              add-watch *store :router-changes $ fn (store prev) (render-router!)
              render-app! render!
              hud! "\"ok~" "\"Ok"
              println "|Code updated!"
            hud! "\"error" build-errors
        |render-app! $ quote
          defn render-app! (renderer)
            renderer mount-target (comp-container @*store) dispatch!
        |render-router! $ quote
          defn render-router! () $ render-url! (:router @*store) router/dict router/mode
        |updater $ quote
          defn updater (store op op-data)
            case-default op
              do (println "\"Unknown op:" op) store
              :states $ update-states store op-data
              :router/nav $ assoc store :router (parse-address op-data router/dict)
      :ns $ quote
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
    |respo-ui.router $ {}
      :defs $ {}
        |dict $ quote
          def dict $ {}
            |index.html $ []
            |dev.html $ []
            |fonts.html $ []
            |widgets.html $ []
            |layouts.html $ []
            |lay-out.html $ []
            |components.html $ []
        |mode $ quote (def mode :hash)
      :ns $ quote (ns respo-ui.router)
    |respo-ui.schema $ {}
      :defs $ {}
        |store $ quote
          def store $ {} (:router nil)
            :states $ {}
      :ns $ quote (ns respo-ui.schema)
