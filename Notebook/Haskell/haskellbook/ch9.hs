{-# LANGUAGE DeriveFunctor #-}
-- | 

module Ch9 where

import Control.Monad

data Day = Mon | Tue | Wed | Fri | Sat | Sun deriving (Eq, Ord)

newtype Identity   a= Identity {runIdentity :: a } deriving (Functor)

instance Applicative Identity where
  pure a = Identity a
  (<*>) (Identity f) (Identity a) = Identity (f a)

instance Monad Identity where
  (Identity a) >>= f = f a
  return = pure

choice :: (a -> [Bool]) -> [a] -> [[a]]
choice _ [] = [[]]
choice f (x:xs) = [if choose then x:ys else ys | choose <- f x , ys <- choice f xs]

powerSet = choice (\x -> [True, False])

safeDiv :: Double -> Double -> Maybe Double
safeDiv a 0 = Nothing
safeDiv a b = Just (a / b)

class Pointed f where
  point :: a -> f a

