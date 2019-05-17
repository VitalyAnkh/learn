{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE GADTs                     #-}
{-# LANGUAGE RankNTypes                #-}
import           Data.Char
import           Data.List
import qualified Data.Map  as Map
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

--data Car = Car {company :: String, model :: String, year :: Int} deriving (Show)

data Expr a where
    ILit::Int->Expr Int
    BLit::Bool->Expr Bool
    Add::Expr Int->Expr Int ->Expr Int


primes = filterPrime [2..]
    where filterPrime (p:xs)=p:filterPrime [x|x<-xs,x`mod`p/=0]

data Position = Position{positionX::Double, positionY::Double} deriving (Show, Read)
p=Position 1 2
type Lens b a=forall f a b. Functor f=>(a->f a)->b->f b

--xLens:Functor f => (Double -> f Double)->Position->f Position
xLens f p=fmap setter $ f $ getter p
    where
    setter ::Double -> Position
    setter x'= p{positionX=x'}
    getter::Position->Double
    getter =positionX
--yLens:forall f. Functor f=>(Double->f Double)->Position->f Position
data Line=Line{lineStart::Position, lineEnd::Position} deriving Show

--let setPositionX x' p=p{positionX=x'}

--newtype Identity a=Identity {runIdentity::a}


--over ::  ((a->Identity a) ->b-> Identity b) ->(a-> a)->b->b
--over lens f x =runIdentity $ lens (Identity . f) x

--fun:: a->b->c
--f f x=

data Doggies a = Husky a | Mastiff a deriving (Eq, Show)

hyperSum = pure (\x y z->x+y+z) <*> (^2) <*> (^3) <*> (^4)
hyperSum2 =pure (\a b c d->a+b+c+d) <*> (^2) <*> (^3) <*> (^4) <*> (^5)

data Vehicle =Car Manufacturer Price | Plane Airline deriving (Eq, Show)
data Manufacturer=Mini|Mazda|Tata deriving (Eq,Show)
data Airline =PapuAir|CatapultsR'Us|Take deriving (Eq,Show)
data Price =Price Integer deriving (Eq,Show)
myCar =Car Mini (Price 14000)
urCar=Car Mazda (Price 20000)
clownCar =Car Tata (Price 7000)
doge=Plane PapuAir

isCar ::Vehicle->Bool
isCar (Car _ _) =True
isCar _         =False

isPlane ::Vehicle->Bool
isPlane (Plane _)=True
isPlane _=        False
areCars::[Vehicle]->[Bool]
areCars =map isCar

getManu::Vehicle->Manufacturer
getManu (Car m _) =m
getManu _         = undefined
