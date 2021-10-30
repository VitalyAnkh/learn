factorial :: Integer -> Integer
factorial n = product [1 .. n]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

circumference :: Float -> Float
circumference r = 2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

lucky :: (Integral a) => a -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you are out of luck, pal!"

factorial' :: (Integral a) => a -> a
factorial' 0 = 1
factorial' n = n * factorial' (n - 1)

head' :: [a] -> a
head' xs = case xs of
  [] -> error "Error: empty list!"
  x : _ -> x

roots :: (Double, Double, Double) -> (Double, Double)
roots (a, b, c)
  | d >= 0 = ((-b + sqrt (d)) / 2 * a, (-b - sqrt (d)) / 2 * a)
  | otherwise = error "roots don't exist"
  where
    d = b * b - 4 * a * c

describeList :: [a] -> String --这里[a]代表任意列表，这里的a是一个type variable
describeList xs = case xs of
  [] -> "Empty!"
  [x] -> "A singleton list." --这里[x]是一个单元素列表，这里x代表列表xs中的一个元素，如果匹配模式[x]则把这个元素绑定到x
  xs -> "A longer list."

tail' :: [a] -> a
tail' xs = case xs of
  [] -> error "Error: empty list!"
  [x] -> x
  x : ys -> tail' ys

-- data BinTree a = Empty | Node (BinTree a) a (BinTree a) deriving Show

-- listToTree :: [a] -> BinTree a
-- listToTree [] = Empty
-- listToTree [x] = Node Empty x Empty
-- listToTree (x1:x2:xs) = Node (Node Empty x1 Empty) x2 (listToTree xs)

data Tree a = Nil | Leaf a | Node (Tree a) (Tree a)
  deriving (Show)

{-+------------------+--
--+--Helper Funtion--+--
--+------------------+-}
toTree [] _ _ str
  | str == "" = Nil
  | otherwise = Node (Leaf str) Nil
toTree ('[' : xs) currentLevel treeLevel str
  | currentLevel == treeLevel = Node gs hs
  | otherwise = toTree xs currentLevel treeLevel str
  where
    gs = toTree xs (currentLevel + 1) (treeLevel + 1) str
    hs = toTree xs (currentLevel) (treeLevel + 1) str
toTree (',' : xs) currentLevel treeLevel str
  | currentLevel == treeLevel = if (str == "") then hs else (Node gs hs)
  | otherwise = toTree xs currentLevel treeLevel ""
  where
    gs = Leaf str
    hs = toTree xs currentLevel treeLevel ""
toTree (']' : xs) currentLevel treeLevel str
  | currentLevel == treeLevel = Node gs hs
  | otherwise = toTree xs (currentLevel) (treeLevel - 1) ""
  where
    gs = Leaf str
    hs = Nil
toTree (x : xs) currentLevel treeLevel str = toTree xs currentLevel treeLevel (str ++ [x])

{-+----------------------------------+--
--+-Check if two trees are identical-+--
--+----------------------------------+-}
areIdentical Nil Nil = True
areIdentical Nil _ = False
areIdentical _ Nil = False
areIdentical (Node xs ys) (Node xs' ys') = (areIdentical xs xs') && (areIdentical ys ys')
areIdentical (Node xs ys) _ = False
areIdentical _ (Node xs' ys') = False
areIdentical (Leaf a) (Leaf b)
  | a == b = True
  | otherwise = False

{-+------------------+--
--+-Get left subtree-+--
--+------------------+-}
left (Node t s) = t
left (Leaf a) = Nil
left Nil = Nil

{-+-------------------+--
--+-Get right subtree-+--
--+-------------------+-}
right (Node t s) = s
right (Leaf a) = Nil
right Nil = Nil

{-+------------------+--
--+-Check if subtree-+--
--+------------------+-}
isSubtree Nil Nil = True
isSubtree Nil _ = False
isSubtree t s = if gs then gs else ((isSubtree (left t) s) || (isSubtree (right t) s))
  where
    gs = areIdentical t s

{-+-----------------------------------------+--
--+-Check if subtree and retrieve functions-+--
--+-to obtain this subtree form main tree---+--
--+-----------------------------------------+-}
isSubtreeFn Nil Nil f = (True, f)
isSubtreeFn Nil _ _ = (False, ["id"])
isSubtreeFn t s f
  | gs == True = (gs, f)
  | ((fst as) == True && (fst bs) == True) = (True, (snd as) ++ (snd bs))
  | (fst as) == True = as
  | (fst bs) == True = bs
  | otherwise = (False, ["id"])
  where
    gs = areIdentical t s
    as = isSubtreeFn (left t) s (map ("head." ++) f)
    bs = isSubtreeFn (right t) s (map ("tail." ++) f)

{-+====================================================================================+--
--+----------------------------------List Functions------------------------------------+--
--+====================================================================================+-}

{-+------------------+--
--+-Any data to tree-+--
--+------------------+-}
elemToTree a = Leaf p
  where
    p = show a

{-+------------------+--
--+-Any list to tree-+--
--+------------------+-}
listToTree l = toTree (p (show l)) 0 0 ""
  where
    p = init . tail ----to remove first and last square braces

{-+------------------+--
--+-Check if subtree-+--
--+------------------+-}
isSublist xs ys = isSubtree (listToTree xs) (listToTree ys)

{-+----------------------+--
--+-Check if subtree and-+--
--+--Get function list---+--
--+----------------------+-}
isSublistFn xs ys = isSubtreeFn (listToTree xs) (listToTree ys) ["id"]
