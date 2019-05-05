module Main where

import           Lib

main :: IO ()
main = do
  l<-fmap length getLine
  print l


