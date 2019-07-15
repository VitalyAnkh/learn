{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Nullary

name106 = "Relation.Binary.Reasoning.PartialOrder._._<⟨_⟩_"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d106 v0 v1 v2 v3 = du106 v3
du106 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du106 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du202
         (coe
            MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du450
            (MAlonzo.Code.Relation.Binary.d332 (coe v0)))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du160
               (coe
                  (MAlonzo.Code.Relation.Binary.d36
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))))
               (let v1 = MAlonzo.Code.Relation.Binary.d332 (coe v0) in
                coe
                  (MAlonzo.Code.Relation.Binary.du66
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1)))))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du80
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d416
                     (coe
                        (MAlonzo.Code.Relation.Binary.d36
                           (coe
                              (MAlonzo.Code.Relation.Binary.d274
                                 (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.d40
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.d276
                     (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))
               (let v1 = MAlonzo.Code.Relation.Binary.d332 (coe v0) in
                coe
                  (MAlonzo.Code.Relation.Binary.du60
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))))))
name108 = "Relation.Binary.Reasoning.PartialOrder._._IsRelatedTo_"
d108 a0 a1 a2 a3 a4 a5 = ()
name110 = "Relation.Binary.Reasoning.PartialOrder._._∎"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d110 v0 v1 v2 v3 = du110 v3
du110 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du110 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.d274
              (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0))) in
    coe
      (\ v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C84
           (coe
              MAlonzo.Code.Relation.Binary.Core.d414
              (MAlonzo.Code.Relation.Binary.d36 (coe v1)) v2))
name112 = "Relation.Binary.Reasoning.PartialOrder._._≈˘⟨_⟩_"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d112 v0 v1 v2 v3 = du112 v3
du112 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du112 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du280
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du160
               (coe
                  (MAlonzo.Code.Relation.Binary.d36
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))))
               (let v1 = MAlonzo.Code.Relation.Binary.d332 (coe v0) in
                coe
                  (MAlonzo.Code.Relation.Binary.du66
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))))))
name114 = "Relation.Binary.Reasoning.PartialOrder._._≈⟨_⟩_"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d114 v0 v1 v2 v3 = du114 v3
du114 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du114 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du254
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du160
               (coe
                  (MAlonzo.Code.Relation.Binary.d36
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))))
               (let v1 = MAlonzo.Code.Relation.Binary.d332 (coe v0) in
                coe
                  (MAlonzo.Code.Relation.Binary.du66
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))))))
name116 = "Relation.Binary.Reasoning.PartialOrder._._≡˘⟨_⟩_"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du116 v8
du116 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du116 v0 = coe v0
name118 = "Relation.Binary.Reasoning.PartialOrder._._≡⟨_⟩_"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d118 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du118 v8
du118 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du118 v0 = coe v0
name120 = "Relation.Binary.Reasoning.PartialOrder._._≡⟨⟩_"
d120 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d120 v0 = coe v0
name122 = "Relation.Binary.Reasoning.PartialOrder._._≤⟨_⟩_"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d122 v0 v1 v2 v3 = du122 v3
du122 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du122 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du98
               (coe
                  (MAlonzo.Code.Relation.Binary.d40
                     (coe
                        (MAlonzo.Code.Relation.Binary.d274
                           (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.d276
                     (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))
               (let v1 = MAlonzo.Code.Relation.Binary.d332 (coe v0) in
                coe
                  (MAlonzo.Code.Relation.Binary.du54
                     (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))))))
name124 = "Relation.Binary.Reasoning.PartialOrder._.IsEquality"
d124 a0 a1 a2 a3 a4 a5 a6 = ()
name126 = "Relation.Binary.Reasoning.PartialOrder._.IsEquality?"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
d126 v0 v1 v2 v3 = du126
du126 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
du126
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du140 v2)
name128 = "Relation.Binary.Reasoning.PartialOrder._.IsStrict"
d128 a0 a1 a2 a3 a4 a5 a6 = ()
name130 = "Relation.Binary.Reasoning.PartialOrder._.IsStrict?"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
d130 v0 v1 v2 v3 = du130
du130 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
du130
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du106 v2)
name132 = "Relation.Binary.Reasoning.PartialOrder._.begin_"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 -> AgdaAny
d132 v0 v1 v2 v3 = du132 v3
du132 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 -> AgdaAny
du132 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0)))))
         (coe (\ v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d28)))
name134
  = "Relation.Binary.Reasoning.PartialOrder._.begin-equality_"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> AgdaAny
d134 v0 v1 v2 v3 = du134
du134 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> AgdaAny
du134
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190 v2)
name136 = "Relation.Binary.Reasoning.PartialOrder._.begin-strict_"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d136 v0 v1 v2 v3 = du136
du136 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du136
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du176 v2)
name140
  = "Relation.Binary.Reasoning.PartialOrder._.extractEquality"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T124 -> AgdaAny
d140 v0 v1 v2 v3 = du140
du140 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T124 -> AgdaAny
du140
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du150 v2 v3)
name142 = "Relation.Binary.Reasoning.PartialOrder._.extractStrict"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T90 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d142 v0 v1 v2 v3 = du142
du142 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T90 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du142
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du116 v2 v3)
name168 = "Relation.Binary.Reasoning.PartialOrder._≈⟨⟩_"
d168 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d168 v0 v1 v2 v3 = du168 v3
du168 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du168 v0 = coe v0
