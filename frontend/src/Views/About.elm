module Views.About where

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

view : Html
view = div [class "About"] [text "This is a boilerplate for Elm using Webpack"]
