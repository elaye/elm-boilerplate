module Views.Main where

import Html exposing (Html, div, main', text)
import Html.Attributes exposing (style)
import Signal exposing (Address)

import TransitStyle
import TransitRouter exposing (getTransition)

import Model exposing (Action, Model)
import Routes exposing (..)
import Util exposing (clickTo)

import Views.Header as Header
import Views.Footer as Footer

view : Address Action -> Model -> Html
view _ model = div []
  [ Header.view
  , contentView model
  , Footer.view
  ] 

contentView : Model -> Html
contentView model = main'
  [ style (TransitStyle.fadeSlideLeft 100 (getTransition model)) ]

  [ text <| case (TransitRouter.getRoute model) of
      Home -> "This is home"
      Page _ -> "This is page " ++ toString model.page
      EmptyRoute -> ""
  ]
    
