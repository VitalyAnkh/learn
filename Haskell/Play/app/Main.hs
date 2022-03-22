module Main where

import Text.Regex.Applicative

main :: IO ()
main = putStrLn "Hello, Haskell!"

re1 = many $ foldr1 (<|>) $ map sym ['a' .. 'z']

re2 = many $ foldr1 (<|>) $ map sym ['1' .. '9']

combo = re1 <|> re2

aList = ["cat", "dog", "mouse"]

data Protocol = HTTP | FTP deriving (Show)

protocol :: RE Char Protocol
protocol = HTTP <$ string "http" <|> FTP <$ string "ftp"

combo1 = re1 <|> re2 <|> re1

y = 1

data Tree a = Nil | Branch (Tree a) (Tree a) deriving (Show)

my_nil = Nil

my_tree = Branch (Branch (Branch Nil Nil) Nil) Nil

-- data Recipe = Recipe {
--   food String,
--   price Int
--                      }

data Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving (Show, Read)
