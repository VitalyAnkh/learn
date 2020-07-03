{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Product.Function.NonDependent.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary.Bundles

name38 = "Data.Product.Function.NonDependent.Setoid._._×-⟶_"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du38 v12 v13
du38 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
du38 v0 v1
  = coe
      MAlonzo.Code.Function.Equality.C763 (coe du56 (coe v0) (coe v1))
      (coe du62 (coe v0) (coe v1))
name50 = "Data.Product.Function.NonDependent.Setoid._._._._≈_"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d50 = erased
name54 = "Data.Product.Function.NonDependent.Setoid._._._._≈_"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d54 = erased
name56 = "Data.Product.Function.NonDependent.Setoid._._.fg"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d56 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du56 v12 v13
du56 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du56 v0 v1
  = coe
      MAlonzo.Code.Data.Product.du148
      (coe MAlonzo.Code.Function.Equality.d38 (coe v0))
      (coe (\ v2 -> MAlonzo.Code.Function.Equality.d38 (coe v1)))
name62 = "Data.Product.Function.NonDependent.Setoid._._.fg-cong"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d62 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du62 v12 v13 v14 v15 v16
du62 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du62 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe
                MAlonzo.Code.Function.Equality.d40 v0
                (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
                (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3)) v5)
             (coe
                MAlonzo.Code.Function.Equality.d40 v1
                (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
                (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3)) v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.Product.Function.NonDependent.Setoid._.<_,_>ₛ"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du90 v9 v10
du90 ::
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16 ->
  MAlonzo.Code.Function.Equality.T16
du90 v0 v1
  = coe
      MAlonzo.Code.Function.Equality.C763
      (coe
         MAlonzo.Code.Data.Product.du132
         (coe MAlonzo.Code.Function.Equality.d38 (coe v0))
         (coe MAlonzo.Code.Function.Equality.d38 (coe v1)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.du132
              (coe MAlonzo.Code.Function.Equality.d40 v0 v2 v3)
              (coe MAlonzo.Code.Function.Equality.d40 v1 v2 v3)))
name116 = "Data.Product.Function.NonDependent.Setoid._.proj₁ₛ"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16
d116 v0 v1 v2 v3 v4 v5 = du116
du116 :: MAlonzo.Code.Function.Equality.T16
du116
  = coe
      MAlonzo.Code.Function.Equality.C763
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28)
      (coe (\ v0 v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d28))
name118 = "Data.Product.Function.NonDependent.Setoid._.proj₂ₛ"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16
d118 v0 v1 v2 v3 v4 v5 = du118
du118 :: MAlonzo.Code.Function.Equality.T16
du118
  = coe
      MAlonzo.Code.Function.Equality.C763
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30)
      (coe (\ v0 v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d30))
name120 = "Data.Product.Function.NonDependent.Setoid._.swapₛ"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16
d120 v0 v1 v2 v3 v4 v5 = du120
du120 :: MAlonzo.Code.Function.Equality.T16
du120 = coe du90 (coe du118) (coe du116)
name150
  = "Data.Product.Function.NonDependent.Setoid._._×-equivalence_"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du150 v12 v13
du150 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du150 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.C269
      (coe
         du38 (coe MAlonzo.Code.Function.Equivalence.d34 (coe v0))
         (coe MAlonzo.Code.Function.Equivalence.d34 (coe v1)))
      (coe
         du38 (coe MAlonzo.Code.Function.Equivalence.d36 (coe v0))
         (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1)))
name160
  = "Data.Product.Function.NonDependent.Setoid._._×-injection_"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du160 v12 v13
du160 ::
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88
du160 v0 v1
  = coe
      MAlonzo.Code.Function.Injection.C1975
      (coe
         du38 (coe MAlonzo.Code.Function.Injection.d106 (coe v0))
         (coe MAlonzo.Code.Function.Injection.d106 (coe v1)))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Data.Product.du148
              (coe
                 MAlonzo.Code.Function.Injection.d108 v0
                 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3)))
              (coe
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Injection.d108 v1
                      (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3))))))
