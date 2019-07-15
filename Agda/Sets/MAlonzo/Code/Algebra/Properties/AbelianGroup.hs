{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.AbelianGroup where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Properties.Group
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid

name120 = "Algebra.Properties.AbelianGroup._.identity-unique"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d120 v0 v1 v2 = du120 v2
du120 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du120 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du254
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name122 = "Algebra.Properties.AbelianGroup._.identityʳ-unique"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0 v1 v2 = du122 v2
du122 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du122 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du244
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name124 = "Algebra.Properties.AbelianGroup._.identityˡ-unique"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d124 v0 v1 v2 = du124 v2
du124 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du124 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du232
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name126 = "Algebra.Properties.AbelianGroup._.inverseʳ-unique"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d126 v0 v1 v2 = du126 v2
du126 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du126 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du276
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name128 = "Algebra.Properties.AbelianGroup._.inverseˡ-unique"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d128 v0 v1 v2 = du128 v2
du128 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du128 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du264
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name130 = "Algebra.Properties.AbelianGroup._.left-identity-unique"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d130 v0 v1 v2 = du130 v2
du130 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du130 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du284
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name132 = "Algebra.Properties.AbelianGroup._.left-inverse-unique"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d132 v0 v1 v2 = du132 v2
du132 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du132 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du288
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name134 = "Algebra.Properties.AbelianGroup._.right-identity-unique"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d134 v0 v1 v2 = du134 v2
du134 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du134 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du286
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name136 = "Algebra.Properties.AbelianGroup._.right-inverse-unique"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d136 v0 v1 v2 = du136 v2
du136 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du136 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du290
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name138 = "Algebra.Properties.AbelianGroup._.ε⁻¹≈ε"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 -> AgdaAny
d138 v0 v1 v2 = du138 v2
du138 :: MAlonzo.Code.Algebra.T782 -> AgdaAny
du138 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du178
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name140 = "Algebra.Properties.AbelianGroup._.⁻¹-involutive"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny
d140 v0 v1 v2 = du140 v2
du140 :: MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny
du140 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du204
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name142 = "Algebra.Properties.AbelianGroup._.∙-cancel"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d142 v0 v1 v2 = du142 v2
du142 ::
  MAlonzo.Code.Algebra.T782 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du142 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du200
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name144 = "Algebra.Properties.AbelianGroup._.∙-cancelʳ"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0 v1 v2 = du144 v2
du144 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du144 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du190
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name146 = "Algebra.Properties.AbelianGroup._.∙-cancelˡ"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d146 v0 v1 v2 = du146 v2
du146 ::
  MAlonzo.Code.Algebra.T782 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du146 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Group.du180
         (coe (MAlonzo.Code.Algebra.du866 (coe v0))))
