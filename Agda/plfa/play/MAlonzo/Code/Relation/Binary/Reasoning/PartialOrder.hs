{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Reasoning.PartialOrder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name132 = "Relation.Binary.Reasoning.PartialOrder._._IsRelatedTo_"
d132 a0 a1 a2 a3 a4 a5 = ()
name134 = "Relation.Binary.Reasoning.PartialOrder._._∎"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d134 v0 v1 v2 v3 = du134 v3
du134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du134 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d126
              (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)) in
    coe
      (\ v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1)) v2))
name136 = "Relation.Binary.Reasoning.PartialOrder._._≡⟨⟩_"
d136 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d136 v0 = coe v0
name138 = "Relation.Binary.Reasoning.PartialOrder._.IsEquality"
d138 a0 a1 a2 a3 a4 a5 a6 = ()
name140 = "Relation.Binary.Reasoning.PartialOrder._.IsEquality?"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d140 v0 v1 v2 v3 = du140
du140 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
du140 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du142 v2
name142 = "Relation.Binary.Reasoning.PartialOrder._.IsStrict"
d142 a0 a1 a2 a3 a4 a5 a6 = ()
name144 = "Relation.Binary.Reasoning.PartialOrder._.IsStrict?"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d144 v0 v1 v2 v3 = du144
du144 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
du144 v0 v1 v2
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du108 v2
name146 = "Relation.Binary.Reasoning.PartialOrder._.begin_"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 -> AgdaAny
d146 v0 v1 v2 v3 = du146 v3
du146 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 -> AgdaAny
du146 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
      (coe (\ v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d28))
name148
  = "Relation.Binary.Reasoning.PartialOrder._.begin-equality_"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> AgdaAny
d148 v0 v1 v2 v3 = du148
du148 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> AgdaAny
du148 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190 v2
name150 = "Relation.Binary.Reasoning.PartialOrder._.begin-strict_"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d150 v0 v1 v2 v3 = du150
du150 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du150 v0 v1 v2 v3
  = coe MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du176 v2
name154
  = "Relation.Binary.Reasoning.PartialOrder._.extractEquality"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T126 -> AgdaAny
d154 v0 v1 v2 v3 = du154
du154 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T126 -> AgdaAny
du154 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du152 v2 v3
name156 = "Relation.Binary.Reasoning.PartialOrder._.extractStrict"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T92 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d156 v0 v1 v2 v3 = du156
du156 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T92 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du156 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du118 v2 v3
name164 = "Relation.Binary.Reasoning.PartialOrder._.step-<"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d164 v0 v1 v2 v3 = du164 v3
du164 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du202
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du584
         (MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))))
         (let v1 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du112
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du250
         (let v1
                = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v0) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.d36
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d80
               (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d128
            (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
         (let v1 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du106
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name166 = "Relation.Binary.Reasoning.PartialOrder._.step-≈"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d166 v0 v1 v2 v3 = du166 v3
du166 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du254
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))))
         (let v1 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du112
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name168 = "Relation.Binary.Reasoning.PartialOrder._.step-≈˘"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d168 v0 v1 v2 v3 = du168 v3
du168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du280
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du322
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))))
         (let v1 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du112
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name170 = "Relation.Binary.Reasoning.PartialOrder._.step-≡"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d170 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du170 v7
du170 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du170 v0 = coe v0
name172 = "Relation.Binary.Reasoning.PartialOrder._.step-≡˘"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d172 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du172 v7
du172 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du172 v0 = coe v0
name174 = "Relation.Binary.Reasoning.PartialOrder._.step-≤"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d174 v0 v1 v2 v3 = du174 v3
du174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du268
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d128
            (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
         (let v1 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du100
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))))
name194 = "Relation.Binary.Reasoning.PartialOrder._≈⟨⟩_"
d194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d194 v0 v1 v2 v3 = du194 v3
du194 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du194 v0 = coe v0
