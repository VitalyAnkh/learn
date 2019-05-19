import           Data.List
main :: IO ()
main = print "Hello, world!"
data PugType=PugData
tooManyGoats ::Goats->Bool
tooManyGoats (Goats n) = n>42
newtype Goats=Goats Int deriving (Eq,Show)
newtype Cows=Cows Int deriving (Eq,Show)
fakeBin :: String -> String
fakeBin ""=""
fakeBin xs@(x:ys)
    |x>='0'&&x<'5'='0':fakeBin ys
    |otherwise ='1':fakeBin ys

gimme :: Ord a => (a, a, a) -> Int
gimme (a, b, c)
  | (a>=b && a<=c)||(a<=b&&a>=c) =0
  | (b>=a && b<=c)||(b<=a&&b>=c)=1
  | (c>=a && c<=b)||(c<=a&&c>=b)=2
  | otherwise=error "error!"

gimme' ::Ord a=>(a,a,a)->Int
gimme' (a,b,c)= snd .(!! 1). sort $ zip  [a,b,c] [1..]

grow :: [Int] -> Int
grow =foldl (*) 1

toUpper' ::Char->Char
toUpper' =toEnum . (\x -> if x>=97&&x<=122 then x-32 else x)  . fromEnum

century ::Int->Int
century year= ceiling (fromIntegral(year)/100)

solution ::Integer->Integer
solution number = foldl ((+) . (\x -> if (x `mod` 3==0 || x `mod` 5 ==0) then x else 0)) 0 [0..number]

f=(\x -> if (x`mod`3==0 ||x`mod`5==0) then x else 0)
addMul = ((+) . f)

solution' ::Integer->Integer
solution' number =foldl addMul 0 [0..number]
