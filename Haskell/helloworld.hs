import           Data.Char
import           Data.List
import qualified Data.Vector

main :: IO ()
main = print "Hello, world!"
data PugType=PugData
tooManyGoats :: Goats -> Bool
tooManyGoats (Goats n) = n > 42
newtype Goats=Goats Int deriving (Eq,Show)
newtype Cows=Cows Int deriving (Eq,Show)
fakeBin :: String -> String
fakeBin "" = ""
fakeBin xs@(x : ys) | x >= '0' && x < '5' = '0' : fakeBin ys
                    | otherwise           = '1' : fakeBin ys

gimme :: Ord a => (a, a, a) -> Int
gimme (a, b, c) | (a >= b && a <= c) || (a <= b && a >= c) = 0
                | (b >= a && b <= c) || (b <= a && b >= c) = 1
                | (c >= a && c <= b) || (c <= a && c >= b) = 2
                | otherwise = error "error!"

gimme' :: Ord a => (a, a, a) -> Int
gimme' (a, b, c) = snd . (!! 1) . sort $ zip [a, b, c] [1 ..]

grow :: [Int] -> Int
grow = foldl (*) 1

toUpper' :: Char -> Char
toUpper' =
  toEnum . (\x -> if x >= 97 && x <= 122 then x - 32 else x) . fromEnum

century :: Int -> Int
century year = ceiling (fromIntegral (year) / 100)

solution :: Integer -> Integer
solution number = foldl
  ((+) . (\x -> if (x `mod` 3 == 0 || x `mod` 5 == 0) then x else 0))
  0
  [0 .. number]

f = \x -> if (x `mod` 3 == 0 || x `mod` 5 == 0) then x else 0
addMul = (+) . f

solution' :: Integer -> Integer
solution' number = foldl addMul 0 [0 .. number]

highAndLow :: String -> String
highAndLow input = (show . maximum $ xs) ++ " " ++ (show . minimum $ xs) where
  ys = '[' : map (\x -> if x == ' ' then ',' else x) input ++ "]"
  xs = read ys :: [Int]

repeatStr :: Int -> String -> String
repeatStr n str = (foldl (++) "") $ replicate n str

longestPalindrome :: Eq a => [a] -> Int
longestPalindrome [] = 0
longestPalindrome xs =
  maximum
    $ map length
    $ filter (\x -> reverse x == x)
    $ concatMap (tail . inits)
    $ tails xs

isAnagramOf :: String -> String -> Bool
isAnagramOf test original = original `elem` (permutations test)

rowSumOddNumbers :: Integer -> Integer
rowSumOddNumbers n =
  Data.Vector.sum
    $ Data.Vector.slice (m * (m + 1) `div` 2) m
    $ Data.Vector.fromList [ 2 * x - 1 | x <- [1 ..] ]
  where m = fromIntegral n

getCount :: String -> Int
getCount = length . filter (`elem` "aeiou")

abbreviate :: String -> String
abbreviate xs =
  removeBlanks
    $ map (\x -> if x >= 'A' && x <= 'Z' then x else ' ')
    $ map head
    $ words xs
  where removeBlanks str = [ c | c <- str, c /= ' ' ]

upperFirstLetter :: String -> String
upperFirstLetter = unwords . map (\ys -> (toUpper $ head ys) : tail ys) . words

data AuthorName = AuthorName String String

data Book = Book{
  author :: AuthorName
  , isbn :: String
  , title :: String
  , year :: Int
  , price :: Double
                }
