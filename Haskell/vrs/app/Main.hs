module Main where

import           System.Environment

main :: IO ()
main = do
  args1 <- getArgs
  args2 <- getArgs
  -- putStrLn <$> args1
  -- putStrLn <$> args2
  name <- getLine
  putStrLn $ "Hello, " ++ name
  putStrLn ("Hello, " ++ (show $ ((read $ args1 !! 0) + (read $ args2 !! 1))))
-- head $ filter (any . ((\x y->y `div`x==0) <$> [1..20]) [1..]
