{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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

name122
  = "Relation.Binary.Properties.Poset.PreorderProperties.invIsPreorder"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d122 v0 v1 v2 v3 = du122 v3
du122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du122 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Properties.Preorder.d52
         (coe (MAlonzo.Code.Relation.Binary.Bundles.du242 (coe v0))))
name124
  = "Relation.Binary.Properties.Poset.PreorderProperties.invPreorder"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T128
d124 v0 v1 v2 v3 = du124 v3
du124 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T128
du124 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Properties.Preorder.du54
         (coe (MAlonzo.Code.Relation.Binary.Bundles.du242 (coe v0))))
name126 = "Relation.Binary.Properties.Poset._≉_"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> ()
d126 = erased
name132 = "Relation.Binary.Properties.Poset._≥_"
d132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> ()
d132 = erased
name138 = "Relation.Binary.Properties.Poset.≥-isPartialOrder"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d138 v0 v1 v2 v3 = du138 v3
du138 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du138 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C1589
         (coe
            (MAlonzo.Code.Relation.Binary.Properties.Preorder.d52
               (coe (MAlonzo.Code.Relation.Binary.Bundles.du242 (coe v0)))))
         (coe
            (\ v1 v2 v3 v4 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d128
                 (MAlonzo.Code.Relation.Binary.Bundles.d208 (coe v0)) v1 v2 v4 v3)))
name140 = "Relation.Binary.Properties.Poset.≥-poset"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
d140 v0 v1 v2 v3 = du140 v3
du140 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
du140 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Bundles.C807 v4)
      erased erased erased (du138 (coe v0))
name144 = "Relation.Binary.Properties.Poset._.antisym"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0 v1 v2 v3 v4 v5 v6 v7 = du144 v3 v4 v5 v6 v7
du144 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du144 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (MAlonzo.Code.Relation.Binary.Bundles.d208 (coe v0)) v1 v2 v4 v3
name146 = "Relation.Binary.Properties.Poset._.refl"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 -> AgdaAny -> AgdaAny
d146 v0 v1 v2 v3 = du146 v3
du146 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 -> AgdaAny -> AgdaAny
du146 v0
  = let v1 = du140 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Bundles.d208 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Structures.du98
         (coe (MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))))
name148 = "Relation.Binary.Properties.Poset._.reflexive"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d148 v0 v1 v2 v3 v4 v5 v6 = du148 v3 v4 v5 v6
du148 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du148 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe (MAlonzo.Code.Relation.Binary.Bundles.d208 (coe v0))))
      v2 v1
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d36
         (MAlonzo.Code.Relation.Binary.Structures.d80
            (coe
               (MAlonzo.Code.Relation.Binary.Structures.d126
                  (coe (MAlonzo.Code.Relation.Binary.Bundles.d208 (coe v0))))))
         v1 v2 v3)
name150 = "Relation.Binary.Properties.Poset._.trans"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du150 v3 v4 v5 v6 v7 v8
du150 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du150 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe (MAlonzo.Code.Relation.Binary.Bundles.d208 (coe v0))))
      v3 v2 v1 v5 v4
name152 = "Relation.Binary.Properties.Poset._<_"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny -> AgdaAny -> ()
d152 = erased
name154 = "Relation.Binary.Properties.Poset.<-isStrictPartialOrder"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d154 v0 v1 v2 v3 = du154 v3
du154 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du154 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du438
         (coe (MAlonzo.Code.Relation.Binary.Bundles.d208 (coe v0))))
name156 = "Relation.Binary.Properties.Poset.<-strictPartialOrder"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T358
d156 v0 v1 v2 v3 = du156 v3
du156 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T358
du156 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Bundles.C1663 v4)
      erased erased erased (du154 (coe v0))
name160 = "Relation.Binary.Properties.Poset._.asym"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d160 = erased
name162 = "Relation.Binary.Properties.Poset._.irrefl"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d162 = erased
name164 = "Relation.Binary.Properties.Poset._.<-resp-≈"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d164 v0 v1 v2 v3 = du164 v3
du164 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du164 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d240
         (coe (du154 (coe v0))))
name166 = "Relation.Binary.Properties.Poset._.<-respʳ-≈"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d166 v0 v1 v2 v3 = du166 v3
du166 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du166 v0
  = let v1 = du156 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Bundles.d380 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d28
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v2)) v3 v4 v5)
name168 = "Relation.Binary.Properties.Poset._.<-respˡ-≈"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d168 v0 v1 v2 v3 = du168 v3
du168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du168 v0
  = let v1 = du156 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Bundles.d380 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Relation.Binary.Structures.d240 (coe v2)) v3 v4 v5)
name170 = "Relation.Binary.Properties.Poset._.trans"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d170 v0 v1 v2 v3 = du170 v3
du170 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du170 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.d238
         (coe (du154 (coe v0))))
name176 = "Relation.Binary.Properties.Poset.<⇒≉"
d176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d176 = erased
name182 = "Relation.Binary.Properties.Poset.≤∧≉⇒<"
d182 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d182 v0 v1 v2 = du182
du182 ::
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du182 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name188 = "Relation.Binary.Properties.Poset.<⇒≱"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d188 = erased
name194 = "Relation.Binary.Properties.Poset.≤⇒≯"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d194 = erased
name196 = "Relation.Binary.Properties.Poset.invIsPartialOrder"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d196 v0 v1 v2 v3 = du196 v3
du196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du196 v0 = coe (du138 (coe v0))
name198 = "Relation.Binary.Properties.Poset.invPoset"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
d198 v0 v1 v2 v3 = du198 v3
du198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
du198 v0 = coe (du140 (coe v0))
name200 = "Relation.Binary.Properties.Poset.strictPartialOrder"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T358
d200 v0 v1 v2 v3 = du200 v3
du200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T358
du200 v0 = coe (du156 (coe v0))
