# Respo UI Introduction

Respo UI is a UI component library for the Respo framework, a virtual DOM library for ClojureScript. This library provides a set of reusable UI components and styles to help you build web applications with Respo.

## Overview

Respo UI is designed to be simple, flexible, and easy to use. It provides a set of components that can be used to build user interfaces for web applications. The library is built with the Calcit-js compiler, which compiles ClojureScript code to JavaScript.

## Installation

To use Respo UI in your project, you need to add it as a dependency in your project configuration.

```cirru
; In your deps.cirru file
{} (:package |your-app)
  :deps $ {}
    |respo/ui $ :version |0.6.3
```

Or if you're using npm:

```bash
npm install respo-ui --save
```

## Basic Usage

Here's a simple example of how to use Respo UI components in your application:

```cirru
ns your-app.core
  :require
    respo.core :refer $ defcomp <> div button
    respo-ui.core :as ui
    respo-ui.comp :refer $ comp-button comp-placeholder

defcomp comp-container (store)
  div
    {} (:style ui/global)
    comp-button
      {} (:text "Click me")
        :on-click $ fn (e d!)
          println "Button clicked"
    comp-placeholder "This is a placeholder"
```

## Project Structure

The Respo UI library is organized into several namespaces:

- `respo-ui.core`: Contains core styles and utilities
- `respo-ui.comp`: Contains reusable components
- `respo-ui.css`: Contains CSS utilities and helpers

Each namespace provides different functionality that you can use in your application.

## Next Steps

Explore the documentation to learn more about the available components and styles:

- [Components](./components.md): Learn about the available UI components
- [Styles](./styles.md): Learn about the available styles and CSS utilities
- [Examples](./examples.md): See examples of how to use Respo UI in your application