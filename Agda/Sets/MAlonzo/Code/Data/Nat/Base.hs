{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality

name6 = "Data.Nat.Base._≤_"
d6 a0 a1 = ()
data T6 = C10 | C18 T6
name20 = "Data.Nat.Base._<_"
d20 :: Integer -> Integer -> ()
d20 = erased
name26 = "Data.Nat.Base._≥_"
d26 :: Integer -> Integer -> ()
d26 = erased
name32 = "Data.Nat.Base._>_"
d32 :: Integer -> Integer -> ()
d32 = erased
name38 = "Data.Nat.Base._≰_"
d38 :: Integer -> Integer -> ()
d38 = erased
name44 = "Data.Nat.Base._≮_"
d44 :: Integer -> Integer -> ()
d44 = erased
name50 = "Data.Nat.Base._≱_"
d50 :: Integer -> Integer -> ()
d50 = erased
name56 = "Data.Nat.Base._≯_"
d56 :: Integer -> Integer -> ()
d56 = erased
name62 = "Data.Nat.Base.pred"
d62 :: Integer -> Integer
d62 v0
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> coe (subInt (coe v0) (coe (1 :: Integer)))
name66 = "Data.Nat.Base._+⋎_"
d66 :: Integer -> Integer -> Integer
d66 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (addInt (coe (1 :: Integer)) (coe (d66 (coe v1) (coe v2))))
name74 = "Data.Nat.Base._⊔_"
d74 :: Integer -> Integer -> Integer
d74 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (addInt (coe (1 :: Integer)) (coe (d74 (coe v2) (coe v3))))
name84 = "Data.Nat.Base._⊓_"
d84 :: Integer -> Integer -> Integer
d84 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (0 :: Integer)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (addInt (coe (1 :: Integer)) (coe (d84 (coe v2) (coe v3))))
name94 = "Data.Nat.Base.⌊_/2⌋"
d94 :: Integer -> Integer
d94 v0
  = case coe v0 of
      0 -> coe (0 :: Integer)
      1 -> coe (0 :: Integer)
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe (addInt (coe (1 :: Integer)) (coe (d94 (coe v1))))
name98 = "Data.Nat.Base.⌈_/2⌉"
d98 :: Integer -> Integer
d98 v0 = coe (d94 (coe (addInt (coe (1 :: Integer)) (coe v0))))
name102 = "Data.Nat.Base._^_"
d102 :: Integer -> Integer -> Integer
d102 v0 v1
  = case coe v1 of
      0 -> coe (1 :: Integer)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (mulInt (coe v0) (coe (d102 (coe v0) (coe v2))))
name110 = "Data.Nat.Base.∣_-_∣"
d110 :: Integer -> Integer -> Integer
d110 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d110 (coe v2) (coe v3))
name122 = "Data.Nat.Base._≤′_"
d122 a0 a1 = ()
data T122 = C126 | C132 T122
name134 = "Data.Nat.Base._<′_"
d134 :: Integer -> Integer -> ()
d134 = erased
name140 = "Data.Nat.Base._≥′_"
d140 :: Integer -> Integer -> ()
d140 = erased
name146 = "Data.Nat.Base._>′_"
d146 :: Integer -> Integer -> ()
d146 = erased
name156 = "Data.Nat.Base._≤″_"
d156 a0 a1 = ()
newtype T156 = C170 Integer
name166 = "Data.Nat.Base._≤″_.k"
d166 :: T156 -> Integer
d166 v0
  = case coe v0 of
      C170 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name168 = "Data.Nat.Base._≤″_.proof"
d168 :: T156 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d168 = erased
name172 = "Data.Nat.Base._<″_"
d172 :: Integer -> Integer -> ()
d172 = erased
name178 = "Data.Nat.Base._≥″_"
d178 :: Integer -> Integer -> ()
d178 = erased
name184 = "Data.Nat.Base._>″_"
d184 :: Integer -> Integer -> ()
d184 = erased
name190 = "Data.Nat.Base._≤‴_"
d190 a0 a1 = ()
data T190 = C194 | C200 T190
name202 = "Data.Nat.Base._<‴_"
d202 :: Integer -> Integer -> ()
d202 = erased
name208 = "Data.Nat.Base._≥‴_"
d208 :: Integer -> Integer -> ()
d208 = erased
name214 = "Data.Nat.Base._>‴_"
d214 :: Integer -> Integer -> ()
d214 = erased
name220 = "Data.Nat.Base.Ordering"
d220 a0 a1 = ()
data T220 = C226 Integer | C230 | C236 Integer
name242 = "Data.Nat.Base.compare"
d242 :: Integer -> Integer -> T220
d242 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe (\ v2 -> C230) erased
             _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (\ v3 v4 -> C226 v4) erased v2
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 v4 -> C236 v4) erased v2
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d242 (coe v2) (coe v3))
