{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Preorder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Nullary

name52 = "Relation.Binary.Reasoning.Preorder._._IsRelatedTo_"
d52 a0 a1 a2 a3 a4 a5 = ()
name54 = "Relation.Binary.Reasoning.Preorder._._∎"
d54 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d54 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.C66
         (coe
            MAlonzo.Code.Relation.Binary.Core.d414
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))
            v1))
name56 = "Relation.Binary.Reasoning.Preorder._._∼⟨_⟩_"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d56 v0 v1 v2 v3 = du56 v3
du56 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du56 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du156
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))
name58 = "Relation.Binary.Reasoning.Preorder._._≈˘⟨_⟩_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d58 v0 v1 v2 v3 = du58 v3
du58 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du58 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du196
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))
name60 = "Relation.Binary.Reasoning.Preorder._._≈⟨_⟩_"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d60 v0 v1 v2 v3 = du60 v3
du60 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du60 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du176
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))
name62 = "Relation.Binary.Reasoning.Preorder._._≡˘⟨_⟩_"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d62 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du62 v8
du62 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du62 v0 = coe v0
name64 = "Relation.Binary.Reasoning.Preorder._._≡⟨_⟩_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d64 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du64 v8
du64 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du64 v0 = coe v0
name66 = "Relation.Binary.Reasoning.Preorder._._≡⟨⟩_"
d66 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d66 v0 = coe v0
name68 = "Relation.Binary.Reasoning.Preorder._.IsEquality"
d68 a0 a1 a2 a3 a4 a5 a6 = ()
name70 = "Relation.Binary.Reasoning.Preorder._.IsEquality?"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Nullary.T14
d70 v0 v1 v2 v3 = du70
du70 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Nullary.T14
du70
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du110 v2)
name72 = "Relation.Binary.Reasoning.Preorder._.begin_"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 -> AgdaAny
d72 v0 v1 v2 v3 = du72 v3
du72 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 -> AgdaAny
du72 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du130
         (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))
name74 = "Relation.Binary.Reasoning.Preorder._.begin-equality_"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  AgdaAny -> AgdaAny
d74 v0 v1 v2 v3 = du74
du74 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  AgdaAny -> AgdaAny
du74
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du144 v2)
name78 = "Relation.Binary.Reasoning.Preorder._.extractEquality"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T94 -> AgdaAny
d78 v0 v1 v2 v3 = du78
du78 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T94 -> AgdaAny
du78
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du120 v2 v3)
name82 = "Relation.Binary.Reasoning.Preorder._.levelOf"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Agda.Primitive.T4
d82 v0 v1 v2 v3 = du82 v1 v2
du82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Agda.Primitive.T4
du82 v0 v1
  = coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du72
           (coe v0) (coe v1) v4)
name86 = "Relation.Binary.Reasoning.Preorder._.relOf"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  AgdaAny -> AgdaAny -> ()
d86 = erased
name98 = "Relation.Binary.Reasoning.Preorder._≈⟨⟩_"
d98 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
d98 v0 v1 v2 v3 = du98 v3
du98 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T54
du98 v0 = coe v0
