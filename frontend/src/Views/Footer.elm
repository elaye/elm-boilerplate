module Views.Footer where

import Html exposing (Html, a, text, footer)
import Util exposing (clickTo)

import Routes exposing (..)

view : Html
view = footer [] 
  [ a (clickTo <| Routes.encode About) [ text "About" ]
  ]
