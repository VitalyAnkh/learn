module Main where
import           Data.List

main :: IO ()
main = print (nub [1, 2, 3, 2, 3])

