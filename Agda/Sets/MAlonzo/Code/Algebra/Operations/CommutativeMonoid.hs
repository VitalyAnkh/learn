{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Operations.CommutativeMonoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Table.Base
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name92 = "Algebra.Operations.CommutativeMonoid._×_"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
d92 v0 v1 v2 v3 v4 = du92 v2 v3 v4
du92 :: MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
du92 v0 v1 v2
  = case coe v1 of
      0 -> coe (MAlonzo.Code.Algebra.d440 (coe v0))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Algebra.d438 v0 v2 (du92 (coe v0) (coe v3) (coe v2))
name100 = "Algebra.Operations.CommutativeMonoid._×′_"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
d100 v0 v1 v2 v3 v4 = du100 v2 v3 v4
du100 :: MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
du100 v0 v1 v2
  = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
    let v4
          = coe
              MAlonzo.Code.Algebra.d438 v0 v2
              (du100 (coe v0) (coe v3) (coe v2)) in
    case coe v1 of
      0 -> coe (MAlonzo.Code.Algebra.d440 (coe v0))
      1 -> coe v2
      _ -> coe v4
name110 = "Algebra.Operations.CommutativeMonoid.sumₗ"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 -> [AgdaAny] -> AgdaAny
d110 v0 v1 v2 = du110 v2
du110 :: MAlonzo.Code.Algebra.T418 -> [AgdaAny] -> AgdaAny
du110 v0
  = coe
      (MAlonzo.Code.Data.List.Base.du202
         (coe (MAlonzo.Code.Algebra.d438 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d440 (coe v0))))
name114 = "Algebra.Operations.CommutativeMonoid.sumₜ"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  Integer -> MAlonzo.Code.Data.Table.Base.T20 -> AgdaAny
d114 v0 v1 v2 v3 = du114 v2 v3
du114 ::
  MAlonzo.Code.Algebra.T418 ->
  Integer -> MAlonzo.Code.Data.Table.Base.T20 -> AgdaAny
du114 v0 v1
  = coe
      (MAlonzo.Code.Data.Table.Base.du88
         (coe v1) (coe (MAlonzo.Code.Algebra.d438 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d440 (coe v0))))
name118 = "Algebra.Operations.CommutativeMonoid.sumₜ-syntax"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> AgdaAny
d118 v0 v1 v2 v3 v4 = du118 v2 v3 v4
du118 ::
  MAlonzo.Code.Algebra.T418 ->
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> AgdaAny
du118 v0 v1 v2
  = coe du114 v0 v1 (MAlonzo.Code.Data.Table.Base.C30 (coe v2))
name124 = "Algebra.Operations.CommutativeMonoid.×-congʳ"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d124 v0 v1 v2 v3 v4 v5 v6 = du124 v2 v3 v4 v5 v6
du124 ::
  MAlonzo.Code.Algebra.T418 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du124 v0 v1 v2 v3 v4
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Core.d414
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
             (du92 (coe v0) (coe (0 :: Integer)) (coe v2))
      _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Algebra.Structures.d94
             (MAlonzo.Code.Algebra.Structures.d126
                (coe
                   (MAlonzo.Code.Algebra.Structures.d326
                      (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))
             v2 v3 (du92 (coe v0) (coe v5) (coe v2))
             (du92 (coe v0) (coe v5) (coe v3)) v4
             (du124 (coe v0) (coe v5) (coe v2) (coe v3) (coe v4))
name132 = "Algebra.Operations.CommutativeMonoid.×-cong"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du132 v2 v3 v5 v6 v8
du132 ::
  MAlonzo.Code.Algebra.T418 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du132 v0 v1 v2 v3 v4
  = coe (du124 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
name144 = "Algebra.Operations.CommutativeMonoid.×-homo-+"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d144 v0 v1 v2 v3 v4 v5 = du144 v2 v3 v4 v5
du144 ::
  MAlonzo.Code.Algebra.T418 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du144 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Core.d416
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
             (coe
                MAlonzo.Code.Algebra.d438 v0 (MAlonzo.Code.Algebra.d440 (coe v0))
                (du92 (coe v0) (coe v3) (coe v1)))
             (du92 (coe v0) (coe v3) (coe v1))
             (coe
                MAlonzo.Code.Algebra.Structures.d328
                (MAlonzo.Code.Algebra.d442 (coe v0))
                (du92 (coe v0) (coe v3) (coe v1)))
      _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v5 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                   let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
                      (coe
                         MAlonzo.Code.Algebra.d438 v0 v1
                         (du92 (coe v0) (coe (addInt (coe v4) (coe v3))) (coe v1)))
                      (coe
                         MAlonzo.Code.Algebra.d438 v0 v1
                         (coe
                            MAlonzo.Code.Algebra.d438 v0 (du92 (coe v0) (coe v4) (coe v1))
                            (du92 (coe v0) (coe v3) (coe v1))))
                      (coe
                         MAlonzo.Code.Algebra.d438 v0
                         (coe
                            MAlonzo.Code.Algebra.d438 v0 v1 (du92 (coe v0) (coe v4) (coe v1)))
                         (du92 (coe v0) (coe v3) (coe v1)))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d94
                         (MAlonzo.Code.Algebra.Structures.d126
                            (coe
                               (MAlonzo.Code.Algebra.Structures.d326
                                  (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))
                         v1 v1 (du92 (coe v0) (coe (addInt (coe v4) (coe v3))) (coe v1))
                         (coe
                            MAlonzo.Code.Algebra.d438 v0 (du92 (coe v0) (coe v4) (coe v1))
                            (du92 (coe v0) (coe v3) (coe v1)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Core.d414
                            (MAlonzo.Code.Algebra.Structures.d92
                               (coe
                                  (MAlonzo.Code.Algebra.Structures.d126
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d326
                                           (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
                            v1)
                         (du144 (coe v0) (coe v1) (coe v4) (coe v3)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v5 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                         let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v6)))))))))
                            (coe
                               MAlonzo.Code.Algebra.d438 v0 v1
                               (coe
                                  MAlonzo.Code.Algebra.d438 v0 (du92 (coe v0) (coe v4) (coe v1))
                                  (du92 (coe v0) (coe v3) (coe v1))))
                            (coe
                               MAlonzo.Code.Algebra.d438 v0
                               (coe
                                  MAlonzo.Code.Algebra.d438 v0 v1 (du92 (coe v0) (coe v4) (coe v1)))
                               (du92 (coe v0) (coe v3) (coe v1)))
                            (coe
                               MAlonzo.Code.Algebra.d438 v0
                               (coe
                                  MAlonzo.Code.Algebra.d438 v0 v1 (du92 (coe v0) (coe v4) (coe v1)))
                               (du92 (coe v0) (coe v3) (coe v1)))
                            (coe
                               MAlonzo.Code.Relation.Binary.Core.d416
                               (MAlonzo.Code.Algebra.Structures.d92
                                  (coe
                                     (MAlonzo.Code.Algebra.Structures.d126
                                        (coe
                                           (MAlonzo.Code.Algebra.Structures.d326
                                              (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
                               (coe
                                  MAlonzo.Code.Algebra.d438 v0
                                  (coe
                                     MAlonzo.Code.Algebra.d438 v0 v1
                                     (du92 (coe v0) (coe v4) (coe v1)))
                                  (du92 (coe v0) (coe v3) (coe v1)))
                               (coe
                                  MAlonzo.Code.Algebra.d438 v0 v1
                                  (coe
                                     MAlonzo.Code.Algebra.d438 v0 (du92 (coe v0) (coe v4) (coe v1))
                                     (du92 (coe v0) (coe v3) (coe v1))))
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d128
                                  (MAlonzo.Code.Algebra.Structures.d326
                                     (coe (MAlonzo.Code.Algebra.d442 (coe v0))))
                                  v1 (du92 (coe v0) (coe v4) (coe v1))
                                  (du92 (coe v0) (coe v3) (coe v1))))
                            (let v5
                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v5 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                              let v6
                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                        (coe v5) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v6))))))) in
                             let v6
                                   = coe
                                       MAlonzo.Code.Algebra.d438 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d438 v0 v1
                                          (du92 (coe v0) (coe v4) (coe v1)))
                                       (du92 (coe v0) (coe v3) (coe v1)) in
                             coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                  (coe v5 v6))))))))
