import           Control.Monad
import           Data.Char

main = forever $ do
    putStrLn "Give me some input"
    a <- getLine
    putStrLn $ map toUpper a
