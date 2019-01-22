import qualified Data.Map as Map
data Vector  a = V3d a a a deriving (Show)

vplus :: (Num t)=>Vector t->Vector t->Vector t
(V3d i j k) `vplus` (V3d l m n)=V3d (i+l) (j+m) (k+n)

scalarMult :: (Num t)=>Vector t->Vector t->t
(V3d i j k)  `scalarMult` (V3d l m n)=i*l+j*m+k*n
 
vectMult ::(Num t)=>Vector t->t->Vector t
(V3d i j k) `vectMult` m=V3d (i*m) (j*m) (k*m)


data Person = Person {firstName::String,lastName::String,age::Int} deriving (Show,Eq,Read)

mikeD=Person{firstName="Michael",lastName="Diamond",age=43};

adRock = Person { firstName = "Adam", lastName= "Horovitz" ,age= 41 };
mca=Person{firstName="Adam",lastName="Yauch",age=44};

beastBoys=[mca,adRock,mikeD];

data Day=Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday deriving (Eq,Ord,Show,Read,Enum,Bounded)
phoneBook =[("betty","555-2938"),("bonnie","452-2928"),("patsy","493-2928")  ,("lucille","205-2928")  ,("wendy","939-8282") ,("penny","853-2492")];


type PhoneNumber=String
type Name=String
type PhoneBook = [(Name,PhoneNumber)]
inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name pnumber pbook = (name,pnumber) `elem` pbook

type AssocList k v=[(k,v)]

type IntMap v=Map.Map Int v


isSquare :: Integral n => n -> Bool
isSquare n = not . null . filter (\i->i*i==n) $ [1..n]
-- isSquare n = let k= if odd n then (n+1)/2 else n/2 in (not . null . filter (\i->i*i==n) $ [1..k])

highAndLow :: String -> String
highAndLow input = let xs=read input:: [Int] in (show . maximum $ xs) ++ " " ++ (show . minimum $ xs)

data LockerState = Taken | Free deriving (Show,Eq) 
type Code = String
type LockerMap = Map.Map Int (LockerState, Code)

lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = 
    case Map.lookup lockerNumber map of
        Nothing ->Left $ "Locker number " ++ show lockerNumber ++ " doesn't exist!"
        Just (state, code) -> if state /= Taken
            then Right code
            else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"

lockers :: LockerMap
lockers = Map.fromList [(100,(Taken, "ZD39I")),(101,(Free,"JAH3I")),(103,(Free,"IQSA9")),(105,(Free,"QOTSA"))]

-- data List a = Empty | Cons a (List a) deriving (Show, Read, Eq, Ord)

infixr 5 :-:
data List a= Empty | a :-: (List a) deriving (Show,Read,Eq,Ord)

infixr 5 .++
(.++) :: List a -> List a -> List a
Empty .++ ys = ys
(x :-: xs) .++ ys = x :-: (xs .++ ys)

-- Now is the binary search tree




