{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures

name18
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid"
d18 a0 a1 a2 a3 = ()
newtype T18
  = C279 MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T22
name34
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid.Carrier"
d34 :: T18 -> AgdaAny -> ()
d34 = erased
name36
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid._≈_"
d36 :: T18 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d36 = erased
name38
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid.isEquivalence"
d38 ::
  T18 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T22
d38 v0
  = case coe v0 of
      C279 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name42
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid._.refl"
d42 :: T18 -> AgdaAny -> AgdaAny -> AgdaAny
d42 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d30
      (coe d38 (coe v0))
name44
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid._.reflexive"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T18 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d44 v0 v1 v2 v3 v4 = du44 v4
du44 ::
  T18 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du44 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.du38
      (coe d38 (coe v0)) v1 v2
name46
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid._.sym"
d46 ::
  T18 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d46 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d32
      (coe d38 (coe v0))
name48
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedSetoid._.trans"
d48 ::
  T18 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d48 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d34
      (coe d38 (coe v0))
name60
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder"
d60 a0 a1 a2 a3 a4 = ()
newtype T60
  = C1285 MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T44
name80
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder.Carrier"
d80 :: T60 -> AgdaAny -> ()
d80 = erased
name82
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._≈_"
d82 :: T60 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d82 = erased
name84
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._∼_"
d84 :: T60 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d84 = erased
name86
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder.isPreorder"
d86 ::
  T60 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T44
d86 v0
  = case coe v0 of
      C1285 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name90
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.isEquivalence"
d90 ::
  T60 ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.T22
d90 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d60
      (coe d86 (coe v0))
name92
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.refl"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T60 -> AgdaAny -> AgdaAny -> AgdaAny
d92 v0 v1 v2 v3 v4 v5 = du92 v5
du92 :: T60 -> AgdaAny -> AgdaAny -> AgdaAny
du92 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.du80
      (coe d86 (coe v0))
name94
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.reflexive"
d94 ::
  T60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d94 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d66
      (coe d86 (coe v0))
name96
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.trans"
d96 ::
  T60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d96 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d68
      (coe d86 (coe v0))
name100
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.Eq.refl"
d100 :: T60 -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d30
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d60
         (coe d86 (coe v0)))
name102
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.Eq.reflexive"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d102 v0 v1 v2 v3 v4 v5 = du102 v5
du102 ::
  T60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du102 v0
  = let v1 = d86 (coe v0) in
    \ v2 v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.du38
        (coe
           MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d60
           (coe v1))
        v2 v3
name104
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.Eq.sym"
d104 ::
  T60 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d32
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d60
         (coe d86 (coe v0)))
name106
  = "Relation.Binary.Indexed.Heterogeneous.Bundles.IndexedPreorder._.Eq.trans"
d106 ::
  T60 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0
  = coe
      MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d60
         (coe d86 (coe v0)))
