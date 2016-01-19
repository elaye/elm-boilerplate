module Views.Home where

import Html exposing (Html, div, text)
import Html.Attributes exposing (class)

view : Html
view = div [class "Home"] [text "This is a home"]