name170
  = "Data.Product.Function.NonDependent.Setoid._._×-left-inverse_"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82
d170 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du170 v12 v13
du170 ::
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82
du170 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.C3109
      (coe
         MAlonzo.Code.Function.Equivalence.d34
         (coe du180 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Function.Equivalence.d36
         (coe du180 (coe v0) (coe v1)))
      (coe du182 (coe v0) (coe v1))
name180 = "Data.Product.Function.NonDependent.Setoid._._.eq"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.Equivalence.T16
d180 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du180 v12 v13
du180 ::
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.Equivalence.T16
du180 v0 v1
  = coe
      du150 (coe MAlonzo.Code.Function.LeftInverse.du188 (coe v0))
      (coe MAlonzo.Code.Function.LeftInverse.du188 (coe v1))
name182 = "Data.Product.Function.NonDependent.Setoid._._.left"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d182 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du182 v12 v13 v14
du182 ::
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du182 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe MAlonzo.Code.Function.LeftInverse.d106 v0 v3)
             (coe MAlonzo.Code.Function.LeftInverse.d106 v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name216
  = "Data.Product.Function.NonDependent.Setoid._._×-surjection_"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54
d216 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du216 v12 v13
du216 ::
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54
du216 v0 v1
  = coe
      MAlonzo.Code.Function.Surjection.C1679
      (coe
         MAlonzo.Code.Function.LeftInverse.d104
         (coe du226 (coe v0) (coe v1)))
      (coe
         MAlonzo.Code.Function.Surjection.C867
         (coe
            MAlonzo.Code.Function.LeftInverse.d102
            (coe du226 (coe v0) (coe v1)))
         (coe
            MAlonzo.Code.Function.LeftInverse.d106
            (coe du226 (coe v0) (coe v1))))
name226 = "Data.Product.Function.NonDependent.Setoid._._.inv"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.LeftInverse.T82
d226 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du226 v12 v13
du226 ::
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.LeftInverse.T82
du226 v0 v1
  = coe
      du170 (coe MAlonzo.Code.Function.Surjection.du82 (coe v0))
      (coe MAlonzo.Code.Function.Surjection.du82 (coe v1))
name228 = "Data.Product.Function.NonDependent.Setoid._._×-inverse_"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58
d228 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du228 v8 v10 v12 v13
du228 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58
du228 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe
         MAlonzo.Code.Function.Surjection.d72
         (coe du238 (coe v0) (coe v1) (coe v2) (coe v3)))
      (coe
         MAlonzo.Code.Function.Surjection.d38
         (coe
            MAlonzo.Code.Function.Surjection.d74
            (coe du238 (coe v0) (coe v1) (coe v2) (coe v3))))
      (coe
         MAlonzo.Code.Function.Inverse.C1525
         (coe
            MAlonzo.Code.Function.LeftInverse.d106
            (coe du240 (coe v2) (coe v3)))
         (coe
            MAlonzo.Code.Function.Surjection.d40
            (coe
               MAlonzo.Code.Function.Surjection.d74
               (coe du238 (coe v0) (coe v1) (coe v2) (coe v3)))))
name238 = "Data.Product.Function.NonDependent.Setoid._._.surj"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Surjection.T54
d238 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du238 v8 v10 v12 v13
du238 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Surjection.T54
du238 v0 v1 v2 v3
  = coe
      du216
      (coe
         MAlonzo.Code.Function.Bijection.du100
         (coe MAlonzo.Code.Function.Inverse.du98 (coe v0) (coe v2)))
      (coe
         MAlonzo.Code.Function.Bijection.du100
         (coe MAlonzo.Code.Function.Inverse.du98 (coe v1) (coe v3)))
name240 = "Data.Product.Function.NonDependent.Setoid._._.inv"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.LeftInverse.T82
d240 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du240 v12 v13
du240 ::
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.LeftInverse.T82
du240 v0 v1
  = coe
      du170 (coe MAlonzo.Code.Function.Inverse.du90 (coe v0))
      (coe MAlonzo.Code.Function.Inverse.du90 (coe v1))
