{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum.Function.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Setoid
import qualified MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Related
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

name28 = "Data.Sum.Function.Propositional._._⊎-⇔_"
d28 ::
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
d28 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du28 v8 v9
du28 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du28 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.du82
      (coe
         MAlonzo.Code.Function.Surjection.du92
         (coe
            MAlonzo.Code.Function.Bijection.du100
            (coe
               MAlonzo.Code.Function.Inverse.du98
               (coe
                  MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du484
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
               (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550))))
      (coe
         MAlonzo.Code.Function.Equivalence.du82
         (coe MAlonzo.Code.Data.Sum.Function.Setoid.du150 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Equivalence.du100
            (coe
               MAlonzo.Code.Function.Surjection.du92
               (coe
                  MAlonzo.Code.Function.Bijection.du100
                  (coe
                     MAlonzo.Code.Function.Inverse.du98
                     (coe
                        MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du484
                        (coe
                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                        (coe
                           MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
                     (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550))))))
name38 = "Data.Sum.Function.Propositional._._⊎-↣_"
d38 ::
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
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du38 v8 v9
du38 ::
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88 ->
  MAlonzo.Code.Function.Injection.T88
du38 v0 v1
  = coe
      MAlonzo.Code.Function.Injection.du172
      (coe
         MAlonzo.Code.Function.LeftInverse.du186
         (coe
            MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du484
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
         (coe
            MAlonzo.Code.Function.Inverse.du90
            (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550)))
      (coe
         MAlonzo.Code.Function.Injection.du172
         (coe MAlonzo.Code.Data.Sum.Function.Setoid.du160 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.LeftInverse.du186
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Function.Inverse.du90
               (coe
                  MAlonzo.Code.Function.Inverse.du226
                  (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550)))))
name48 = "Data.Sum.Function.Propositional._._⊎-↞_"
d48 ::
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
d48 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du48 v8 v9
du48 ::
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82 ->
  MAlonzo.Code.Function.LeftInverse.T82
du48 v0 v1
  = coe
      MAlonzo.Code.Function.LeftInverse.du282
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe
         MAlonzo.Code.Function.Inverse.du90
         (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550))
      (coe
         MAlonzo.Code.Function.LeftInverse.du282
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
         (coe MAlonzo.Code.Data.Sum.Function.Setoid.du196 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Inverse.du90
            (coe
               MAlonzo.Code.Function.Inverse.du226
               (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550))))
name58 = "Data.Sum.Function.Propositional._._⊎-↠_"
d58 ::
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
d58 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du58 v8 v9
du58 ::
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54 ->
  MAlonzo.Code.Function.Surjection.T54
du58 v0 v1
  = coe
      MAlonzo.Code.Function.Surjection.du196
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe
         MAlonzo.Code.Function.Bijection.du100
         (coe
            MAlonzo.Code.Function.Inverse.du98
            (coe
               MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du484
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
            (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550)))
      (coe
         MAlonzo.Code.Function.Surjection.du196
         (coe
            MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du484
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
         (coe MAlonzo.Code.Data.Sum.Function.Setoid.du240 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Bijection.du100
            (coe
               MAlonzo.Code.Function.Inverse.du98
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
               (coe
                  MAlonzo.Code.Function.Inverse.du226
                  (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550)))))
name68 = "Data.Sum.Function.Propositional._._⊎-↔_"
d68 ::
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
d68 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du68 v8 v9
du68 ::
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58
du68 v0 v1
  = coe
      MAlonzo.Code.Function.Inverse.du208
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550)
      (coe
         MAlonzo.Code.Function.Inverse.du208
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
         (coe
            MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du484
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
         (coe
            MAlonzo.Code.Data.Sum.Function.Setoid.du252
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe
               MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
            (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Function.Inverse.du226
            (coe MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise.du550)))
name100 = "Data.Sum.Function.Propositional._._⊎-cong_"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Related.T52 -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du100 v8
du100 ::
  MAlonzo.Code.Function.Related.T52 -> AgdaAny -> AgdaAny -> AgdaAny
du100 v0
  = case coe v0 of
      MAlonzo.Code.Function.Related.C54
        -> coe MAlonzo.Code.Data.Sum.Base.du82
      MAlonzo.Code.Function.Related.C56
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Related.C26
                  (coe
                     MAlonzo.Code.Data.Sum.Base.du82
                     (coe MAlonzo.Code.Function.Related.d24 (coe v1))
                     (coe MAlonzo.Code.Function.Related.d24 (coe v2))))
      MAlonzo.Code.Function.Related.C58 -> coe du28
      MAlonzo.Code.Function.Related.C60 -> coe du38
      MAlonzo.Code.Function.Related.C62
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Related.C50
                  (coe
                     du38 (coe MAlonzo.Code.Function.Related.d48 (coe v1))
                     (coe MAlonzo.Code.Function.Related.d48 (coe v2))))
      MAlonzo.Code.Function.Related.C64 -> coe du48
      MAlonzo.Code.Function.Related.C66 -> coe du58
      MAlonzo.Code.Function.Related.C68 -> coe du68
      _ -> MAlonzo.RTE.mazUnreachableError
