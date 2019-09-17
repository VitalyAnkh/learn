module Apl1 where
import Control.Applicative
import Data.Semigroup
import Data.Monoid
import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes
added::Maybe Integer
added = (+3)<$> (lookup 3 $ zip [1,2,3] [4,5,6])

y :: Maybe Integer
y = lookup 3 $ zip [1,2,3] [4,5,6]

z :: Maybe Integer
z = lookup 2 $ zip [1,2,3] [4,5,6]

-- instance Semigroup a => Semigroup (ZipList a) where

-- instance (Semigroup a, Monoid a) => Monoid (ZipList a) where
--  mempty = ZipList []
--  mappend = liftA2 mappend
instance Eq a => EqProp (ZipList a) where
  (=-=) = eq

data List a = Nil | Cons a (List a) deriving (Eq, Show)

instance Functor List where
  fmap f Nil = Nil
  fmap f (Cons a xs) = Cons (f a) (fmap f xs)
instance Applicative List where
  pure a = Cons a Nil
  Nil <*> _ = Nil
  _ <*> Nil = Nil
  (Cons f fs) <*> (Cons x xs) = Cons (f x) ((fmap f xs) `append` (fs <*> xs))

append :: List a -> List a -> List a
append Nil ys = ys
append (Cons x xs ) ys = Cons x $ xs `append` ys

fold :: (a->b->b)->b->List a->b
fold _ b Nil = b
fold f b (Cons h t) = f h (fold f b t)

concat' :: List (List a) -> List a
concat' = fold append Nil

flatMap :: (a -> List b)->List a->List b
flatMap f as =concat' $ fmap f as
