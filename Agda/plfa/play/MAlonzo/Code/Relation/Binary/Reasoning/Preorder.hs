{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.Preorder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name66 = "Relation.Binary.Reasoning.Preorder._._IsRelatedTo_"
d66 a0 a1 a2 a3 a4 a5 = ()
name68 = "Relation.Binary.Reasoning.Preorder._._∎"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d68 v0 v1 v2 v3 = du68 v3
du68 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du68 v0
  = let v1 = MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0) in
    coe
      (\ v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.C68
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1)) v2))
name70 = "Relation.Binary.Reasoning.Preorder._._≡⟨⟩_"
d70 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d70 v0 = coe v0
name72 = "Relation.Binary.Reasoning.Preorder._.IsEquality"
d72 a0 a1 a2 a3 a4 a5 a6 = ()
name74 = "Relation.Binary.Reasoning.Preorder._.IsEquality?"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Nullary.T32
d74 v0 v1 v2 v3 = du74
du74 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Nullary.T32
du74 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du90 v2
name76 = "Relation.Binary.Reasoning.Preorder._.begin_"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 -> AgdaAny
d76 v0 v1 v2 v3 = du76 v3
du76 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 -> AgdaAny
du76 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du110
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))
name78 = "Relation.Binary.Reasoning.Preorder._.begin-equality_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> AgdaAny
d78 v0 v1 v2 v3 = du78
du78 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> AgdaAny
du78 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du124 v2
name82 = "Relation.Binary.Reasoning.Preorder._.extractEquality"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T74 -> AgdaAny
d82 v0 v1 v2 v3 = du82
du82 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T74 -> AgdaAny
du82 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du100 v2 v3
name88 = "Relation.Binary.Reasoning.Preorder._.step-∼"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d88 v0 v1 v2 v3 = du88 v3
du88 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du88 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du136
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))
name90 = "Relation.Binary.Reasoning.Preorder._.step-≈"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d90 v0 v1 v2 v3 = du90 v3
du90 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du90 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du156
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))
name92 = "Relation.Binary.Reasoning.Preorder._.step-≈˘"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d92 v0 v1 v2 v3 = du92 v3
du92 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du92 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du176
      (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))
name94 = "Relation.Binary.Reasoning.Preorder._.step-≡"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d94 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du94 v7
du94 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du94 v0 = coe v0
name96 = "Relation.Binary.Reasoning.Preorder._.step-≡˘"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du96 v7
du96 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du96 v0 = coe v0
name108 = "Relation.Binary.Reasoning.Preorder._≈⟨⟩_"
d108 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
d108 v0 v1 v2 v3 = du108 v3
du108 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T56
du108 v0 = coe v0
