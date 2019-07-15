{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.Lattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name66 = "Algebra.Properties.Lattice._.IsBand"
d66 a0 a1 a2 a3 = ()
name86 = "Algebra.Properties.Lattice._.IsLattice"
d86 a0 a1 a2 a3 a4 = ()
name88 = "Algebra.Properties.Lattice._.IsMagma"
d88 a0 a1 a2 a3 = ()
name98 = "Algebra.Properties.Lattice._.IsSemigroup"
d98 a0 a1 a2 a3 = ()
name100 = "Algebra.Properties.Lattice._.IsSemilattice"
d100 a0 a1 a2 a3 = ()
name1254 = "Algebra.Properties.Lattice._.Idempotent"
d1254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1254 = erased
name1322 = "Algebra.Properties.Lattice.∧-idem"
d1322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
d1322 v0 v1 v2 v3 = du1322 v2 v3
du1322 :: MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
du1322 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.d910 v0 v1 v1)
               (coe
                  MAlonzo.Code.Algebra.d910 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d908 v0 v1
                     (coe MAlonzo.Code.Algebra.d910 v0 v1 v1)))
               (coe v1)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du672
                     (coe (MAlonzo.Code.Algebra.d912 (coe v0))) (coe v1) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.d908 v0 v1
                        (coe MAlonzo.Code.Algebra.d910 v0 v1 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d416
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0))))
                        (coe
                           MAlonzo.Code.Algebra.d908 v0 v1
                           (coe MAlonzo.Code.Algebra.d910 v0 v1 v1))
                        v1
                        (let v2 = MAlonzo.Code.Algebra.d912 (coe v0) in
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d28
                           (MAlonzo.Code.Algebra.Structures.d656 (coe v2)) v1 v1))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d642
                                 (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.d910 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d908 v0 v1
                           (coe MAlonzo.Code.Algebra.d910 v0 v1 v1)))
                     (coe v1) (coe v1)
                     (let v2 = MAlonzo.Code.Algebra.d912 (coe v0) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d30
                        (MAlonzo.Code.Algebra.Structures.d656 (coe v2)) v1
                        (coe MAlonzo.Code.Algebra.d910 v0 v1 v1))
                     (let v2
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Algebra.Structures.d642
                                      (coe (MAlonzo.Code.Algebra.d912 (coe v0))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v2 v1))))))))
name1326 = "Algebra.Properties.Lattice.∧-isMagma"
d1326 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T84
d1326 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d654
               (coe (MAlonzo.Code.Algebra.d912 (coe v0))))))
name1328 = "Algebra.Properties.Lattice.∧-isSemigroup"
d1328 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T118
d1328 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C781
         (coe (d1326 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d652
               (coe (MAlonzo.Code.Algebra.d912 (coe v0))))))
name1330 = "Algebra.Properties.Lattice.∧-isBand"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T152
d1330 v0 v1 v2 = du1330 v2
du1330 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T152
du1330 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1021
         (coe (d1328 (coe v0))) (coe (du1322 (coe v0))))
name1332 = "Algebra.Properties.Lattice.∧-isSemilattice"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T190
d1332 v0 v1 v2 = du1332 v2
du1332 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T190
du1332 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1305
         (coe (du1330 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe (MAlonzo.Code.Algebra.d912 (coe v0))))))
name1334 = "Algebra.Properties.Lattice.∧-semilattice"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.T194
d1334 v0 v1 v2 = du1334 v2
du1334 :: MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.T194
du1334 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C771 v3 v4) erased erased
      (MAlonzo.Code.Algebra.d910 (coe v0)) (du1332 (coe v0))
name1338
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice"
d1338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1338 v0 v1 v2 = du1338 v2
du1338 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1338 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du144
         (coe (du1334 (coe v0))))
name1340
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice"
d1340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d1340 v0 v1 v2 = du1340 v2
du1340 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du1340 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du142
         (coe (du1334 (coe v0))))
name1342
  = "Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice"
d1342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d1342 v0 v1 v2 = du1342 v2
du1342 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du1342 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du148
         (coe (du1334 (coe v0))))
name1344
  = "Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d1344 v0 v1 v2 = du1344 v2
du1344 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du1344 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du146
         (coe (du1334 (coe v0))))
