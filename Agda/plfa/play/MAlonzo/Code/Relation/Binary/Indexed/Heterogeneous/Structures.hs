{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name22
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedEquivalence"
d22 a0 a1 a2 a3 a4 a5 = ()
data T22
  = C701 (AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny ->
          AgdaAny ->
          AgdaAny ->
          AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name30
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedEquivalence.refl"
d30 :: T22 -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0
  = case coe v0 of
      C701 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name32
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedEquivalence.sym"
d32 ::
  T22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d32 v0
  = case coe v0 of
      C701 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name34
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedEquivalence.trans"
d34 ::
  T22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d34 v0
  = case coe v0 of
      C701 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name38
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedEquivalence.reflexive"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T22 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du38 v6 v7 v8
du38 :: T22 -> AgdaAny -> AgdaAny -> AgdaAny
du38 v0 v1 v2 = coe d30 v0 v1 v2
name44
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder"
d44 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T44
  = C3111 T22
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny ->
           AgdaAny ->
           AgdaAny ->
           AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name60
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.isEquivalence"
d60 :: T44 -> T22
d60 v0
  = case coe v0 of
      C3111 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name66
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.reflexive"
d66 ::
  T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d66 v0
  = case coe v0 of
      C3111 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name68
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.trans"
d68 ::
  T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d68 v0
  = case coe v0 of
      C3111 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name72
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.Eq.refl"
d72 :: T44 -> AgdaAny -> AgdaAny -> AgdaAny
d72 v0 = coe d30 (coe d60 (coe v0))
name74
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.Eq.reflexive"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d74 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du74 v8
du74 ::
  T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du74 v0 v1 v2 v3 v4 = coe du38 (coe d60 (coe v0)) v1 v2
name76
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.Eq.sym"
d76 ::
  T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d76 v0 = coe d32 (coe d60 (coe v0))
name78
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.Eq.trans"
d78 ::
  T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d78 v0 = coe d34 (coe d60 (coe v0))
name80
  = "Relation.Binary.Indexed.Heterogeneous.Structures.IsIndexedPreorder.refl"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T44 -> AgdaAny -> AgdaAny -> AgdaAny
d80 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du80 v8 v9 v10
du80 :: T44 -> AgdaAny -> AgdaAny -> AgdaAny
du80 v0 v1 v2
  = coe d66 v0 v1 v1 v2 v2 (coe d30 (d60 (coe v0)) v1 v2)
