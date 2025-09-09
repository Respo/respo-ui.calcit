# Respo UI Styles

Respo UI provides a set of predefined styles and CSS utilities that you can use to style your application. This document describes the available styles and how to use them.

## Core Styles

Respo UI provides a set of core styles that you can use to style your components. These styles are available in the `respo-ui.core` namespace.

### Global Styles

The `ui/global` style provides a set of global styles that you can apply to your application's root element.

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui

defcomp comp-container (store)
  div
    {} $ :style ui/global
    <> "Hello, world!"
```

### Layout Styles

Respo UI provides several layout styles to help you structure your application's UI.

#### Row Layout

The `ui/row` style creates a horizontal layout using flexbox.

```cirru
div
  {} $ :style ui/row
  div
    {} $ :style $ {} (:padding 8)
    <> "Item 1"
  div
    {} $ :style $ {} (:padding 8)
    <> "Item 2"
  div
    {} $ :style $ {} (:padding 8)
    <> "Item 3"
```

#### Column Layout

The `ui/column` style creates a vertical layout using flexbox.

```cirru
div
  {} $ :style ui/column
  div
    {} $ :style $ {} (:padding 8)
    <> "Item 1"
  div
    {} $ :style $ {} (:padding 8)
    <> "Item 2"
  div
    {} $ :style $ {} (:padding 8)
    <> "Item 3"
```

#### Center Layout

The `ui/center` style centers content both horizontally and vertically.

```cirru
(div
  {:style (merge ui/center {:height 100})}
  (<> "Centered content"))
```

### Typography Styles

Respo UI provides styles for typography to ensure consistent text appearance across your application.

```cirru
(div
  {}
  (div {:style ui/title} (<> "Title"))
  (div {:style ui/headline} (<> "Headline"))
  (div {:style ui/text} (<> "Regular text")))
```

### Button Styles

Respo UI provides styles for buttons with different appearances.

```cirru
(div
  {}
  (button {:style ui/button} (<> "Default Button"))
  (button {:style ui/button-primary} (<> "Primary Button"))
  (button {:style (merge ui/button {:color :red})} (<> "Custom Button")))
```

### Form Styles

Respo UI provides styles for form elements.

```cirru
(div
  {}
  (input {:style ui/input, :placeholder "Enter text"})
  (textarea {:style ui/textarea, :placeholder "Enter multiple lines"}))
```

## CSS Classes

In addition to inline styles, Respo UI also provides CSS classes that you can use to style your components. These classes are available in the `respo-ui.css` namespace.

```cirru
(ns your-app.core
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.css :as css]))

(defcomp comp-container [store]
  (div
    {:class-name css/row-center}
    (<> "Centered in a row")))
```

### Available CSS Classes

- `css/row`: Creates a horizontal layout
- `css/column`: Creates a vertical layout
- `css/center`: Centers content
- `css/row-center`: Centers content in a row
- `css/column-center`: Centers content in a column
- `css/row-parted`: Spaces items apart in a row
- `css/column-parted`: Spaces items apart in a column
- `css/row-middle`: Aligns items in the middle of a row
- `css/column-middle`: Aligns items in the middle of a column
- `css/flex`: Makes an element flexible
- `css/expand`: Makes an element expand to fill available space

## Combining Styles

You can combine multiple styles using the `merge` function.

```cirru
(div
  {:style (merge ui/row ui/center {:padding 16})}
  (<> "Centered row with padding"))
```

## Responsive Design

Respo UI provides utilities for creating responsive designs that adapt to different screen sizes.

```cirru
(div
  {:style (merge
            ui/row
            {:flex-wrap :wrap}
            (if (< (:width state) 600)
              {:flex-direction :column}))}
  (div {} (<> "Item 1"))
  (div {} (<> "Item 2")))
```

## Theme Customization

You can customize the theme by overriding the default styles.

```cirru
(def custom-theme
  (merge ui/default-theme
         {:primary-color "#6200ee"
          :font-family "Roboto, sans-serif"}))

(defcomp comp-container [store]
  (div
    {:style (merge ui/global {:color (:primary-color custom-theme)})}
    (<> "Custom themed text")))
```

## Best Practices

- Use the provided styles consistently throughout your application
- Combine styles using the `merge` function to create custom styles
- Use CSS classes for common layout patterns
- Create a custom theme for your application to ensure consistent styling
- Use responsive design techniques to adapt to different screen sizes