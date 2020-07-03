{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Properties.TotalOrder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name138
  = "Relation.Binary.Properties.TotalOrder.PosetProperties._<_"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> ()
d138 = erased
name140
  = "Relation.Binary.Properties.TotalOrder.PosetProperties._≥_"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> ()
d140 = erased
name142
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.asym"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d142 = erased
name144
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.irrefl"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d144 = erased
name146
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.<-isStrictPartialOrder"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d146 v0 v1 v2 v3 = du146 v3
du146 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du146 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du166
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0))
name148
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.<-resp-≈"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d148 v0 v1 v2 v3 = du148 v3
du148 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du148 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d240
      (coe MAlonzo.Code.Relation.Binary.Properties.Poset.du166 (coe v1))
name150
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.<-respʳ-≈"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d150 v0 v1 v2 v3 = du150 v3
du150 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du150 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du168 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v3)) v4 v5 v6)
name152
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.<-respˡ-≈"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d152 v0 v1 v2 v3 = du152 v3
du152 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du152 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du168 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v3)) v4 v5 v6)
name154
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.<-strictPartialOrder"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d154 v0 v1 v2 v3 = du154 v3
du154 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
du154 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du168
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0))
name156
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.trans"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d156 v0 v1 v2 v3 = du156 v3
du156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du156 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d238
      (coe MAlonzo.Code.Relation.Binary.Properties.Poset.du166 (coe v1))
name158
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.<⇒≉"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d158 = erased
name160
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.<⇒≱"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d160 = erased
name168
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.≤⇒≯"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d168 = erased
name170
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.≤∧≉⇒<"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d170 v0 v1 v2 v3 v4 v5 = du170
du170 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du170 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name172
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.antisym"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d172 v0 v1 v2 v3 = du172 v3
du172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du172 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    coe
      (\ v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d128
           (MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)) v2 v3 v5 v4)
name174
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.≥-isPartialOrder"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d174 v0 v1 v2 v3 = du174 v3
du174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du150
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0))
name176
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.invIsPreorder"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d176 v0 v1 v2 v3 = du176 v3
du176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du176 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du64
      (coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v1))
name178
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.≥-poset"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d178 v0 v1 v2 v3 = du178 v3
du178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du152
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0))
name180
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.invPreorder"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d180 v0 v1 v2 v3 = du180 v3
du180 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du180 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du66
      (coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v1))
name182
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.refl"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
d182 v0 v1 v2 v3 = du182 v3
du182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 -> AgdaAny -> AgdaAny
du182 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    let v2
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du152 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name184
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.reflexive"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0 v1 v2 v3 = du184 v3
du184 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du184 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d82
           (MAlonzo.Code.Relation.Binary.Structures.d126
              (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
           v3 v2
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d36
              (MAlonzo.Code.Relation.Binary.Structures.d80
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d126
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1))))
              v2 v3 v4))
name186
  = "Relation.Binary.Properties.TotalOrder.PosetProperties.trans"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d186 v0 v1 v2 v3 = du186 v3
du186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du186 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
    coe
      (\ v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d84
           (MAlonzo.Code.Relation.Binary.Structures.d126
              (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
           v4 v3 v2 v6 v5)
name188 = "Relation.Binary.Properties.TotalOrder.decTotalOrder"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
d188 v0 v1 v2 v3 v4 = du188 v3 v4
du188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
du188 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C12739
         (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)) (coe v1)
         (coe
            MAlonzo.Code.Relation.Binary.Consequences.du152
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d82
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d126
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d348
                     (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d350
               (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
            (coe v1)))
name192 = "Relation.Binary.Properties.TotalOrder.≥-isTotalOrder"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d192 v0 v1 v2 v3 = du192 v3
du192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du192 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Converse.du342
      (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))
name194 = "Relation.Binary.Properties.TotalOrder.≥-totalOrder"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
d194 v0 v1 v2 v3 = du194 v3
du194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
du194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C6779 (coe du192 (coe v0))
name198 = "Relation.Binary.Properties.TotalOrder._.total"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d198 v0 v1 v2 v3 = du198 v3
du198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d350 (coe du192 (coe v0))
name204 = "Relation.Binary.Properties.TotalOrder.≰⇒>"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d204 v0 v1 v2 v3 v4 v5 = du204 v3 v4 v5
du204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du204 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du76
      (let v3
             = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
       let v4 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v3) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v4))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d82
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d348
               (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d350
         (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
      (coe v1) (coe v2)
