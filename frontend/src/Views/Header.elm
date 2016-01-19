module Views.Header where

import Html exposing (Html, header, h1, text)

import Views.Navigation as Navigation

view : Html
view = header []
  [ h1 [] [text "Elm boilerplate"]
  , Navigation.view
  ]
