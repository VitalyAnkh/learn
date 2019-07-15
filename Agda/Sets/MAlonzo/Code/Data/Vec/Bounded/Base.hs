{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Data.Vec.Base

name28 = "Data.Vec.Bounded.Base.Vec≤"
d28 a0 a1 a2 = ()
data T28 = C46 Integer MAlonzo.Code.Data.Vec.Base.T24
name40 = "Data.Vec.Bounded.Base.Vec≤.length"
d40 :: T28 -> Integer
d40 v0
  = case coe v0 of
      C46 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name42 = "Data.Vec.Bounded.Base.Vec≤.vec"
d42 :: T28 -> MAlonzo.Code.Data.Vec.Base.T24
d42 v0
  = case coe v0 of
      C46 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Data.Vec.Bounded.Base.fromVec"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T28
d50 v0 v1 v2 v3 = du50 v2 v3
du50 :: Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T28
du50 v0 v1 = coe (\ v2 v3 v4 -> C46 v2 v3) v0 v1 erased
name60 = "Data.Vec.Bounded.Base.replicate"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> AgdaAny -> T28
d60 v0 v1 v2 v3 v4 v5 = du60 v2 v5
du60 :: Integer -> AgdaAny -> T28
du60 v0 v1
  = coe
      (\ v2 v3 v4 -> C46 v2 v3) v0
      (MAlonzo.Code.Data.Vec.Base.du484 (coe v0) (coe v1)) erased
name68 = "Data.Vec.Bounded.Base.[]"
d68 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T28
d68 v0 v1 v2 = du68
du68 :: T28
du68
  = coe
      (\ v0 v1 v2 -> C46 v0 v1) (0 :: Integer)
      MAlonzo.Code.Data.Vec.Base.C28 erased
name72 = "Data.Vec.Bounded.Base._∷_"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> T28 -> T28
d72 v0 v1 v2 v3 v4 = du72 v3 v4
du72 :: AgdaAny -> T28 -> T28
du72 v0 v1
  = case coe v1 of
      C46 v2 v3
        -> coe
             (\ v5 v6 v7 -> C46 v5 v6) (addInt (coe (1 :: Integer)) (coe v2))
             (coe
                (\ v5 v6 v7 -> MAlonzo.Code.Data.Vec.Base.C36 v6 v7) erased v0 v3)
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
name86 = "Data.Vec.Bounded.Base.≤-cast"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> T28 -> T28
d86 v0 v1 v2 v3 v4 v5 = du86 v5
du86 :: T28 -> T28
du86 v0 = coe v0
name100 = "Data.Vec.Bounded.Base.≡-cast"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T28 -> T28
d100 v0 v1 v2 v3 v4 v5 = du100 v5
du100 :: T28 -> T28
du100 v0 = coe v0
name106 = "Data.Vec.Bounded.Base.map"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> Integer -> T28 -> T28
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v4 v6
du106 :: (AgdaAny -> AgdaAny) -> T28 -> T28
du106 v0 v1
  = case coe v1 of
      C46 v2 v3
        -> coe
             (\ v5 v6 v7 -> C46 v5 v6) v2
             (MAlonzo.Code.Data.Vec.Base.du170 (coe v0) (coe v3)) erased
      _ -> MAlonzo.RTE.mazUnreachableError
name116 = "Data.Vec.Bounded.Base.reverse"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T28 -> T28
d116 v0 v1 v2 v3 = du116 v3
du116 :: T28 -> T28
du116 v0
  = case coe v0 of
      C46 v1 v2
        -> coe
             (\ v4 v5 v6 -> C46 v4 v5) v1
             (coe MAlonzo.Code.Data.Vec.Base.du654 v2) erased
      _ -> MAlonzo.RTE.mazUnreachableError
name124 = "Data.Vec.Bounded.Base.alignWith"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  Integer -> T28 -> T28 -> T28
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du124 v6 v8 v9
du124 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T28 -> T28 -> T28
du124 v0 v1 v2
  = case coe v1 of
      C46 v3 v4
        -> case coe v2 of
             C46 v6 v7
               -> coe
                    (\ v9 v10 v11 -> C46 v9 v10)
                    (MAlonzo.Code.Data.Nat.Base.d74 (coe v3) (coe v6))
                    (MAlonzo.Code.Data.Vec.Base.du208 (coe v0) (coe v4) (coe v7))
                    erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name138 = "Data.Vec.Bounded.Base.zipWith"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> Integer -> T28 -> T28 -> T28
d138 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du138 v6 v8 v9
du138 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T28 -> T28 -> T28
du138 v0 v1 v2
  = case coe v1 of
      C46 v3 v4
        -> case coe v2 of
             C46 v6 v7
               -> coe
                    (\ v9 v10 v11 -> C46 v9 v10)
                    (MAlonzo.Code.Data.Nat.Base.d84 (coe v3) (coe v6))
                    (MAlonzo.Code.Data.Vec.Base.du232 (coe v0) (coe v4) (coe v7))
                    erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name152 = "Data.Vec.Bounded.Base.zip"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T28 -> T28 -> T28
d152 v0 v1 v2 v3 v4 = du152
du152 :: T28 -> T28 -> T28
du152 = coe (du138 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32))
name156 = "Data.Vec.Bounded.Base.align"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T28 -> T28 -> T28
d156 v0 v1 v2 v3 v4 = du156
du156 :: T28 -> T28 -> T28
du156 = coe (du124 (coe (\ v0 -> v0)))
