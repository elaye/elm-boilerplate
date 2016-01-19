module View where

import Html exposing (..)
import Html.Events exposing (..)
import Html.Attributes exposing (..)
import Signal exposing (..)
import Json.Decode as Json

import TransitStyle
import TransitRouter exposing (getTransition)

import Model exposing (..)
import Routes exposing (..)


view : Address Action -> Model -> Html
view _ model =
  div
    [ ]
    [ h1 [] [ text "Elm TransitRouter example" ]
    , div [ class "menu" ]
        [ a (clickTo <| Routes.encode Home) [ text "Home" ]
        , a (clickTo <| Routes.encode (Page 1)) [ text "Page 1" ]
        , a (clickTo <| Routes.encode (Page 2)) [ text "Page 2" ]
        ]
    , div
        [ class "content"
        , style (TransitStyle.fadeSlideLeft 100 (getTransition model))
        ]
        [ text <| case (TransitRouter.getRoute model) of
            Home ->
              "This is home"
            Page _ ->
              "This is page " ++ toString model.page
            EmptyRoute ->
              ""
        ]
    ]


-- inner click helper

clickTo : String -> List Attribute
clickTo path =
  [ href path
  , onWithOptions
      "click"
      { stopPropagation = True, preventDefault = True }
      Json.value
      (\_ -> message TransitRouter.pushPathAddress path)
  ]
