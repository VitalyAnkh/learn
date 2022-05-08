module Main where

import Data.Char (intToDigit)
import Data.List

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