name160 = "Algebra.Operations.CommutativeMonoid.1+×′"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
d160 v0 v1 v2 v3 v4 = du160 v2 v3 v4
du160 :: MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
du160 v0 v1 v2
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Core.d416
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
             (coe
                MAlonzo.Code.Algebra.d438 v0 v2
                (MAlonzo.Code.Algebra.d440 (coe v0)))
             v2
             (coe
                MAlonzo.Code.Algebra.Structures.du356
                (MAlonzo.Code.Algebra.d438 (coe v0))
                (MAlonzo.Code.Algebra.d440 (coe v0))
                (MAlonzo.Code.Algebra.d442 (coe v0)) v2)
      _ -> coe
             MAlonzo.Code.Relation.Binary.Core.d414
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
             (du100
                (coe v0) (coe (addInt (coe (1 :: Integer)) (coe v1))) (coe v2))
name172 = "Algebra.Operations.CommutativeMonoid.×≈×′"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
d172 v0 v1 v2 v3 v4 = du172 v2 v3 v4
du172 :: MAlonzo.Code.Algebra.T418 -> Integer -> AgdaAny -> AgdaAny
du172 v0 v1 v2
  = case coe v1 of
      0 -> coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (let v3
                       = MAlonzo.Code.Relation.Binary.Core.d414
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                  let v4 = MAlonzo.Code.Algebra.Structures.d326 (coe v3) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v4))))))) in
                 let v4 = MAlonzo.Code.Algebra.d440 (coe v0) in
                 coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                      (coe v3 v4))))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v4 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                   let v5 = MAlonzo.Code.Algebra.Structures.d326 (coe v4) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))))))))
                      (coe
                         MAlonzo.Code.Algebra.d438 v0 v2 (du92 (coe v0) (coe v3) (coe v2)))
                      (coe
                         MAlonzo.Code.Algebra.d438 v0 v2 (du100 (coe v0) (coe v3) (coe v2)))
                      (coe (du100 (coe v0) (coe v1) (coe v2)))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d94
                         (MAlonzo.Code.Algebra.Structures.d126
                            (coe
                               (MAlonzo.Code.Algebra.Structures.d326
                                  (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))
                         v2 v2 (du92 (coe v0) (coe v3) (coe v2))
                         (du100 (coe v0) (coe v3) (coe v2))
                         (coe
                            MAlonzo.Code.Relation.Binary.Core.d414
                            (MAlonzo.Code.Algebra.Structures.d92
                               (coe
                                  (MAlonzo.Code.Algebra.Structures.d126
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d326
                                           (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
                            v2)
                         (du172 (coe v0) (coe v3) (coe v2)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v4 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                         let v5 = MAlonzo.Code.Algebra.Structures.d326 (coe v4) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v5)))))))))
                            (coe
                               MAlonzo.Code.Algebra.d438 v0 v2 (du100 (coe v0) (coe v3) (coe v2)))
                            (coe (du100 (coe v0) (coe v1) (coe v2)))
                            (coe (du100 (coe v0) (coe v1) (coe v2)))
                            (coe
                               MAlonzo.Code.Relation.Binary.Core.d416
                               (MAlonzo.Code.Algebra.Structures.d92
                                  (coe
                                     (MAlonzo.Code.Algebra.Structures.d126
                                        (coe
                                           (MAlonzo.Code.Algebra.Structures.d326
                                              (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
                               (du100 (coe v0) (coe v1) (coe v2))
                               (coe
                                  MAlonzo.Code.Algebra.d438 v0 v2
                                  (du100 (coe v0) (coe v3) (coe v2)))
                               (du160 (coe v0) (coe v3) (coe v2)))
                            (let v4
                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v4 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                              let v5
                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                        (coe v4) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v5))))))) in
                             let v5 = du100 (coe v0) (coe v1) (coe v2) in
                             coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                  (coe v4 v5))))))))
