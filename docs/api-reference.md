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

| Style              | Description                                      |
| ------------------ | ------------------------------------------------ |
| `ui/global`        | Global styles for the application                |
| `ui/row`           | Horizontal layout using flexbox                  |
| `ui/column`        | Vertical layout using flexbox                    |
| `ui/center`        | Centers content both horizontally and vertically |
| `ui/row-center`    | Centers content horizontally in a row            |
| `ui/row-evenly`    | Distributes items evenly in a row                |
| `ui/column-evenly` | Distributes items evenly in a column             |
| `ui/row-dispersive`    | Spreads items in a row with space distribution |
| `ui/column-dispersive` | Spreads items in a column with space distribution |
| `ui/row-parted`    | Spaces items apart in a row                      |
| `ui/column-parted` | Spaces items apart in a column                   |
| `ui/row-middle`    | Aligns items in the middle of a row              |
| `ui/flex`          | Makes an element flexible                        |
| `ui/expand`        | Makes an element expand to fill available space  |
| `ui/fullscreen`    | Makes an element fill the entire screen          |

### Typography Styles

| Style         | Description            |
| ------------- | ---------------------- |
| `ui/text-label` | Label-style text      |
| `ui/font-normal` | Regular text font     |
| `ui/font-fancy`  | Fancy heading-like font |
| `ui/font-code`   | Monospace/code font   |

### Button Styles

| Style               | Description               |
| ------------------- | ------------------------- |
| `ui/button`         | Style for buttons         |
| `ui/button-primary` | Style for primary buttons |
| `ui/button-danger`  | Style for danger buttons  |

### Form Styles

| Style         | Description                |
| ------------- | -------------------------- |
| `ui/input`    | Style for input fields     |
| `ui/textarea` | Style for textarea fields  |
| `ui/select`   | Style for select dropdowns |

### Miscellaneous Styles

| Style        | Description        |
| ------------ | ------------------ |
| `ui/link`    | Style for links    |
| `ui/card`    | Style for cards    |
| `ui/tag` | Style for tags |
| `ui/tag-outline` | Outline style for tags |
| `ui/tag-stroke` | Stroke style for tags |

## Components Namespace

The `respo-ui.comp` namespace provides reusable components for building user interfaces.

```cirru
ns your-app.core
  :require
    respo-ui.comp :refer $ comp-copy comp-placeholder
```

### comp-attributes

Displays a grid of attributes with labels and values.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-attributes

defcomp comp-demo-attributes ()
  comp-attributes $ {}
    :items $ []
```

**Options:**

```cirru
{} (:items []) (:title |...) (:item-width 160) (:item-height nil) (:class-name |...) (:style {}) (:css-item |...) (:css-label |...) (:css-value |...) (:css-title |...)
```

Each item in the `:items` vector can be:

- A map with `:label` and `:value` keys
- A tuple in the format `:: :attr |Label value`
- A tuple with span in the format `:: :attr-span |Label value span`

### comp-catoptric-text

Displays text that is added with CSS content, making it unsearchable from browser search or select.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-catoptric-text

defcomp comp-demo-catoptric ()
  comp-catoptric-text |demo-text $ {}
```

**Options:**

```cirru
{} (:class-name |...) (:style {})
```

### comp-cirru-snippet

Displays Cirru code with syntax highlighting and a copy button.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-cirru-snippet

defcomp comp-demo-snippet ()
  comp-cirru-snippet |plus-1-2
```

**Options:**

```cirru
{} (:class-name |...) (:style {})
```

### comp-close

Displays a close button (✕).

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-close

defcomp comp-demo-close ()
  comp-close $ {}
```

**Options:**

```cirru
{} (:on-click fn) (:style {}) (:class-name |...)
```

### comp-copy

Displays a copy button that copies the provided code to the clipboard when clicked.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-copy

defcomp comp-demo-copy ()
  comp-copy |demo-code
```

**Parameters:**

- `code`: The text to copy to clipboard
- `handler`: Optional custom click handler

### comp-placeholder

Displays placeholder text.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-placeholder

defcomp comp-demo-placeholder ()
  comp-placeholder |placeholder
```

**Parameters:**

