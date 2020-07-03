{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Data.Empty

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
name62 = "Data.Nat.Base.NonZero"
d62 :: Integer -> ()
d62 = erased
name68 = "Data.Nat.Base.≢-nonZero"
d68 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
d68 v0 v1
  = case coe v0 of
      0 -> coe v1 erased
      _ -> coe MAlonzo.Code.Agda.Builtin.Unit.C8
name78 = "Data.Nat.Base.>-nonZero"
d78 :: Integer -> T6 -> AgdaAny
d78 v0 v1 = du78 v1
du78 :: T6 -> AgdaAny
du78 v0 = coe seq (coe v0) (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
name82 = "Data.Nat.Base.pred"
d82 :: Integer -> Integer
d82 v0 = coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 (1 :: Integer)
name86 = "Data.Nat.Base._+⋎_"
d86 :: Integer -> Integer -> Integer
d86 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe addInt (coe (1 :: Integer)) (coe d86 (coe v1) (coe v2))
name94 = "Data.Nat.Base._⊔_"
d94 :: Integer -> Integer -> Integer
d94 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe addInt (coe (1 :: Integer)) (coe d94 (coe v2) (coe v3))
name104 = "Data.Nat.Base._⊓_"
d104 :: Integer -> Integer -> Integer
d104 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (0 :: Integer)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe addInt (coe (1 :: Integer)) (coe d104 (coe v2) (coe v3))
name114 = "Data.Nat.Base.⌊_/2⌋"
d114 :: Integer -> Integer
d114 v0
  = case coe v0 of
      0 -> coe (0 :: Integer)
      1 -> coe (0 :: Integer)
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe addInt (coe (1 :: Integer)) (coe d114 (coe v1))
name118 = "Data.Nat.Base.⌈_/2⌉"
d118 :: Integer -> Integer
d118 v0 = coe d114 (coe addInt (coe (1 :: Integer)) (coe v0))
name122 = "Data.Nat.Base._^_"
d122 :: Integer -> Integer -> Integer
d122 v0 v1
  = case coe v1 of
      0 -> coe (1 :: Integer)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe mulInt (coe v0) (coe d122 (coe v0) (coe v2))
name130 = "Data.Nat.Base.∣_-_∣"
d130 :: Integer -> Integer -> Integer
d130 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe v0
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d130 (coe v2) (coe v3)
name142 = "Data.Nat.Base._≤′_"
d142 a0 a1 = ()
data T142 = C146 | C152 T142
name154 = "Data.Nat.Base._<′_"
d154 :: Integer -> Integer -> ()
d154 = erased
name160 = "Data.Nat.Base._≥′_"
d160 :: Integer -> Integer -> ()
d160 = erased
name166 = "Data.Nat.Base._>′_"
d166 :: Integer -> Integer -> ()
d166 = erased
name176 = "Data.Nat.Base._≤″_"
d176 a0 a1 = ()
newtype T176 = C190 Integer
name186 = "Data.Nat.Base._≤″_.k"
d186 :: T176 -> Integer
d186 v0
  = case coe v0 of
      C190 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name188 = "Data.Nat.Base._≤″_.proof"
d188 :: T176 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d188 = erased
name192 = "Data.Nat.Base._<″_"
d192 :: Integer -> Integer -> ()
d192 = erased
name198 = "Data.Nat.Base._≥″_"
d198 :: Integer -> Integer -> ()
d198 = erased
name204 = "Data.Nat.Base._>″_"
d204 :: Integer -> Integer -> ()
d204 = erased
name210 = "Data.Nat.Base._≤‴_"
d210 a0 a1 = ()
data T210 = C214 | C220 T210
name222 = "Data.Nat.Base._<‴_"
d222 :: Integer -> Integer -> ()
d222 = erased
name228 = "Data.Nat.Base._≥‴_"
d228 :: Integer -> Integer -> ()
d228 = erased
name234 = "Data.Nat.Base._>‴_"
d234 :: Integer -> Integer -> ()
d234 = erased
name240 = "Data.Nat.Base.Ordering"
d240 a0 a1 = ()
data T240 = C246 Integer | C250 | C256 Integer
name262 = "Data.Nat.Base.compare"
d262 :: Integer -> Integer -> T240
d262 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe C250
             _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in coe C246 v2
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe C256 v2
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe d262 (coe v2) (coe v3)