name186 = "Algebra.Operations.CommutativeMonoid.×′-homo-+"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d186 v0 v1 v2 v3 v4 v5 = du186 v2 v3 v4 v5
du186 ::
  MAlonzo.Code.Algebra.T418 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du186 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v4 = MAlonzo.Code.Algebra.d442 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d326 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))))))))
               (coe (du100 (coe v0) (coe (addInt (coe v2) (coe v3))) (coe v1)))
               (coe (du92 (coe v0) (coe (addInt (coe v2) (coe v3))) (coe v1)))
               (coe
                  MAlonzo.Code.Algebra.d438 v0 (du100 (coe v0) (coe v2) (coe v1))
                  (du100 (coe v0) (coe v3) (coe v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Algebra.Structures.d92
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d126
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d326
                                 (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
                  (du92 (coe v0) (coe (addInt (coe v2) (coe v3))) (coe v1))
                  (du100 (coe v0) (coe (addInt (coe v2) (coe v3))) (coe v1))
                  (du172 (coe v0) (coe (addInt (coe v2) (coe v3))) (coe v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                  let v5 = MAlonzo.Code.Algebra.Structures.d326 (coe v4) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v5)))))))))
                     (coe (du92 (coe v0) (coe (addInt (coe v2) (coe v3))) (coe v1)))
                     (coe
                        MAlonzo.Code.Algebra.d438 v0 (du92 (coe v0) (coe v2) (coe v1))
                        (du92 (coe v0) (coe v3) (coe v1)))
                     (coe
                        MAlonzo.Code.Algebra.d438 v0 (du100 (coe v0) (coe v2) (coe v1))
                        (du100 (coe v0) (coe v3) (coe v1)))
                     (coe (du144 (coe v0) (coe v1) (coe v2) (coe v3)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                        let v5 = MAlonzo.Code.Algebra.Structures.d326 (coe v4) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v5)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d438 v0 (du92 (coe v0) (coe v2) (coe v1))
                              (du92 (coe v0) (coe v3) (coe v1)))
                           (coe
                              MAlonzo.Code.Algebra.d438 v0 (du100 (coe v0) (coe v2) (coe v1))
                              (du100 (coe v0) (coe v3) (coe v1)))
                           (coe
                              MAlonzo.Code.Algebra.d438 v0 (du100 (coe v0) (coe v2) (coe v1))
                              (du100 (coe v0) (coe v3) (coe v1)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d94
                              (MAlonzo.Code.Algebra.Structures.d126
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d326
                                       (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))
                              (du92 (coe v0) (coe v2) (coe v1))
                              (du100 (coe v0) (coe v2) (coe v1))
                              (du92 (coe v0) (coe v3) (coe v1))
                              (du100 (coe v0) (coe v3) (coe v1))
                              (du172 (coe v0) (coe v2) (coe v1))
                              (du172 (coe v0) (coe v3) (coe v1)))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v4 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                             let v5
                                                   = MAlonzo.Code.Algebra.Structures.d326
                                                       (coe v4) in
                                             coe
                                               (MAlonzo.Code.Algebra.Structures.du106
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                        (coe v5))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.d438 v0
                                      (du100 (coe v0) (coe v2) (coe v1))
                                      (du100 (coe v0) (coe v3) (coe v1)) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name194 = "Algebra.Operations.CommutativeMonoid.×′-cong"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d194 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du194 v2 v3 v5 v6 v8
du194 ::
  MAlonzo.Code.Algebra.T418 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du194 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v5 = MAlonzo.Code.Algebra.d442 (coe v0) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
               (coe (du100 (coe v0) (coe v1) (coe v2)))
               (coe (du92 (coe v0) (coe v1) (coe v2)))
               (coe (du100 (coe v0) (coe v1) (coe v3)))
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Algebra.Structures.d92
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d126
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d326
                                 (coe (MAlonzo.Code.Algebra.d442 (coe v0))))))))
                  (du92 (coe v0) (coe v1) (coe v2))
                  (du100 (coe v0) (coe v1) (coe v2))
                  (du172 (coe v0) (coe v1) (coe v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v5 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                  let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v6)))))))))
                     (coe (du92 (coe v0) (coe v1) (coe v2)))
                     (coe (du92 (coe v0) (coe v1) (coe v3)))
                     (coe (du100 (coe v0) (coe v1) (coe v3)))
                     (coe (du124 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v5 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d326 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v6)))))))))
                           (coe (du92 (coe v0) (coe v1) (coe v3)))
                           (coe (du100 (coe v0) (coe v1) (coe v3)))
                           (coe (du100 (coe v0) (coe v1) (coe v3)))
                           (coe (du172 (coe v0) (coe v1) (coe v3)))
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v5 = MAlonzo.Code.Algebra.d442 (coe v0) in
                                             let v6
                                                   = MAlonzo.Code.Algebra.Structures.d326
                                                       (coe v5) in
                                             coe
                                               (MAlonzo.Code.Algebra.Structures.du106
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                        (coe v6))))))) in
                            let v6 = du100 (coe v0) (coe v1) (coe v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v5 v6))))))))))
