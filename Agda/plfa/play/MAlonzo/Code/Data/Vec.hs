{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d24 v0 v1 v2 v3 v4 v5 v6 = du24 v4 v6
du24 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du24 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer) v1
      MAlonzo.Code.Data.Vec.Base.C36 v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
           if coe v5
             then coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.du308 (coe v3)
                    (coe du24 (coe v0) (coe v4))
             else coe du24 (coe v0) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Data.Vec._.takeWhile"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d44 v0 v1 v2 v3 v4 v5 v6 = du44 v4 v6
du44 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du44 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer) v1
      MAlonzo.Code.Data.Vec.Base.C36 v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
           if coe v5
             then coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.du308 (coe v3)
                    (coe du44 (coe v0) (coe v4))
             else coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer)
                    (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> MAlonzo.RTE.mazUnreachableError
name64 = "Data.Vec._.dropWhile"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d64 v0 v1 v2 v3 v4 v5 v6 = du64 v4 v5 v6
du64 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du64 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer) v2
      MAlonzo.Code.Data.Vec.Base.C36 v4 v5
        -> let v6 = subInt (coe v1) (coe (1 :: Integer)) in
           let v7 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v4) in
           if coe v7
             then coe du64 (coe v0) (coe v6) (coe v5)
             else coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.du140 (coe v1)
                    (coe MAlonzo.Code.Data.Vec.Base.C36 v4 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
