module Minimax where

import Data.List
import Data.Tree

-- annotate something with an evaluation estimate
data Eval a = Eval !Int a deriving (Show)

instance Eq (Eval a) where
  (Eval x _) == (Eval y _) = x == y

instance Ord (Eval a) where
  compare (Eval x _) (Eval y _) = compare x y

instance (Show a) => Num (Eval a) where
  fromInteger n = Eval (fromIntegral n) undefined
  (+) = undefined
  (-) = undefined
  (*) = undefined
  abs = undefined
  signum = undefined
  negate (Eval x a) = Eval (-x) a

toEval :: (Integral a, Show b) => a -> Eval b
toEval = fromIntegral

fromEval :: Eval a -> a
fromEval (Eval _ x) = x

-- naive minimax algorithm
-- nodes are decorated with the static evaluation scores
minimax :: (Num a, Ord a) => Tree a -> a
minimax (Node n []) = n
minimax (Node n ts) = -minimum (map minimax ts)

-- minimax with alpha-beta prunning
minimax_ab :: (Num a, Ord a) => a -> a -> Tree a -> a
minimax_ab a b (Node x []) = a `max` x `min` b
minimax_ab a b (Node x ts) = cmx a ts
  where
    cmx a [] = a
    cmx a (t : ts)
      | a' >= b = a'
      | otherwise = cmx a' ts
      where
        a' = -(minimax_ab (-b) (-a) t)

-- heuristic to order subtrees with highest values first
highfirst, lowfirst :: (Ord a) => Tree a -> Tree a
highfirst (Node x ts) = Node x (sortBy cmp (map lowfirst ts))
  where
    cmp (Node x _) (Node y _) = compare y x
lowfirst (Node x ts) = Node x (sortBy cmp (map highfirst ts))
  where
    cmp (Node x _) (Node y _) = compare x y

-- some auxiliary rose tree functions
-- prune  to a fixed depth
prunedepth :: Int -> Tree a -> Tree a
prunedepth n (Node x ts)
  | n > 0 = Node x (map (prunedepth (n - 1)) ts)
  | otherwise = Node x []

-- prune to a fixed breadth
prunebreadth :: Int -> Tree a -> Tree a
prunebreadth n (Node x ts) = Node x (map (prunebreadth n) $ take n ts)
