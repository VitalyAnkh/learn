import           Data.Char
import           System.IO

main = do
  contents <- readFile "girlfriend.txt"
  writeFile "girlfriend.txt" (map toUpper contents)
