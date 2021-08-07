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
