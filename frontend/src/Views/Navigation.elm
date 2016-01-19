module Views.Navigation where

import Html exposing (Html, text, a, nav)
import Html.Attributes exposing (class)
import Signal exposing (Address)
  
import TransitStyle
import TransitRouter exposing (getTransition)

import Model exposing (..)
import Routes exposing (..)
import Util exposing (clickTo)

view : Html
view = nav []
        [ a (clickTo <| Routes.encode Home) [ text "Home" ]
        , a (clickTo <| Routes.encode (Page 1)) [ text "Page 1" ]
        , a (clickTo <| Routes.encode (Page 2)) [ text "Page 2" ]
        ]
