{-# LANGUAGE ViewPatterns #-}

module Typeclassopedia where

--instance Functor ((->) a) where
--  fmap f (a -> b) =  undefined
data Two a b = First a | Second b
instance Functor (Two a) where
  fmap f (First a) =First a
  fmap f (Second b) = Second (f b)
data Pair a = Pair a a
instance Functor Pair where
  fmap f (Pair a b) = Pair (f a) (f b)

