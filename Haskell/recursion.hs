import Data.List

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "maximun of empty list"
maximum' [x] = x
maximum' (x : xs)
  | x > maxTail = x
  | otherwise = maxTail
  where
    maxTail = maximum' xs

maximum_ :: (Ord a) => [a] -> a
maximum_ [] = error "maximun of empty list"
maximum_ [x] = x
maximum_ (x : xs) = max x (maximum_ xs)

-- replicate' ::(Num i, Ord a)=> i->a->[a]
-- replicate' i a
--    | i<=0=[]
--    | otherwise=a:replicate' (i-1) a

data RecordProduct a b = RecordProduct {pfirst :: a, psecond :: b} deriving (Eq, Show)

myRecord :: RecordProduct Integer Float
myRecord = RecordProduct 42 0.0001

data OperatingSystem = GnuPlusLinux | OpenBSD | Mac | Windows deriving (Eq, Show)

data ProLang = Haskell | Idris | Agda | PureScript deriving (Eq, Show)

data Programmer = Programmer {os :: OperatingSystem, lang :: ProLang} deriving (Eq, Show)

allOperatingSystems :: [OperatingSystem]
allOperatingSystems = [GnuPlusLinux, OpenBSD, Mac, Windows]

allLanguages :: [ProLang]
allLanguages = [Haskell, Idris, Agda, PureScript]

allProgrammers :: [Programmer]
allProgrammers = zipWith Programmer allOperatingSystems allLanguages

data ThereYet = There Float Int Bool deriving (Eq, Show)

notYet :: Int -> Bool -> ThereYet
notYet = There 25.5

notQuite :: Bool -> ThereYet
notQuite = notYet 10

yessss :: ThereYet
yessss = notQuite False

newtype Name = Name String deriving (Eq, Show)

newtype Acres = Acres Int deriving (Eq, Show)

data FarmerType = DairyFarmer | WheatFarmer | SoybeamFarmer deriving (Eq, Show)

data RecursiveFarmer = MakeRecursiveFarmer Name Acres RecursiveFarmer

data Farmer = Farmer Name Acres FarmerType

data Silly a b c d = MakeSilly a b c d deriving (Eq, Show)

data List a = Nil | Cons a (List a)

data BinaryTree a = Leaf | Node (BinaryTree a) a (BinaryTree a) deriving (Eq, Ord, Show)

insert' :: Ord a => a -> BinaryTree a -> BinaryTree a
insert' b Leaf = Node Leaf b Leaf
insert' b (Node left a right)
  | b == a = Node left a right
  | b < a = Node (insert' b left) a right
  | b > a = Node left a (insert' b right)

mapTree :: (a -> b) -> BinaryTree a -> BinaryTree b
mapTree _ Leaf = Leaf
mapTree f (Node left a right) = Node (mapTree f left) (f a) (mapTree f right)

-- let t1=Leaf;let t2=insert' 1 t1;let t3=insert' 3 t2;

testTree' :: BinaryTree Integer
testTree' = Node (Node Leaf 3 Leaf) 1 (Node Leaf 4 Leaf)

mapExpected :: BinaryTree Integer
mapExpected = Node (Node Leaf 4 Leaf) 2 (Node Leaf 5 Leaf)

mapOkay =
  if mapTree (+ 1) testTree' == mapExpected
    then print "yup okay!"
    else error "test failed!"

preorder :: BinaryTree a -> [a]
preorder Leaf = []
preorder (Node left x right) = [x] ++ preorder left ++ preorder right

inorder :: BinaryTree a -> [a]
inorder Leaf = []
inorder (Node left x right) = inorder left ++ [x] ++ inorder right

postorder :: BinaryTree a -> [a]
postorder Leaf = []
postorder (Node left x right) = postorder left ++ postorder right ++ [x]

testTree =
  Node
    (Node Leaf 1 Leaf)
    2
    (Node Leaf 3 Leaf)

testPreorder :: IO ()
testPreorder =
  if preorder testTree == [2, 1, 3]
    then putStrLn "Preorder fine!"
    else putStrLn "Bad news bears."

testInorder :: IO ()
testInorder =
  if inorder testTree == [1, 2, 3]
    then putStrLn "Inorder fine!"
    else putStrLn "Bad news bears."

foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree _ b Leaf = b
foldTree f acc tree = foldr f acc (preorder tree)

uniqueInOrder :: Eq a => [a] -> [a]
uniqueInOrder [] = []
uniqueInOrder xs =
  foldr
    (\x xs -> if x == (head xs) then xs else x : xs)
    ([last xs])
    xs

uniqueInOrder' :: Eq a => [a] -> [a]
uniqueInOrder' = map head . group
