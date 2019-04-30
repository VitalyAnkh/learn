import Data.List
import Data.Char
import qualified Data.Map as Map
numUniques :: (Eq a)=>[a]-> Int
numUniques = length . nub

search ::(Eq a)=>[a]->[a]-> Bool
search needle haystack =
    let nlen=length needle
    in foldl (\acc x->
        if take nlen x == needle then True else acc) False (tails haystack)

encode :: Int->String->String
encode shift str=
    let ords = map ord str
        shifted=map (+shift) ords
    in map chr shifted

decode ::Int->String->String
decode shift str = encode (negate shift) str

findKey :: (Eq k)=>k->[(k,v)]->v
findKey key xs=snd . head . filter (\(k,v)->k==key) $ xs

findKey' ::(Eq k)=>k->[(k,v)]->Maybe v
findKey' key []=Nothing
findKey' key ((k,v):xs)=if key==k
    then Just v
    else findKey' key xs

yetFindKey ::(Eq k)=>k->[(k,v)]->Maybe v
yetFindKey key = foldr (\(k,v) acc->if key==k then Just v else acc) Nothing 


-- let phoneBook =[("betty","555-2938"),("bonnie","452-2928"),("patsy","493-2928")  ,("lucille","205-2928")  ,("wendy","939-8282") ,("penny","853-2492")];  
fromList' ::(Ord k)=> [(k,v)]->Map.Map k v
fromList' = foldr (\(k,v) acc -> Map.insert k v acc) Map.empty

data Car = Car {company :: String, model :: String, year :: Int} deriving (Show)

data Expr a where
    ILit::Int->Expr Int
    BLit::Bool->Expr Bool
    Add::Expr Int->Expr Int ->Expr Int