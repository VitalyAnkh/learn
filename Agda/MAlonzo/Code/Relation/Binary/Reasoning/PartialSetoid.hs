{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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

name30 = "Relation.Binary.Reasoning.PartialSetoid._._IsRelatedTo_"
d30 a0 a1 a2 a3 a4 = ()
name32 = "Relation.Binary.Reasoning.PartialSetoid._._∎⟨_⟩"
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
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32 (coe v0))
name34 = "Relation.Binary.Reasoning.PartialSetoid._._∼⟨_⟩_"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d34 v0 v1 v2 = du34 v2
du34 ::
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du34 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d24
               (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v0))))))
name36 = "Relation.Binary.Reasoning.PartialSetoid._._≡˘⟨_⟩_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d36 v0 v1 v2 v3 v4 v5 v6 v7 = du36 v7
du36 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du36 v0 = coe v0
name38 = "Relation.Binary.Reasoning.PartialSetoid._._≡⟨_⟩_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d38 v0 v1 v2 v3 v4 v5 v6 v7 = du38 v7
du38 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du38 v0 = coe v0
name40 = "Relation.Binary.Reasoning.PartialSetoid._._≡⟨⟩_"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d40 v0 v1 v2 v3 v4 v5 = du40 v5
du40 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du40 v0 = coe v0
name42 = "Relation.Binary.Reasoning.PartialSetoid._.begin_"
d42 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 -> AgdaAny
d42 = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
name56 = "Relation.Binary.Reasoning.PartialSetoid._≈˘⟨_⟩_"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d56 v0 v1 v2 v3 v4 v5 v6 v7 = du56 v2 v3 v4 v5 v6 v7
du56 ::
  MAlonzo.Code.Relation.Binary.Bundles.T10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du56 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d24
               (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v0)))))
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d22
            (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v0)) v2 v1 v4)
         (coe v5))
