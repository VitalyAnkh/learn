import Data.List
import Data.Char
numUniques :: (Eq a)=>[a]-> Int
numUniques = length . nub

search ::(Eq a)=>[a]->[a]-> Bool
search needle haystack =
    let nlen = length needle
    in foldl (\acc x->
        if take nlen x == needle then True else acc) False (tails haystack)

encode :: Int->String->String
encode shift str=
    let ords = map ord str
        shifted=map (+shift) ords
    in map chr shifted

decode ::Int->String->String
decode shift str = encode (negate shift) str