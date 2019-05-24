maximum' ::(Ord a)=> [a]->a
maximum' []=error "maximun of empty list"
maximum' [x]=x
maximum' (x:xs)
    | x > maxTail=x
    | otherwise = maxTail
    where maxTail= maximum' xs

maximum_ ::(Ord a)=>[a]->a
maximum_ []=    error "maximun of empty list"
maximum_ [x]=   x
maximum_ (x:xs)=max x (maximum_ xs)

--replicate' ::(Num i, Ord a)=> i->a->[a]
--replicate' i a
--    | i<=0=[]
--    | otherwise=a:replicate' (i-1) a

data RecordProduct a b=RecordProduct {pfirst::a,psecond::b} deriving (Eq,Show)
myRecord ::RecordProduct Integer Float
myRecord=RecordProduct 42 0.0001

data OperatingSystem=GnuPlusLinux|OpenBSD|Mac|Windows deriving (Eq,Show)
data ProLang=Haskell|Idris|Agda|PureScript deriving (Eq,Show)

data Programmer=Programmer {os::OperatingSystem,lang::ProLang} deriving (Eq,Show)

allOperatingSystems::[OperatingSystem]
allOperatingSystems=[GnuPlusLinux,OpenBSD,Mac,Windows]

allLanguages::[ProLang]
allLanguages=[Haskell,Idris,Agda,PureScript]

allProgrammers::[Programmer]
allProgrammers=zipWith Programmer allOperatingSystems allLanguages
