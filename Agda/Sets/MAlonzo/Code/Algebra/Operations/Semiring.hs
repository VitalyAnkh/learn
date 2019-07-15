{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Operations.Semiring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Operations.CommutativeMonoid
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Table.Base
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name158 = "Algebra.Operations.Semiring._._×_"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
d158 v0 v1 v2 = du158 v2
du158 ::
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
du158 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name160 = "Algebra.Operations.Semiring._._×′_"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
d160 v0 v1 v2 = du160 v2
du160 ::
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
du160 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name162 = "Algebra.Operations.Semiring._.1+×′"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
d162 v0 v1 v2 = du162 v2
du162 ::
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
du162 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du160
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name164 = "Algebra.Operations.Semiring._.sumₗ"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> [AgdaAny] -> AgdaAny
d164 v0 v1 v2 = du164 v2
du164 :: MAlonzo.Code.Algebra.T1550 -> [AgdaAny] -> AgdaAny
du164 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du110
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name166 = "Algebra.Operations.Semiring._.sumₜ"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> MAlonzo.Code.Data.Table.Base.T20 -> AgdaAny
d166 v0 v1 v2 = du166 v2
du166 ::
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> MAlonzo.Code.Data.Table.Base.T20 -> AgdaAny
du166 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du114
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name168 = "Algebra.Operations.Semiring._.sumₜ-syntax"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> AgdaAny
d168 v0 v1 v2 = du168 v2
du168 ::
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> AgdaAny
du168 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du118
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name170 = "Algebra.Operations.Semiring._.×-cong"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d170 v0 v1 v2 = du170 v2
du170 ::
  MAlonzo.Code.Algebra.T1550 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
du170 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du132
           (coe
              (MAlonzo.Code.Algebra.du1520
                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
           v1 v3 v4 v6)
name172 = "Algebra.Operations.Semiring._.×-congʳ"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d172 v0 v1 v2 = du172 v2
du172 ::
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du172 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du124
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name174 = "Algebra.Operations.Semiring._.×-homo-+"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d174 v0 v1 v2 = du174 v2
du174 ::
  MAlonzo.Code.Algebra.T1550 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du174 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du144
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name176 = "Algebra.Operations.Semiring._.×′-cong"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d176 v0 v1 v2 = du176 v2
du176 ::
  MAlonzo.Code.Algebra.T1550 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
du176 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du194
           (coe
              (MAlonzo.Code.Algebra.du1520
                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
           v1 v3 v4 v6)
name178 = "Algebra.Operations.Semiring._.×′-homo-+"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d178 v0 v1 v2 = du178 v2
du178 ::
  MAlonzo.Code.Algebra.T1550 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du178 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du186
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name180 = "Algebra.Operations.Semiring._.×≈×′"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
d180 v0 v1 v2 = du180 v2
du180 ::
  MAlonzo.Code.Algebra.T1550 -> Integer -> AgdaAny -> AgdaAny
du180 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du172
         (coe
            (MAlonzo.Code.Algebra.du1520
               (coe (MAlonzo.Code.Algebra.du1662 (coe v0))))))
name182 = "Algebra.Operations.Semiring._^_"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> AgdaAny -> Integer -> AgdaAny
d182 v0 v1 v2 v3 v4 = du182 v2 v3 v4
du182 ::
  MAlonzo.Code.Algebra.T1550 -> AgdaAny -> Integer -> AgdaAny
du182 v0 v1 v2
  = case coe v2 of
      0 -> coe (MAlonzo.Code.Algebra.d1580 (coe v0))
      _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Algebra.d1576 v0 v1 (du182 (coe v0) (coe v1) (coe v3))
name194 = "Algebra.Operations.Semiring.×1-homo-*"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> Integer -> Integer -> AgdaAny
d194 v0 v1 v2 v3 v4 = du194 v2 v3 v4
du194 ::
  MAlonzo.Code.Algebra.T1550 -> Integer -> Integer -> AgdaAny
du194 v0 v1 v2
  = case coe v1 of
      0 -> coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v3 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                   let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
                                   let v5 = MAlonzo.Code.Algebra.Structures.d1018 (coe v4) in
                                   let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
                      (coe (MAlonzo.Code.Algebra.d1578 (coe v0)))
                      (coe
                         MAlonzo.Code.Algebra.d1576 v0 (MAlonzo.Code.Algebra.d1578 (coe v0))
                         (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                            (coe
                               (MAlonzo.Code.Algebra.du1520
                                  (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                            (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.d1576 v0 (MAlonzo.Code.Algebra.d1578 (coe v0))
                         (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                            (coe
                               (MAlonzo.Code.Algebra.du1520
                                  (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                            (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Core.d416
                         (MAlonzo.Code.Algebra.Structures.d92
                            (coe
                               (MAlonzo.Code.Algebra.Structures.d126
                                  (coe
                                     (MAlonzo.Code.Algebra.Structures.d326
                                        (coe
                                           (MAlonzo.Code.Algebra.Structures.d1018
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d1106
                                                    (coe
                                                       (MAlonzo.Code.Algebra.d1582
                                                          (coe v0))))))))))))
                         (coe
                            MAlonzo.Code.Algebra.d1576 v0 (MAlonzo.Code.Algebra.d1578 (coe v0))
                            (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                               (coe
                                  (MAlonzo.Code.Algebra.du1520
                                     (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                               (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                         (MAlonzo.Code.Algebra.d1578 (coe v0))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d28
                            (MAlonzo.Code.Algebra.Structures.d1108
                               (coe (MAlonzo.Code.Algebra.d1582 (coe v0))))
                            (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                               (coe
                                  (MAlonzo.Code.Algebra.du1520
                                     (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                               (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                      (let v3
                             = MAlonzo.Code.Relation.Binary.Core.d414
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                        let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d1018 (coe v4) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v6))))))) in
                       let v4
                             = coe
                                 MAlonzo.Code.Algebra.d1576 v0 (MAlonzo.Code.Algebra.d1578 (coe v0))
                                 (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                    (coe
                                       (MAlonzo.Code.Algebra.du1520
                                          (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                    (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))) in
                       coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                            (coe v3 v4))))))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v4 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                   let v5 = MAlonzo.Code.Algebra.Structures.d1106 (coe v4) in
                                   let v6 = MAlonzo.Code.Algebra.Structures.d1018 (coe v5) in
                                   let v7 = MAlonzo.Code.Algebra.Structures.d326 (coe v6) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v7)))))))))
                      (coe
                         (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                            (coe
                               (MAlonzo.Code.Algebra.du1520
                                  (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                            (coe (addInt (coe v2) (coe (mulInt (coe v3) (coe v2)))))
                            (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.d1574 v0
                         (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                            (coe
                               (MAlonzo.Code.Algebra.du1520
                                  (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                            (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                         (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                            (coe
                               (MAlonzo.Code.Algebra.du1520
                                  (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                            (coe (mulInt (coe v3) (coe v2)))
                            (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                      (coe
                         MAlonzo.Code.Algebra.d1576 v0
                         (coe
                            MAlonzo.Code.Algebra.d1574 v0 (MAlonzo.Code.Algebra.d1580 (coe v0))
                            (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                               (coe
                                  (MAlonzo.Code.Algebra.du1520
                                     (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                               (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                         (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                            (coe
                               (MAlonzo.Code.Algebra.du1520
                                  (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                            (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                      (coe
                         (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du144
                            (coe
                               (MAlonzo.Code.Algebra.du1520
                                  (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                            (coe (MAlonzo.Code.Algebra.d1580 (coe v0))) (coe v2)
                            (coe (mulInt (coe v3) (coe v2)))))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v4 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                         let v5 = MAlonzo.Code.Algebra.Structures.d1106 (coe v4) in
                                         let v6 = MAlonzo.Code.Algebra.Structures.d1018 (coe v5) in
                                         let v7 = MAlonzo.Code.Algebra.Structures.d326 (coe v6) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v7)))))))))
                            (coe
                               MAlonzo.Code.Algebra.d1574 v0
                               (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                  (coe
                                     (MAlonzo.Code.Algebra.du1520
                                        (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                  (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                               (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                  (coe
                                     (MAlonzo.Code.Algebra.du1520
                                        (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                  (coe (mulInt (coe v3) (coe v2)))
                                  (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                            (coe
                               MAlonzo.Code.Algebra.d1574 v0
                               (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                  (coe
                                     (MAlonzo.Code.Algebra.du1520
                                        (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                  (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                               (coe
                                  MAlonzo.Code.Algebra.d1576 v0
                                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                     (coe
                                        (MAlonzo.Code.Algebra.du1520
                                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                     (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                     (coe
                                        (MAlonzo.Code.Algebra.du1520
                                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                     (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                            (coe
                               MAlonzo.Code.Algebra.d1576 v0
                               (coe
                                  MAlonzo.Code.Algebra.d1574 v0
                                  (MAlonzo.Code.Algebra.d1580 (coe v0))
                                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                     (coe
                                        (MAlonzo.Code.Algebra.du1520
                                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                     (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                               (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                  (coe
                                     (MAlonzo.Code.Algebra.du1520
                                        (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                  (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                            (coe
                               MAlonzo.Code.Algebra.Structures.d94
                               (MAlonzo.Code.Algebra.Structures.d126
                                  (coe
                                     (MAlonzo.Code.Algebra.Structures.d326
                                        (coe
                                           (MAlonzo.Code.Algebra.Structures.d1018
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d1106
                                                    (coe
                                                       (MAlonzo.Code.Algebra.d1582 (coe v0))))))))))
                               (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                  (coe
                                     (MAlonzo.Code.Algebra.du1520
                                        (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                  (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                               (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                  (coe
                                     (MAlonzo.Code.Algebra.du1520
                                        (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                  (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                               (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                  (coe
                                     (MAlonzo.Code.Algebra.du1520
                                        (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                  (coe (mulInt (coe v3) (coe v2)))
                                  (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                               (coe
                                  MAlonzo.Code.Algebra.d1576 v0
                                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                     (coe
                                        (MAlonzo.Code.Algebra.du1520
                                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                     (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                     (coe
                                        (MAlonzo.Code.Algebra.du1520
                                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                     (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                               (coe
                                  MAlonzo.Code.Relation.Binary.Core.d414
                                  (MAlonzo.Code.Algebra.Structures.d92
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d126
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d326
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Structures.d1018
                                                       (coe
                                                          (MAlonzo.Code.Algebra.Structures.d1106
                                                             (coe
                                                                (MAlonzo.Code.Algebra.d1582
                                                                   (coe v0))))))))))))
                                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                     (coe
                                        (MAlonzo.Code.Algebra.du1520
                                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                     (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                               (du194 (coe v0) (coe v3) (coe v2)))
                            (coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.Core.d418
                                        (coe
                                           (MAlonzo.Code.Relation.Binary.d144
                                              (let v4 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                               let v5
                                                     = MAlonzo.Code.Algebra.Structures.d1106
                                                         (coe v4) in
                                               let v6
                                                     = MAlonzo.Code.Algebra.Structures.d1018
                                                         (coe v5) in
                                               let v7
                                                     = MAlonzo.Code.Algebra.Structures.d326
                                                         (coe v6) in
                                               coe
                                                 (MAlonzo.Code.Algebra.Structures.du106
                                                    (coe
                                                       (MAlonzo.Code.Algebra.Structures.d126
                                                          (coe v7)))))))))
                                  (coe
                                     MAlonzo.Code.Algebra.d1574 v0
                                     (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                        (coe
                                           (MAlonzo.Code.Algebra.du1520
                                              (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                        (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                     (coe
                                        MAlonzo.Code.Algebra.d1576 v0
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                                  (coe
                                     MAlonzo.Code.Algebra.d1574 v0
                                     (coe
                                        MAlonzo.Code.Algebra.d1576 v0
                                        (MAlonzo.Code.Algebra.d1580 (coe v0))
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                     (coe
                                        MAlonzo.Code.Algebra.d1576 v0
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                                  (coe
                                     MAlonzo.Code.Algebra.d1576 v0
                                     (coe
                                        MAlonzo.Code.Algebra.d1574 v0
                                        (MAlonzo.Code.Algebra.d1580 (coe v0))
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                     (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                        (coe
                                           (MAlonzo.Code.Algebra.du1520
                                              (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                        (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Core.d416
                                     (MAlonzo.Code.Algebra.Structures.d92
                                        (coe
                                           (MAlonzo.Code.Algebra.Structures.d126
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d326
                                                    (coe
                                                       (MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d1106
                                                                (coe
                                                                   (MAlonzo.Code.Algebra.d1582
                                                                      (coe v0))))))))))))
                                     (coe
                                        MAlonzo.Code.Algebra.d1574 v0
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (MAlonzo.Code.Algebra.d1580 (coe v0))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2)
                                              (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                                     (coe
                                        MAlonzo.Code.Algebra.d1574 v0
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2)
                                              (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d94
                                        (MAlonzo.Code.Algebra.Structures.d126
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d326
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Structures.d1018
                                                       (coe
                                                          (MAlonzo.Code.Algebra.Structures.d1106
                                                             (coe
                                                                (MAlonzo.Code.Algebra.d1582
                                                                   (coe v0))))))))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (MAlonzo.Code.Algebra.d1580 (coe v0))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                           (coe
                                              (MAlonzo.Code.Algebra.du1520
                                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                           (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v3) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                        (let v4 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                         let v5 = MAlonzo.Code.Algebra.Structures.d1106 (coe v4) in
                                         let v6 = MAlonzo.Code.Algebra.Structures.d1020 (coe v5) in
                                         coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.d28
                                           (MAlonzo.Code.Algebra.Structures.d280 (coe v6))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Core.d414
                                           (MAlonzo.Code.Algebra.Structures.d92
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe
                                                       (MAlonzo.Code.Algebra.Structures.d326
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d1018
                                                                (coe
                                                                   (MAlonzo.Code.Algebra.Structures.d1106
                                                                      (coe
                                                                         (MAlonzo.Code.Algebra.d1582
                                                                            (coe v0))))))))))))
                                           (coe
                                              MAlonzo.Code.Algebra.d1576 v0
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v3)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v2)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))))
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                        (coe
                                           (MAlonzo.Code.Relation.Binary.Core.d418
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v4 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                                     let v5
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v4) in
                                                     let v6
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v5) in
                                                     let v7
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v6) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v7)))))))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1574 v0
                                           (coe
                                              MAlonzo.Code.Algebra.d1576 v0
                                              (MAlonzo.Code.Algebra.d1580 (coe v0))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v2)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                           (coe
                                              MAlonzo.Code.Algebra.d1576 v0
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v3)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v2)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (coe
                                              MAlonzo.Code.Algebra.d1574 v0
                                              (MAlonzo.Code.Algebra.d1580 (coe v0))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v3)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Algebra.d1576 v0
                                           (coe
                                              MAlonzo.Code.Algebra.d1574 v0
                                              (MAlonzo.Code.Algebra.d1580 (coe v0))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v3)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                           (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                              (coe
                                                 (MAlonzo.Code.Algebra.du1520
                                                    (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                              (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                        (coe
                                           MAlonzo.Code.Relation.Binary.Core.d416
                                           (MAlonzo.Code.Algebra.Structures.d92
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe
                                                       (MAlonzo.Code.Algebra.Structures.d326
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d1018
                                                                (coe
                                                                   (MAlonzo.Code.Algebra.Structures.d1106
                                                                      (coe
                                                                         (MAlonzo.Code.Algebra.d1582
                                                                            (coe v0))))))))))))
                                           (coe
                                              MAlonzo.Code.Algebra.d1576 v0
                                              (coe
                                                 MAlonzo.Code.Algebra.d1574 v0
                                                 (MAlonzo.Code.Algebra.d1580 (coe v0))
                                                 (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                    (coe
                                                       (MAlonzo.Code.Algebra.du1520
                                                          (coe
                                                             (MAlonzo.Code.Algebra.du1662
                                                                (coe v0)))))
                                                    (coe v3)
                                                    (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v2)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                           (coe
                                              MAlonzo.Code.Algebra.d1574 v0
                                              (coe
                                                 MAlonzo.Code.Algebra.d1576 v0
                                                 (MAlonzo.Code.Algebra.d1580 (coe v0))
                                                 (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                    (coe
                                                       (MAlonzo.Code.Algebra.du1520
                                                          (coe
                                                             (MAlonzo.Code.Algebra.du1662
                                                                (coe v0)))))
                                                    (coe v2)
                                                    (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                              (coe
                                                 MAlonzo.Code.Algebra.d1576 v0
                                                 (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                    (coe
                                                       (MAlonzo.Code.Algebra.du1520
                                                          (coe
                                                             (MAlonzo.Code.Algebra.du1662
                                                                (coe v0)))))
                                                    (coe v3)
                                                    (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                                 (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                    (coe
                                                       (MAlonzo.Code.Algebra.du1520
                                                          (coe
                                                             (MAlonzo.Code.Algebra.du1662
                                                                (coe v0)))))
                                                    (coe v2)
                                                    (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                                           (let v4 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                            let v5
                                                  = MAlonzo.Code.Algebra.Structures.d1106
                                                      (coe v4) in
                                            coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d30
                                              (MAlonzo.Code.Algebra.Structures.d1022 (coe v5))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v2)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                              (MAlonzo.Code.Algebra.d1580 (coe v0))
                                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                 (coe
                                                    (MAlonzo.Code.Algebra.du1520
                                                       (coe
                                                          (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                                 (coe v3)
                                                 (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))))
                                        (let v4
                                               = MAlonzo.Code.Relation.Binary.Core.d414
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.d144
                                                         (let v4
                                                                = MAlonzo.Code.Algebra.d1582
                                                                    (coe v0) in
                                                          let v5
                                                                = MAlonzo.Code.Algebra.Structures.d1106
                                                                    (coe v4) in
                                                          let v6
                                                                = MAlonzo.Code.Algebra.Structures.d1018
                                                                    (coe v5) in
                                                          let v7
                                                                = MAlonzo.Code.Algebra.Structures.d326
                                                                    (coe v6) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.Structures.du106
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                                     (coe v7))))))) in
                                         let v5
                                               = coe
                                                   MAlonzo.Code.Algebra.d1576 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d1574 v0
                                                      (MAlonzo.Code.Algebra.d1580 (coe v0))
                                                      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1520
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.du1662
                                                                     (coe v0)))))
                                                         (coe v3)
                                                         (coe
                                                            (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                                                   (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                                      (coe
                                                         (MAlonzo.Code.Algebra.du1520
                                                            (coe
                                                               (MAlonzo.Code.Algebra.du1662
                                                                  (coe v0)))))
                                                      (coe v2)
                                                      (coe
                                                         (MAlonzo.Code.Algebra.d1580 (coe v0)))) in
                                         coe
                                           (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                              (coe v4 v5))))))))))))
name206 = "Algebra.Operations.Semiring.×′1-homo-*"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 -> Integer -> Integer -> AgdaAny
d206 v0 v1 v2 v3 v4 = du206 v2 v3 v4
du206 ::
  MAlonzo.Code.Algebra.T1550 -> Integer -> Integer -> AgdaAny
du206 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v3 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d1018 (coe v4) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
               (coe
                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                     (coe
                        (MAlonzo.Code.Algebra.du1520
                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                     (coe (mulInt (coe v1) (coe v2)))
                     (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
               (coe
                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                     (coe
                        (MAlonzo.Code.Algebra.du1520
                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                     (coe (mulInt (coe v1) (coe v2)))
                     (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
               (coe
                  MAlonzo.Code.Algebra.d1576 v0
                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                     (coe
                        (MAlonzo.Code.Algebra.du1520
                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                     (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                     (coe
                        (MAlonzo.Code.Algebra.du1520
                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                     (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Algebra.Structures.d92
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d126
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d326
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1018
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1106
                                             (coe (MAlonzo.Code.Algebra.d1582 (coe v0))))))))))))
                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                     (coe
                        (MAlonzo.Code.Algebra.du1520
                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                     (coe (mulInt (coe v1) (coe v2)))
                     (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                     (coe
                        (MAlonzo.Code.Algebra.du1520
                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                     (coe (mulInt (coe v1) (coe v2)))
                     (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                  (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du172
                     (coe
                        (MAlonzo.Code.Algebra.du1520
                           (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                     (coe (mulInt (coe v1) (coe v2)))
                     (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                  let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d1018 (coe v4) in
                                  let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
                     (coe
                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                           (coe
                              (MAlonzo.Code.Algebra.du1520
                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                           (coe (mulInt (coe v1) (coe v2)))
                           (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                     (coe
                        MAlonzo.Code.Algebra.d1576 v0
                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                           (coe
                              (MAlonzo.Code.Algebra.du1520
                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                           (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                           (coe
                              (MAlonzo.Code.Algebra.du1520
                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                           (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                     (coe
                        MAlonzo.Code.Algebra.d1576 v0
                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                           (coe
                              (MAlonzo.Code.Algebra.du1520
                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                           (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                        (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                           (coe
                              (MAlonzo.Code.Algebra.du1520
                                 (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                           (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                     (coe (du194 (coe v0) (coe v1) (coe v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                        let v4 = MAlonzo.Code.Algebra.Structures.d1106 (coe v3) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d1018 (coe v4) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v6)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d1576 v0
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                           (coe
                              MAlonzo.Code.Algebra.d1576 v0
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                           (coe
                              MAlonzo.Code.Algebra.d1576 v0
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d94
                              (MAlonzo.Code.Algebra.Structures.d126
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d278
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1020
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.d1582 (coe v0))))))))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du92
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du172
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                              (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du172
                                 (coe
                                    (MAlonzo.Code.Algebra.du1520
                                       (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                 (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))))
                           (let v3
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v3 = MAlonzo.Code.Algebra.d1582 (coe v0) in
                                             let v4
                                                   = MAlonzo.Code.Algebra.Structures.d1106
                                                       (coe v3) in
                                             let v5
                                                   = MAlonzo.Code.Algebra.Structures.d1018
                                                       (coe v4) in
                                             let v6
                                                   = MAlonzo.Code.Algebra.Structures.d326
                                                       (coe v5) in
                                             coe
                                               (MAlonzo.Code.Algebra.Structures.du106
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                        (coe v6))))))) in
                            let v4
                                  = coe
                                      MAlonzo.Code.Algebra.d1576 v0
                                      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                         (coe
                                            (MAlonzo.Code.Algebra.du1520
                                               (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                         (coe v1) (coe (MAlonzo.Code.Algebra.d1580 (coe v0))))
                                      (MAlonzo.Code.Algebra.Operations.CommutativeMonoid.du100
                                         (coe
                                            (MAlonzo.Code.Algebra.du1520
                                               (coe (MAlonzo.Code.Algebra.du1662 (coe v0)))))
                                         (coe v2) (coe (MAlonzo.Code.Algebra.d1580 (coe v0)))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v3 v4))))))))))
name216 = "Algebra.Operations.Semiring.^-congˡ"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 v6 = du216 v2 v3 v4 v5 v6
du216 ::
  MAlonzo.Code.Algebra.T1550 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du216 v0 v1 v2 v3 v4
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Core.d414
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe
                               (MAlonzo.Code.Algebra.Structures.d1018
                                  (coe
                                     (MAlonzo.Code.Algebra.Structures.d1106
                                        (coe (MAlonzo.Code.Algebra.d1582 (coe v0))))))))))))
             (du182 (coe v0) (coe v2) (coe (0 :: Integer)))
      _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Algebra.Structures.d94
             (MAlonzo.Code.Algebra.Structures.d126
                (coe
                   (MAlonzo.Code.Algebra.Structures.d278
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d1020
                            (coe
                               (MAlonzo.Code.Algebra.Structures.d1106
                                  (coe (MAlonzo.Code.Algebra.d1582 (coe v0))))))))))
             v2 v3 (du182 (coe v0) (coe v2) (coe v5))
             (du182 (coe v0) (coe v3) (coe v5)) v4
             (du216 (coe v0) (coe v5) (coe v2) (coe v3) (coe v4))
name224 = "Algebra.Operations.Semiring.^-cong"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1550 ->
  AgdaAny ->
  AgdaAny ->
  Integer ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d224 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du224 v2 v3 v4 v5 v7
du224 ::
  MAlonzo.Code.Algebra.T1550 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny -> AgdaAny
du224 v0 v1 v2 v3 v4
  = coe (du216 (coe v0) (coe v3) (coe v1) (coe v2) (coe v4))
