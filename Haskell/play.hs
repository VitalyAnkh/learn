import Text.Regex.Applicative

re1 = many $ foldr1 (<|>) $ map sym ['a' .. 'z']
