module Typeclassopedia where

import Data.Char

--instance Functor ((->) a) where
--  fmap f (a -> b) =  undefined
data Two a b = First a | Second b

instance Functor (Two a) where
  fmap f (First a) = First a
  fmap f (Second b) = Second (f b)

data Pair a = Pair a a

instance Functor Pair where
  fmap f (Pair a b) = Pair (f a) (f b)

differenceOfSquares :: Integer -> Integer
differenceOfSquares n = (^ 2) (sum [0 .. n]) - sum (fmap (^ 2) [0 .. n])

compare' :: Maybe String -> Maybe String -> Bool
compare' Nothing Nothing = True
compare' Nothing (Just s) = s == "" || not (checkAllLetter s)
compare' (Just s) Nothing = s == "" || not (checkAllLetter s)
compare' (Just x) (Just y) =
  if checkAllLetter x
    then
      ( if checkAllLetter y then (if sumString x == sumString y then True else False) else compare' (Just x) Nothing
      )
    else
      ( if checkAllLetter y then compare' Nothing (Just y) else True
      )

sumString :: String -> Int
sumString = sum . fmap ord . fmap toUpper

checkAllLetter :: String -> Bool
checkAllLetter = all isLetter
