import           Data.Monoid
data Weekday=Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday

data Lowercasetype=Lowercasetype

data Booly a=False' | True' deriving (Eq,Show)

--instance Monoid (Booly a) where
--  mappend False' _    =False'
--  mappend _ False'    =False'
--  mappend True' True' =True'
data Optional a=Nada|Only a deriving (Eq,Show)
instance Semigroup a=>Semigroup (Optional a) where
  (<>)=undefined

data MyRecord a = ConsRecord {getRecord::a}