name152 = "Algebra.Properties.AbelianGroup.lemma₂"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny -> AgdaAny
d152 v0 v1 v2 v3 v4 = du152 v2 v3 v4
du152 :: MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny -> AgdaAny
du152 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du106
                     (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))
               (coe
                  MAlonzo.Code.Algebra.d804 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d804 v0
                     (coe
                        MAlonzo.Code.Algebra.d804 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.d808 v0
                           (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                     (coe MAlonzo.Code.Algebra.d808 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.d804 v0
                  (coe
                     MAlonzo.Code.Algebra.d804 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.d804 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.d808 v0
                           (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))))
                  (coe MAlonzo.Code.Algebra.d808 v0 v2))
               (coe MAlonzo.Code.Algebra.d808 v0 v2)
               (coe
                  MAlonzo.Code.Algebra.Structures.d128
                  (MAlonzo.Code.Algebra.Structures.d278
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d484
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d562
                                 (coe (MAlonzo.Code.Algebra.d810 (coe v0))))))))
                  v1
                  (coe
                     MAlonzo.Code.Algebra.d804 v0 v2
                     (coe
                        MAlonzo.Code.Algebra.d808 v0
                        (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                  (coe MAlonzo.Code.Algebra.d808 v0 v2))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du106
                           (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))
                     (coe
                        MAlonzo.Code.Algebra.d804 v0
                        (coe
                           MAlonzo.Code.Algebra.d804 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.d804 v0 v2
                              (coe
                                 MAlonzo.Code.Algebra.d808 v0
                                 (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))))
                        (coe MAlonzo.Code.Algebra.d808 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.d804 v0
                        (coe
                           MAlonzo.Code.Algebra.d804 v0
                           (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.d808 v0
                              (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                        (coe MAlonzo.Code.Algebra.d808 v0 v2))
                     (coe MAlonzo.Code.Algebra.d808 v0 v2)
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d562
                                (coe (MAlonzo.Code.Algebra.d810 (coe v0))) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du112
                           (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))
                           (coe MAlonzo.Code.Algebra.d808 v0 v2)
                           (coe
                              MAlonzo.Code.Algebra.d804 v0
                              (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.d808 v0
                                 (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                           (coe
                              MAlonzo.Code.Algebra.d804 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.d804 v0 v2
                                 (coe
                                    MAlonzo.Code.Algebra.d808 v0
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d128
                              (MAlonzo.Code.Algebra.Structures.d278
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d484
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d562
                                             (coe (MAlonzo.Code.Algebra.d810 (coe v0))))))))
                              v1 v2
                              (coe
                                 MAlonzo.Code.Algebra.d808 v0
                                 (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                        let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v6)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d804 v0
                              (coe
                                 MAlonzo.Code.Algebra.d804 v0
                                 (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d808 v0
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                              (coe MAlonzo.Code.Algebra.d808 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.d804 v0 (MAlonzo.Code.Algebra.d806 (coe v0))
                              (coe MAlonzo.Code.Algebra.d808 v0 v2))
                           (coe MAlonzo.Code.Algebra.d808 v0 v2)
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d562
                                      (coe (MAlonzo.Code.Algebra.d810 (coe v0))) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du112
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))
                                 (coe MAlonzo.Code.Algebra.d808 v0 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.d808 v0
                                       (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                                 (coe (MAlonzo.Code.Algebra.d806 (coe v0)))
                                 (let v6 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                  let v7 = MAlonzo.Code.Algebra.Structures.d562 (coe v6) in
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d30
                                    (MAlonzo.Code.Algebra.Structures.d486 (coe v7))
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                              let v4
                                                    = MAlonzo.Code.Algebra.Structures.d562
                                                        (coe v3) in
                                              let v5
                                                    = MAlonzo.Code.Algebra.Structures.d484
                                                        (coe v4) in
                                              let v6
                                                    = MAlonzo.Code.Algebra.Structures.d278
                                                        (coe v5) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v6)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0
                                    (MAlonzo.Code.Algebra.d806 (coe v0))
                                    (coe MAlonzo.Code.Algebra.d808 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d808 v0 v2)
                                 (coe MAlonzo.Code.Algebra.d808 v0 v2)
                                 (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                  let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d28
                                    (MAlonzo.Code.Algebra.Structures.d280 (coe v5))
                                    (coe MAlonzo.Code.Algebra.d808 v0 v2))
                                 (let v3
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                                   let v4
                                                         = MAlonzo.Code.Algebra.Structures.d562
                                                             (coe v3) in
                                                   let v5
                                                         = MAlonzo.Code.Algebra.Structures.d484
                                                             (coe v4) in
                                                   let v6
                                                         = MAlonzo.Code.Algebra.Structures.d278
                                                             (coe v5) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Structures.du106
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d126
                                                              (coe v6))))))) in
                                  let v4 = coe MAlonzo.Code.Algebra.d808 v0 v2 in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v3 v4))))))))))))