name1346 = "Algebra.Properties.Lattice.∨-idem"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
d1346 v0 v1 v2 v3 = du1346 v2 v3
du1346 :: MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
du1346 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.d908 v0 v1 v1)
               (coe
                  MAlonzo.Code.Algebra.d908 v0 v1
                  (coe MAlonzo.Code.Algebra.d910 v0 v1 v1))
               (coe v1)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du680
                     (coe (MAlonzo.Code.Algebra.d912 (coe v0))) (coe v1) (coe v1)
                     (coe MAlonzo.Code.Algebra.d910 v0 v1 v1)
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d416
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0))))
                        (coe MAlonzo.Code.Algebra.d910 v0 v1 v1) v1
                        (du1322 (coe v0) (coe v1)))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d642
                                 (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.d908 v0 v1
                        (coe MAlonzo.Code.Algebra.d910 v0 v1 v1))
                     (coe v1) (coe v1)
                     (let v2 = MAlonzo.Code.Algebra.d912 (coe v0) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d28
                        (MAlonzo.Code.Algebra.Structures.d656 (coe v2)) v1 v1)
                     (let v2
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Algebra.Structures.d642
                                      (coe (MAlonzo.Code.Algebra.d912 (coe v0))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v2 v1))))))))
name1350 = "Algebra.Properties.Lattice.∨-isMagma"
d1350 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T84
d1350 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d648
               (coe (MAlonzo.Code.Algebra.d912 (coe v0))))))
name1352 = "Algebra.Properties.Lattice.∨-isSemigroup"
d1352 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T118
d1352 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C781
         (coe (d1350 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d646
               (coe (MAlonzo.Code.Algebra.d912 (coe v0))))))
name1354 = "Algebra.Properties.Lattice.∨-isBand"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T152
d1354 v0 v1 v2 = du1354 v2
du1354 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T152
du1354 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1021
         (coe (d1352 (coe v0))) (coe (du1346 (coe v0))))
name1356 = "Algebra.Properties.Lattice.∨-isSemilattice"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T190
d1356 v0 v1 v2 = du1356 v2
du1356 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T190
du1356 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1305
         (coe (du1354 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d644
               (coe (MAlonzo.Code.Algebra.d912 (coe v0))))))
name1358 = "Algebra.Properties.Lattice.∨-semilattice"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.T194
d1358 v0 v1 v2 = du1358 v2
du1358 :: MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.T194
du1358 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C771 v3 v4) erased erased
      (MAlonzo.Code.Algebra.d908 (coe v0)) (du1356 (coe v0))
name1362
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticJoinSemilattice"
d1362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1362 v0 v1 v2 = du1362 v2
du1362 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1362 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du144
         (coe (du1358 (coe v0))))
name1364
  = "Algebra.Properties.Lattice._.∧-isOrderTheoreticMeetSemilattice"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d1364 v0 v1 v2 = du1364 v2
du1364 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du1364 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du142
         (coe (du1358 (coe v0))))
name1366
  = "Algebra.Properties.Lattice._.∧-orderTheoreticJoinSemilattice"
d1366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d1366 v0 v1 v2 = du1366 v2
du1366 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du1366 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du148
         (coe (du1358 (coe v0))))
name1368
  = "Algebra.Properties.Lattice._.∧-orderTheoreticMeetSemilattice"
d1368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d1368 v0 v1 v2 = du1368 v2
du1368 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du1368 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du146
         (coe (du1358 (coe v0))))
name1370 = "Algebra.Properties.Lattice.∧-∨-isLattice"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T620
d1370 v0 v1 v2 = du1370 v2
du1370 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.Structures.T620
du1370 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C5667
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d652
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d654
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d644
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d646
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d648
               (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))
         (coe
            (MAlonzo.Code.Data.Product.du252
               (coe
                  (MAlonzo.Code.Algebra.Structures.d656
                     (coe (MAlonzo.Code.Algebra.d912 (coe v0))))))))
name1372 = "Algebra.Properties.Lattice.∧-∨-lattice"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.T888
d1372 v0 v1 v2 = du1372 v2
du1372 :: MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Algebra.T888
du1372 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> MAlonzo.Code.Algebra.C3535 v3 v4 v5) erased
      erased (MAlonzo.Code.Algebra.d910 (coe v0))
      (MAlonzo.Code.Algebra.d908 (coe v0)) (du1370 (coe v0))
