module Main exposing (..)

import Browser
import Html exposing (Html, text, div, h1, img)
import Html.Attributes exposing (..)
import Html.Attributes exposing (src)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
   Html.div[class "mdl-layout mdl-js-layout mdl-layout--fixed-drawer mdl-layout--fixed-header"][
      Html.header [class "mdl-layout__header"][
         Html.div [class "mdl-layout__header-row"][
          Html.span [class "mdl-layout-title"][text "HTML5 Tutorial"]
          , Html.div [class "mdl-layout-spacer"][]
          , Html.nav [class "mdl-navigation"][
             Html.a [class "mdl-navigation__link", href ""] [
                text "Home"
             ]
             , Html.a [class "mdl-navigation__link", href ""] [
                text "About"
             ]
          ]
         ]
      ]
       , Html.div [class "mdl-layout__drawer"] [
             Html.span [class "mdl-layout-title"][text "HTML5 Tutorial"]
             , Html.nav [class "mdl-navigation"][
                Html.a [class "mdl-navigation__link", href ""] [
                     Html.span [class "mdl-list__item-primary-content"][
                        --Html.i [class "material-icons mdl-list__item-avatar"] [text "person"]
                        Html.span[class "mdl-list__item"][text "Bryan Cranston"]
                        , Html.span [class "mdl-list__item-sub-title"][text "62 Episodes"]
                     ]
                ]
                , Html.hr[][]
                 --, Html.span [class "mdl-list__item-secondary-content"][
                 --   Html.span [class "mdl-list__item-secondary-info"][
                 --      text "Actor"
                 --   ]
                 --   , Html.a [class "mdl-list__item-secondary-action", href "#"][
                 --      Html.i [class "material-icons"][text "star"]
                 --   ]
                 --
                 --]
             ]
             , Html.nav [class "mdl-navigation"][
                Html.a [class "mdl-navigation__link", href ""] [text "Home"]
              , Html.a [class "mdl-navigation__link", href ""] [text "About"]
             ]
       ]
       , Html.main_ [class "mdl-layout__content"] [
             Html.div [class "page-content", style "padding-left" "100px"][
                text "Hello World"
             ]
       ]
    ]



---- PROGRAM ----


main : Program () Model Msg
main =
    Browser.element
        { view = view
        , init = \_ -> init
        , update = update
        , subscriptions = always Sub.none
        }
