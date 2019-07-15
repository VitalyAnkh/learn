{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name38 = "Relation.Binary.Reasoning.Setoid._._IsRelatedTo_"
d38 a0 a1 a2 a3 a4 = ()
name40 = "Relation.Binary.Reasoning.Setoid._._∎"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d40 v0 v1 v2 = du40 v2
du40 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du40 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Core.d414
              (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))) in
    coe
      (\ v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34 (coe v1 v2))
name42 = "Relation.Binary.Reasoning.Setoid._._∼⟨_⟩_"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d42 v0 v1 v2 = du42 v2
du42 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du42 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
         (coe
            (MAlonzo.Code.Relation.Binary.Core.d418
               (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))))
name44 = "Relation.Binary.Reasoning.Setoid._._≡˘⟨_⟩_"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d44 v0 v1 v2 v3 v4 v5 v6 v7 = du44 v7
du44 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du44 v0 = coe v0
name46 = "Relation.Binary.Reasoning.Setoid._._≡⟨_⟩_"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d46 v0 v1 v2 v3 v4 v5 v6 v7 = du46 v7
du46 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du46 v0 = coe v0
name48 = "Relation.Binary.Reasoning.Setoid._._≡⟨⟩_"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d48 v0 v1 v2 v3 v4 v5 = du48 v5
du48 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du48 v0 = coe v0
name50 = "Relation.Binary.Reasoning.Setoid._.begin_"
d50 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 -> AgdaAny
d50 = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
name64 = "Relation.Binary.Reasoning.Setoid._≈˘⟨_⟩_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
d64 v0 v1 v2 v3 v4 v5 v6 v7 = du64 v2 v3 v4 v5 v6 v7
du64 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T26
du64 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
         (coe
            (MAlonzo.Code.Relation.Binary.Core.d418
               (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))))
         (coe v1) (coe v2) (coe v3)
         (coe
            MAlonzo.Code.Relation.Binary.Core.d416
            (MAlonzo.Code.Relation.Binary.d144 (coe v0)) v2 v1 v4)
         (coe v5))