name1376 = "Algebra.Properties.Lattice._.poset"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Relation.Binary.T310
d1376 v0 v1 v2 = du1376 v2
du1376 ::
  MAlonzo.Code.Algebra.T888 -> MAlonzo.Code.Relation.Binary.T310
du1376 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du134
         (coe (du1334 (coe v0))))
name1380 = "Algebra.Properties.Lattice._._≤_"
d1380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny -> ()
d1380 = erased
name1384 = "Algebra.Properties.Lattice.∨-∧-isOrderTheoreticLattice"
d1384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
d1384 v0 v1 v2 = du1384 v2
du1384 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
du1384 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Lattice.C7499
         (coe
            (MAlonzo.Code.Relation.Binary.d332
               (coe
                  (MAlonzo.Code.Algebra.Properties.Semilattice.du134
                     (coe (du1334 (coe v0)))))))
         (coe (du1428 (coe v0)))
         (coe
            (MAlonzo.Code.Relation.Binary.Construct.NaturalOrder.Left.du1730
               (coe (MAlonzo.Code.Algebra.d910 (coe v0)))
               (coe (du1332 (coe v0))))))
name1396 = "Algebra.Properties.Lattice._._._≤_"
d1396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny -> ()
d1396 = erased
name1408 = "Algebra.Properties.Lattice._.sound"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1408 v0 v1 v2 v3 v4 v5 = du1408 v2 v3 v4 v5
du1408 ::
  MAlonzo.Code.Algebra.T888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1408 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Core.d416
      (MAlonzo.Code.Algebra.Structures.d642
         (coe (MAlonzo.Code.Algebra.d912 (coe v0))))
      (coe MAlonzo.Code.Algebra.d910 v0 v1 v2) v1
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.d910 v0 v1 v2)
               (coe
                  MAlonzo.Code.Algebra.d910 v0 v1
                  (coe MAlonzo.Code.Algebra.d908 v0 v2 v1))
               (coe v1)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du672
                     (coe (MAlonzo.Code.Algebra.d912 (coe v0))) (coe v1) (coe v2)
                     (coe MAlonzo.Code.Algebra.d908 v0 v2 v1) (coe v3)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d642
                                 (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.d910 v0 v1
                        (coe MAlonzo.Code.Algebra.d908 v0 v2 v1))
                     (coe
                        MAlonzo.Code.Algebra.d910 v0 v1
                        (coe MAlonzo.Code.Algebra.d908 v0 v1 v2))
                     (coe v1)
                     (coe
                        (MAlonzo.Code.Algebra.Structures.du672
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0))) (coe v1)
                           (coe MAlonzo.Code.Algebra.d908 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.d908 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d644
                              (MAlonzo.Code.Algebra.d912 (coe v0)) v2 v1)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d642
                                       (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
                           (coe
                              MAlonzo.Code.Algebra.d910 v0 v1
                              (coe MAlonzo.Code.Algebra.d908 v0 v1 v2))
                           (coe v1) (coe v1)
                           (let v4 = MAlonzo.Code.Algebra.d912 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d30
                              (MAlonzo.Code.Algebra.Structures.d656 (coe v4)) v1 v2)
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d642
                                            (coe (MAlonzo.Code.Algebra.d912 (coe v0))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v1))))))))))
