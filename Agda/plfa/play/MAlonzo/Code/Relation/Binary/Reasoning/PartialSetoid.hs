{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Structures

name30
  = "Relation.Binary.Reasoning.PartialSetoid.Base._IsRelatedTo_"
d30 a0 a1 a2 a3 a4 = ()
name32 = "Relation.Binary.Reasoning.PartialSetoid.Base._∎⟨_⟩"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d32 v0 v1 v2 v3 v4 = du32 v4
du32 ::
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du32 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32 (coe v0)
name34 = "Relation.Binary.Reasoning.PartialSetoid.Base._≡⟨⟩_"
d34 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d34 v0 = coe v0
name36 = "Relation.Binary.Reasoning.PartialSetoid.Base.begin_"
d36 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 -> AgdaAny
d36 = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
name42 = "Relation.Binary.Reasoning.PartialSetoid.Base.step-≡"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d42 v0 v1 v2 v3 v4 v5 v6 v7 = du42 v6
du42 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du42 v0 = coe v0
name44 = "Relation.Binary.Reasoning.PartialSetoid.Base.step-≡˘"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d44 v0 v1 v2 v3 v4 v5 v6 v7 = du44 v6
du44 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du44 v0 = coe v0
name50 = "Relation.Binary.Reasoning.PartialSetoid.step-≈"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d50 v0 v1 v2 = du50 v2
du50 ::
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du50 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d24
         (coe MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v0)))
name58 = "Relation.Binary.Reasoning.PartialSetoid.step-≈˘"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d58 v0 v1 v2 v3 v4 v5 v6 v7 = du58 v2 v3 v4 v5 v6 v7
du58 ::
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du58 v0 v1 v2 v3 v4 v5
  = coe
      du50 v0 v1 v2 v3 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d22
         (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v0)) v2 v1 v5)
