{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Vec.Bounded where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Vec
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Bounded.Base
import qualified MAlonzo.Code.Relation.Nullary

name18 = "Data.Vec.Bounded.lift"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> Integer) ->
  (Integer ->
   Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6) ->
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Bounded.Base.T118) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d18 v0 v1 v2 v3 v4 v5 v6 = du18 v4 v6
du18 ::
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Bounded.Base.T118) ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du18 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Bounded.Base.C136 v2 v3 -> coe v0 v2 v3
      _ -> MAlonzo.RTE.mazUnreachableError
name32 = "Data.Vec.Bounded.lift′"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Bounded.Base.T118) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d32 v0 v1 = du32
du32 ::
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Bounded.Base.T118) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du32 v0 v1 v2 = coe du18 v0 v2
name48 = "Data.Vec.Bounded._.filter"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d48 v0 v1 v2 v3 v4 v5 = du48 v4 v5
du48 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du48 v0 v1
  = coe
      du32 (\ v2 v3 -> coe MAlonzo.Code.Data.Vec.du24 (coe v0) v3) v1
name52 = "Data.Vec.Bounded._.takeWhile"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d52 v0 v1 v2 v3 v4 v5 = du52 v4 v5
du52 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du52 v0 v1
  = coe
      du32 (\ v2 v3 -> coe MAlonzo.Code.Data.Vec.du44 (coe v0) v3) v1
name56 = "Data.Vec.Bounded._.dropWhile"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
d56 v0 v1 v2 v3 v4 v5 = du56 v4 v5
du56 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
  MAlonzo.Code.Data.Vec.Bounded.Base.T118
du56 v0 v1 = coe du32 (coe MAlonzo.Code.Data.Vec.du64 (coe v0)) v1
