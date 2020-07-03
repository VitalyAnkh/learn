{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Fin.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base

name6 = "Data.Fin.Base.Fin"
d6 a0 = ()
data T6 = C10 | C16 T6
name20 = "Data.Fin.Base.toℕ"
d20 :: Integer -> T6 -> Integer
d20 v0 v1 = du20 v1
du20 :: T6 -> Integer
du20 v0
  = case coe v0 of
      C10 -> coe (0 :: Integer)
      C16 v2 -> coe addInt (coe (1 :: Integer)) (coe du20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name26 = "Data.Fin.Base.Fin′"
d26 :: Integer -> T6 -> ()
d26 = erased
name36 = "Data.Fin.Base.cast"
d36 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T6 -> T6
d36 v0 v1 v2 v3 = du36 v0 v3
du36 :: Integer -> T6 -> T6
du36 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> case coe v1 of
             C10 -> coe C10
             C16 v3
               -> coe
                    C16
                    (coe
                       du36 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 (1 :: Integer))
                       (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Data.Fin.Base.fromℕ"
d58 :: Integer -> T6
d58 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (d58 (coe v1))
name66 = "Data.Fin.Base.fromℕ<"
d66 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d66 v0 v1 v2 = du66 v0
du66 :: Integer -> T6
du66 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (coe du66 (coe v1))
name82 = "Data.Fin.Base.fromℕ<″"
d82 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T176 -> T6
d82 v0 v1 v2 = du82 v0 v2
du82 :: Integer -> MAlonzo.Code.Data.Nat.Base.T176 -> T6
du82 v0 v1
  = case coe v0 of
      0 -> coe seq (coe v1) (coe C10)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C190 v3
               -> coe
                    C16 (coe du82 (coe v2) (coe MAlonzo.Code.Data.Nat.Base.C190 v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.Fin.Base.raise"
d90 :: Integer -> Integer -> T6 -> T6
d90 v0 v1 v2 = du90 v1 v2
du90 :: Integer -> T6 -> T6
du90 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C16 (coe du90 (coe v2) (coe v1))
name106 = "Data.Fin.Base.reduce≥"
d106 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d106 v0 v1 v2 v3 = du106 v0 v2 v3
du106 :: Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
du106 v0 v1 v2
  = case coe v0 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C16 v5
               -> case coe v2 of
                    MAlonzo.Code.Data.Nat.Base.C18 v8
                      -> coe du106 (coe v3) (coe v5) (coe v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name122 = "Data.Fin.Base.inject"
d122 :: Integer -> T6 -> T6 -> T6
d122 v0 v1 v2 = du122 v1 v2
du122 :: T6 -> T6 -> T6
du122 v0 v1
  = case coe v0 of
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du122 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Data.Fin.Base.inject!"
d134 :: Integer -> T6 -> T6 -> T6
d134 v0 v1 v2 = du134 v1 v2
du134 :: T6 -> T6 -> T6
du134 v0 v1
  = case coe v0 of
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du134 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name142 = "Data.Fin.Base.inject+"
d142 :: Integer -> Integer -> T6 -> T6
d142 v0 v1 v2 = du142 v2
du142 :: T6 -> T6
du142 v0 = coe v0
name152 = "Data.Fin.Base.inject₁"
d152 :: Integer -> T6 -> T6
d152 v0 v1 = du152 v1
du152 :: T6 -> T6
du152 v0 = coe v0
name160 = "Data.Fin.Base.inject≤"
d160 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d160 v0 v1 v2 v3 = du160 v2
du160 :: T6 -> T6
du160 v0 = coe v0
name176 = "Data.Fin.Base.lower₁"
d176 ::
  Integer ->
  T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  T6
d176 v0 v1 v2 = du176 v0 v1
du176 :: Integer -> T6 -> T6
du176 v0 v1
  = case coe v0 of
      0 -> coe
             seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C10 -> coe C10
             C16 v4 -> coe C16 (coe du176 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Data.Fin.Base.strengthen"
d194 :: Integer -> T6 -> T6
d194 v0 v1 = du194 v1
du194 :: T6 -> T6
du194 v0 = coe v0
name202 = "Data.Fin.Base.splitAt"
d202 :: Integer -> Integer -> T6 -> MAlonzo.Code.Data.Sum.Base.T30
d202 v0 v1 v2 = du202 v0 v2
du202 :: Integer -> T6 -> MAlonzo.Code.Data.Sum.Base.T30
du202 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Sum.Base.C42 (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C10 -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe C10)
             C16 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du82 (coe C16) (\ v5 -> v5)
                    (coe du202 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name216 = "Data.Fin.Base.quotRem"
d216 ::
  Integer -> Integer -> T6 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d216 v0 v1 v2 = du216 v1 v2
du216 :: Integer -> T6 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du216 v0 v1
  = let v2 = coe du202 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3) (coe C10)
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe
             MAlonzo.Code.Data.Product.du170 (\ v4 -> coe C16)
             (coe du216 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name254 = "Data.Fin.Base.fold"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
d254 v0 v1 v2 v3 v4 v5 = du254 v2 v3 v4 v5
du254 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
du254 v0 v1 v2 v3
  = case coe v3 of
      C10 -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in coe v2 v5
      C16 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v6 (coe du254 (coe v6) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name280 = "Data.Fin.Base.fold′"
d280 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (T6 -> ()) ->
  (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
d280 v0 v1 v2 v3 v4 v5 = du280 v3 v4 v5
du280 :: (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
du280 v0 v1 v2
  = case coe v2 of
      C10 -> coe v1
      C16 v4
        -> coe
             v0 v4 (coe du280 (coe (\ v5 -> coe v0 v5)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name304 = "Data.Fin.Base.lift"
d304 :: Integer -> Integer -> Integer -> (T6 -> T6) -> T6 -> T6
d304 v0 v1 v2 v3 v4 = du304 v2 v3 v4
du304 :: Integer -> (T6 -> T6) -> T6 -> T6
du304 v0 v1 v2
  = case coe v0 of
      0 -> coe v1 v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du304 (coe v3) (coe v1) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Data.Fin.Base._+_"
d328 :: Integer -> Integer -> T6 -> T6 -> T6
d328 v0 v1 v2 v3 = du328 v2 v3
du328 :: T6 -> T6 -> T6
du328 v0 v1
  = case coe v0 of
      C10 -> coe v1
      C16 v3 -> coe C16 (coe du328 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name342 = "Data.Fin.Base._-_"
d342 :: Integer -> T6 -> T6 -> T6
d342 v0 v1 v2 = du342 v1 v2
du342 :: T6 -> T6 -> T6
du342 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> case coe v0 of
             C16 v5 -> coe du342 (coe v5) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name354 = "Data.Fin.Base._ℕ-_"
d354 :: Integer -> T6 -> T6
d354 v0 v1
  = case coe v1 of
      C10 -> coe d58 (coe v0)
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d354 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name364 = "Data.Fin.Base._ℕ-ℕ_"
d364 :: Integer -> T6 -> Integer
d364 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe d364 (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name374 = "Data.Fin.Base.pred"
d374 :: Integer -> T6 -> T6
d374 v0 v1 = du374 v1
du374 :: T6 -> T6
du374 v0
  = case coe v0 of
      C10 -> coe C10
      C16 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name380 = "Data.Fin.Base.opposite"
d380 :: Integer -> T6 -> T6
d380 v0 v1
  = let v2 = subInt (coe v0) (coe (1 :: Integer)) in
    case coe v1 of
      C10 -> coe d58 (coe v2)
      C16 v4 -> coe d380 (coe v2) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name394 = "Data.Fin.Base.punchOut"
d394 ::
  Integer ->
  T6 ->
  T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  T6
d394 v0 v1 v2 v3 = du394 v1 v2
du394 :: T6 -> T6 -> T6
du394 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             C16 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du394 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name414 = "Data.Fin.Base.punchIn"
d414 :: Integer -> T6 -> T6 -> T6
d414 v0 v1 v2 = du414 v1 v2
du414 :: T6 -> T6 -> T6
du414 v0 v1
  = case coe v0 of
      C10 -> coe C16 v1
      C16 v3
        -> case coe v1 of
             C10 -> coe C10
             C16 v5 -> coe C16 (coe du414 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name426 = "Data.Fin.Base._≤_"
d426 :: Integer -> T6 -> T6 -> ()
d426 = erased
name430 = "Data.Fin.Base._<_"
d430 :: Integer -> T6 -> T6 -> ()
d430 = erased
name432 = "Data.Fin.Base._≺_"
d432 a0 a1 = ()
newtype T432 = C438 T6
name442 = "Data.Fin.Base.Ordering"
d442 a0 a1 a2 = ()
data T442 = C450 T6 | C454 | C460 T6
name468 = "Data.Fin.Base.compare"
d468 :: Integer -> T6 -> T6 -> T442
d468 v0 v1 v2 = du468 v1 v2
du468 :: T6 -> T6 -> T442
du468 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe C454
             C16 v4 -> coe C450 (coe C10)
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe C460 (coe C10)
             C16 v5
               -> let v6 = coe du468 (coe v3) (coe v5) in
                  case coe v6 of
                    C450 v8 -> coe C450 (coe C16 v8)
                    C454 -> coe C454
                    C460 v8 -> coe C460 (coe C16 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name502 = "Data.Fin.Base.fromℕ≤"
d502 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d502 v0 v1 v2 = coe du66 v0
name504 = "Data.Fin.Base.fromℕ≤″"
d504 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T176 -> T6
d504 v0 v1 v2 = coe du82 v0 v2
