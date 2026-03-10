# Respo UI Examples

This document provides practical examples of how to use Respo UI components and styles in your applications. These examples demonstrate common UI patterns and best practices.

## Basic Layout Example

Here's an example of a basic layout using Respo UI styles:

```clojure
ns your-app.core
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui
    respo-ui.css :as css

defcomp comp-container (store)
  div
    {} $ :style $ merge ui/global ui/column
    div
      {} $ :style $ merge ui/row-parted $ {} (:padding 16)
      <> "Header"
      div
        {} $ :style ui/row-middle
        <> "Menu Item 1"
        <> "Menu Item 2"
        <> "Menu Item 3"
    div
      {} $ :style $ merge ui/expand $ {} (:padding 16)
      <> "Main Content"
    div
      {} $ :style $ merge ui/row-center $ {} (:padding 16)
      <> "Footer"
```

## Form Example

Here's an example of a form using Respo UI components and styles:

```clojure
ns your-app.core
  :require
    respo.core :refer $ defcomp <> div input textarea button
    respo-ui.core :as ui
    respo-ui.comp :refer $ comp-placeholder

defcomp comp-form (form)
  div
    {} $ :style $ merge ui/column $ {} (:width 400) (:gap 16)
    div
      {} $ :style ui/column-parted
      <> "Name"
      input
        {} $ :style ui/input
          :value $ :name form
          :placeholder "Enter your name"
          :on-input $ fn (e d!)
            d! :form/update $ {} (:name $ :value e)
    div
      {} $ :style ui/column-parted
      <> "Email"
      input
        {} $ :style ui/input
          :value $ :email form
          :placeholder "Enter your email"
          :on-input $ fn (e d!)
            d! :form/update $ {} (:email $ :value e)
    div
      {} $ :style ui/column-parted
      <> "Message"
      textarea
        {} $ :style ui/textarea
          :value $ :message form
          :placeholder "Enter your message"
          :on-input $ fn (e d!)
            d! :form/update $ {} (:message $ :value e)
    div
      {} $ :style $ merge ui/row-parted $ {} (:padding-top 16)
      button
        {} $ :style $ merge ui/button
          :on-click $ fn (e d!) (d! :form/reset nil)
        <> "Reset"
      button
        {} $ :style $ merge ui/button ui/button-primary
          :on-click $ fn (e d!) (d! :form/submit nil)
        <> "Submit"
```

## Card Component Example

Here's an example of a reusable card component using Respo UI styles:

```clojure
ns your-app.comp.card
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui

defcomp comp-card (options)
  let
      title $ :title options
      content $ :content options
      footer $ :footer options
    div
      {} $ :style $ merge ui/column
        {} $ :background-color :white
          :border-radius "4px"
          :box-shadow "0 2px 4px rgba(0,0,0,0.1)"
          :overflow :hidden
      when (some? title)
        div
          {} $ :style $ merge ui/row-middle
            {} $ :padding "12px 16px"
              :border-bottom "1px solid #eee"
              :font-weight :bold
          <> title
      div
        {} $ :style $ {} (:padding 16)
        if (string? content)
          <> content
          content
      when (some? footer)
        div
          {} $ :style $ merge ui/row-parted
            {} $ :padding "12px 16px"
              :border-top "1px solid #eee"
              :background-color "#f9f9f9"
          footer
```

Usage of the card component:

```clojure
comp-card
  {} $ :title "Card Title"
    :content "This is the content of the card."
    :footer $ div
      {} $ :style ui/row-middle
      button
        {} $ :style ui/button
          :on-click $ fn (e d!) (println "Button clicked")
        <> "Action"
```

## Data Table Example

Here's an example of a data table using Respo UI styles:

```clojure
ns your-app.comp.table
  :require
    respo.core :refer $ defcomp <> div list->
    respo-ui.core :as ui

defcomp comp-table (data)
  div
    {} $ :style $ merge ui/column $ {} (:width "100%")
    div
      {} $ :style $ merge ui/row
        {} $ :border-bottom "1px solid #eee"
          :font-weight :bold
          :padding "8px 0"
      div
        {} $ :style $ {} (:width 100)
        <> "ID"
      div
        {} $ :style $ {} (:flex 1)
        <> "Name"
      div
        {} $ :style $ {} (:width 200)
        <> "Email"
      div
        {} $ :style $ {} (:width 100)
        <> "Actions"
    list->
      {}
      ->> data
        map-indexed
          fn (idx item)
            [] (:id item)
              div
                {} $ :style $ merge ui/row
                  {} $ :padding "8px 0"
                    :border-bottom $ if (= idx (dec (count data)))
                      "none"
                      "1px solid #eee"
                div
                  {} $ :style $ {} (:width 100)
                  <> $ :id item
                div
                  {} $ :style $ {} (:flex 1)
                  <> $ :name item
                div
                  {} $ :style $ {} (:width 200)
                  <> $ :email item
                div
                  {} $ :style $ {} (:width 100)
                  div
                    {} $ :style $ merge ui/link
                      {} $ :cursor :pointer
                      :on-click $ fn (e d!)
                        d! :item/edit $ :id item
                    <> "Edit")))
```

