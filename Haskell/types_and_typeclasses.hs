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

isSquare :: Integral n => n -> Bool
isSquare n = not . null . filter (\i->i*i==n) $ [1..n]
-- isSquare n = let k= if odd n then (n+1)/2 else n/2 in (not . null . filter (\i->i*i==n) $ [1..k])

highAndLow :: String -> String
highAndLow input = let xs=read input:: [Int] in (show . maximum $ xs) ++ " " ++ (show . minimum $ xs)