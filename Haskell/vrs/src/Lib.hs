{-# LANGUAGE MultiParamTypeClasses #-}
module Lib
    ( someFunc
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

data Exp=Lit Integer
        |Add Exp Exp
        |Sub Exp Exp
        |Mul Exp Exp
        |Div Exp Exp
safeEval::Exp ->Maybe Integer
safeEval (Lit n)= Just   n
safeEval (Add e1 e2)=case safeEval e1 of
  Nothing->Nothing
  Just n1->case safeEval e2 of
    Nothing->Nothing
    Just n2->Just (n1+n2)
eval (Sub e1 e2)=eval e1 -eval e2
eval (Mul e1 e2)=eval e1 *eval e2
eval (Div e1 e2)=eval e1 `div` eval e2

evalSeq ::Maybe Integer->(Integer->Maybe Integer)->Maybe Integer
evalSeq mi f=case mi of
  Nothing->Nothing
  Just a-> f a

(|>)=flip ($)

class Sumthin a where
  s::a->a

class Else where
  e::b->f (g a b c)

class Biffy where
  slayer::e a b
    ->(a->c)
    ->(b->d)
    ->e c d
    
data FixMePls a=
  FixMe
  |Pls a 
  deriving (Eq,Show)

instance Functor FixMePls where
  fmap _ FixMe=FixMe
  fmap f (Pls a)=Pls (f a)

data WhoCares a =
  ItDoesnt |
  Matter a |
  WhatThisIsCalled
  deriving (Eq,Show)

instance Functor WhoCares where
  fmap _ ItDoesnt=ItDoesnt
  fmap f (Matter a)=Matter (f a)
  fmap _ WhatThisIsCalled=ItDoesnt

data CountingBad a=
  Heisenberg Int a
  deriving (Eq,Show)

instance Functor CountingBad where
  fmap f (Heisenberg n a)=
    Heisenberg (n+1) (f a)

u="Uncle"
oneWhoKnocks=Heisenberg 0 u

replaceWithP=const 'p'

ave=Just "Ave"
n=Nothing
w =Just "woohoo"
lms =[ave,n,w]
-- tripFmap=fmap . fmap . fmap

a=fmap (+1)$read "[1]" ::[Int]

b=(fmap.fmap) (++ "lol") (Just ["Hi,","Hello"])

c=fmap (*2) (\x->x-2)

d=
  fmap ((return '1' ++) .show)
  (\x->[x,1..3])

em::IO Integer
em =let ioi=readIO "1" ::IO Integer
        changed =fmap (read . ("123"++) . show) ioi
   in fmap (*3) changed
          
data Two a b=
  Two a b
  deriving (Eq,Show)

data Or a b=
  First a
  |Second b
  deriving (Eq,Show)
instance Functor (Two a) where
  fmap f (Two a b)=Two a (f b)

instance Functor (Or a) where
  fmap _ (First a)=First a
  fmap f (Second b)=Second (f b)
