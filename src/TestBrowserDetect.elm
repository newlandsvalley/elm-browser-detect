module TestBrowserDetect exposing (..)

{-
   Sample elm calling program
-}

import Html exposing (Html, div, text)
import String exposing (contains)


main =
    Html.programWithFlags
        { init = init, update = update, view = view, subscriptions = subscriptions }


type alias Flags =
    { browser : String }


type Browser
    = Opera
    | Chrome
    | Safari
    | Firefox
    | Msie
    | Trident
    | Unknown



-- MODEL


type alias Model =
    { browser : Browser
    }


{-| initialise the model
-}
init : Flags -> ( Model, Cmd Msg )
init flags =
    { browser = parseBrowser (flags.browser)
    }
        ! [ Cmd.none ]


parseBrowser : String -> Browser
parseBrowser s =
    if contains "Opera" s then
        Opera
    else if contains "Chrome" s then
        Chrome
    else if contains "Safari" s then
        Safari
    else if contains "Firefox" s then
        Firefox
    else if contains "Msie" s then
        Msie
    else if contains "Trident" s then
        Trident
    else
        Unknown



-- UPDATE


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ div [] [ text ("browser: " ++ toString model.browser) ]
        ]
