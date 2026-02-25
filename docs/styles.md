# Respo UI Styles

Respo UI provides a set of predefined styles and CSS utilities that you can use to style your application. This document describes the available styles and how to use them.

## Core Styles

Respo UI provides a set of core styles that you can use to style your components. These styles are available in the `respo-ui.core` namespace.

### Global Styles

The `ui/global` style provides a set of global styles that you can apply to your application's root element.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

, ui/global
```

### Layout Styles

Respo UI provides several layout styles to help you structure your application's UI.

#### Row Layout

The `ui/row` style creates a horizontal layout using flexbox.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/row $ {} (:padding 8)
```

#### Column Layout

The `ui/column` style creates a vertical layout using flexbox.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/column $ {} (:padding 8)
```

#### Center Layout

The `ui/center` style centers content both horizontally and vertically.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/center $ {} (:height 100)
```

### Typography Styles

Respo UI provides styles for typography to ensure consistent text appearance across your application.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

[] ui/text-label ui/font-fancy ui/font-normal
```

### Button Styles

Respo UI provides styles for buttons with different appearances.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

[] ui/button ui/button-primary $ merge ui/button $ {} (:color :red)
```

### Form Styles

Respo UI provides styles for form elements.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

[] ui/input ui/textarea
```

## CSS Classes

In addition to inline styles, Respo UI also provides CSS classes that you can use to style your components. These classes are available in the `respo-ui.css` namespace.

```cirru.no-run
ns your-app.core
  :require
    respo-ui.css :as css

css/row-center
```

### Available CSS Classes

- `css/row`: Creates a horizontal layout
- `css/column`: Creates a vertical layout
- `css/center`: Centers content
- `css/row-center`: Centers content in a row
- `css/row-evenly`: Distributes items evenly in a row
- `css/column-evenly`: Distributes items evenly in a column
- `css/row-dispersive`: Spreads items in a row with space distribution
- `css/column-dispersive`: Spreads items in a column with space distribution
- `css/row-parted`: Spaces items apart in a row
- `css/column-parted`: Spaces items apart in a column
- `css/row-middle`: Aligns items in the middle of a row
- `css/flex`: Makes an element flexible
- `css/expand`: Makes an element expand to fill available space

## Combining Styles

You can combine multiple styles using the `merge` function.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/row ui/center $ {} (:padding 16)
```

## Responsive Design

Respo UI provides utilities for creating responsive designs that adapt to different screen sizes.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/row $ {} (:flex-wrap :wrap) (:flex-direction :column)
```

## Theme Customization

You can customize the theme by overriding the default styles.

```cirru
ns your-app.core
  :require
    respo-ui.core :as ui

merge ui/global $ {} (:color |#6200ee) (:font-family |Roboto-sans-serif)
```

## Best Practices

- Use the provided styles consistently throughout your application
- Combine styles using the `merge` function to create custom styles
- Use CSS classes for common layout patterns
- Create a custom theme for your application to ensure consistent styling
- Use responsive design techniques to adapt to different screen sizes
