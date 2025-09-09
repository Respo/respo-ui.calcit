# Respo UI API Reference

This document provides a comprehensive reference for the Respo UI library's API, including namespaces, functions, and data structures.

## Core Namespace

The `respo-ui.core` namespace provides core styles and utilities for building user interfaces.

### Layout Styles

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui
```

| Style | Description |
|-------|-------------|
| `ui/global` | Global styles for the application |
| `ui/row` | Horizontal layout using flexbox |
| `ui/column` | Vertical layout using flexbox |
| `ui/center` | Centers content both horizontally and vertically |
| `ui/row-center` | Centers content horizontally in a row |
| `ui/column-center` | Centers content vertically in a column |
| `ui/row-parted` | Spaces items apart in a row |
| `ui/column-parted` | Spaces items apart in a column |
| `ui/row-middle` | Aligns items in the middle of a row |
| `ui/column-middle` | Aligns items in the middle of a column |
| `ui/flex` | Makes an element flexible |
| `ui/expand` | Makes an element expand to fill available space |
| `ui/fullscreen` | Makes an element fill the entire screen |

### Typography Styles

| Style | Description |
|-------|-------------|
| `ui/title` | Style for titles |
| `ui/headline` | Style for headlines |
| `ui/text` | Style for regular text |

### Button Styles

| Style | Description |
|-------|-------------|
| `ui/button` | Style for buttons |
| `ui/button-primary` | Style for primary buttons |

### Form Styles

| Style | Description |
|-------|-------------|
| `ui/input` | Style for input fields |
| `ui/textarea` | Style for textarea fields |
| `ui/select` | Style for select dropdowns |

### Miscellaneous Styles

| Style | Description |
|-------|-------------|
| `ui/link` | Style for links |
| `ui/card` | Style for cards |
| `ui/divider` | Style for dividers |

## Components Namespace

The `respo-ui.comp` namespace provides reusable components for building user interfaces.

```cirru
(ns your-app.core
  (:require [respo-ui.comp :refer [comp-button comp-placeholder]]))
```

### comp-attributes

Displays a grid of attributes with labels and values.

```cirru
(comp-attributes options)
```

**Options:**

```cirru
{:items [...] ; Vector of items to display
 :title "..." ; Optional title
 :item-width 160 ; Width of each item in pixels
 :item-height nil ; Height of each item
 :class-name "..." ; Additional CSS class name
 :style {} ; Additional inline styles
 :css-item "..." ; CSS class for items
 :css-label "..." ; CSS class for labels
 :css-value "..." ; CSS class for values
 :css-title "..."} ; CSS class for title
```

Each item in the `:items` vector can be:

- A map with `:label` and `:value` keys
- A tuple in the format `(:: :attr "Label" value)`
- A tuple with span in the format `(:: :attr-span "Label" value span)`

### comp-catoptric-text

Displays text that is added with CSS content, making it unsearchable from browser search or select.

```cirru
(comp-catoptric-text text options)
```

**Options:**

```cirru
{:class-name "..." ; Additional CSS class name
 :style {}} ; Additional inline styles
```

### comp-cirru-snippet

Displays Cirru code with syntax highlighting and a copy button.

```cirru
(comp-cirru-snippet text options)
```

**Options:**

```cirru
{:class-name "..." ; Additional CSS class name
 :style {}} ; Additional inline styles
```

### comp-close

Displays a close button (✕).

```cirru
(comp-close options)
```

**Options:**

```cirru
{:on-click fn ; Click handler function
 :style {} ; Additional inline styles
 :class-name "..."} ; Additional CSS class name
```

### comp-copy

Displays a copy button that copies the provided code to the clipboard when clicked.

```cirru
(comp-copy code handler)
```

**Parameters:**

- `code`: The text to copy to clipboard
- `handler`: Optional custom click handler

### comp-placeholder

Displays placeholder text.

```cirru
(comp-placeholder text)
```

**Parameters:**

- `text`: The placeholder text to display

## CSS Namespace

The `respo-ui.css` namespace provides CSS classes for styling components.

```cirru
(ns your-app.core
  (:require [respo-ui.css :as css]))
```

| Class | Description |
|-------|-------------|
| `css/row` | Creates a horizontal layout |
| `css/column` | Creates a vertical layout |
| `css/center` | Centers content |
| `css/row-center` | Centers content in a row |
| `css/column-center` | Centers content in a column |
| `css/row-parted` | Spaces items apart in a row |
| `css/column-parted` | Spaces items apart in a column |
| `css/row-middle` | Aligns items in the middle of a row |
| `css/column-middle` | Aligns items in the middle of a column |
| `css/flex` | Makes an element flexible |
| `css/expand` | Makes an element expand to fill available space |

## Theme Customization

Respo UI provides a default theme that you can customize to match your application's design.

```cirru
(def custom-theme
  (merge ui/default-theme
         {:primary-color "#6200ee"
          :font-family "Roboto, sans-serif"
          :font-size 14
          :line-height 1.5
          :background-color "#f5f5f5"
          :text-color "#333"
          :border-color "#eee"
          :border-radius 4
          :transition-duration "0.3s"}))