name162 = "Algebra.Properties.AbelianGroup.xyx⁻¹≈y"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny -> AgdaAny
d162 v0 v1 v2 v3 v4 = du162 v2 v3 v4
du162 :: MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny -> AgdaAny
du162 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
               (coe
                  MAlonzo.Code.Algebra.d804 v0
                  (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d808 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.d804 v0
                  (coe MAlonzo.Code.Algebra.d804 v0 v2 v1)
                  (coe MAlonzo.Code.Algebra.d808 v0 v1))
               (coe v2)
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d562
                          (coe (MAlonzo.Code.Algebra.d810 (coe v0))) in
                let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
                let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du112
                     (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))
                     (coe MAlonzo.Code.Algebra.d808 v0 v1)
                     (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.d804 v0 v2 v1)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d564
                        (MAlonzo.Code.Algebra.d810 (coe v0)) v1 v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                  let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                                  let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d804 v0
                        (coe MAlonzo.Code.Algebra.d804 v0 v2 v1)
                        (coe MAlonzo.Code.Algebra.d808 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.d804 v0 v2
                        (coe
                           MAlonzo.Code.Algebra.d804 v0 v1
                           (coe MAlonzo.Code.Algebra.d808 v0 v1)))
                     (coe v2)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d128
                        (MAlonzo.Code.Algebra.Structures.d278
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d484
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d562
                                       (coe (MAlonzo.Code.Algebra.d810 (coe v0))))))))
                        v2 v1 (coe MAlonzo.Code.Algebra.d808 v0 v1))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                        let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v6)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d804 v0 v2
                              (coe
                                 MAlonzo.Code.Algebra.d804 v0 v1
                                 (coe MAlonzo.Code.Algebra.d808 v0 v1)))
                           (coe
                              MAlonzo.Code.Algebra.d804 v0 v2
                              (MAlonzo.Code.Algebra.d806 (coe v0)))
                           (coe v2)
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d562
                                      (coe (MAlonzo.Code.Algebra.d810 (coe v0))) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du108
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5))) (coe v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0 v1
                                    (coe MAlonzo.Code.Algebra.d808 v0 v1))
                                 (coe (MAlonzo.Code.Algebra.d806 (coe v0)))
                                 (let v6 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                  let v7 = MAlonzo.Code.Algebra.Structures.d562 (coe v6) in
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d30
                                    (MAlonzo.Code.Algebra.Structures.d486 (coe v7)) v1)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                              let v4
                                                    = MAlonzo.Code.Algebra.Structures.d562
                                                        (coe v3) in
                                              let v5
                                                    = MAlonzo.Code.Algebra.Structures.d484
                                                        (coe v4) in
                                              let v6
                                                    = MAlonzo.Code.Algebra.Structures.d278
                                                        (coe v5) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v6)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0 v2
                                    (MAlonzo.Code.Algebra.d806 (coe v0)))
                                 (coe v2) (coe v2)
                                 (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                  let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.d30
                                    (MAlonzo.Code.Algebra.Structures.d280 (coe v5)) v2)
                                 (let v3
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                                   let v4
                                                         = MAlonzo.Code.Algebra.Structures.d562
                                                             (coe v3) in
                                                   let v5
                                                         = MAlonzo.Code.Algebra.Structures.d484
                                                             (coe v4) in
                                                   let v6
                                                         = MAlonzo.Code.Algebra.Structures.d278
                                                             (coe v5) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Structures.du106
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d126
                                                              (coe v6))))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v3 v2))))))))))))
