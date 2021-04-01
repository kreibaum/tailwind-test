module Top exposing (..)

import Css.Global
import Html as HtmlOld
import Html.Styled as Html exposing (..)
import Html.Styled.Attributes exposing (css)
import Tailwind.Breakpoints exposing (..)
import Tailwind.Utilities exposing (..)


main : HtmlOld.Html a
main =
    div
        []
        [ Css.Global.global globalStyles
        , div [ css [] ]
            [ figure
                [ css
                    [ bg_gray_100
                    , max_w_4xl
                    , mx_auto
                    , xl [ rounded, p_8 ]
                    , sm [ flex, p_0 ]
                    ]
                ]
                [ img [] []
                , div
                    [ css
                        [ md [ p_8, text_left ]
                        , sm [ pt_6, text_center, space_y_4 ]
                        ]
                    ]
                    [ blockquote []
                        [ p [ css [ text_lg, font_semibold ] ] [ text """
                        “Tailwind CSS is the only framework that I've seen scale
                        on large teams. It’s easy to customize, adapts to any design,
                        and the build size is tiny.”""" ]
                        ]
                    , figcaption [ css [ font_medium ] ]
                        [ div [ css [ text_green_600 ] ]
                            [ text "Sarah Dayan"
                            ]
                        , div [ css [ text_gray_500 ] ]
                            [ text "Staff Engineer, Algolia" ]
                        ]
                    ]
                ]
            ]
        ]
        |> toUnstyled
