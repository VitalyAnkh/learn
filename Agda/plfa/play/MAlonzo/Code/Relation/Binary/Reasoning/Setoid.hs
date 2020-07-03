{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures

name38 = "Relation.Binary.Reasoning.Setoid._._IsRelatedTo_"
d38 a0 a1 a2 a3 a4 = ()
name40 = "Relation.Binary.Reasoning.Setoid._._∎⟨_⟩"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d40 v0 v1 v2 v3 v4 = du40 v4
du40 ::
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du40 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32 (coe v0)
name42 = "Relation.Binary.Reasoning.Setoid._._≡⟨⟩_"
d42 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d42 v0 = coe v0
name44 = "Relation.Binary.Reasoning.Setoid._.begin_"
d44 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 -> AgdaAny
d44 = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
name48 = "Relation.Binary.Reasoning.Setoid._.step-≈"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d48 v0 v1 v2 = du48 v2
du48 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du48 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
      (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
name50 = "Relation.Binary.Reasoning.Setoid._.step-≈˘"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d50 v0 v1 v2 = du50 v2
du50 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du50 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du58
      (coe MAlonzo.Code.Relation.Binary.Bundles.du74 (coe v0))
name52 = "Relation.Binary.Reasoning.Setoid._.step-≡"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d52 v0 v1 v2 v3 v4 v5 v6 v7 = du52 v6
du52 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du52 v0 = coe v0
name54 = "Relation.Binary.Reasoning.Setoid._.step-≡˘"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d54 v0 v1 v2 v3 v4 v5 v6 v7 = du54 v6
du54 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du54 v0 = coe v0
name62 = "Relation.Binary.Reasoning.Setoid._._∎"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
d62 v0 v1 v2 = du62 v2
du62 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.T24
du62 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d34
              (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) in
    coe
      (\ v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
           (coe v1 v2))
