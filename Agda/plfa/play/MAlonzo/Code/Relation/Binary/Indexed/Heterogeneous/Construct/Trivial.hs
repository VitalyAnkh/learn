{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures

name24
  = "Relation.Binary.Indexed.Heterogeneous.Construct.Trivial._.Aᵢ"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> ()
d24 = erased
name32
  = "Relation.Binary.Indexed.Heterogeneous.Construct.Trivial._.isIndexedEquivalence"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T22
d32 v0 v1 v2 v3 v4 v5 v6 = du32 v6
du32 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T22
du32 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.C701
      (coe
         (\ v1 -> MAlonzo.Code.Relation.Binary.Structures.d34 (coe v0)))
      (coe
         (\ v1 v2 -> MAlonzo.Code.Relation.Binary.Structures.d36 (coe v0)))
      (coe
         (\ v1 v2 v3 ->
            MAlonzo.Code.Relation.Binary.Structures.d38 (coe v0)))
name60
  = "Relation.Binary.Indexed.Heterogeneous.Construct.Trivial._.isIndexedPreorder"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T44
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du60 v8
du60 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T44
du60 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.C3111
      (coe
         du32 (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)))
      (coe
         (\ v1 v2 -> MAlonzo.Code.Relation.Binary.Structures.d82 (coe v0)))
      (coe
         (\ v1 v2 v3 ->
            MAlonzo.Code.Relation.Binary.Structures.d84 (coe v0)))
name100
  = "Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.indexedSetoid"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T18
d100 v0 v1 v2 v3 v4 = du100 v4
du100 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T18
du100 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.C279
      (coe du32 (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
name136
  = "Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.indexedPreorder"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T60
d136 v0 v1 v2 v3 v4 v5 = du136 v5
du136 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T60
du136 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.C1285
      (coe du60 (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
