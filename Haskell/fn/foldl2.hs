module Main where

foldl2 :: (b -> a -> b) -> b -> [a] -> b
foldl2 _ acc [] = acc
foldl2 f acc (x:xs) =
  let acc' = f acc x
   in seq acc' (foldl2 f acc' xs)

x = foldl2 (+) 0 [1 .. 10000000] :: Int

main = print x

foo :: Int -> Int
foo = \n -> length [x | x <- [1..n], n `mod` x==0]

