-- import           Data.Functor
import           Data.Monoid
import           Test.QuickCheck
class YesNo a where
    yesno :: a -> Bool

instance YesNo Int where
    yesno 0 = False
    yesno _ = True

instance YesNo [a] where
    yesno [] = False
    yesno _  = True
instance YesNo Bool where
    yesno = id

instance YesNo (Maybe a) where
    yesno (Just _) = True
    yesno Nothing  = False

yesnoIf :: (YesNo y) => y -> a -> a -> a
yesnoIf yesnoVal yesResult noResult =
    if yesno yesnoVal then yesResult else noResult

data MyList a=NewEmpty | Cons a (MyList a) deriving (Show,Read,Eq,Ord)

infixr 5 :-:
data List a =Empty | a :-: (List a) deriving (Show,Read,Eq,Ord)

infixr 5 .++
(.++) :: List a -> List a -> List a
Empty      .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

data Tree a=EmptyTree | Node a (Tree a) (Tree a) deriving (Show,Eq,Read)
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right) | x == a = Node x left right
                                 | x < a  = Node a (treeInsert x left) right
                                 | x > a  = Node a left (treeInsert x right)

treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem _ EmptyTree = False
treeElem x (Node a left right) | x == a = True
                               | x < a  = treeElem x left
                               | x > a  = treeElem x right

sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys

map' :: (a -> b) -> [a] -> [b]
map' f xs = foldr (\x acc -> f x : acc) [] xs

class Tofu t where
    tofu :: j a-> t a j

data Frank a b=Frank { frankField:: b a}deriving (Show)

-- type Lens b a=(Functor f) =>(a -> f a)-> b -> f b

--data Position=Position {positionX :: Double, positionY ::Double}

-- xLens :: Functor f => (Double -> f Double)->Position -> f Position
-- p=Position 1 2
--p2=p {positionY=3}

--p3=Position{positionX = positionX p,
 --           positionY=3
  --         }

--myLast ::a=>[a]->a
--myLast []=error "No end for empty lists!"
--myLast [x]=x
--myLast (_:xs)=myLast xs


functorIdentity::(Functor f,Eq (f a))=> f a->Bool
functorIdentity f=fmap id f == f

functorCompose ::(Eq (f c),Functor f)=>(a->b)->(b->c)->f a->Bool
functorCompose f g x=(fmap g (fmap f x))==(fmap (g . f) x)

f::[Int]->Bool
f x=functorIdentity x

-- c=functorCompose (+1) (*2)