Usage of the table component:

```clojure
comp-table
  [] $ {} (:id 1) (:name "John Doe") (:email "john@example.com")
    {} (:id 2) (:name "Jane Smith") (:email "jane@example.com")
    {} (:id 3) (:name "Bob Johnson") (:email "bob@example.com")
```

## Modal Dialog Example

Here's an example of a modal dialog using Respo UI styles:

```clojure
ns your-app.comp.modal
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui
    respo-ui.comp :refer $ comp-close

defcomp comp-modal (options)
  let
      show? $ :show? options
      title $ :title options
      content $ :content options
      on-close $ :on-close options
    if show?
      div
        {} $ :style $ merge ui/fullscreen ui/center
          {} $ :background-color "rgba(0,0,0,0.4)"
            :z-index 100
        div
          {} $ :style $ merge ui/column
            {} $ :background-color :white
              :min-width 320
              :max-width "80%"
              :max-height "80%"
              :border-radius "4px"
              :box-shadow "0 4px 16px rgba(0,0,0,0.2)"
              :overflow :hidden
          div
            {} $ :style $ merge ui/row-parted
              {} $ :padding "12px 16px"
                :border-bottom "1px solid #eee"
            <> title
            comp-close
              {} $ :on-click on-close
          div
            {} $ :style $ merge
              {} $ :padding 16
                :overflow :auto
            if (string? content)
              <> content
              content
      div {}
```

Usage of the modal component:

```clojure
comp-modal
  {} $ :show? true
    :title "Confirmation"
    :content "Are you sure you want to delete this item?"
    :on-close $ fn (e d!) (d! :modal/close nil)
```

## Responsive Layout Example

Here's an example of a responsive layout using Respo UI styles:

```clojure
ns your-app.comp.responsive
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui

defcomp comp-responsive (width)
  let
      mobile? $ < width 600
    div
      {} $ :style $ merge ui/column
      div
        {} $ :style $ merge (if mobile? ui/column ui/row)
          {} $ :padding 16
        div
          {} $ :style $ merge
            {} $ :padding 8
            if mobile?
              {}
              {} $ :width "30%"
          <> "Sidebar content"
        div
          {} $ :style $ merge
            {} $ :padding 8
            if mobile?
              {}
              {} $ :width "70%"
          <> "Main content"
      div
        {} $ :style $ merge ui/row-center $ {} (:padding 16)
        <> $ str "Current width: " width "px"
```

## Advanced Component Example with Attributes

Here's an example of using the `comp-attributes` component for displaying structured data:

```clojure
ns your-app.comp.user-profile
  :require
    respo.core :refer $ defcomp <> div
    respo-ui.core :as ui
    respo-ui.comp :refer $ comp-attributes

defcomp comp-user-profile (user)
  div
    {} $ :style $ merge ui/column $ {} (:padding 16)
    div
      {} $ :style $ merge ui/row-middle $ {} (:margin-bottom 16)
      div
        {} $ :style $ {} (:width 64)
          (:height 64)
          (:border-radius "50%")
          (:background-color "#eee")
          (:margin-right 16)
        <> $ -> (:name user) (first) (str)
      div
        {} $ :style ui/column
        div
          {}
          <> $ :name user
        div
          {} $ :style $ {} (:color "#999")
          <> $ :role user
    comp-attributes
      {} $ :title "User Information"
        :items $ [] (:: :attr "ID" $ :id user)
          :: :attr "Name" $ :name user
          :: :attr "Email" $ :email user
          :: :attr "Role" $ :role user
          :: :attr-span "Bio" (:bio user) 2
        :item-width 180
```

Usage of the user profile component:

```clojure
comp-user-profile
  {} $ :id "user-123"
    :name "John Doe"
    :email "john@example.com"
    :role "Administrator"
    :bio "John is an experienced administrator with over 5 years of experience in system management."
```

## Best Practices

- Use the provided components and styles consistently throughout your application
- Create reusable components for common UI patterns
- Use responsive design techniques to adapt to different screen sizes
- Organize your code into logical namespaces
- Use the `merge` function to combine styles
- Follow the Respo component model for creating new components
