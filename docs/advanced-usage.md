# Respo UI Advanced Usage

This document covers advanced usage patterns and techniques for Respo UI, helping you to build more sophisticated user interfaces and optimize your application.

## Custom Component Creation

Creating custom components is a powerful way to extend Respo UI's functionality. Here's a pattern for creating reusable components:

```cirru
ns your-app.comp.custom
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui

defcomp comp-custom (options)
  let
    value $ :value options
    on-change $ :on-change options
    disabled? $ :disabled? options false
    div
      {} $ :style $ merge ui/row-middle
        {} $ :padding "8px 12px"
          :border "1px solid #ddd"
          :border-radius "4px"
          :background-color $ if disabled? "#f5f5f5" :white
          :opacity $ if disabled? 0.7 1
        :style options
      :class-name $ :class-name options
      :on-click $ fn (e d!)
        when (and (some? on-change) (not disabled?))
          on-change e d!
      div
        {} $ :style ui/expand
        <> $ or value "Empty"
      when-not disabled?
        div
          {} $ :style $ {} (:cursor :pointer)
          <> "Action"
```

## State Management with Atoms

You can use atoms for local component state management:

```cirru
ns your-app.comp.stateful
  :require
    respo.core :refer $ defcomp <> div use-atom
    respo-ui.core :as ui

defcomp comp-stateful ()
  let
    *counter $ use-atom 0
    div
      {} $ :style ui/column
      div
        {}
        <> $ str "Counter: " @*counter
      div
        {} $ :style $ merge ui/row $ {} (:gap 8)
        div
          {} $ :style $ merge ui/button
            {} $ :cursor :pointer
          :on-click $ fn (e d!)
            swap! *counter dec
          <> "-"
        div
          {} $ :style $ merge ui/button ui/button-primary
            {} $ :cursor :pointer
          :on-click $ fn (e d!)
            swap! *counter inc
          <> "+"
```

## Advanced Styling Techniques

### Dynamic Styling Based on Props

You can create components that adapt their styling based on props:

```cirru
defcomp comp-button (options)
  let
    type $ :type options :default
    size $ :size options :medium
    disabled? $ :disabled? options false
    on-click $ :on-click options
    text $ :text options
    div
      {} $ :style $ merge
        ui/center
        {} $ :padding $ case size
          :small "4px 8px"
          :medium "8px 16px"
          :large "12px 24px"
        :font-size $ case size
          :small 12
          :medium 14
          :large 16
        :border-radius "4px"
        :cursor $ if disabled? :not-allowed :pointer
        :opacity $ if disabled? 0.7 1
        :background-color $ case type
          :primary "#4285f4"
          :success "#34a853"
          :warning "#fbbc05"
          :danger "#ea4335"
          :default "#f5f5f5"
        :color $ if (= type :default) "#333" :white
        :style options
      :class-name $ :class-name options
      :on-click $ fn (e d!)
        when (and (some? on-click) (not disabled?))
          on-click e d!
      <> text
```

### Theme System

Implementing a theme system for consistent styling:

```cirru
ns your-app.theme
  :require
    respo-ui.core :as ui

def theme-light $ {}
  :primary-color "#4285f4"
  :success-color "#34a853"
  :warning-color "#fbbc05"
  :danger-color "#ea4335"
  :text-color "#333"
  :background-color "#fff"
  :border-color "#ddd"
  :disabled-color "#f5f5f5"
  :font-family "Roboto, sans-serif"
  :font-size 14
  :border-radius 4

def theme-dark $ {}
  :primary-color "#5c6bc0"
  :success-color "#43a047"
  :warning-color "#ffb300"
  :danger-color "#e53935"
  :text-color "#eee"
   :background-color "#333"
  :border-color "#555"
  :disabled-color "#444"
  :font-family "Roboto, sans-serif"
  :font-size 14
  :border-radius 4

(def *current-theme (atom theme-light))

(defn get-theme [] @*current-theme)

(defn set-theme! [theme] (reset! *current-theme theme))

(defn toggle-theme! []
  (if (= @*current-theme theme-light)
    (set-theme! theme-dark)
    (set-theme! theme-light)))

(defn themed [style-fn]
  (style-fn (get-theme)))
```

Using the theme system in components:

```cirru
(ns your-app.comp.themed
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]
            [your-app.theme :refer [themed]]))

(defn button-style [theme]
  {:background-color (:primary-color theme)
   :color (:text-color theme)
   :border-radius (:border-radius theme)
   :font-family (:font-family theme)
   :font-size (:font-size theme)})

(defcomp comp-themed-button [text on-click]
  (div
    {:style (merge ui/center
                  (themed button-style)
                  {:padding "8px 16px"
                   :cursor :pointer})
     :on-click on-click}
    (<> text)))
```

## Performance Optimization

### Memoization

Use memoization to avoid unnecessary re-renders:

