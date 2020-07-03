{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Properties.Poset where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder
import qualified MAlonzo.Code.Relation.Binary.Structures

name134
  = "Relation.Binary.Properties.Poset.PreorderProperties.invIsPreorder"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d134 v0 v1 v2 v3 = du134 v3
du134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du64
      (coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v0))
name136
  = "Relation.Binary.Properties.Poset.PreorderProperties.invPreorder"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d136 v0 v1 v2 v3 = du136 v3
du136 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du136 v0
  = coe
      MAlonzo.Code.Relation.Binary.Properties.Preorder.du66
      (coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v0))
name138 = "Relation.Binary.Properties.Poset._≉_"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> ()
d138 = erased
name144 = "Relation.Binary.Properties.Poset._≥_"
d144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> ()
d144 = erased
name150 = "Relation.Binary.Properties.Poset.≥-isPartialOrder"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d150 v0 v1 v2 v3 = du150 v3
du150 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du150 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         MAlonzo.Code.Relation.Binary.Properties.Preorder.du64
         (coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v0)))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d128
              (MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)) v1 v2 v4 v3))
name152 = "Relation.Binary.Properties.Poset.≥-poset"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d152 v0 v1 v2 v3 = du152 v3
du152 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du152 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365 (coe du150 (coe v0))
name156 = "Relation.Binary.Properties.Poset._.antisym"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d156 v0 v1 v2 v3 v4 v5 v6 v7 = du156 v3 v4 v5 v6 v7
du156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du156 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)) v1 v2 v4 v3
name158 = "Relation.Binary.Properties.Poset._.refl"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 -> AgdaAny -> AgdaAny
d158 v0 v1 v2 v3 = du158 v3
du158 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 -> AgdaAny -> AgdaAny
du158 v0
  = let v1 = coe du152 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name160 = "Relation.Binary.Properties.Poset._.reflexive"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d160 v0 v1 v2 v3 v4 v5 v6 = du160 v3 v4 v5 v6
du160 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
      v2 v1
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d36
         (MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d126
               (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))))
         v1 v2 v3)
name162 = "Relation.Binary.Properties.Poset._.trans"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d162 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du162 v3 v4 v5 v6 v7 v8
du162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du162 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0)))
      v3 v2 v1 v5 v4
name164 = "Relation.Binary.Properties.Poset._<_"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny -> AgdaAny -> ()
d164 = erased
name166 = "Relation.Binary.Properties.Poset.<-isStrictPartialOrder"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d166 v0 v1 v2 v3 = du166 v3
du166 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du438
      (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))
name168 = "Relation.Binary.Properties.Poset.<-strictPartialOrder"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d168 v0 v1 v2 v3 = du168 v3
du168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
du168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C4625 (coe du166 (coe v0))
name172 = "Relation.Binary.Properties.Poset._.asym"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d172 = erased
name174 = "Relation.Binary.Properties.Poset._.irrefl"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d174 = erased
name176 = "Relation.Binary.Properties.Poset._.<-resp-≈"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d176 v0 v1 v2 v3 = du176 v3
du176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du176 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d240 (coe du166 (coe v0))
name178 = "Relation.Binary.Properties.Poset._.<-respʳ-≈"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d178 v0 v1 v2 v3 = du178 v3
du178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du178 v0
  = let v1 = coe du168 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v2)) v3 v4 v5)
name180 = "Relation.Binary.Properties.Poset._.<-respˡ-≈"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d180 v0 v1 v2 v3 = du180 v3
du180 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du180 v0
  = let v1 = coe du168 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v2)) v3 v4 v5)
name182 = "Relation.Binary.Properties.Poset._.trans"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d182 v0 v1 v2 v3 = du182 v3
du182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du182 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d238 (coe du166 (coe v0))
name188 = "Relation.Binary.Properties.Poset.<⇒≉"
d188 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d188 = erased
name194 = "Relation.Binary.Properties.Poset.≤∧≉⇒<"
d194 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d194 v0 v1 v2 = du194
du194 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du194 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name200 = "Relation.Binary.Properties.Poset.<⇒≱"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d200 = erased
name206 = "Relation.Binary.Properties.Poset.≤⇒≯"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d206 = erased
name208 = "Relation.Binary.Properties.Poset.invIsPartialOrder"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d208 v0 v1 v2 v3 = du208 v3
du208 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du208 v0 = coe du150 (coe v0)
name210 = "Relation.Binary.Properties.Poset.invPoset"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d210 v0 v1 v2 v3 = du210 v3
du210 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du210 v0 = coe du152 (coe v0)
name212 = "Relation.Binary.Properties.Poset.strictPartialOrder"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d212 v0 v1 v2 v3 = du212 v3
du212 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
du212 v0 = coe du168 (coe v0)