name1420 = "Algebra.Properties.Lattice._.complete"
d1420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1420 v0 v1 v2 v3 v4 v5 = du1420 v2 v3 v4 v5
du1420 ::
  MAlonzo.Code.Algebra.T888 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1420 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Core.d416
      (MAlonzo.Code.Algebra.Structures.d642
         (coe (MAlonzo.Code.Algebra.d912 (coe v0))))
      (coe MAlonzo.Code.Algebra.d908 v0 v2 v1) v2
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
               (coe MAlonzo.Code.Algebra.d908 v0 v2 v1)
               (coe
                  MAlonzo.Code.Algebra.d908 v0 v2
                  (coe MAlonzo.Code.Algebra.d910 v0 v1 v2))
               (coe v2)
               (coe
                  (MAlonzo.Code.Algebra.Structures.du680
                     (coe (MAlonzo.Code.Algebra.d912 (coe v0))) (coe v2) (coe v1)
                     (coe MAlonzo.Code.Algebra.d910 v0 v1 v2) (coe v3)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d642
                                 (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
                     (coe
                        MAlonzo.Code.Algebra.d908 v0 v2
                        (coe MAlonzo.Code.Algebra.d910 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.d908 v0 v2
                        (coe MAlonzo.Code.Algebra.d910 v0 v2 v1))
                     (coe v2)
                     (coe
                        (MAlonzo.Code.Algebra.Structures.du680
                           (coe (MAlonzo.Code.Algebra.d912 (coe v0))) (coe v2)
                           (coe MAlonzo.Code.Algebra.d910 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.d910 v0 v2 v1)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d650
                              (MAlonzo.Code.Algebra.d912 (coe v0)) v1 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d642
                                       (coe (MAlonzo.Code.Algebra.d912 (coe v0)))))))
                           (coe
                              MAlonzo.Code.Algebra.d908 v0 v2
                              (coe MAlonzo.Code.Algebra.d910 v0 v2 v1))
                           (coe v2) (coe v2)
                           (let v4 = MAlonzo.Code.Algebra.d912 (coe v0) in
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d28
                              (MAlonzo.Code.Algebra.Structures.d656 (coe v4)) v2 v1)
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d642
                                            (coe (MAlonzo.Code.Algebra.d912 (coe v0))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v2))))))))))
name1428 = "Algebra.Properties.Lattice._.supremum"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1428 v0 v1 v2 v3 v4 = du1428 v2 v3 v4
du1428 ::
  MAlonzo.Code.Algebra.T888 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1428 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            (du1408
               (coe v0) (coe v1) (coe MAlonzo.Code.Algebra.d908 v0 v1 v2)
               (let v3
                      = MAlonzo.Code.Algebra.Properties.Semilattice.du144
                          (coe (du1358 (coe v0))) in
                coe
                  (MAlonzo.Code.Agda.Builtin.Sigma.d28
                     (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v3 v1 v2)))))
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.C32
               (coe
                  (du1408
                     (coe v0) (coe v2) (coe MAlonzo.Code.Algebra.d908 v0 v1 v2)
                     (let v3
                            = MAlonzo.Code.Algebra.Properties.Semilattice.du144
                                (coe (du1358 (coe v0))) in
                      coe
                        (MAlonzo.Code.Agda.Builtin.Sigma.d28
                           (coe
                              (MAlonzo.Code.Agda.Builtin.Sigma.d30
                                 (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v3 v1 v2)))))))
               (coe
                  (\ v3 v4 v5 ->
                     du1408
                       (coe v0) (coe MAlonzo.Code.Algebra.d908 v0 v1 v2) (coe v3)
                       (let v6
                              = MAlonzo.Code.Algebra.Properties.Semilattice.du144
                                  (coe (du1358 (coe v0))) in
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d30
                          (MAlonzo.Code.Agda.Builtin.Sigma.d30
                             (coe MAlonzo.Code.Relation.Binary.Lattice.d90 v6 v1 v2))
                          v3 (du1420 (coe v0) (coe v1) (coe v3) (coe v4))
                          (du1420 (coe v0) (coe v2) (coe v3) (coe v5))))))))
name1440 = "Algebra.Properties.Lattice.∨-∧-orderTheoreticLattice"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
d1440 v0 v1 v2 = du1440 v2
du1440 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
du1440 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Lattice.C8571 v4 v5 v6)
      erased erased erased (MAlonzo.Code.Algebra.d908 (coe v0))
      (MAlonzo.Code.Algebra.d910 (coe v0)) (du1384 (coe v0))
name1448 = "Algebra.Properties.Lattice.replace-equality"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.T888
d1448 v0 v1 v2 v3 v4 = du1448 v2 v4
du1448 ::
  MAlonzo.Code.Algebra.T888 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.T888
