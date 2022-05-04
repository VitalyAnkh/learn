module Main where

main :: IO ()
main = putStrLn "Hello,GHC2021!"

isPrime :: Integral a => a -> Bool
isPrime n = not $ any ((0 ==) . (mod n)) [2 .. (truncate $ sqrt $ fromIntegral n)]

primes :: [Integer]
primes = filter isPrime [2 ..]
