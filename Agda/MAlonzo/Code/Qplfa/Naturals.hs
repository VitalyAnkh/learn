{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Qplfa.Naturals where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

name4 = "plfa.Naturals.ℕ"
d4 = ()
data T4 = C6 | C8 Integer
name10 = "plfa.Naturals._+_"
d10 :: Integer -> Integer -> Integer
d10 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe addInt (coe (1 :: Integer)) (coe d10 (coe v2) (coe v1))
name18 = "plfa.Naturals._*_"
d18 :: Integer -> Integer -> Integer
d18 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d10 (coe v1) (coe d18 (coe v2) (coe v1))
name34 = "plfa.Naturals._^_"
d34 :: Integer -> Integer -> Integer
d34 v0 v1
  = case coe v1 of
      0 -> coe (1 :: Integer)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe d18 (coe v0) (coe d34 (coe v0) (coe v2))
name42 = "plfa.Naturals._∸_"
d42 :: Integer -> Integer -> Integer
d42 v0 v1
  = case coe v1 of
      0 -> coe v0
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe (0 :: Integer)
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe d42 (coe v3) (coe v2)
