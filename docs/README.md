# Respo UI Documentation

Welcome to the Respo UI documentation. This documentation provides comprehensive information about the Respo UI library, a UI component library for the Respo framework.

## Table of Contents

- [Introduction](./introduction.md) - An overview of Respo UI and how to get started
- [Components](./components.md) - Detailed information about the available components
- [Styles](./styles.md) - Information about the available styles and CSS utilities
- [Examples](./examples.md) - Practical examples of how to use Respo UI
- [API Reference](./api-reference.md) - Comprehensive reference for the Respo UI API
- [Advanced Usage](./advanced-usage.md) - Advanced patterns and techniques for Respo UI

## Quick Start

To get started with Respo UI, add it as a dependency to your project:

```cirru
; In your deps.cirru file
{} (:package |your-app)
  :deps $ {}
    |respo/ui $ :version |0.6.3
```

Then import the components and styles you need:

```cirru
(ns your-app.core
  (:require [respo.core :refer [defcomp <> div]]
            [respo-ui.core :as ui]
            [respo-ui.comp :refer [comp-button comp-placeholder]]))

(defcomp comp-container [store]
  (div
    {:style ui/global}
    (comp-button
      {:text "Click me"
       :on-click (fn [e d!] (println "Button clicked"))})
    (comp-placeholder "This is a placeholder")))
```

## Resources

- [Respo UI Website](https://ui.respo-mvc.org/)
- [GitHub Repository](https://github.com/Respo/respo-ui)
- [Respo Framework](https://github.com/Respo/respo)

## License

Respo UI is licensed under the MIT License.