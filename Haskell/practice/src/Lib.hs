module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

primes = filterPrime [2..]
    where filterPrime (p:xs) =
            p:filterPrime [x| x<- xs,x `mod` p/=0]
-- newtype Identity a =Identity {runIdentity ::a}

-- instance Functor Identity where
--    fmap f idx=Identity (f (runIdentity idx))

-- newtype Const a b=Const {getConst ::a} deriving (Show, Read)