- `text`: The placeholder text to display

## CSS Namespace

The `respo-ui.css` namespace provides CSS classes for styling components.

```cirru
ns your-app.core
  :require
    respo-ui.css :as css
```

| Class               | Description                                     |
| ------------------- | ----------------------------------------------- |
| `css/row`           | Creates a horizontal layout                     |
| `css/column`        | Creates a vertical layout                       |
| `css/center`        | Centers content                                 |
| `css/row-center`    | Centers content in a row                        |
| `css/row-evenly`    | Distributes items evenly in a row               |
| `css/column-evenly` | Distributes items evenly in a column            |
| `css/row-parted`    | Spaces items apart in a row                     |
| `css/column-parted` | Spaces items apart in a column                  |
| `css/row-middle`    | Aligns items in the middle of a row             |
| `css/flex`          | Makes an element flexible                       |
| `css/expand`        | Makes an element expand to fill available space |

## Theme Customization

Respo UI provides a default theme that you can customize to match your application's design.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

def custom-theme
  merge ui/global $ {} (:color |#6200ee) (:font-family |Roboto-sans-serif) (:line-height 1.5)
```

## Utility Functions

Respo UI provides utility functions for common tasks.

### hsl

Generates an HSL color string.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

ui/hsl 200 80 50
ui/hsl 200 80 50 0.5
```

### str-spaced

Joins strings with spaces, filtering out nil values.

```cirru
ns your-app.core

str-spaced |a |b nil |c
```

## Best Practices

### Combining Styles

Use the `merge` function to combine multiple styles.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/row ui/center $ {} (:padding 16)
```

### Responsive Design

Use conditional styles based on screen size.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/row $ {} (:flex-direction :column)
```

### Component Composition

Compose components to create more complex UI elements.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp div <>
    respo-ui.core :as ui

defcomp comp-user-card (user)
  div
    {} $ :style $ merge ui/card $ {} (:padding 16)
    div
      {} $ :style ui/row-middle
      div
        {} $ :style $ {}
          :width 40
          :height 40
          :border-radius "|50%"
          :background-color |#eee
          :margin-right 8
        <> $ -> (:name user) (first) (str)
      div
        {} $ :style ui/column
        div ({}) (<> $ :name user)
        div
          {} $ :style $ {} (:color |#999)
          <> $ :email user
    div
      {} $ :style $ {} (:margin-top 8)
      <> $ :bio user
```

## Advanced Usage

### Custom Components

Create custom components that use Respo UI styles.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp div <>
    respo-ui.core :as ui

defcomp comp-tabs (selected tabs on-select)
  div
    {} $ :style $ merge ui/row $ {} (:border-bottom |1px-solid-#eee)
    ->> tabs $ map-indexed
      fn (idx tab)
        [] (:value tab)
          div
            {}
              :style $ merge ui/center $ {}
                :padding |8px-16px
                :cursor :pointer
                :border-bottom $ if (= selected (:value tab))
                  , |2px-solid-#4285f4
                  , |2px-solid-transparent
              :on-click $ fn (e d!)
                on-select (:value tab) d!
            <> $ :display tab
    div ({}) $ :style ui/expand
```

### Dynamic Styling

Use dynamic styling based on component state.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp div <>
    respo-ui.core :as ui

defcomp comp-button (text on-click)
  div
    {}
      :style $ merge ui/center $ {}
        :padding |8px-16px
        :background-color |#4285f4
        :color :white
        :border-radius |4px
        :cursor :pointer
      :on-click on-click
    <> text
```

## Integration with Other Libraries

Respo UI can be integrated with other libraries to extend its functionality.

### Integration with Respo Router

```cirru.no-run
ns your-app.core
  :require
    respo-router.core :refer $ render-url!

render-url!
  {} (:name :home)
  {} (:home |/) (:about |/about)
  , :history
```

### Integration with Respo Markdown

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui
    respo-md.comp.md :refer $ comp-md-block

defcomp comp-markdown-example ()
  div
    {} (:style $ merge ui/column $ {} (:padding 16))
    comp-md-block
      , |#-Markdown-Example
      {} (:style $ {} (:line-height 1.6))
```