```

## Utility Functions

Respo UI provides utility functions for common tasks.

### hsl

Generates an HSL color string.

```cirru
(hsl 200 80 50) ; Returns "hsl(200,80%,50%)"
(hsl 200 80 50 0.5) ; Returns "hsla(200,80%,50%,0.5)"
```

### str-spaced

Joins strings with spaces, filtering out nil values.

```cirru
(str-spaced "a" "b" nil "c") ; Returns "a b c"
```

## Best Practices

### Combining Styles

Use the `merge` function to combine multiple styles.

```cirru
(div
  {:style (merge ui/row ui/center {:padding 16})}
  (<> "Centered row with padding"))
```

### Responsive Design

Use conditional styles based on screen size.

```cirru
(div
  {:style (merge
            ui/row
            (if (< width 600)
              {:flex-direction :column}))}
  (div {} (<> "Item 1"))
  (div {} (<> "Item 2")))
```

### Component Composition

Compose components to create more complex UI elements.

```cirru
(defcomp comp-user-card [user]
  (div
    {:style (merge ui/card {:padding 16})}
    (div
      {:style ui/row-middle}
      (div
        {:style {:width 40
                 :height 40
                 :border-radius "50%"
                 :background-color "#eee"
                 :margin-right 8}}
        (<> (-> (:name user) (first) (str))))
      (div
        {:style ui/column}
        (div {} (<> (:name user)))
        (div {:style {:color "#999"}} (<> (:email user)))))
    (div
      {:style {:margin-top 8}}
      (<> (:bio user)))))
```

## Advanced Usage

### Custom Components

Create custom components that use Respo UI styles.

```cirru
(defcomp comp-tabs [selected tabs on-select]
  (div
    {:style (merge ui/row {:border-bottom "1px solid #eee"})}
    (->> tabs
         (map-indexed
           (fn [idx tab]
             [(:value tab)
              (div
                {:style (merge ui/center
                              {:padding "8px 16px"
                               :cursor :pointer
                               :border-bottom (if (= selected (:value tab))
                                               "2px solid #4285f4"
                                               "2px solid transparent")})
                 :on-click (fn [e d!] (on-select (:value tab) d!))}
                (<> (:display tab)))])))
    (div {:style ui/expand})))
```

### Dynamic Styling

Use dynamic styling based on component state.

```cirru
(defcomp comp-button [text on-click]
  (let [*hovered? (use-atom false)]
    (div
      {:style (merge ui/center
                    {:padding "8px 16px"
                     :background-color (if @*hovered? "#4285f4" "#5c6bc0")
                     :color :white
                     :border-radius "4px"
                     :cursor :pointer
                     :transition "background-color 0.3s"})
       :on-click on-click
       :on-mouseenter (fn [e d!] (reset! *hovered? true))
       :on-mouseleave (fn [e d!] (reset! *hovered? false))}
      (<> text))))
```

## Integration with Other Libraries

Respo UI can be integrated with other libraries to extend its functionality.

### Integration with Respo Router

```cirru
(ns your-app.core
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]
            [respo-router.core :refer [router->]]
            [respo-router.schema :as router-schema]))

(def routes
  ["home" "about" "users" ["user" :id]])

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
             :on-click (fn [e d!] (d! :router/change {:name :about}))}
            (<> "About"))
          (div
            {:style (merge ui/link
                          {:cursor :pointer})
             :on-click (fn [e d!] (d! :router/change {:name :users}))}
            (<> "Users"))))
      (div
        {:style (merge ui/expand {:padding 16})}
        (router->
          router
          {:home (comp-home states)
           :about (comp-about)
           :users (comp-users states)
           :user (comp-user states (:id router))}
          (comp-404))))))
```

### Integration with Respo Markdown

```cirru
(ns your-app.core
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]
            [respo-markdown.comp.md :refer [comp-md-block]]))

(defcomp comp-markdown-example []
  (div
    {:style (merge ui/column {:padding 16})}
    (comp-md-block
      "# Markdown Example\n\nThis is a **bold** text and this is an *italic* text.\n\n- Item 1\n- Item 2\n- Item 3"
      {:style {:line-height 1.6}})))
```