module Practise.SquareDigit where

import Data.Char
import Data.List

squareDigit :: Int -> Int
squareDigit n  = read . fmap (^ 2::Int) . fmap read . words . intersperse ' ' .  show $ n
