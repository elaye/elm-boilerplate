module Views.Main where

import Html exposing (Html, div, main', text)
import Html.Attributes exposing (class, style)
import Signal exposing (Address)

import TransitStyle
import TransitRouter exposing (getTransition)

import Model exposing (Action, Model)
import Routes exposing (..)
import Util exposing (clickTo)

import Views.Header as Header
import Views.Footer as Footer
import Views.Home as Home
import Views.About as About

view : Address Action -> Model -> Html
view _ model = div [class "App"]
  [ Header.view
  , contentView model
  , Footer.view
  ] 

contentView : Model -> Html
contentView model = main'
  [ style (TransitStyle.fadeSlideLeft 100 (getTransition model)) ]

  [ case (TransitRouter.getRoute model) of
      Home -> Home.view
      Page _ -> text <| "Page " ++ toString model.page
      About -> About.view
      EmptyRoute -> Home.view
  ]
    
