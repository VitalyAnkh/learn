import Data.Lfist
numUniques :: (Eq a)=>[a]-> Int
numUniques = length . nub