```cirru
(ns your-app.comp.memoized
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]
            [memof.core :refer [memof-call]]))

(defn render-item [item]
  (div
    {:style (merge ui/row-middle
                  {:padding 8
                   :border-bottom "1px solid #eee"})}
    (div {:style {:width 40}} (<> (:id item)))
    (div {:style ui/expand} (<> (:name item)))
    (div {:style {:width 100}} (<> (:value item)))))

(defcomp comp-memoized-list [items]
  (div
    {:style ui/column}
    (->> items
         (map-indexed
           (fn [idx item]
             [(:id item)
              (memof-call render-item item)])))))
```

### Virtualized Lists

Implement virtualized lists for handling large datasets:

```cirru
(ns your-app.comp.virtual-list
  (:require [respo.core :refer [defcomp <> div list->]]
            [respo-ui.core :as ui]))

(defcomp comp-virtual-list [items visible-height item-height]
  (let [total-height (* (count items) item-height)
        scroll-top (or (:scroll-top @*scroll-state) 0)
        start-idx (max 0 (int (/ scroll-top item-height)))
        end-idx (min (count items) (+ start-idx (int (/ visible-height item-height)) 2))
        visible-items (subvec items start-idx end-idx)]
    (div
      {:style (merge ui/column
                    {:height visible-height
                     :overflow :auto
                     :position :relative}
                    (:style options))
       :on-scroll (fn [e d!]
                    (let [target (.-target (:event e))]
                      (swap! *scroll-state assoc :scroll-top (.-scrollTop target))))}
      (div
        {:style {:height total-height
                 :position :relative}}
        (list->
          {}
          (->> visible-items
               (map-indexed
                 (fn [idx item]
                   [(:id item)
                    (div
                      {:style {:position :absolute
                               :top (+ (* (+ start-idx idx) item-height))
                               :left 0
                               :width "100%"
                               :height item-height}}
                      (render-item item))]))))))))
```

## Advanced Component Patterns

### Compound Components

Create compound components for complex UI patterns:

```cirru
(ns your-app.comp.tabs
  (:require [respo.core :refer [defcomp <> div list->]]
            [respo-ui.core :as ui]))

(defcomp comp-tab [options]
  (let [value (:value options)
        label (:label options)
        selected? (:selected? options false)
        on-click (:on-click options)]
    (div
      {:style (merge ui/center
                    {:padding "8px 16px"
                     :cursor :pointer
                     :border-bottom (if selected?
                                     "2px solid #4285f4"
                                     "2px solid transparent")})
       :on-click (fn [e d!] (when (some? on-click) (on-click value d!)))}
      (<> label))))

(defcomp comp-tabs [options]
  (let [selected (:selected options)
        tabs (:tabs options)
        on-select (:on-select options)]
    (div
      {:style (merge ui/row
                    {:border-bottom "1px solid #eee"}
                    (:style options))
       :class-name (:class-name options)}
      (list->
        {}
        (->> tabs
             (map
               (fn [tab]
                 [(:value tab)
                  (comp-tab
                    {:value (:value tab)
                     :label (:label tab)
                     :selected? (= selected (:value tab))
                     :on-click on-select})]))))
      (div {:style ui/expand}))))
```

Usage of the tabs component:

```cirru
(comp-tabs
  {:selected :tab1
   :tabs [{:value :tab1, :label "Tab 1"}
          {:value :tab2, :label "Tab 2"}
          {:value :tab3, :label "Tab 3"}]
   :on-select (fn [value d!] (d! :tab/select value))})
```

### Higher-Order Components

Create higher-order components to add functionality to existing components:

```cirru
(ns your-app.hoc
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]))

(defn with-loading [component]
  (fn [props]
    (if (:loading? props)
      (div
        {:style (merge ui/center {:padding 16})}
        (<> "Loading..."))
      (component props))))

(defn with-error-boundary [component]
  (fn [props]
    (try
      (component props)
      (catch js/Error error
        (div
          {:style (merge ui/column
                        {:padding 16
                         :border "1px solid #ea4335"
                         :border-radius 4
                         :background-color "#ffebee"})}
          (div
            {:style {:color "#ea4335"
                     :font-weight :bold}}
            (<> "Error"))
          (div
            {:style {:margin-top 8}}
            (<> (.-message error))))))))
```

Usage of higher-order components:

```cirru
(def comp-user-list-with-loading (with-loading comp-user-list))
(def comp-user-list-with-error (with-error-boundary comp-user-list-with-loading))

(comp-user-list-with-error
  {:loading? false
   :users [{:id 1, :name "John"}
           {:id 2, :name "Jane"}]})
```

## Integration with External Libraries

### Using External CSS Libraries

Integrate external CSS libraries with Respo UI:

```cirru
(ns your-app.main
  (:require [respo.core :refer [render! clear-cache!]]
            [your-app.comp.container :refer [comp-container]]
            ["normalize.css/normalize.css" :as normalize-css]
            ["@fortawesome/fontawesome-free/css/all.css" :as font-awesome]))

(defn main! []
  (render! (comp-container {}) "app")
  (println "App started."))
```

### Using JavaScript Libraries

Integrate JavaScript libraries with Respo UI:

