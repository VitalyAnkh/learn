{-# LANGUAGE GADTs,KindSignatures #-}
import Control.Applicative
import Data.List (intercalate)
import Control.Monad
import Data.Sequence (mapWithIndex,fromList)
import Data.Foldable (toList)
import Data.Char (toUpper,toLower)
bind::Monad m =>(a->m b)->m a->m b
bind f ma=join $ fmap f ma
sequencing ::IO()
sequencing = do
  putStrLn "blah"
  putStrLn "another thing"

sequencing' ::IO()
sequencing' =
  putStrLn "blah" >>
  putStrLn "another thing"
  
sequencing'' :: IO()
sequencing'' = putStrLn "blah" *> putStrLn "another thing"

binding ::IO()
binding = do
  name<-getLine
  putStrLn name

binding'::IO()
binding' = do
  getLine>>=putStrLn

accum :: [Char] -> [Char]
accum s = intercalate "-" . map (\s->(toUpper  $ head s) : tail s) . toList  .  mapWithIndex (\n a->replicate (n+1) (toLower a)) $ fromList s



roundToNext5 :: Int -> Int
roundToNext5 n = case (mod n 5) of
  0->n
  m->(div n 5)*5 +5

fib::Integer->Integer
fib 1=0
fib 2=1
fib n=fib (n-1) + fib (n-2)

bindingAndSequencing :: IO()
bindingAndSequencing = do
  putStrLn "name please: "
  name <-getLine
  putStrLn ("y helo thar: "++name)

bindingAndSequencing'::IO()
bindingAndSequencing'=
  putStrLn "name please: ">>
  getLine >>=
  \name->
    putStrLn ("y helo thar: "++name)

data Exp=Literal Integer
    |Add Exp Exp
    | Sub Exp Exp
    | Mul Exp Exp
    | Div Exp Exp
eval ::Exp->Integer
eval (Literal n)=n
eval (Add e1 e2)=eval e1 +eval e2
eval (Sub e1 e2)=eval e1 -eval e2
eval (Mul e1 e2)=eval e1 * eval e2
eval (Div e1 e2)=eval e1 `div` eval e2

data Expr a where
  ILit::Int->Expr Int
  BLit::Bool->Expr Bool
  Add' ::Expr Int->Expr Int->Expr Int

data Nat=Zero | Suc Nat
data Nat' :: * where
  Zero'::Nat'
  Suc':: Nat' -> Nat'
