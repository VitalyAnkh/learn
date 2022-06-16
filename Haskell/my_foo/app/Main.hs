{-# LANGUAGE DataKinds #-}

module Main where

import Data.Char (intToDigit)
import Data.List
import Data.List.Extra

main :: IO ()
main = putStrLn "Hello,GHC2021!"

isPrime :: Integral a => a -> Bool
isPrime n = not $ any ((0 ==) . (mod n)) [2 .. (truncate $ sqrt $ fromIntegral n)]

primes :: [Integer]
primes = filter isPrime [2 ..]

number :: [(Int, Int)] -> Int
number = sum . map (uncurry (*))

xs :: [(Int, Int, Int)]
xs = [(x, y, z) | x <- [0 .. 8], y <- [x .. 8], z <- [y .. 8]]

chooseBestSum :: Int -> Int -> [Int] -> Maybe Int
chooseBestSum t k ls = undefined

digits :: Integer -> [Int]
digits = map (read . return) . show

toDigits :: Integer -> [Int]
toDigits n
  | n < 0 = []
  | otherwise = numToDigits ((fromInteger n) `mod` 10) ((fromInteger n) `div` 10) []
  where
    numToDigits a 0 ls = a : ls
    numToDigits a b ls = numToDigits (b `mod` 10) (b `div` 10) (a : ls)

descendingOrder :: Integer -> Integer
descendingOrder = read . reverse . sort . (map intToDigit) . toDigits

-- descendingOrder :: Integer -> Integer
-- descendingOrder = read . reverse . show

-- https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/haskell
-- equal sides of an array

count :: Int -> [Int] -> Int
count _ [] = 0
count n (x : xs) = if x == n then 1 + count n xs else count n xs

findOdd :: [Int] -> Int
findOdd xs = head $ filter (\x -> (count x xs) `mod` 2 /= 0) xs

tribonacci :: Num a => (a, a, a) -> Int -> [a]
tribonacci xs@(a, b, c) n = take n $ a : (b : (c : (reverse $ tribIter xs [] n)))

tribIter :: Num a => (a, a, a) -> [a] -> Int -> [a]
tribIter (a, b, c) xs n = case n of
  0 -> xs
  otherwise -> tribIter (b, c, d) (d : xs) (n - 1) where d = a + b + c

anagrams :: String -> [String] -> [String]
anagrams w ws = filter (\x -> y == sort w) ws where y = sort w

-- reverseEveryOther :: String -> String
-- reverseEveryOther = unwords . map (\x -> (x !! 0) :: ((reverse (x !! 1)) :: [])) . chunksOf 2 . words
data SuperA = A | B

data SuperB = SuperA | C

data BinaryTree a = Leaf | Node (BinaryTree a) a (BinaryTree a)

data MyList a = Nil | Cons a (MyList a)

mySum :: Num a => MyList a -> a
mySum Nil = 0
mySum (Cons x xs) = x + mySum xs

reduceMyList :: (a -> a -> a) -> a -> MyList a -> a
reduceMyList f x Nil = x
reduceMyList f x (Cons y ys) = reduceMyList f (f x y) ys

sumMyList :: Num a => MyList a -> a
sumMyList = reduceMyList (+) 0

mulMyList :: Num a => MyList a -> a
mulMyList = reduceMyList (*) 1

anyTrue :: MyList Bool -> Bool
anyTrue = reduceMyList (||) False

allTrue :: MyList Bool -> Bool
allTrue = reduceMyList (&&) True

myCons :: MyList a -> a -> MyList a
myCons Nil x = Cons x Nil
myCons (Cons y ys) x = Cons x (Cons y ys)

appendMyList :: MyList a -> MyList a -> MyList a
appendMyList xs ys = reduceMyList (myCons ys) xs
