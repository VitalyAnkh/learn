{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Decidable where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name14 = "Relation.Nullary.Decidable.map"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d14 v0 v1 v2 v3 v4 = du14 v4
du14 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du14 v0
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
      (coe
         MAlonzo.Code.Function.Equality.d38
         (coe MAlonzo.Code.Function.Equivalence.d34 (coe v0)))
name62 = "Relation.Nullary.Decidable._._._≈_"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 -> AgdaAny -> AgdaAny -> ()
d62 = erased
name66 = "Relation.Nullary.Decidable._._._≈_"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 -> AgdaAny -> AgdaAny -> ()
d66 = erased
name68 = "Relation.Nullary.Decidable._.via-injection"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d68 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du68 v6 v7 v8 v9
du68 ::
  MAlonzo.Code.Function.Injection.T88 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du68 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
      (coe MAlonzo.Code.Function.Injection.d108 v0 v2 v3)
      (coe
         v1
         (coe
            MAlonzo.Code.Function.Equality.d38
            (MAlonzo.Code.Function.Injection.d106 (coe v0)) v2)
         (coe
            MAlonzo.Code.Function.Equality.d38
            (MAlonzo.Code.Function.Injection.d106 (coe v0)) v3))
