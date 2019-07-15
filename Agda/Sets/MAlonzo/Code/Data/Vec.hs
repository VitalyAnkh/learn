{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Vec where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Bounded.Base
import qualified MAlonzo.Code.Relation.Nullary

name24 = "Data.Vec._.filter"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T28
d24 v0 v1 v2 v3 v4 v5 v6 = du24 v4 v6
du24 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T28
du24 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Vec.Bounded.Base.C46 v2 v3)
             (0 :: Integer) v1 erased
      MAlonzo.Code.Data.Vec.Base.C36 v3 v4
        -> let v5 = coe v0 v3 in
           case coe v5 of
             MAlonzo.Code.Relation.Nullary.C22 v6
               -> coe
                    (MAlonzo.Code.Data.Vec.Bounded.Base.du72
                       (coe v3) (coe (du24 (coe v0) (coe v4))))
             MAlonzo.Code.Relation.Nullary.C26 -> coe (du24 (coe v0) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name48 = "Data.Vec._.takeWhile"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T28
d48 v0 v1 v2 v3 v4 v5 v6 = du48 v4 v6
du48 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T28
du48 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Vec.Bounded.Base.C46 v2 v3)
             (0 :: Integer) v1 erased
      MAlonzo.Code.Data.Vec.Base.C36 v3 v4
        -> let v5 = coe v0 v3 in
           case coe v5 of
             MAlonzo.Code.Relation.Nullary.C22 v6
               -> coe
                    (MAlonzo.Code.Data.Vec.Bounded.Base.du72
                       (coe v3) (coe (du48 (coe v0) (coe v4))))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    (\ v7 v8 v9 -> MAlonzo.Code.Data.Vec.Bounded.Base.C46 v7 v8)
                    (0 :: Integer) MAlonzo.Code.Data.Vec.Base.C28 erased
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Data.Vec._.dropWhile"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T28
d72 v0 v1 v2 v3 v4 v5 v6 = du72 v4 v5 v6
du72 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T28
du72 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe
             (\ v3 v4 v5 -> MAlonzo.Code.Data.Vec.Bounded.Base.C46 v3 v4)
             (0 :: Integer) v2 erased
      MAlonzo.Code.Data.Vec.Base.C36 v4 v5
        -> let v6 = subInt (coe v1) (coe (1 :: Integer)) in
           let v7 = coe v0 v4 in
           case coe v7 of
             MAlonzo.Code.Relation.Nullary.C22 v8
               -> coe (du72 (coe v0) (coe v6) (coe v5))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    (MAlonzo.Code.Data.Vec.Bounded.Base.du50
                       (coe v1)
                       (coe
                          (\ v9 v10 v11 -> MAlonzo.Code.Data.Vec.Base.C36 v10 v11) erased v4
                          v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