```cirru
(ns your-app.comp.chart
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]
            ["chart.js" :as Chart]))

(defcomp comp-chart [data]
  (let [*chart (use-atom nil)
        *canvas-ref (use-atom nil)]
    (effect-with-mount
      (fn []
        (when (and @*canvas-ref (nil? @*chart))
          (let [ctx (.getContext @*canvas-ref "2d")
                chart (new Chart ctx
                          (clj->js
                            {:type "bar"
                             :data data
                             :options {:responsive true}}))]
            (reset! *chart chart)))
        (fn [] (when @*chart (.destroy @*chart))))
      [data])
    (div
      {:style (merge ui/column)}
      (canvas
        {:ref (fn [el] (reset! *canvas-ref el))
         :style {:width "100%"
                 :height 300}}))))
```

## Advanced Routing

Implement advanced routing with nested routes and parameters:

```cirru
(ns your-app.core
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]
            [respo-router.core :refer [router->]]
            [respo-router.schema :as router-schema]))

(def routes
  ["home"
   ["users" {}
    ["list" {}]
    ["user" {:id nil}
     ["profile" {}]
     ["settings" {}]]]
   ["settings" {}]
   ["about" {}]])

(defcomp comp-container [store]
  (let [router (:router store)
        states (:states store)]
    (div
      {:style (merge ui/global ui/column)}
      (div
        {:style (merge ui/row-middle
                      {:padding 16
                       :border-bottom "1px solid #eee"})}
        (div
          {:style (merge ui/row {:gap 16})}
          (div
            {:style (merge ui/link
                          {:cursor :pointer})
             :on-click (fn [e d!] (d! :router/change {:name :home}))}
            (<> "Home"))
          (div
            {:style (merge ui/link
                          {:cursor :pointer})
             :on-click (fn [e d!] (d! :router/change {:name :users, :data {:name :list}}))}
            (<> "Users"))
          (div
            {:style (merge ui/link
                          {:cursor :pointer})
             :on-click (fn [e d!] (d! :router/change {:name :settings}))}
            (<> "Settings"))
          (div
            {:style (merge ui/link
                          {:cursor :pointer})
             :on-click (fn [e d!] (d! :router/change {:name :about}))}
            (<> "About"))))
      (div
        {:style (merge ui/expand {:padding 16})}
        (router->
          router
          {:home (comp-home states)
           :users (case (get-in router [:data :name])
                    :list (comp-user-list states)
                    :user (let [user-id (get-in router [:data :params :id])]
                            (case (get-in router [:data :data :name])
                              :profile (comp-user-profile states user-id)
                              :settings (comp-user-settings states user-id)
                              (comp-404)))
                    (comp-404))
           :settings (comp-settings states)
           :about (comp-about)}
          (comp-404))))))
```

## Best Practices

### Component Organization

Organize your components in a structured way:

```
src/
  your_app/
    comp/
      core.cljs       # Main container component
      header.cljs     # Header component
      sidebar.cljs    # Sidebar component
      footer.cljs     # Footer component
      ui/
        button.cljs   # Button component
        input.cljs    # Input component
        modal.cljs    # Modal component
        card.cljs     # Card component
    page/
      home.cljs       # Home page
      about.cljs      # About page
      users.cljs      # Users page
    core.cljs         # Application core
    main.cljs         # Entry point
    config.cljs       # Configuration
    schema.cljs       # Data schemas
    util.cljs         # Utilities
```

### Performance Tips

1. **Memoize expensive computations**: Use `memof-call` for components that don't need to re-render often.
2. **Use virtualization for long lists**: Only render items that are visible in the viewport.
3. **Optimize event handlers**: Debounce or throttle event handlers for performance-intensive operations.
4. **Minimize DOM updates**: Group related state changes to reduce the number of DOM updates.
5. **Use CSS classes instead of inline styles** for static styles that don't change.

### Accessibility

Make your components accessible:

```cirru
(defcomp comp-accessible-button [options]
  (let [text (:text options)
        on-click (:on-click options)
        disabled? (:disabled? options false)
        aria-label (:aria-label options)]
    (div
      {:style (merge ui/center
                    {:padding "8px 16px"
                     :background-color (if disabled? "#f5f5f5" "#4285f4")
                     :color (if disabled? "#999" :white)
                     :border-radius "4px"
                     :cursor (if disabled? :not-allowed :pointer)})
       :class-name (:class-name options)
       :tab-index (if disabled? -1 0)
       :role "button"
       :aria-disabled disabled?
       :aria-label aria-label
       :on-click (fn [e d!]
                   (when (and (some? on-click) (not disabled?))
                     (on-click e d!)))
       :on-keydown (fn [e d!]
                     (when (and (some? on-click) (not disabled?)
                                (or (= (.-keyCode (:event e)) 13) ; Enter
                                    (= (.-keyCode (:event e)) 32))) ; Space
                       (on-click e d!)))}
      (<> text))))
```

## Conclusion

This document covered advanced usage patterns and techniques for Respo UI. By applying these patterns, you can create more sophisticated, performant, and accessible user interfaces for your applications.

Remember to follow best practices for component organization, performance optimization, and accessibility to ensure your application provides the best possible user experience.