du1448 v0 v1
  = coe
      (\ v2 v3 v4 v5 v6 -> MAlonzo.Code.Algebra.C3535 v4 v5 v6) erased
      erased (MAlonzo.Code.Algebra.d908 (coe v0))
      (MAlonzo.Code.Algebra.d910 (coe v0))
      (MAlonzo.Code.Algebra.Structures.C5667
         (coe
            (MAlonzo.Code.Relation.Binary.Core.C5081
               (coe
                  (\ v2 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v2))
                       (coe
                          MAlonzo.Code.Relation.Binary.Core.d414
                          (MAlonzo.Code.Algebra.Structures.d642
                             (coe (MAlonzo.Code.Algebra.d912 (coe v0))))
                          v2)))
               (coe
                  (\ v2 v3 v4 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v3 v2))
                       (coe
                          MAlonzo.Code.Relation.Binary.Core.d416
                          (MAlonzo.Code.Algebra.Structures.d642
                             (coe (MAlonzo.Code.Algebra.d912 (coe v0))))
                          v2 v3
                          (coe
                             MAlonzo.Code.Function.Equality.d38
                             (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4))))
               (coe
                  (\ v2 v3 v4 v5 v6 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34 (coe v1 v2 v4))
                       (coe
                          MAlonzo.Code.Relation.Binary.Core.d418
                          (MAlonzo.Code.Algebra.Structures.d642
                             (coe (MAlonzo.Code.Algebra.d912 (coe v0))))
                          v2 v3 v4
                          (coe
                             MAlonzo.Code.Function.Equality.d38
                             (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v5)
                          (coe
                             MAlonzo.Code.Function.Equality.d38
                             (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v3 v4)) v6))))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.d908 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.d908 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d644
                    (MAlonzo.Code.Algebra.d912 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.d908 v0
                          (coe MAlonzo.Code.Algebra.d908 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.d908 v0 v2
                          (coe MAlonzo.Code.Algebra.d908 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d646
                    (MAlonzo.Code.Algebra.d912 (coe v0)) v2 v3 v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.d908 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.d908 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d648
                    (MAlonzo.Code.Algebra.d912 (coe v0)) v2 v3 v4 v5
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7))))
         (coe
            (\ v2 v3 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.d910 v0 v2 v3)
                       (coe MAlonzo.Code.Algebra.d910 v0 v3 v2)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d650
                    (MAlonzo.Code.Algebra.d912 (coe v0)) v2 v3)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.d910 v0
                          (coe MAlonzo.Code.Algebra.d910 v0 v2 v3) v4)
                       (coe
                          MAlonzo.Code.Algebra.d910 v0 v2
                          (coe MAlonzo.Code.Algebra.d910 v0 v3 v4))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d652
                    (MAlonzo.Code.Algebra.d912 (coe v0)) v2 v3 v4)))
         (coe
            (\ v2 v3 v4 v5 v6 v7 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.d910 v0 v2 v4)
                       (coe MAlonzo.Code.Algebra.d910 v0 v3 v5)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d654
                    (MAlonzo.Code.Algebra.d912 (coe v0)) v2 v3 v4 v5
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v6)
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v4 v5)) v7))))
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.C32
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Algebra.d908 v0 v2
                                (coe MAlonzo.Code.Algebra.d910 v0 v2 v3))
                             v2))
                       (let v4 = MAlonzo.Code.Algebra.d912 (coe v0) in
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d28
                          (MAlonzo.Code.Algebra.Structures.d656 (coe v4)) v2 v3)))
               (coe
                  (\ v2 v3 ->
                     coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d34
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Algebra.d910 v0 v2
                                (coe MAlonzo.Code.Algebra.d908 v0 v2 v3))
                             v2))
                       (let v4 = MAlonzo.Code.Algebra.d912 (coe v0) in
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d30
                          (MAlonzo.Code.Algebra.Structures.d656 (coe v4)) v2 v3))))))
name1510 = "Algebra.Properties.Lattice.∧-idempotent"
d1510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
d1510 v0 v1 v2 = du1510 v2
du1510 :: MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
du1510 v0 = coe (du1322 (coe v0))
name1512 = "Algebra.Properties.Lattice.∨-idempotent"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
d1512 v0 v1 v2 = du1512 v2
du1512 :: MAlonzo.Code.Algebra.T888 -> AgdaAny -> AgdaAny
du1512 v0 = coe (du1346 (coe v0))
name1514 = "Algebra.Properties.Lattice.isOrderTheoreticLattice"
d1514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
d1514 v0 v1 v2 = du1514 v2
du1514 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
du1514 v0 = coe (du1384 (coe v0))
name1516 = "Algebra.Properties.Lattice.orderTheoreticLattice"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
d1516 v0 v1 v2 = du1516 v2
du1516 ::
  MAlonzo.Code.Algebra.T888 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
du1516 v0 = coe (du1440 (coe v0))
