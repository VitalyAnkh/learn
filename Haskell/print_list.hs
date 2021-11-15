module Main where

import Data.List

main :: IO ()
main = print (nub [1, 2, 3, 2, 3])

data BinTree a = Empty | Node (BinTree a) a (BinTree a) deriving (Show)

leftTree :: BinTree a -> BinTree a
leftTree Empty = Empty
leftTree (Node xs a ys) = xs

rightTree :: BinTree a -> BinTree a
rightTree Empty = Empty
rightTree (Node xs a ys) = ys

middleNode :: BinTree a -> a
middleNode Empty = error "error!"
middleNode (Node xs a ys) = a

listToTree :: [a] -> BinTree a
listToTree [] = Empty
listToTree [x] = Node Empty x Empty
listToTree (x1 : xs) = Node (Node Empty x1 (rightTree (listToTree (init xs)))) (middleNode (listToTree (init xs))) (Node (rightTree (listToTree (init xs))) (last xs) Empty)

length' :: [a] -> Int
length' [] = 0
length' (x : xs) = 1 + length xs

mySum :: [Int] -> Int
mySum = sum

-- n must >= 0
duplicate :: Int -> a -> [a]
duplicate n x
  | n == 0 = []
  | n > 0 = x : duplicate (n - 1) x
  | n < 0 = error "n must be not negtive!"

-- type Tin = [Recipe]

-- data Spec = And Spec Spec | Or Spec Spec | Not Spec | HasCup Int Ingredient deriving (Show, Eq)

sum' :: (Num a) => [a] -> a
sum' = foldl (+) 0

cross :: Int -> [Bool] -> [Bool]
cross n xs = [if (index + 1) `mod` n == 0 then not (xs !! index) else xs !! index | index <- [0, 1 ..]]

sieveFrom :: Int -> [Bool] -> [Bool]
sieveFrom n xs = sieveFrom (n + 1) (cross n xs)

sequenceFrom :: Int -> [Bool] -> [Int]
sequenceFrom n xs = [i | i <- [n ..], xs !! (i - n)]

sieve :: [Bool]
sieve = sieveFrom 2 (repeat True)

primes :: [Int]
primes = sequenceFrom 2 sieve
