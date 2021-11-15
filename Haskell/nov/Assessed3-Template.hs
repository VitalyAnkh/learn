-- see https://wiki.haskell.org/Safe_Haskell
{-# LANGUAGE Safe #-}
-- setting the "warn-incomplete-patterns" flag asks GHC to warn you
-- about possible missing cases in pattern-matching definitions
{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

module Assessed3
  ( priceRange,
    allergyFree,
    isValidSpec,
    checkSpec,
    parentDir,
    openSubDir,
    cross,
    sieveFrom,
    sequenceFrom,
  )
where

import Q3Example
import Types

---------------------------------------------------------------------------------
---------------- DO **NOT** MAKE ANY CHANGES ABOVE THIS LINE --------------------
---------------------------------------------------------------------------------

{- Exercise 1 -}

priceRange :: Price -> Price -> [Cupcake] -> [Cupcake]
priceRange p1 p2 [] = undefined

allergyFree :: [Ingredient] -> [Cupcake] -> [Cupcake]
allergyFree = undefined

{- Exercise 2 -}

isValidSpec :: Spec -> Tin -> Bool
isValidSpec (HasCup k _) t = k < length t
isValidSpec (And s1 s2) t = isValidSpec s1 t && isValidSpec s2 t
isValidSpec (Or s1 s2) t = isValidSpec s1 t || isValidSpec s2 t
isValidSpec (Not s) t = not $ isValidSpec s t

checkSpec :: Spec -> Tin -> Bool
checkSpec (And s1 s2) t = isValidSpec s1 t && isValidSpec s2 t
checkSpec (Or s1 s2) t = isValidSpec s1 t || isValidSpec s2 t
checkSpec (Not s) t = not (isValidSpec s t)
checkSpec (HasCup k x) t = x `elem` (t !! k)

{- Exercise 3 -}

parentDir :: Breadcrumb -> Maybe Breadcrumb
parentDir = undefined

openSubDir :: String -> Breadcrumb -> Maybe Breadcrumb
openSubDir = undefined

{- Exercise 4 -}

cross :: Int -> [Bool] -> [Bool]
cross n xs = [if (index + 1) `mod` n == 0 then not (xs !! index) else xs !! index | index <- [0, 1 ..]]

sieveFrom :: Int -> [Bool] -> [Bool]
sieveFrom n xs = sieveFrom (n + 1) (cross n xs)

sequenceFrom :: Int -> [Bool] -> [Int]
sequenceFrom n xs = [i | i <- [n ..], xs !! (i - n)]

sieve :: [Bool]
sieve = sieveFrom 2 (repeat True)

primes :: [Int]
primes = sequenceFrom 2 sieve
