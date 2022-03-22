aList = ["cat", "dog", "mouse"]

convert :: Read a => String -> [a]
convert = map read . words

main = do
  line <- getLine
  let [n] = convert line :: [Integer] in print (f n)

primes = filterPrime [2 ..]
  where
    filterPrime (p : xs) =
      p : filterPrime [x | x <- xs, x `mod` p /= 0]

-- foo :: Int -> Int
-- foo =\n -> length [x | x<-[1..n], n `mod` x==0]
