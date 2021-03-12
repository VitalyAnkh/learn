factorial :: Integer -> Integer
factorial n = product [1 .. n]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you are out of luck, pal!"

factorial' :: (Integral a) => a -> a
factorial' 0 = 1
factorial' n = n * factorial' (n - 1)

head' :: [a] -> a
head' xs = case xs of
  [] -> error "Error: empty list!"
  x : _ -> x

describeList :: [a] -> String --这里[a]代表任意列表，这里的a是一个type variable
describeList xs = case xs of
  [] -> "Empty!"
  [x] -> "A singleton list." --这里[x]是一个单元素列表，这里x代表列表xs中的一个元素，如果匹配模式[x]则把这个元素绑定到x
  xs -> "A longer list."

tail' :: [a] -> a
tail' xs = case xs of
  [] -> error "Error: empty list!"
  [x] -> x
  x : ys -> tail' ys