name172 = "Algebra.Properties.AbelianGroup.⁻¹-∙-comm"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny -> AgdaAny
d172 v0 v1 v2 v3 v4 = du172 v2 v3 v4
du172 :: MAlonzo.Code.Algebra.T782 -> AgdaAny -> AgdaAny -> AgdaAny
du172 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
               (coe
                  MAlonzo.Code.Algebra.d804 v0 (coe MAlonzo.Code.Algebra.d808 v0 v1)
                  (coe MAlonzo.Code.Algebra.d808 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.d804 v0 (coe MAlonzo.Code.Algebra.d808 v0 v2)
                  (coe MAlonzo.Code.Algebra.d808 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.d808 v0
                  (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.d564
                  (MAlonzo.Code.Algebra.d810 (coe v0))
                  (coe MAlonzo.Code.Algebra.d808 v0 v1)
                  (coe MAlonzo.Code.Algebra.d808 v0 v2))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du106
                           (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))
                     (coe
                        MAlonzo.Code.Algebra.d804 v0 (coe MAlonzo.Code.Algebra.d808 v0 v2)
                        (coe MAlonzo.Code.Algebra.d808 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.d804 v0
                        (coe
                           MAlonzo.Code.Algebra.d804 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.d804 v0
                              (coe
                                 MAlonzo.Code.Algebra.d804 v0 v2
                                 (coe
                                    MAlonzo.Code.Algebra.d808 v0
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                              (coe MAlonzo.Code.Algebra.d808 v0 v2)))
                        (coe MAlonzo.Code.Algebra.d808 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.d808 v0
                        (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d562
                                (coe (MAlonzo.Code.Algebra.d810 (coe v0))) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d484 (coe v3) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d278 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du112
                           (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))
                           (coe MAlonzo.Code.Algebra.d808 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.d804 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.d804 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0 v2
                                    (coe
                                       MAlonzo.Code.Algebra.d808 v0
                                       (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                                 (coe MAlonzo.Code.Algebra.d808 v0 v2)))
                           (coe MAlonzo.Code.Algebra.d808 v0 v2)
                           (coe (du152 (coe v0) (coe v1) (coe v2)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                        let v4 = MAlonzo.Code.Algebra.Structures.d562 (coe v3) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d484 (coe v4) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d278 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v6)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d804 v0
                              (coe
                                 MAlonzo.Code.Algebra.d804 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d804 v0 v2
                                       (coe
                                          MAlonzo.Code.Algebra.d808 v0
                                          (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                                    (coe MAlonzo.Code.Algebra.d808 v0 v2)))
                              (coe MAlonzo.Code.Algebra.d808 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d804 v0
                              (coe
                                 MAlonzo.Code.Algebra.d804 v0 v2
                                 (coe
                                    MAlonzo.Code.Algebra.d808 v0
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                              (coe MAlonzo.Code.Algebra.d808 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.d808 v0
                              (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))
                           (coe
                              (du162
                                 (coe v0) (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d804 v0 v2
                                       (coe
                                          MAlonzo.Code.Algebra.d808 v0
                                          (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                                    (coe MAlonzo.Code.Algebra.d808 v0 v2))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                              let v4
                                                    = MAlonzo.Code.Algebra.Structures.d562
                                                        (coe v3) in
                                              let v5
                                                    = MAlonzo.Code.Algebra.Structures.d484
                                                        (coe v4) in
                                              let v6
                                                    = MAlonzo.Code.Algebra.Structures.d278
                                                        (coe v5) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v6)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d804 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d804 v0 v2
                                       (coe
                                          MAlonzo.Code.Algebra.d808 v0
                                          (coe MAlonzo.Code.Algebra.d804 v0 v1 v2)))
                                    (coe MAlonzo.Code.Algebra.d808 v0 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.d808 v0
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.d808 v0
                                    (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))
                                 (coe
                                    (du162
                                       (coe v0) (coe v2)
                                       (coe
                                          MAlonzo.Code.Algebra.d808 v0
                                          (coe MAlonzo.Code.Algebra.d804 v0 v1 v2))))
                                 (let v3
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v3 = MAlonzo.Code.Algebra.d810 (coe v0) in
                                                   let v4
                                                         = MAlonzo.Code.Algebra.Structures.d562
                                                             (coe v3) in
                                                   let v5
                                                         = MAlonzo.Code.Algebra.Structures.d484
                                                             (coe v4) in
                                                   let v6
                                                         = MAlonzo.Code.Algebra.Structures.d278
                                                             (coe v5) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Structures.du106
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d126
                                                              (coe v6))))))) in
                                  let v4
                                        = coe
                                            MAlonzo.Code.Algebra.d808 v0
                                            (coe MAlonzo.Code.Algebra.d804 v0 v1 v2) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v3 v4))))))))))))
