module StringRepeat where
import Data.List
repeatStr :: Int -> String -> String
repeatStr n str = intercalate "" . zip $ map (replicate n) str