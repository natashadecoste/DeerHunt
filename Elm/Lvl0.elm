
module Hello exposing (..)

import Html exposing (text)
import Stdin

input = Stdin.text
splitted = String.split "\n" input


list = [ "1", "8", "42", "" ] 

isEven : Int -> Bool

isEven x = 
 if x % 2 == 0 then True
 else False

numOfEvens : List String -> Int

numOfEvens x = 
   case x of
        [] -> 0
        (x::xs) ->
           if xs == [] then 0
           else if (isEven (Result.withDefault 0 (String.toInt x))) then 1 + numOfEvens xs
           else 0 + numOfEvens xs

main =
  Html.text (numOfEvens splitted)