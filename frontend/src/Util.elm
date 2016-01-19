module Util where

import Html exposing (Attribute)
import Html.Events exposing (onWithOptions)
import Html.Attributes exposing (href)

import Signal exposing (message)

import TransitRouter
import Json.Decode as Json

clickTo : String -> List Attribute
clickTo path =
  [ href path
  , onWithOptions
      "click"
      { stopPropagation = True, preventDefault = True }
      Json.value
      (\_ -> message TransitRouter.pushPathAddress path)
  ]
