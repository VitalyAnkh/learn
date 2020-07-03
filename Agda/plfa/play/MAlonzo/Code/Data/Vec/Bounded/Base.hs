{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Vec.Bounded.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Extrema
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.All.Properties
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary

name118 = "Data.Vec.Bounded.Base.Vec≤"
d118 a0 a1 a2 = ()
data T118 = C136 Integer MAlonzo.Code.Data.Vec.Base.T24
name130 = "Data.Vec.Bounded.Base.Vec≤.length"
d130 :: T118 -> Integer
d130 v0
  = case coe v0 of
      C136 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Data.Vec.Bounded.Base.Vec≤.vec"
d132 :: T118 -> MAlonzo.Code.Data.Vec.Base.T24
d132 v0
  = case coe v0 of
      C136 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name140 = "Data.Vec.Bounded.Base.fromVec"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T118
d140 v0 v1 v2 v3 = du140 v2 v3
du140 :: Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T118
du140 v0 v1 = coe C136 v0 v1
name146 = "Data.Vec.Bounded.Base.padRight"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> T118 -> MAlonzo.Code.Data.Vec.Base.T24
d146 v0 v1 v2 v3 v4 = du146 v2 v3 v4
du146 ::
  Integer -> AgdaAny -> T118 -> MAlonzo.Code.Data.Vec.Base.T24
du146 v0 v1 v2
  = case coe v2 of
      C136 v3 v4
        -> let v6
                 = coe
                     MAlonzo.Code.Relation.Nullary.du60 (coe ())
                     (coe MAlonzo.Code.Data.Nat.Properties.d4834 (coe v3) (coe v0)) in
           case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C190 v7
               -> coe
                    MAlonzo.Code.Data.Vec.Base.du190 (coe v4)
                    (coe MAlonzo.Code.Data.Vec.Base.du490 (coe v7) (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name166 = "Data.Vec.Bounded.Base.padLeft"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> T118 -> MAlonzo.Code.Data.Vec.Base.T24
d166 v0 v1 v2 v3 v4 = du166 v2 v3 v4
du166 ::
  Integer -> AgdaAny -> T118 -> MAlonzo.Code.Data.Vec.Base.T24
du166 v0 v1 v2
  = case coe v2 of
      C136 v3 v4
        -> let v6
                 = coe
                     MAlonzo.Code.Relation.Nullary.du60 (coe ())
                     (coe MAlonzo.Code.Data.Nat.Properties.d4834 (coe v3) (coe v0)) in
           case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C190 v7
               -> coe
                    MAlonzo.Code.Data.Vec.Base.du190
                    (coe MAlonzo.Code.Data.Vec.Base.du490 (coe v7) (coe v1)) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Data.Vec.Bounded.Base.split"
d214 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d214 = erased
name234 = "Data.Vec.Bounded.Base.padBoth"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  AgdaAny -> AgdaAny -> T118 -> MAlonzo.Code.Data.Vec.Base.T24
d234 v0 v1 v2 v3 v4 v5 = du234 v2 v3 v4 v5
du234 ::
  Integer ->
  AgdaAny -> AgdaAny -> T118 -> MAlonzo.Code.Data.Vec.Base.T24
du234 v0 v1 v2 v3
  = case coe v3 of
      C136 v4 v5
        -> let v7
                 = coe
                     MAlonzo.Code.Relation.Nullary.du60 (coe ())
                     (coe MAlonzo.Code.Data.Nat.Properties.d4834 (coe v4) (coe v0)) in
           case coe v7 of
             MAlonzo.Code.Data.Nat.Base.C190 v8
               -> coe
                    MAlonzo.Code.Data.Vec.Base.du190
                    (coe
                       MAlonzo.Code.Data.Vec.Base.du490
                       (coe MAlonzo.Code.Data.Nat.Base.d114 (coe v8)) (coe v1))
                    (coe
                       MAlonzo.Code.Data.Vec.Base.du190 (coe v5)
                       (coe
                          MAlonzo.Code.Data.Vec.Base.du490
                          (coe MAlonzo.Code.Data.Nat.Base.d118 (coe v8)) (coe v2)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Data.Vec.Bounded.Base.fromList"
d284 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T118
d284 v0 v1 v2 = du284 v2
du284 :: [AgdaAny] -> T118
du284 v0
  = coe
      du140 (coe MAlonzo.Code.Data.List.Base.du272 v0)
      (coe MAlonzo.Code.Data.Vec.Base.du660 (coe v0))
name288 = "Data.Vec.Bounded.Base.toList"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T118 -> [AgdaAny]
d288 v0 v1 v2 v3 = du288 v3
du288 :: T118 -> [AgdaAny]
du288 v0 = coe MAlonzo.Code.Data.Vec.Base.du652 (coe d132 (coe v0))
name296 = "Data.Vec.Bounded.Base.replicate"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> AgdaAny -> T118
d296 v0 v1 v2 v3 v4 v5 = du296 v2 v5
du296 :: Integer -> AgdaAny -> T118
du296 v0 v1
  = coe
      C136 v0 (coe MAlonzo.Code.Data.Vec.Base.du490 (coe v0) (coe v1))
name304 = "Data.Vec.Bounded.Base.[]"
d304 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T118
d304 v0 v1 v2 = du304
du304 :: T118
du304
  = coe C136 (0 :: Integer) (coe MAlonzo.Code.Data.Vec.Base.C28)
name308 = "Data.Vec.Bounded.Base._∷_"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> T118 -> T118
d308 v0 v1 v2 v3 v4 = du308 v3 v4
du308 :: AgdaAny -> T118 -> T118
du308 v0 v1
  = case coe v1 of
      C136 v2 v3
        -> coe
             C136 (addInt (coe (1 :: Integer)) (coe v2))
             (coe MAlonzo.Code.Data.Vec.Base.C36 v0 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name322 = "Data.Vec.Bounded.Base.≤-cast"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> T118 -> T118
d322 v0 v1 v2 v3 v4 v5 = du322 v5
du322 :: T118 -> T118
du322 v0 = coe v0
name336 = "Data.Vec.Bounded.Base.≡-cast"
d336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T118 -> T118
d336 v0 v1 v2 v3 v4 v5 = du336 v5
du336 :: T118 -> T118
du336 v0 = coe v0
name342 = "Data.Vec.Bounded.Base.map"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> Integer -> T118 -> T118
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v4 v6
du342 :: (AgdaAny -> AgdaAny) -> T118 -> T118
du342 v0 v1
  = case coe v1 of
      C136 v2 v3
        -> coe
             C136 v2 (coe MAlonzo.Code.Data.Vec.Base.du176 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name352 = "Data.Vec.Bounded.Base.reverse"
d352 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T118 -> T118
d352 v0 v1 v2 v3 = du352 v3
du352 :: T118 -> T118
du352 v0
  = case coe v0 of
      C136 v1 v2 -> coe C136 v1 (coe MAlonzo.Code.Data.Vec.Base.du668 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name360 = "Data.Vec.Bounded.Base.alignWith"
d360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  Integer -> T118 -> T118 -> T118
d360 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du360 v6 v8 v9
du360 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  T118 -> T118 -> T118
du360 v0 v1 v2
  = case coe v1 of
      C136 v3 v4
        -> case coe v2 of
             C136 v6 v7
               -> coe
                    C136 (MAlonzo.Code.Data.Nat.Base.d94 (coe v3) (coe v6))
                    (coe MAlonzo.Code.Data.Vec.Base.du214 (coe v0) (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name374 = "Data.Vec.Bounded.Base.zipWith"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> Integer -> T118 -> T118 -> T118
d374 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du374 v6 v8 v9
du374 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T118 -> T118 -> T118
du374 v0 v1 v2
  = case coe v1 of
      C136 v3 v4
        -> case coe v2 of
             C136 v6 v7
               -> coe
                    C136 (MAlonzo.Code.Data.Nat.Base.d104 (coe v3) (coe v6))
                    (coe MAlonzo.Code.Data.Vec.Base.du238 (coe v0) (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name388 = "Data.Vec.Bounded.Base.zip"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T118 -> T118 -> T118
d388 v0 v1 v2 v3 v4 = du388
du388 :: T118 -> T118 -> T118
du388 = coe du374 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name392 = "Data.Vec.Bounded.Base.align"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T118 -> T118 -> T118
d392 v0 v1 v2 v3 v4 = du392
du392 :: T118 -> T118 -> T118
du392 = coe du360 (coe (\ v0 -> v0))
name398 = "Data.Vec.Bounded.Base.take"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T118 -> T118
d398 v0 v1 v2 v3 v4 = du398 v3 v4
du398 :: Integer -> T118 -> T118
du398 v0 v1
  = case coe v0 of
      0 -> coe C136 (0 :: Integer) (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C136 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Data.Vec.Base.C28 -> coe C136 (0 :: Integer) v4
                    MAlonzo.Code.Data.Vec.Base.C36 v7 v8
                      -> let v9 = subInt (coe v3) (coe (1 :: Integer)) in
                         coe du308 (coe v7) (coe du398 (coe v2) (coe C136 v9 v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name418 = "Data.Vec.Bounded.Base.drop"
d418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T118 -> T118
d418 v0 v1 v2 v3 v4 = du418 v3 v4
du418 :: Integer -> T118 -> T118
du418 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C136 v3 v4
               -> case coe v4 of
                    MAlonzo.Code.Data.Vec.Base.C28 -> coe C136 (0 :: Integer) v4
                    MAlonzo.Code.Data.Vec.Base.C36 v7 v8
                      -> let v9 = subInt (coe v3) (coe (1 :: Integer)) in
                         coe du418 (coe v2) (coe C136 v9 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name436 = "Data.Vec.Bounded.Base.rectangle"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d436 v0 v1 v2 = du436 v2
du436 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du436 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du448 (coe v0))
      (coe du454 (coe v0))
name446 = "Data.Vec.Bounded.Base._.sizes"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [MAlonzo.Code.Agda.Builtin.Sigma.T14] -> [Integer]
d446 v0 v1 v2 = du446 v2
du446 :: [MAlonzo.Code.Agda.Builtin.Sigma.T14] -> [Integer]
du446 v0
  = coe
      MAlonzo.Code.Data.List.Base.du20
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v0)
name448 = "Data.Vec.Bounded.Base._.width"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [MAlonzo.Code.Agda.Builtin.Sigma.T14] -> Integer
d448 v0 v1 v2 = du448 v2
du448 :: [MAlonzo.Code.Agda.Builtin.Sigma.T14] -> Integer
du448 v0
  = coe
      MAlonzo.Code.Data.List.Extrema.du124
      MAlonzo.Code.Data.Nat.Properties.d1484 (0 :: Integer)
      (coe du446 (coe v0))
name452 = "Data.Vec.Bounded.Base._.all≤"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
d452 v0 v1 v2 = du452 v2
du452 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
du452 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.Properties.du806 (coe v0)
      (coe
         MAlonzo.Code.Data.List.Extrema.du686
         MAlonzo.Code.Data.Nat.Properties.d1484 (0 :: Integer)
         (coe du446 (coe v0)))
name454 = "Data.Vec.Bounded.Base._.padded"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [MAlonzo.Code.Agda.Builtin.Sigma.T14] -> [T118]
d454 v0 v1 v2 = du454 v2
du454 :: [MAlonzo.Code.Agda.Builtin.Sigma.T14] -> [T118]
du454 v0
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du58
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe v0)
      (coe (\ v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v1)))
