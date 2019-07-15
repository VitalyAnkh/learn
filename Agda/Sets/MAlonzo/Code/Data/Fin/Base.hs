{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Fin.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base

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
      C16 v2 -> coe (addInt (coe (1 :: Integer)) (coe (du20 (coe v2))))
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
             C10 -> coe (\ v3 -> C10) erased
             C16 v3
               -> coe
                    (\ v4 v5 -> C16 v5) erased
                    (du36 (coe (MAlonzo.Code.Data.Nat.Base.d62 (coe v0))) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Data.Fin.Base.fromℕ"
d58 :: Integer -> T6
d58 v0
  = case coe v0 of
      0 -> coe (\ v1 -> C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (\ v2 v3 -> C16 v3) erased (d58 (coe v1))
name66 = "Data.Fin.Base.fromℕ≤"
d66 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> T6
d66 v0 v1 v2 = du66 v0
du66 :: Integer -> T6
du66 v0
  = case coe v0 of
      0 -> coe (\ v1 -> C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (\ v2 v3 -> C16 v3) erased (du66 (coe v1))
name82 = "Data.Fin.Base.fromℕ≤″"
d82 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> T6
d82 v0 v1 v2 = du82 v0 v2
du82 :: Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> T6
du82 v0 v1
  = case coe v0 of
      0 -> coe (seq (coe v1) (coe (\ v2 -> C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C170 v3
               -> coe
                    (\ v5 v6 -> C16 v6) erased
                    (du82
                       (coe v2)
                       (coe (\ v5 v6 -> MAlonzo.Code.Data.Nat.Base.C170 v5) v3 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.Fin.Base.raise"
d90 :: Integer -> Integer -> T6 -> T6
d90 v0 v1 v2 = du90 v1 v2
du90 :: Integer -> T6 -> T6
du90 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (\ v3 v4 -> C16 v4) erased (du90 (coe v2) (coe v1))
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
                      -> coe (du106 (coe v3) (coe v5) (coe v8))
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
             C10 -> coe (\ v5 -> C10) erased
             C16 v5 -> coe (\ v6 v7 -> C16 v7) erased (du122 (coe v3) (coe v5))
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
             C10 -> coe (\ v5 -> C10) erased
             C16 v5 -> coe (\ v6 v7 -> C16 v7) erased (du134 (coe v3) (coe v5))
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
             (seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 () erased erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C10 -> coe (\ v4 -> C10) erased
             C16 v4 -> coe (\ v5 v6 -> C16 v6) erased (du176 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Data.Fin.Base.strengthen"
d194 :: Integer -> T6 -> T6
d194 v0 v1 = du194 v1
du194 :: T6 -> T6
du194 v0 = coe v0
name208 = "Data.Fin.Base.fold"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
d208 v0 v1 v2 v3 v4 v5 = du208 v2 v3 v4 v5
du208 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny) ->
  (Integer -> AgdaAny) -> T6 -> AgdaAny
du208 v0 v1 v2 v3
  = case coe v3 of
      C10 -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in coe v2 v5
      C16 v5
        -> let v6 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v6 (du208 (coe v6) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name234 = "Data.Fin.Base.fold′"
d234 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (T6 -> ()) ->
  (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
d234 v0 v1 v2 v3 v4 v5 = du234 v3 v4 v5
du234 :: (T6 -> AgdaAny -> AgdaAny) -> AgdaAny -> T6 -> AgdaAny
du234 v0 v1 v2
  = case coe v2 of
      C10 -> coe v1
      C16 v4
        -> coe v0 v4 (du234 (coe (\ v5 -> coe v0 v5)) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Data.Fin.Base.lift"
d258 :: Integer -> Integer -> Integer -> (T6 -> T6) -> T6 -> T6
d258 v0 v1 v2 v3 v4 = du258 v2 v3 v4
du258 :: Integer -> (T6 -> T6) -> T6 -> T6
du258 v0 v1 v2
  = case coe v0 of
      0 -> coe v1 v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             C10 -> coe (\ v5 -> C10) erased
             C16 v5
               -> coe
                    (\ v6 v7 -> C16 v7) erased (du258 (coe v3) (coe v1) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name282 = "Data.Fin.Base._+_"
d282 :: Integer -> Integer -> T6 -> T6 -> T6
d282 v0 v1 v2 v3 = du282 v2 v3
du282 :: T6 -> T6 -> T6
du282 v0 v1
  = case coe v0 of
      C10 -> coe v1
      C16 v3 -> coe (\ v4 v5 -> C16 v5) erased (du282 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name296 = "Data.Fin.Base._-_"
d296 :: Integer -> T6 -> T6 -> T6
d296 v0 v1 v2 = du296 v1 v2
du296 :: T6 -> T6 -> T6
du296 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> case coe v0 of
             C16 v5 -> coe (du296 (coe v5) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name308 = "Data.Fin.Base._ℕ-_"
d308 :: Integer -> T6 -> T6
d308 v0 v1
  = case coe v1 of
      C10 -> coe (d58 (coe v0))
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (d308 (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name318 = "Data.Fin.Base._ℕ-ℕ_"
d318 :: Integer -> T6 -> Integer
d318 v0 v1
  = case coe v1 of
      C10 -> coe v0
      C16 v3
        -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (d318 (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Data.Fin.Base.pred"
d328 :: Integer -> T6 -> T6
d328 v0 v1 = du328 v1
du328 :: T6 -> T6
du328 v0
  = case coe v0 of
      C10 -> coe (\ v2 -> C10) erased
      C16 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name338 = "Data.Fin.Base.punchOut"
d338 ::
  Integer ->
  T6 ->
  T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  T6
d338 v0 v1 v2 v3 = du338 v1 v2
du338 :: T6 -> T6 -> T6
du338 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             C16 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe (\ v5 -> C10) erased
             C16 v5 -> coe (\ v6 v7 -> C16 v7) erased (du338 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name358 = "Data.Fin.Base.punchIn"
d358 :: Integer -> T6 -> T6 -> T6
d358 v0 v1 v2 = du358 v1 v2
du358 :: T6 -> T6 -> T6
du358 v0 v1
  = case coe v0 of
      C10 -> coe (\ v3 v4 -> C16 v4) erased v1
      C16 v3
        -> case coe v1 of
             C10 -> coe (\ v5 -> C10) erased
             C16 v5 -> coe (\ v6 v7 -> C16 v7) erased (du358 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name370 = "Data.Fin.Base._≤_"
d370 :: Integer -> T6 -> T6 -> ()
d370 = erased
name374 = "Data.Fin.Base._<_"
d374 :: Integer -> T6 -> T6 -> ()
d374 = erased
name376 = "Data.Fin.Base._≺_"
d376 a0 a1 = ()
newtype T376 = C382 T6
name386 = "Data.Fin.Base.Ordering"
d386 a0 a1 a2 = ()
data T386 = C394 T6 | C398 | C404 T6
name412 = "Data.Fin.Base.compare"
d412 :: Integer -> T6 -> T6 -> T386
d412 v0 v1 v2 = du412 v1 v2
du412 :: T6 -> T6 -> T386
du412 v0 v1
  = case coe v0 of
      C10
        -> case coe v1 of
             C10 -> coe (\ v4 -> C398) erased
             C16 v4
               -> coe (\ v5 v6 -> C394 v6) erased (coe (\ v5 -> C10) erased)
             _ -> MAlonzo.RTE.mazUnreachableError
      C16 v3
        -> case coe v1 of
             C10 -> coe (\ v5 v6 -> C404 v6) erased (coe (\ v5 -> C10) erased)
             C16 v5
               -> let v6 = du412 (coe v3) (coe v5) in
                  case coe v6 of
                    C394 v8
                      -> coe
                           (\ v9 v10 -> C394 v10) erased (coe (\ v9 v10 -> C16 v10) erased v8)
                    C398 -> coe (\ v8 -> C398) erased
                    C404 v8
                      -> coe
                           (\ v9 v10 -> C404 v10) erased (coe (\ v9 v10 -> C16 v10) erased v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
