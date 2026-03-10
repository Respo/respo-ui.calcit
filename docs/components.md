# Respo UI Components

Respo UI provides a set of reusable components that you can use to build your application's user interface. This document describes the available components and how to use them.

## Table of Contents

- [comp-attributes](#comp-attributes)
- [comp-catoptric-text](#comp-catoptric-text)
- [comp-cirru-snippet](#comp-cirru-snippet)
- [comp-close](#comp-close)
- [comp-copy](#comp-copy)
- [comp-placeholder](#comp-placeholder)

## comp-attributes

The `comp-attributes` component is used to display a grid of attributes with labels and values.

### Usage

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-attributes

defcomp comp-demo ()
  comp-attributes $ {}
    :items $ []
      {} (:label |Name) (:value |John-Doe)
      {} (:label |Age) (:value 30)
      {} (:label |Email) (:value |john@example.com)
    :title |User-Information
    :item-width 200
```

You can also use the `:attr` tuple format for more concise code:

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-attributes

defcomp comp-demo-attr ()
  comp-attributes $ {}
    :items $ []
      :: :attr |Name |John-Doe
      :: :attr |Age 30
      :: :attr |Email |john@example.com
    :title |User-Information
```

For items that need to span multiple columns, use the `:attr-span` tuple format:

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-attributes

defcomp comp-demo-span ()
  comp-attributes $ {}
    :items $ []
      :: :attr |Name |John-Doe
      :: :attr-span |Bio |A-long-biography-that-spans-multiple-columns 2
    :title |User-Profile
```

### Props

| Prop           | Type   | Description                                 |
| -------------- | ------ | ------------------------------------------- |
| `:items`       | Vector | A vector of items to display                |
| `:title`       | String | Optional title for the attributes section   |
| `:item-width`  | Number | Width of each item in pixels (default: 160) |
| `:item-height` | Number | Height of each item                         |
| `:class-name`  | String | Additional CSS class name                   |
| `:style`       | Map    | Additional inline styles                    |
| `:css-item`    | String | CSS class for items                         |
| `:css-label`   | String | CSS class for labels                        |
| `:css-value`   | String | CSS class for values                        |
| `:css-title`   | String | CSS class for title                         |

## comp-catoptric-text

The `comp-catoptric-text` component displays text that is added with CSS content, making it unsearchable from browser search or select. The text can still be accessed from the DOM tree.

### Usage

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp div
    respo-ui.comp :refer $ comp-catoptric-text

defcomp comp-demo-catoptric ()
  div ({})
    comp-catoptric-text |This-text-is-not-searchable
    comp-catoptric-text |Custom-text $ {}
      :class-name |custom-class
      :style $ {} (:color :red)
```

### Props

| Prop          | Type   | Description               |
| ------------- | ------ | ------------------------- |
| `text`        | String | The text to display       |
| `:class-name` | String | Additional CSS class name |
| `:style`      | Map    | Additional inline styles  |

## comp-cirru-snippet

The `comp-cirru-snippet` component displays Cirru code with syntax highlighting and a copy button.

### Usage

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp div
    respo-ui.comp :refer $ comp-cirru-snippet

defcomp comp-demo-snippet ()
  div ({})
    comp-cirru-snippet |defn-add
    comp-cirru-snippet |plus-1-2 $ {}
      :class-name |custom-class
      :style $ {} (:border |1px-solid-#eee)
```

### Props

| Prop          | Type   | Description               |
| ------------- | ------ | ------------------------- |
| `text`        | String | The Cirru code to display |
| `:class-name` | String | Additional CSS class name |
| `:style`      | Map    | Additional inline styles  |

## comp-close

The `comp-close` component displays a close button (✕).

### Usage

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp div
    respo-ui.comp :refer $ comp-close

defcomp comp-demo-close ()
  div ({})
    comp-close
    comp-close $ {}
      :on-click $ fn (e d!)
        println |Close-clicked
      :style $ {} (:color :red)
      :class-name |custom-close
```

### Props

| Prop          | Type     | Description               |
| ------------- | -------- | ------------------------- |
| `:on-click`   | Function | Click handler function    |
| `:style`      | Map      | Additional inline styles  |
| `:class-name` | String   | Additional CSS class name |

## comp-copy

The `comp-copy` component displays a copy button that copies the provided code to the clipboard when clicked.

### Usage

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp div
    respo-ui.comp :refer $ comp-copy

defcomp comp-demo-copy ()
  div ({})
    comp-copy |Text-to-copy
    comp-copy |Text-to-copy $ fn (e d!)
      println |Copied-to-clipboard
```

### Props

| Prop   | Type     | Description                   |
| ------ | -------- | ----------------------------- |
| `code` | String   | The text to copy to clipboard |
| `f`    | Function | Optional custom click handler |

## comp-placeholder

The `comp-placeholder` component displays placeholder text.

### Usage

```cirru
ns app.main
  :require
    respo.core :refer $ defcomp
    respo-ui.comp :refer $ comp-placeholder

defcomp comp-demo-placeholder ()
  comp-placeholder |No-data-available
```

### Props

| Prop   | Type   | Description                     |
| ------ | ------ | ------------------------------- |
| `text` | String | The placeholder text to display |

## Best Practices

- Use components consistently throughout your application
- Combine components to create more complex UI elements
- Use the provided styling options to customize the appearance of components
- Consider creating wrapper components for frequently used component configurations
