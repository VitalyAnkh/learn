{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Product.Function.NonDependent.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Product.Function.NonDependent.Setoid
import qualified MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Related
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

name30 = "Data.Product.Function.NonDependent.Propositional._._×-⇔_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
d30 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du30 v8 v9
du30 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du30 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.du82
      (coe
         MAlonzo.Code.Function.Surjection.du92
         (coe
            MAlonzo.Code.Function.Bijection.du100
            (coe
               MAlonzo.Code.Function.Inverse.du98
               (coe
                  MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du494
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
               (coe
                  MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512))))
      (coe
         MAlonzo.Code.Function.Equivalence.du82
         (coe
            MAlonzo.Code.Data.Product.Function.NonDependent.Setoid.du150
            (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Equivalence.du100
            (coe
               MAlonzo.Code.Function.Surjection.du92
               (coe
                  MAlonzo.Code.Function.Bijection.du100
                  (coe
                     MAlonzo.Code.Function.Inverse.du98
                     (coe
                        MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du494
                        (coe
                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                        (coe
                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
                     (coe
                        MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512))))))
name40 = "Data.Product.Function.NonDependent.Propositional._._×-↣_"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88
d40 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du40 v8 v9
du40 ::
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88
du40 v0 v1
  = coe
      MAlonzo.Code.Function.Injection.du172
      (coe
         MAlonzo.Code.Function.LeftInverse.du186
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du494
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
         (coe
            MAlonzo.Code.Function.Inverse.du90
            (coe
               MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512)))
      (coe
         MAlonzo.Code.Function.Injection.du172
         (coe
            MAlonzo.Code.Data.Product.Function.NonDependent.Setoid.du160
            (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.LeftInverse.du186
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Function.Inverse.du90
               (coe
                  MAlonzo.Code.Function.Inverse.du226
                  (coe
                     MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512)))))
name50 = "Data.Product.Function.NonDependent.Propositional._._×-↞_"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82
d50 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du50 v8 v9
du50 ::
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82
du50 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.du282
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe
         MAlonzo.Code.Function.Inverse.du90
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512))
      (coe
         MAlonzo.Code.Function.LeftInverse.du282
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
         (coe
            MAlonzo.Code.Data.Product.Function.NonDependent.Setoid.du170
            (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Inverse.du90
            (coe
               MAlonzo.Code.Function.Inverse.du226
               (coe
                  MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512))))
name60 = "Data.Product.Function.NonDependent.Propositional._._×-↠_"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du60 v8 v9
du60 ::
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54
du60 v0 v1
  = coe
      MAlonzo.Code.Function.Surjection.du196
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe
         MAlonzo.Code.Function.Bijection.du100
         (coe
            MAlonzo.Code.Function.Inverse.du98
            (coe
               MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du494
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
            (coe
               MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512)))
      (coe
         MAlonzo.Code.Function.Surjection.du196
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du494
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
         (coe
            MAlonzo.Code.Data.Product.Function.NonDependent.Setoid.du216
            (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Bijection.du100
            (coe
               MAlonzo.Code.Function.Inverse.du98
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
               (coe
                  MAlonzo.Code.Function.Inverse.du226
                  (coe
                     MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512)))))
name70 = "Data.Product.Function.NonDependent.Propositional._._×-↔_"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58
d70 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du70 v8 v9
du70 ::
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58
du70 v0 v1
  = coe
      MAlonzo.Code.Function.Inverse.du208
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe
         MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512)
      (coe
         MAlonzo.Code.Function.Inverse.du208
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
         (coe
            MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du494
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
         (coe
            MAlonzo.Code.Data.Product.Function.NonDependent.Setoid.du228
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Inverse.du226
            (coe
               MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent.du512)))
name102
  = "Data.Product.Function.NonDependent.Propositional._._×-cong_"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Related.T52 -> AgdaAny -> AgdaAny -> AgdaAny
d102 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du102 v8
du102 ::
  MAlonzo.Code.Function.Related.T52 -> AgdaAny -> AgdaAny -> AgdaAny
du102 v0
  = case coe v0 of
      MAlonzo.Code.Function.Related.C54
        -> coe
             (\ v1 v2 ->
                coe MAlonzo.Code.Data.Product.du148 (coe v1) (coe (\ v3 -> v2)))
      MAlonzo.Code.Function.Related.C56
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Related.C26
                  (coe
                     MAlonzo.Code.Data.Product.du148
                     (coe MAlonzo.Code.Function.Related.d24 (coe v1))
                     (coe (\ v3 -> MAlonzo.Code.Function.Related.d24 (coe v2)))))
      MAlonzo.Code.Function.Related.C58 -> coe du30
      MAlonzo.Code.Function.Related.C60 -> coe du40
      MAlonzo.Code.Function.Related.C62
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Related.C50
                  (coe
                     du40 (coe MAlonzo.Code.Function.Related.d48 (coe v1))
                     (coe MAlonzo.Code.Function.Related.d48 (coe v2))))
      MAlonzo.Code.Function.Related.C64 -> coe du50
      MAlonzo.Code.Function.Related.C66 -> coe du60
      MAlonzo.Code.Function.Related.C68 -> coe du70
      _ -> MAlonzo.RTE.mazUnreachableError
