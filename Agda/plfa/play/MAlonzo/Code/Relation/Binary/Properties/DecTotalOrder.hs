{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Properties.DecTotalOrder where

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
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Properties.Poset
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder
import qualified MAlonzo.Code.Relation.Binary.Properties.TotalOrder
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name154
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties._<_"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> ()
d154 = erased
name156
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties._≥_"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> ()
d156 = erased
name158
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.asym"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d158 = erased
name160
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.irrefl"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d160 = erased
name162
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-isStrictPartialOrder"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d162 v0 v1 v2 v3 = du162 v3
du162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du162 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du166
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1))
name164
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-resp-≈"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d164 v0 v1 v2 v3 = du164 v3
du164 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du164 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d240
      (coe MAlonzo.Code.Relation.Binary.Properties.Poset.du166 (coe v2))
name166
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-respʳ-≈"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d166 v0 v1 v2 v3 = du166 v3
du166 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du166 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du168 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v4)) v5 v6 v7)
name168
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-respˡ-≈"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d168 v0 v1 v2 v3 = du168 v3
du168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du168 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du168 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v4)) v5 v6 v7)
name170
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<-strictPartialOrder"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d170 v0 v1 v2 v3 = du170 v3
du170 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
du170 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du168
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1))
name172
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.trans"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d172 v0 v1 v2 v3 = du172 v3
du172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du172 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d238
      (coe MAlonzo.Code.Relation.Binary.Properties.Poset.du166 (coe v2))
name174
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<⇒≉"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d174 = erased
name176
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.<⇒≱"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d176 = erased
name180
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≤⇒≯"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d180 = erased
name182
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≤∧≉⇒<"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d182 v0 v1 v2 v3 v4 v5 = du182
du182 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du182 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name184
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.antisym"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d184 v0 v1 v2 v3 = du184 v3
du184 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du184 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    coe
      (\ v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d128
           (MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v2)) v3 v4 v6 v5)
name186
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-isPartialOrder"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d186 v0 v1 v2 v3 = du186 v3
du186 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du186 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du150
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1))
name188
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.invIsPreorder"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d188 v0 v1 v2 v3 = du188 v3
du188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du188 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du64
      (coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v2))
name190
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-isTotalOrder"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
d190 v0 v1 v2 v3 = du190 v3
du190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T340
du190 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du192
      (coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0))
name192
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-poset"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d192 v0 v1 v2 v3 = du192 v3
du192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du192 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Poset.du152
      (coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1))
name194
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.invPreorder"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d194 v0 v1 v2 v3 = du194 v3
du194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du194 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du66
      (coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v2))
name196
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.refl"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 -> AgdaAny -> AgdaAny
d196 v0 v1 v2 v3 = du196 v3
du196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 -> AgdaAny -> AgdaAny
du196 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    let v3
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Poset.du152 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name198
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.reflexive"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d198 v0 v1 v2 v3 = du198 v3
du198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du198 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d82
           (MAlonzo.Code.Relation.Binary.Structures.d126
              (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v2)))
           v4 v3
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d36
              (MAlonzo.Code.Relation.Binary.Structures.d80
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d126
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v2))))
              v3 v4 v5))
name200
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.total"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d200 v0 v1 v2 v3 = du200 v3
du200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du200 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d350
      (coe
         MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du192 (coe v1))
name202
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≥-totalOrder"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
d202 v0 v1 v2 v3 = du202 v3
du202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574
du202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du194
      (coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0))
name204
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.trans"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d204 v0 v1 v2 v3 = du204 v3
du204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du204 v0
  = let v1
          = coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0) in
    let v2 = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v1) in
    coe
      (\ v3 v4 v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.d84
           (MAlonzo.Code.Relation.Binary.Structures.d126
              (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v2)))
           v5 v4 v3 v7 v6)
name206
  = "Relation.Binary.Properties.DecTotalOrder.TotalOrderProperties.≰⇒>"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d206 v0 v1 v2 v3 = du206 v3
du206 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.TotalOrder.du204
      (coe MAlonzo.Code.Relation.Binary.Bundles.du732 (coe v0))
name208
  = "Relation.Binary.Properties.DecTotalOrder.≥-isDecTotalOrder"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
d208 v0 v1 v2 v3 = du208 v3
du208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T388
du208 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.Converse.du386
      (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v0))
name210
  = "Relation.Binary.Properties.DecTotalOrder.≥-decTotalOrder"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
d210 v0 v1 v2 v3 = du210 v3
du210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658
du210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C7777 (coe du208 (coe v0))
name214 = "Relation.Binary.Properties.DecTotalOrder._._≤?_"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d214 v0 v1 v2 v3 = du214 v3
du214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d402 (coe du208 (coe v0))
name216
  = "Relation.Binary.Properties.DecTotalOrder.<-isStrictTotalOrder"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
d216 v0 v1 v2 v3 = du216 v3
du216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Structures.T454
du216 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du524
      (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v0))
name218
  = "Relation.Binary.Properties.DecTotalOrder.<-strictTotalOrder"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
d218 v0 v1 v2 v3 = du218 v3
du218 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
du218 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C9189 (coe du216 (coe v0))
name222 = "Relation.Binary.Properties.DecTotalOrder._.compare"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d222 v0 v1 v2 v3 = du222 v3
du222 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
du222 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d468 (coe du216 (coe v0))
name228 = "Relation.Binary.Properties.DecTotalOrder.≮⇒≥"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
d228 v0 v1 v2 v3 v4 v5 = du228 v2 v3 v4 v5
du228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny
du228 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du126
      (coe v0)
      (let v5
             = coe MAlonzo.Code.Relation.Binary.Bundles.du740 (coe v1) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d172
                  (coe MAlonzo.Code.Relation.Binary.Bundles.d304 (coe v5))))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d400
         (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d82
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d348
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d398
                  (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v1))))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d350
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d398
            (coe MAlonzo.Code.Relation.Binary.Bundles.d680 (coe v1))))
      (coe v2) (coe v3)
name230
  = "Relation.Binary.Properties.DecTotalOrder.strictTotalOrder"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
d230 v0 v1 v2 v3 = du230 v3
du230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T658 ->
  MAlonzo.Code.Relation.Binary.Bundles.T780
du230 v0 = coe du218 (coe v0)
