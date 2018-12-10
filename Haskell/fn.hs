factorial :: Integer->Integer
factorial n = product [1..n]
addThree :: Int->Int->Int->Int
addThree x y z=x+y+z
circumference :: Float->Float
circumference r=2*pi*r
circumference' :: Double->Double
circumference' r=2*pi*r

lucky::(Integral a)=>a->String
lucky 7="LUCKY NUMBER SEVEN!"
lucky x="Sorry, you are out of luck, pal!"

factorial' ::(Integral a)=>a->a
factorial' 0=1
factorial' n=n*factorial'(n-1)