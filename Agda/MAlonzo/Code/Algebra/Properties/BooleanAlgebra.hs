{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Properties.BooleanAlgebra where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.FunctionProperties.Consequences
import qualified MAlonzo.Code.Algebra.Properties.DistributiveLattice
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
import qualified MAlonzo.Code.Relation.Binary.Structures

name90 = "Algebra.Properties.BooleanAlgebra._.IsAbelianGroup"
d90 a0 a1 a2 a3 a4 a5 = ()
name94 = "Algebra.Properties.BooleanAlgebra._.IsBooleanAlgebra"
d94 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name98 = "Algebra.Properties.BooleanAlgebra._.IsCommutativeMonoid"
d98 a0 a1 a2 a3 a4 = ()
name100 = "Algebra.Properties.BooleanAlgebra._.IsCommutativeRing"
d100 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name104
  = "Algebra.Properties.BooleanAlgebra._.IsCommutativeSemiring"
d104 a0 a1 a2 a3 a4 a5 a6 = ()
name110 = "Algebra.Properties.BooleanAlgebra._.IsGroup"
d110 a0 a1 a2 a3 a4 a5 = ()
name116 = "Algebra.Properties.BooleanAlgebra._.IsMagma"
d116 a0 a1 a2 a3 = ()
name118 = "Algebra.Properties.BooleanAlgebra._.IsMonoid"
d118 a0 a1 a2 a3 a4 = ()
name122 = "Algebra.Properties.BooleanAlgebra._.IsRing"
d122 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name126 = "Algebra.Properties.BooleanAlgebra._.IsSemigroup"
d126 a0 a1 a2 a3 = ()
name130 = "Algebra.Properties.BooleanAlgebra._.IsSemiring"
d130 a0 a1 a2 a3 a4 a5 a6 = ()
name1356 = "Algebra.Properties.BooleanAlgebra._._DistributesOver_"
d1356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1356 = erased
name1358 = "Algebra.Properties.BooleanAlgebra._._DistributesOverʳ_"
d1358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1358 = erased
name1360 = "Algebra.Properties.BooleanAlgebra._._DistributesOverˡ_"
d1360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1360 = erased
name1366 = "Algebra.Properties.BooleanAlgebra._.Associative"
d1366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1366 = erased
name1370 = "Algebra.Properties.BooleanAlgebra._.Commutative"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1370 = erased
name1374 = "Algebra.Properties.BooleanAlgebra._.Congruent₂"
d1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1374 = erased
name1382 = "Algebra.Properties.BooleanAlgebra._.Identity"
d1382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1382 = erased
name1384 = "Algebra.Properties.BooleanAlgebra._.Inverse"
d1384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1384 = erased
name1386 = "Algebra.Properties.BooleanAlgebra._.Involutive"
d1386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> (AgdaAny -> AgdaAny) -> ()
d1386 = erased
name1394 = "Algebra.Properties.BooleanAlgebra._.LeftIdentity"
d1394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1394 = erased
name1396 = "Algebra.Properties.BooleanAlgebra._.LeftInverse"
d1396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1396 = erased
name1398 = "Algebra.Properties.BooleanAlgebra._.LeftZero"
d1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1398 = erased
name1406 = "Algebra.Properties.BooleanAlgebra._.RightIdentity"
d1406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1406 = erased
name1408 = "Algebra.Properties.BooleanAlgebra._.RightInverse"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1408 = erased
name1410 = "Algebra.Properties.BooleanAlgebra._.RightZero"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1410 = erased
name1414 = "Algebra.Properties.BooleanAlgebra._.Zero"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1414 = erased
name1484
  = "Algebra.Properties.BooleanAlgebra._.isOrderTheoreticLattice"
d1484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1484 v0 v1 v2 = du1484 v2
du1484 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1484 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1610
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1486
  = "Algebra.Properties.BooleanAlgebra._.orderTheoreticLattice"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1486 v0 v1 v2 = du1486 v2
du1486 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1486 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1612
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1488 = "Algebra.Properties.BooleanAlgebra._.poset"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
d1488 v0 v1 v2 = du1488 v2
du1488 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Bundles.T186
du1488 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du138
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v2))))
name1490 = "Algebra.Properties.BooleanAlgebra._.∧-distrib-∨"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1490 v0 v1 v2 = du1490 v2
du1490 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1490 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du248
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1492 = "Algebra.Properties.BooleanAlgebra._.∧-distribʳ-∨"
d1492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1492 v0 v1 v2 = du1492 v2
du1492 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1492 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du240
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1494 = "Algebra.Properties.BooleanAlgebra._.∧-distribˡ-∨"
d1494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1494 v0 v1 v2 = du1494 v2
du1494 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1494 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du232
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1496 = "Algebra.Properties.BooleanAlgebra._.∧-idem"
d1496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1496 v0 v1 v2 = du1496 v2
du1496 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1496 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1418
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1498 = "Algebra.Properties.BooleanAlgebra._.∧-idempotent"
d1498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1498 v0 v1 v2 = du1498 v2
du1498 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1498 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1606
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1500 = "Algebra.Properties.BooleanAlgebra._.∧-isBand"
d1500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T150
d1500 v0 v1 v2 = du1500 v2
du1500 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T150
du1500 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1426
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1502 = "Algebra.Properties.BooleanAlgebra._.∧-isMagma"
d1502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T78
d1502 v0 v1 v2 = du1502 v2
du1502 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T78
du1502 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1422
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1504
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice"
d1504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1504 v0 v1 v2 = du1504 v2
du1504 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1504 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du154
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v2))))
name1506
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice"
d1506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1506 v0 v1 v2 = du1506 v2
du1506 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1506 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du152
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v2))))
name1508 = "Algebra.Properties.BooleanAlgebra._.∧-isSemigroup"
d1508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T114
d1508 v0 v1 v2 = du1508 v2
du1508 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T114
du1508 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1424
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1510 = "Algebra.Properties.BooleanAlgebra._.∧-isSemilattice"
d1510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T230
d1510 v0 v1 v2 = du1510 v2
du1510 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T230
du1510 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1428
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1512
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1512 v0 v1 v2 = du1512 v2
du1512 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1512 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du158
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v2))))
name1514
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice"
d1514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1514 v0 v1 v2 = du1514 v2
du1514 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1514 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du156
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1430 (coe v2))))
name1516 = "Algebra.Properties.BooleanAlgebra._.∧-semilattice"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1516 v0 v1 v2 = du1516 v2
du1516 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1516 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1430
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1518 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distrib"
d1518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1518 v0 v1 v2 = du1518 v2
du1518 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1518 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1520
  = "Algebra.Properties.BooleanAlgebra._.∧-∨-distributiveLattice"
d1520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T1056
d1520 v0 v1 v2 = du1520 v2
du1520 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T1056
du1520 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du252
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1522 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distribʳ"
d1522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1522 v0 v1 v2 = du1522 v2
du1522 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1522 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1524 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distribˡ"
d1524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1524 v0 v1 v2 = du1524 v2
du1524 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1524 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1526
  = "Algebra.Properties.BooleanAlgebra._.∧-∨-isDistributiveLattice"
d1526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T758
d1526 v0 v1 v2 = du1526 v2
du1526 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T758
du1526 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du250
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1528 = "Algebra.Properties.BooleanAlgebra._.∧-∨-isLattice"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T684
d1528 v0 v1 v2 = du1528 v2
du1528 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T684
du1528 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1466
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1530 = "Algebra.Properties.BooleanAlgebra._.∧-∨-lattice"
d1530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T984
d1530 v0 v1 v2 = du1530 v2
du1530 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T984
du1530 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1468
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1532 = "Algebra.Properties.BooleanAlgebra._.∨-distrib-∧"
d1532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1532 v0 v1 v2 = du1532 v2
du1532 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1532 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du230
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1534 = "Algebra.Properties.BooleanAlgebra._.∨-distribˡ-∧"
d1534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1534 v0 v1 v2 = du1534 v2
du1534 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1534 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du222
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1536 = "Algebra.Properties.BooleanAlgebra._.∨-idem"
d1536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1536 v0 v1 v2 = du1536 v2
du1536 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1536 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1442
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1538 = "Algebra.Properties.BooleanAlgebra._.∨-idempotent"
d1538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1538 v0 v1 v2 = du1538 v2
du1538 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1538 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1608
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1540 = "Algebra.Properties.BooleanAlgebra._.∨-isBand"
d1540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T150
d1540 v0 v1 v2 = du1540 v2
du1540 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T150
du1540 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1450
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1542 = "Algebra.Properties.BooleanAlgebra._.∨-isMagma"
d1542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T78
d1542 v0 v1 v2 = du1542 v2
du1542 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T78
du1542 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1446
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1544
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice"
d1544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1544 v0 v1 v2 = du1544 v2
du1544 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1544 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du154
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v2))))
name1546
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice"
d1546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
d1546 v0 v1 v2 = du1546 v2
du1546 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T438
du1546 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du152
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v2))))
name1548 = "Algebra.Properties.BooleanAlgebra._.∨-isSemigroup"
d1548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T114
d1548 v0 v1 v2 = du1548 v2
du1548 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T114
du1548 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1448
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1550 = "Algebra.Properties.BooleanAlgebra._.∨-isSemilattice"
d1550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T230
d1550 v0 v1 v2 = du1550 v2
du1550 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T230
du1550 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1452
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1552
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice"
d1552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
d1552 v0 v1 v2 = du1552 v2
du1552 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T170
du1552 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du158
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v2))))
name1554
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice"
d1554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
d1554 v0 v1 v2 = du1554 v2
du1554 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T540
du1554 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Bundles.du1128 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du156
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1454 (coe v2))))
name1556 = "Algebra.Properties.BooleanAlgebra._.∨-semilattice"
d1556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T266
d1556 v0 v1 v2 = du1556 v2
du1556 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T266
du1556 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1454
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1558 = "Algebra.Properties.BooleanAlgebra._.∨-∧-distrib"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1558 v0 v1 v2 = du1558 v2
du1558 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1558 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1560 = "Algebra.Properties.BooleanAlgebra._.∨-∧-distribˡ"
d1560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1560 v0 v1 v2 = du1560 v2
du1560 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1560 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du286
         (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
name1562
  = "Algebra.Properties.BooleanAlgebra._.∨-∧-isOrderTheoreticLattice"
d1562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
d1562 v0 v1 v2 = du1562 v2
du1562 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T810
du1562 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1480
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1564
  = "Algebra.Properties.BooleanAlgebra._.∨-∧-orderTheoreticLattice"
d1564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
d1564 v0 v1 v2 = du1564 v2
du1564 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Relation.Binary.Lattice.T898
du1564 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1536
         (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1))))
name1566 = "Algebra.Properties.BooleanAlgebra.∨-complementˡ"
d1566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1566 v0 v1 v2 = du1566 v2
du1566 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1566 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du208
         (let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Bundles.du1050
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2426 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.d2430 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d708
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1684
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
name1568 = "Algebra.Properties.BooleanAlgebra.∨-complement"
d1568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1568 v0 v1 v2 = du1568 v2
du1568 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1568 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1566 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1684
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
name1570 = "Algebra.Properties.BooleanAlgebra.∧-complementˡ"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1570 v0 v1 v2 = du1570 v2
du1570 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1570 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du208
         (let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Bundles.du1050
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.d2430 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1686
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
name1572 = "Algebra.Properties.BooleanAlgebra.∧-complement"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1572 v0 v1 v2 = du1572 v2
du1572 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1572 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1570 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1686
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
name1574 = "Algebra.Properties.BooleanAlgebra.∧-∨-isBooleanAlgebra"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1662
d1574 v0 v1 v2 = du1574 v2
du1574 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1662
du1574 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C17625
         (coe
            (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du250
               (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1686
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1684
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1688
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
name1576 = "Algebra.Properties.BooleanAlgebra.∧-∨-booleanAlgebra"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T2400
d1576 v0 v1 v2 = du1576 v2
du1576 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T2400
du1576 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 ->
         MAlonzo.Code.Algebra.Bundles.C9655 v3 v4 v5 v6 v7 v8)
      erased erased (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2426 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2430 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)) (du1574 (coe v0))
name1578 = "Algebra.Properties.BooleanAlgebra.∧-identityʳ"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1578 v0 v1 v2 v3 = du1578 v2 v3
du1578 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1578 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v2
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v2)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
               (coe v1)
               (let v3 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                let v4 = MAlonzo.Code.Algebra.Structures.d1682 (coe v3) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du738
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v4))) (coe v1)
                     (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d36
                        (MAlonzo.Code.Algebra.Structures.d706
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                        (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1684
                           (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1))))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                     (coe v1) (coe v1)
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d1682 (coe v4) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d30
                        (MAlonzo.Code.Algebra.Structures.d720 (coe v6)) v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   (MAlonzo.Code.Relation.Binary.Bundles.d60
                                      (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128
                                                  (coe v4))))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v4 v1))))))))
name1582 = "Algebra.Properties.BooleanAlgebra.∧-identityˡ"
d1582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1582 v0 v1 v2 = du1582 v2
du1582 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1582 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du172
         (let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Bundles.du1050
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
         (coe (du1578 (coe v0))))
name1584 = "Algebra.Properties.BooleanAlgebra.∧-identity"
d1584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1584 v0 v1 v2 = du1584 v2
du1584 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1584 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1582 (coe v0))) (coe (du1578 (coe v0))))
name1586 = "Algebra.Properties.BooleanAlgebra.∨-identityʳ"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1586 v0 v1 v2 v3 = du1586 v2 v3
du1586 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1586 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v2
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v2)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                  (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
               (coe v1)
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d1682
                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du746
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v3))) (coe v1)
                     (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d36
                        (MAlonzo.Code.Algebra.Structures.d706
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                        (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1686
                           (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1))))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                     (coe v1) (coe v1)
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d1682 (coe v4) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d768 (coe v5) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d28
                        (MAlonzo.Code.Algebra.Structures.d720 (coe v6)) v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   (MAlonzo.Code.Relation.Binary.Bundles.d60
                                      (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128
                                                  (coe v4))))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v4 v1))))))))
name1590 = "Algebra.Properties.BooleanAlgebra.∨-identityˡ"
d1590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1590 v0 v1 v2 = du1590 v2
du1590 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1590 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du172
         (let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Bundles.du1050
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2426 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d708
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
         (coe (du1586 (coe v0))))
name1592 = "Algebra.Properties.BooleanAlgebra.∨-identity"
d1592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1592 v0 v1 v2 = du1592 v2
du1592 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1592 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1590 (coe v0))) (coe (du1586 (coe v0))))
name1594 = "Algebra.Properties.BooleanAlgebra.∧-zeroʳ"
d1594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1594 v0 v1 v2 v3 = du1594 v2 v3
du1594 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1594 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
               (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
               (let v2 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                let v3 = MAlonzo.Code.Algebra.Structures.d1682 (coe v2) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du738
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v3))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1686
                        (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d716
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (let v2
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v2)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                           (let v3 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d1682 (coe v3) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du742
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v4)))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v1) (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Properties.Lattice.du1606
                                    (MAlonzo.Code.Algebra.Bundles.du1128
                                       (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
                                    v1)))
                           (let v3
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1686
                                    (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1)
                                 (let v4
                                        = MAlonzo.Code.Relation.Binary.Structures.d34
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v4
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v4))))))) in
                                  let v5 = MAlonzo.Code.Algebra.Bundles.d2434 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v4 v5))))))))))))
name1598 = "Algebra.Properties.BooleanAlgebra.∧-zeroˡ"
d1598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1598 v0 v1 v2 = du1598 v2
du1598 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1598 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du184
         (let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Bundles.du1050
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
         (coe (du1594 (coe v0))))
name1600 = "Algebra.Properties.BooleanAlgebra.∧-zero"
d1600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1600 v0 v1 v2 = du1600 v2
du1600 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1600 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1598 (coe v0))) (coe (du1594 (coe v0))))
name1604 = "Algebra.Properties.BooleanAlgebra.∨-zeroʳ"
d1604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1604 v0 v1 v2 v3 = du1604 v2 v3
du1604 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1604 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                  (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
               (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
               (let v2 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                let v3 = MAlonzo.Code.Algebra.Structures.d1682 (coe v2) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du746
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v3))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1684
                        (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d710
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (let v2
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v2 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v2))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v2)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                           (let v3 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                            let v4 = MAlonzo.Code.Algebra.Structures.d1682 (coe v3) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du750
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v4)))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v1) (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Properties.Lattice.du1608
                                    (MAlonzo.Code.Algebra.Bundles.du1128
                                       (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
                                    v1)))
                           (let v3
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1684
                                    (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1)
                                 (let v4
                                        = MAlonzo.Code.Relation.Binary.Structures.d34
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v4
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v4))))))) in
                                  let v5 = MAlonzo.Code.Algebra.Bundles.d2432 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v4 v5))))))))))))
name1608 = "Algebra.Properties.BooleanAlgebra.∨-zeroˡ"
d1608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1608 v0 v1 v2 = du1608 v2
du1608 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1608 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du184
         (let v1 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Bundles.du1050
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2426 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d708
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
         (coe (du1604 (coe v0))))
name1610 = "Algebra.Properties.BooleanAlgebra.∨-zero"
d1610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1610 v0 v1 v2 = du1610 v2
du1610 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1610 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1608 (coe v0))) (coe (du1604 (coe v0))))
name1612 = "Algebra.Properties.BooleanAlgebra.∨-⊥-isMonoid"
d1612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T312
d1612 v0 v1 v2 = du1612 v2
du1612 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T312
du1612 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.d1448
               (coe
                  (MAlonzo.Code.Algebra.Bundles.du1128
                     (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)))))))
         (coe (du1592 (coe v0))))
name1614 = "Algebra.Properties.BooleanAlgebra.∧-⊤-isMonoid"
d1614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T312
d1614 v0 v1 v2 = du1614 v2
du1614 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T312
du1614 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.d1424
               (coe
                  (MAlonzo.Code.Algebra.Bundles.du1128
                     (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)))))))
         (coe (du1584 (coe v0))))
name1616
  = "Algebra.Properties.BooleanAlgebra.∨-⊥-isCommutativeMonoid"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T360
d1616 v0 v1 v2 = du1616 v2
du1616 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T360
du1616 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C2759
         (coe (du1612 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d708
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))))
name1618
  = "Algebra.Properties.BooleanAlgebra.∧-⊤-isCommutativeMonoid"
d1618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T360
d1618 v0 v1 v2 = du1618 v2
du1618 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T360
du1618 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C2759
         (coe (du1614 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))))
name1620 = "Algebra.Properties.BooleanAlgebra.∨-∧-isSemiring"
d1620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1174
d1620 v0 v1 v2 = du1620 v2
du1620 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1174
du1620 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C11149
         (coe
            (MAlonzo.Code.Algebra.Structures.C9969
               (coe (du1616 (coe v0))) (coe (du1614 (coe v0)))
               (coe
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
                     (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)))))))
         (coe (du1600 (coe v0))))
name1622 = "Algebra.Properties.BooleanAlgebra.∧-∨-isSemiring"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1174
d1622 v0 v1 v2 = du1622 v2
du1622 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1174
du1622 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C11149
         (coe
            (MAlonzo.Code.Algebra.Structures.C9969
               (coe (du1618 (coe v0))) (coe (du1612 (coe v0)))
               (coe
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
                     (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)))))))
         (coe (du1610 (coe v0))))
name1624
  = "Algebra.Properties.BooleanAlgebra.∨-∧-isCommutativeSemiring"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1278
d1624 v0 v1 v2 = du1624 v2
du1624 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1278
du1624 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C12345
         (coe (du1620 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))))
name1626
  = "Algebra.Properties.BooleanAlgebra.∧-∨-isCommutativeSemiring"
d1626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1278
d1626 v0 v1 v2 = du1626 v2
du1626 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1278
du1626 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C12345
         (coe (du1622 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d708
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))))
name1628
  = "Algebra.Properties.BooleanAlgebra.∨-∧-commutativeSemiring"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T1816
d1628 v0 v1 v2 = du1628 v2
du1628 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T1816
du1628 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 ->
         MAlonzo.Code.Algebra.Bundles.C7235 v3 v4 v5 v6 v7)
      erased erased (MAlonzo.Code.Algebra.Bundles.d2426 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)) (du1624 (coe v0))
name1630
  = "Algebra.Properties.BooleanAlgebra.∧-∨-commutativeSemiring"
d1630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T1816
d1630 v0 v1 v2 = du1630 v2
du1630 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T1816
du1630 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 ->
         MAlonzo.Code.Algebra.Bundles.C7235 v3 v4 v5 v6 v7)
      erased erased (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2426 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) (du1626 (coe v0))
name1636 = "Algebra.Properties.BooleanAlgebra.lemma"
d1636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1636 v0 v1 v2 v3 v4 v5 v6 = du1636 v2 v3 v4 v5 v6
du1636 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1636 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5)))))))
               (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                  (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
               (coe v2)
               (coe
                  (du1578 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                     (coe v2)
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d1682 (coe v5) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du738
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v6)))
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                           (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))) (coe v4)))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
                              (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1 v2)
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                                 (coe v2)
                                 (let v7
                                        = MAlonzo.Code.Algebra.Structures.d1682
                                            (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du750
                                       (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v7)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                       (coe du1570 v0 v1)))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Bundles.du80
                                             (let v7
                                                    = MAlonzo.Code.Algebra.Bundles.du2492
                                                        (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.Bundles.du1050
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.du1128
                                                         (coe v7)))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                                       (coe v2)
                                       (let v7 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                                        let v8 = MAlonzo.Code.Algebra.Structures.d1682 (coe v7) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du750
                                             (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v8)))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                             (coe v3)))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                   (let v7
                                                          = MAlonzo.Code.Algebra.Bundles.du2492
                                                              (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Bundles.du1050
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Bundles.du1128
                                                               (coe v7)))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                   v2))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                                v2)
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                                                (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)) v2 v1
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                             (let v7
                                                    = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                        (let v7
                                                               = MAlonzo.Code.Algebra.Bundles.du2492
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1050
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1128
                                                                    (coe v7))))) in
                                              coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Structures.d24
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                               (coe v7)))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v1))
                                                      v2)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                                                      v2)
                                                   (coe v2)
                                                   (let v8
                                                          = MAlonzo.Code.Algebra.Structures.d1682
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.d2436
                                                                    (coe v0))) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Structures.du742
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d768
                                                               (coe v8)))
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v1))
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Bundles.d2432
                                                               (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d1684
                                                            (MAlonzo.Code.Algebra.Bundles.d2436
                                                               (coe v0))
                                                            v1)))
                                                   (let v8
                                                          = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                              (let v8
                                                                     = MAlonzo.Code.Algebra.Bundles.du2492
                                                                         (coe v0) in
                                                               coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1050
                                                                    (coe
                                                                       (MAlonzo.Code.Algebra.Bundles.du1128
                                                                          (coe v8))))) in
                                                    coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Structures.d24
                                                               (coe
                                                                  (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                                     (coe v8)))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (MAlonzo.Code.Algebra.Bundles.d2432
                                                               (coe v0))
                                                            v2)
                                                         (coe v2) (coe v2) (coe du1582 v0 v2)
                                                         (let v9
                                                                = MAlonzo.Code.Relation.Binary.Structures.d34
                                                                    (coe
                                                                       (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                                          (let v9
                                                                                 = MAlonzo.Code.Algebra.Bundles.du2492
                                                                                     (coe v0) in
                                                                           coe
                                                                             (MAlonzo.Code.Algebra.Bundles.du1050
                                                                                (coe
                                                                                   (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                      (coe
                                                                                         v9))))))) in
                                                          coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                                               (coe v9 v2))))))))))))))))))))
name1646 = "Algebra.Properties.BooleanAlgebra.⊥≉⊤"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
d1646 v0 v1 v2 = du1646 v2
du1646 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
du1646 v0
  = coe
      (du1636
         (coe v0) (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
         (coe
            (du1578
               (coe v0) (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))))
         (coe
            (du1604
               (coe v0) (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))))))
name1648 = "Algebra.Properties.BooleanAlgebra.⊤≉⊥"
d1648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
d1648 v0 v1 v2 = du1648 v2
du1648 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
du1648 v0
  = coe
      (du1636
         (coe v0) (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
         (coe
            (du1594
               (coe v0) (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))))
         (coe
            (du1586
               (coe v0) (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))))))
name1650 = "Algebra.Properties.BooleanAlgebra.¬-involutive"
d1650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1650 v0 v1 v2 v3 = du1650 v2 v3
du1650 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1650 v0 v1
  = coe
      (du1636
         (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) (coe v1)
         (coe du1570 v0 v1) (coe du1566 v0 v1))
name1658 = "Algebra.Properties.BooleanAlgebra.deMorgan₁"
d1658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1658 v0 v1 v2 v3 v4 = du1658 v2 v3 v4
du1658 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1658 v0 v1 v2
  = coe
      (du1636
         (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.Bundles.d2426 v0
            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
         (coe (du1668 (coe v0) (coe v1) (coe v2)))
         (coe (du1672 (coe v0) (coe v1) (coe v2))))
name1668 = "Algebra.Properties.BooleanAlgebra._.lem₁"
d1668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1668 v0 v1 v2 v3 v4 = du1668 v2 v3 v4
du1668 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1668 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
               (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
                  (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                     (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du750
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d1682
                                      (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du742
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v6)))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d714
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    v1 v2)))))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d712
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d716
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1682
                                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                 v2 v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d716
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1682
                                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                 v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                       (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d712
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                       (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                    (let v7
                                           = MAlonzo.Code.Algebra.Structures.d1682
                                               (coe
                                                  (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                                     MAlonzo.Code.Algebra.Structures.du738
                                       (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v7)))
                                       (coe v2)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1686
                                          (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1))
                                    (let v7
                                           = MAlonzo.Code.Algebra.Structures.d1682
                                               (coe
                                                  (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                                     MAlonzo.Code.Algebra.Structures.du738
                                       (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v7)))
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1686
                                          (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v2)))
                                 (let v7
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (let v7
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v7))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v7)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                             (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                             (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                          (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d712
                                          (MAlonzo.Code.Algebra.Structures.d768
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1682
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.d2436
                                                         (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                             (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                          (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                             (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                          (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                          (du1594 (coe v0) (coe v2)) (du1594 (coe v0) (coe v1)))
                                       (let v8
                                              = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                  (let v8
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v8))))) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Structures.d24
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                         (coe v8)))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                                (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                             (coe
                                                (du1586
                                                   (coe v0)
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.d2434
                                                         (coe v0)))))
                                             (let v9
                                                    = MAlonzo.Code.Relation.Binary.Structures.d34
                                                        (coe
                                                           (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                              (let v9
                                                                     = MAlonzo.Code.Algebra.Bundles.du2492
                                                                         (coe v0) in
                                                               coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1050
                                                                    (coe
                                                                       (MAlonzo.Code.Algebra.Bundles.du1128
                                                                          (coe v9))))))) in
                                              let v10
                                                    = MAlonzo.Code.Algebra.Bundles.d2434 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                                   (coe v9 v10))))))))))))))))
name1670 = "Algebra.Properties.BooleanAlgebra._.lem₃"
d1670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1670 v0 v1 v2 v3 v4 = du1670 v2 v3 v4
du1670 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1670 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
               (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du812
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe v4))
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1 v2)
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du742
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1684
                              (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1)))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe
                              du1582 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d708
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    v2 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (let v7
                                        = MAlonzo.Code.Relation.Binary.Structures.d34
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v7
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v7))))))) in
                                  let v8
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2 in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v7 v8))))))))))))
name1672 = "Algebra.Properties.BooleanAlgebra._.lem₂"
d1672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1672 v0 v1 v2 v3 v4 = du1672 v2 v3 v4
du1672 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1672 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
               (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d710
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
               (let v3
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d1682 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du750
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5)))
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe (du1670 (coe v0) (coe v1) (coe v2)))))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d710
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d1682
                                            (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du746
                                       (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v6)))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1684
                                          (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v2)))
                                 (let v6
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (let v6
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v6))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v6)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                          (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                       (coe
                                          (du1604
                                             (coe v0)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                                       (let v7
                                              = MAlonzo.Code.Relation.Binary.Structures.d34
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                        (let v7
                                                               = MAlonzo.Code.Algebra.Bundles.du2492
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1050
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1128
                                                                    (coe v7))))))) in
                                        let v8 = MAlonzo.Code.Algebra.Bundles.d2432 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                             (coe v7 v8))))))))))))))
name1678 = "Algebra.Properties.BooleanAlgebra.deMorgan₂"
d1678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1678 v0 v1 v2 v3 v4 = du1678 v2 v3 v4
du1678 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1678 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1688
                  (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                  (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d712
                     (MAlonzo.Code.Algebra.Structures.d768
                        (coe
                           (MAlonzo.Code.Algebra.Structures.d1682
                              (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     v2 (du1650 (coe v0) (coe v1)) (du1650 (coe v0) (coe v2))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1688
                        (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                        (du1658
                           (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                     (let v3
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (coe
                              (du1650
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v4
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v4))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v4 v5))))))))))
name1690 = "Algebra.Properties.BooleanAlgebra.replace-equality"
d1690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T2400
d1690 v0 v1 v2 v3 v4 = du1690 v2 v4
du1690 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.Bundles.T2400
du1690 v0 v1
  = coe
      (\ v2 v3 v4 v5 v6 v7 v8 v9 ->
         MAlonzo.Code.Algebra.Bundles.C9655 v4 v5 v6 v7 v8 v9)
      erased erased (MAlonzo.Code.Algebra.Bundles.d2426 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2430 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
      (MAlonzo.Code.Algebra.Structures.C17625
         (coe
            (MAlonzo.Code.Algebra.Bundles.d1080
               (coe
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du260
                     (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))) (coe v1)))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                       (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1684
                    (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v2)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                       (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1686
                    (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v2)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1688
                    (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v2 v3
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4)))))
name1726 = "Algebra.Properties.BooleanAlgebra.XorRing._⊕_"
d1726 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1726 v0 v1 v2 = du1726 v1
du1726 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1726 v0 = coe v0
name1736 = "Algebra.Properties.BooleanAlgebra.XorRing.helper"
d1736 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1736 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1736 v0 v3 v4 v5 v6 v7 v8
du1736 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1736 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.d718
      (MAlonzo.Code.Algebra.Structures.d768
         (coe
            (MAlonzo.Code.Algebra.Structures.d1682
               (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
      v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4) v5
      (coe
         MAlonzo.Code.Algebra.Structures.d1688
         (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v3 v4 v6)
name1742 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-cong"
d1742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1742 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1742 v2 v3 v4 v5 v6 v7 v8 v9 v10
du1742 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1742 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v9
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v9 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v9))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v9)))))
               (coe v1 v3 v5)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v5)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5)))
               (coe v1 v4 v6) (coe v2 v3 v5)
               (let v10
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v10 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v10))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v10)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v6)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v6)))
                     (coe v1 v4 v6)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d718
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v5)
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v6)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v6))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d712
                           (MAlonzo.Code.Algebra.Structures.d768
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d1682
                                    (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                           v3 v4 v5 v6 v7 v8)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1688
                           (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5)
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v6)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d718
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              v3 v4 v5 v6 v7 v8)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                           (coe
                              (MAlonzo.Code.Relation.Binary.Bundles.du80
                                 (let v11 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.Bundles.du1050
                                       (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v11)))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v6)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v6)))
                           (coe v1 v4 v6) (coe v1 v4 v6) (coe v2 v4 v6)
                           (let v11
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v11
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v11))))))) in
                            let v12 = coe v1 v4 v6 in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v11 v12))))))))))
name1756 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-comm"
d1756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1756 v0 v1 v2 v3 v4 v5 v6 = du1756 v2 v3 v4 v5 v6
du1756 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1756 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v5
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
               (coe v1 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
               (coe v1 v4 v3) (coe v2 v3 v4)
               (let v6
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)))
                     (coe v1 v4 v3)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d718
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d708
                           (MAlonzo.Code.Algebra.Structures.d768
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d1682
                                    (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                           v3 v4)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1688
                           (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d714
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              v3 v4)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                           (coe
                              (MAlonzo.Code.Relation.Binary.Bundles.du80
                                 (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.Bundles.du1050
                                       (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7)))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)))
                           (coe v1 v4 v3) (coe v1 v4 v3) (coe v2 v4 v3)
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v7
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v7))))))) in
                            let v8 = coe v1 v4 v3 in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v7 v8))))))))))
name1766 = "Algebra.Properties.BooleanAlgebra.XorRing.¬-distribˡ-⊕"
d1766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1766 v0 v1 v2 v3 v4 v5 v6 = du1766 v2 v3 v4 v5 v6
du1766 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1766 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v5
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
               (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 (coe v1 v3 v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))))
               (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
               (coe
                  MAlonzo.Code.Algebra.Structures.d1688
                  (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) (coe v1 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                  (coe v2 v3 v4))
               (let v6
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))))
                     (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1688
                        (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))))
                        (coe
                           MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                           (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))
                           v3 v4))
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v7)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)))))
                           (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1688
                              (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3))))
                              (let v8
                                     = MAlonzo.Code.Algebra.Structures.d1682
                                         (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                               MAlonzo.Code.Algebra.Structures.du746
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v8)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)))
                                 (let v9
                                        = MAlonzo.Code.Algebra.Structures.d1682
                                            (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du738
                                       (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v9)))
                                       (coe v4)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1688
                                          (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d714
                                             (MAlonzo.Code.Algebra.Structures.d768
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d1682
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Bundles.d2436
                                                            (coe v0))))))
                                             v3 v4))))))
                           (let v8
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v8 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v8))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v8)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                                 (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1688
                                    (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d712
                                       (MAlonzo.Code.Algebra.Structures.d768
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1682
                                                (coe
                                                   (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                       (du1780 (coe v0) (coe v3) (coe v4))
                                       (du1780 (coe v0) (coe v4) (coe v3))))
                                 (let v9
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (let v9
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v9))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v9)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                                       (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                                       (coe
                                          (du1678
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                                       (let v10
                                              = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                  (let v10
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v10))))) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Structures.d24
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                         (coe v10)))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v3))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v3))))
                                             (coe
                                                v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                v4)
                                             (let v11
                                                    = MAlonzo.Code.Algebra.Structures.d1682
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.d2436
                                                              (coe v0))) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du742
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d768
                                                         (coe v11)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4)))
                                                   (coe
                                                      (du1658
                                                         (coe v0) (coe v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4)))))
                                             (let v11
                                                    = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                        (let v11
                                                               = MAlonzo.Code.Algebra.Bundles.du2492
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1050
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1128
                                                                    (coe v11))))) in
                                              coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Structures.d24
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                               (coe v11)))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v4)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            v4)))
                                                   (coe
                                                      v1
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                      v4)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d718
                                                      (MAlonzo.Code.Algebra.Structures.d768
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d1682
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Bundles.d2436
                                                                     (coe v0))))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v4)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            v4))
                                                      (let v12
                                                             = MAlonzo.Code.Algebra.Structures.d1682
                                                                 (coe
                                                                    (MAlonzo.Code.Algebra.Bundles.d2436
                                                                       (coe v0))) in
                                                       MAlonzo.Code.Algebra.Structures.du746
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d768
                                                               (coe v12)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v4))
                                                         (coe v4) (coe (du1650 (coe v0) (coe v4))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d1688
                                                         (MAlonzo.Code.Algebra.Bundles.d2436
                                                            (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0 v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            v4)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d714
                                                            (MAlonzo.Code.Algebra.Structures.d768
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d1682
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Bundles.d2436
                                                                           (coe v0))))))
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3))))
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                               (let v12
                                                                      = MAlonzo.Code.Algebra.Bundles.du2492
                                                                          (coe v0) in
                                                                coe
                                                                  (MAlonzo.Code.Algebra.Bundles.du1050
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Bundles.du1128
                                                                           (coe v12)))))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v3)
                                                               v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0 v3)
                                                                  v4)))
                                                         (coe
                                                            v1
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            v4)
                                                         (coe
                                                            v1
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            v4)
                                                         (coe
                                                            v2
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            v4)
                                                         (let v12
                                                                = MAlonzo.Code.Relation.Binary.Structures.d34
                                                                    (coe
                                                                       (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                                          (let v12
                                                                                 = MAlonzo.Code.Algebra.Bundles.du2492
                                                                                     (coe v0) in
                                                                           coe
                                                                             (MAlonzo.Code.Algebra.Bundles.du1050
                                                                                (coe
                                                                                   (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                      (coe
                                                                                         v12))))))) in
                                                          let v13
                                                                = coe
                                                                    v1
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.Bundles.d2430
                                                                       v0 v3)
                                                                    v4 in
                                                          coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                                               (coe v12 v13))))))))))))))))))))
name1780 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem"
d1780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1780 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1780 v2 v7 v8
du1780 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1780 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d1682
                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du738
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v4))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe (du1658 (coe v0) (coe v1) (coe v2)))))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
                        (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)) v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d1682
                                      (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du750
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v6)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1686
                                    (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1)))
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe
                                    du1590 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                 (let v7
                                        = MAlonzo.Code.Relation.Binary.Structures.d34
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v7
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v7))))))) in
                                  let v8
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v7 v8))))))))))))
name1790 = "Algebra.Properties.BooleanAlgebra.XorRing.¬-distribʳ-⊕"
d1790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1790 v0 v1 v2 v3 v4 v5 v6 = du1790 v2 v3 v4 v5 v6
du1790 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1790 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v5
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
               (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 (coe v1 v3 v4))
               (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 (coe v1 v4 v3))
               (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1688
                  (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) (coe v1 v3 v4)
                  (coe v1 v4 v3)
                  (du1756 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
               (let v6
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 (coe v1 v4 v3))
                     (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4) v3)
                     (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                     (coe (du1766 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3)))
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v7)))))
                           (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4) v3)
                           (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                           (coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                           (coe
                              (du1756
                                 (coe v0) (coe v1) (coe v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4) (coe v3)))
                           (let v8
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v8
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v8))))))) in
                            let v9
                                  = coe v1 v3 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v8 v9))))))))))
name1800
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-annihilates-¬"
d1800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1800 v0 v1 v2 v3 v4 v5 v6 = du1800 v2 v3 v4 v5 v6
du1800 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1800 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5)))))))
               (coe v1 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 (coe v1 v3 v4)))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
               (coe (du1650 (coe v0) (coe v1 v3 v4)))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 (coe v1 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1688
                        (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 (coe v1 v3 v4))
                        (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                        (du1766 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                           (coe
                              (du1790
                                 (coe v0) (coe v1) (coe v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) (coe v4)))
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v7
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v7))))))) in
                            let v8
                                  = coe
                                      v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v7 v8))))))))))
name1806 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityˡ"
d1806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1806 v0 v1 v2 v3 v4 v5 = du1806 v2 v3 v4 v5
du1806 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1806 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe v1 (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)))
               (coe v3) (coe v2 (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d718
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)
                        v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                        (coe du1590 v0 v3)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1688
                           (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3)
                           (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) (coe du1598 v0 v3)))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                              (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                           (coe v3)
                           (let v7 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                            let v8 = MAlonzo.Code.Algebra.Structures.d1682 (coe v7) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du738
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v8))) (coe v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                 (coe (du1646 (coe v0)))))
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v7)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                 (coe v3) (coe v3) (coe (du1578 (coe v0) (coe v3)))
                                 (let v8
                                        = MAlonzo.Code.Relation.Binary.Structures.d34
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v8
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v8))))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v8 v3))))))))))))
name1810 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityʳ"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1810 v0 v1 v2 v3 v4 v5 = du1810 v2 v3 v4 v5
du1810 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1810 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (MAlonzo.Code.Algebra.Structures.d706
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682
                     (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
      (coe v1 v3 (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
      (coe v1 (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)) v3) v3
      (du1756
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))))
      (du1806 (coe v0) (coe v1) (coe v2) (coe v3))
name1812 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identity"
d1812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1812 v0 v1 v2 v3 v4 = du1812 v2 v3 v4
du1812 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1812 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1806 (coe v0) (coe v1) (coe v2)))
         (coe (du1810 (coe v0) (coe v1) (coe v2))))
name1814 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseˡ"
d1814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1814 v0 v1 v2 v3 v4 v5 = du1814 v2 v3 v4 v5
du1814 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1814 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe v1 v3 v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v3)))
               (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))) (coe v2 v3 v3)
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                     (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d718
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v3) v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v3))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                        (coe
                           MAlonzo.Code.Algebra.Properties.Lattice.du1608
                           (MAlonzo.Code.Algebra.Bundles.du1128
                              (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1688
                           (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v3) v3
                           (coe
                              MAlonzo.Code.Algebra.Properties.Lattice.du1606
                              (MAlonzo.Code.Algebra.Bundles.du1128
                                 (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
                              v3)))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v3)
                           (let v7
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v7
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v7))))))) in
                            let v8 = MAlonzo.Code.Algebra.Bundles.d2434 (coe v0) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v7 v8))))))))))
name1818 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseʳ"
d1818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1818 v0 v1 v2 v3 v4 v5 = du1818 v2 v3 v4 v5
du1818 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1818 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (MAlonzo.Code.Algebra.Structures.d706
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682
                     (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
      (coe v1 v3 v3) (coe v1 v3 v3)
      (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
      (du1756 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3))
      (du1814 (coe v0) (coe v1) (coe v2) (coe v3))
name1820 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverse"
d1820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1820 v0 v1 v2 v3 v4 = du1820 v2 v3 v4
du1820 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1820 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1814 (coe v0) (coe v1) (coe v2)))
         (coe (du1818 (coe v0) (coe v1) (coe v2))))
name1822 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distribˡ-⊕"
d1822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1822 v0 v1 v2 v3 v4 v5 v6 v7 = du1822 v2 v3 v4 v5 v6 v7
du1822 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1822 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v6
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
               (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 (coe v1 v4 v5))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5))
               (let v7
                      = MAlonzo.Code.Algebra.Structures.d1682
                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du738
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v7))) (coe v3)
                     (coe v1 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5)))
                     (coe v2 v4 v5)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5)))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d716
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        v3 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5)))
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v7)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5))
                           (let v8
                                  = MAlonzo.Code.Algebra.Structures.d1682
                                      (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du738
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v8)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                 (coe (du1658 (coe v0) (coe v4) (coe v5)))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Bundles.du80
                                       (let v8 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.Bundles.du1050
                                             (coe
                                                (MAlonzo.Code.Algebra.Bundles.du1128 (coe v8)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))))
                                 (coe
                                    v1 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5))
                                 (coe
                                    du1590 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))))
                                 (let v8
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (let v8
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v8))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v8)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))))
                                       (coe
                                          v1 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5))
                                       (let v9 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                                        let v10 = MAlonzo.Code.Algebra.Structures.d1682 (coe v9) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du750
                                             (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v10)))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                             (coe (du1838 (coe v0) (coe v3) (coe v4) (coe v5)))))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                   (let v9
                                                          = MAlonzo.Code.Algebra.Bundles.du2492
                                                              (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Bundles.du1050
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Bundles.du1128
                                                               (coe v9)))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0 v4
                                                         v5))
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0 v4
                                                         v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v5))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v5))))
                                             (coe
                                                v1 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
                                                (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5))
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4)
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                         (let v9
                                                                = MAlonzo.Code.Algebra.Bundles.du2492
                                                                    (coe v0) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.Bundles.du1050
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Bundles.du1128
                                                                     (coe v9)))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0 v4
                                                            v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v5))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0 v4
                                                            v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               v4 v5))))
                                                   (coe
                                                      v1
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                         v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                         v5))
                                                   (let v9
                                                          = MAlonzo.Code.Algebra.Structures.d1682
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.d2436
                                                                    (coe v0))) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Structures.du738
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d768
                                                               (coe v9)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               v4 v5))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0 v4 v5)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v5)))
                                                         (let v10
                                                                = MAlonzo.Code.Algebra.Bundles.d2436
                                                                    (coe v0) in
                                                          let v11
                                                                = MAlonzo.Code.Algebra.Structures.d1682
                                                                    (coe v10) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.Structures.du746
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d768
                                                                     (coe v11)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v4 v5))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0 v4)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0 v5))
                                                               (coe
                                                                  (du1658
                                                                     (coe v0) (coe v4)
                                                                     (coe v5)))))))
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                               (let v9
                                                                      = MAlonzo.Code.Algebra.Bundles.du2492
                                                                          (coe v0) in
                                                                coe
                                                                  (MAlonzo.Code.Algebra.Bundles.du1050
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Bundles.du1128
                                                                           (coe v9)))))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0 v4 v5))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v4 v5))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0 v4 v5))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0 v3
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v4 v5))))
                                                         (coe
                                                            v1
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               v3 v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               v3 v5))
                                                         (let v9
                                                                = MAlonzo.Code.Algebra.Bundles.d2436
                                                                    (coe v0) in
                                                          let v10
                                                                = MAlonzo.Code.Algebra.Structures.d1682
                                                                    (coe v9) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.Structures.du738
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d768
                                                                     (coe v10)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0 v3
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2426
                                                                     v0 v4 v5))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v4 v5)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0 v3)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v4 v5)))
                                                               (coe
                                                                  (du1658
                                                                     (coe v0) (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v4 v5)))))
                                                         (let v9
                                                                = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                                    (let v9
                                                                           = MAlonzo.Code.Algebra.Bundles.du2492
                                                                               (coe v0) in
                                                                     coe
                                                                       (MAlonzo.Code.Algebra.Bundles.du1050
                                                                          (coe
                                                                             (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                (coe v9))))) in
                                                          coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                                               (coe
                                                                  (MAlonzo.Code.Relation.Binary.Structures.d24
                                                                     (coe
                                                                        (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                                           (coe v9)))))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2426
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v4 v5))))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2426
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v5))))
                                                               (coe
                                                                  v1
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3 v4)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3 v5))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d718
                                                                  (MAlonzo.Code.Algebra.Structures.d768
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d1682
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Bundles.d2436
                                                                                 (coe v0))))))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2426
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2426
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v4 v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Binary.Structures.d34
                                                                     (MAlonzo.Code.Algebra.Structures.d706
                                                                        (coe
                                                                           (MAlonzo.Code.Algebra.Structures.d768
                                                                              (coe
                                                                                 (MAlonzo.Code.Algebra.Structures.d1682
                                                                                    (coe
                                                                                       (MAlonzo.Code.Algebra.Bundles.d2436
                                                                                          (coe
                                                                                             v0))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2426
                                                                           v0 v4 v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d1688
                                                                     (MAlonzo.Code.Algebra.Bundles.d2436
                                                                        (coe v0))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v4 v5))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v5))
                                                                     (du1836
                                                                        (coe v0) (coe v3) (coe v4)
                                                                        (coe v5))))
                                                               (let v10
                                                                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                                          (let v10
                                                                                 = MAlonzo.Code.Algebra.Bundles.du2492
                                                                                     (coe v0) in
                                                                           coe
                                                                             (MAlonzo.Code.Algebra.Bundles.du1050
                                                                                (coe
                                                                                   (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                      (coe
                                                                                         v10))))) in
                                                                coe
                                                                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                                                     (coe
                                                                        (MAlonzo.Code.Relation.Binary.Structures.d24
                                                                           (coe
                                                                              (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                                                 (coe v10)))))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2426
                                                                              v0 v4 v5))
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2430
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2428
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v5))))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2426
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2428
                                                                              v0 v3 v4)
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2428
                                                                              v0 v3 v5))
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2430
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2428
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v5))))
                                                                     (coe
                                                                        v1
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v5))
                                                                     (let v11
                                                                            = MAlonzo.Code.Algebra.Structures.d1682
                                                                                (coe
                                                                                   (MAlonzo.Code.Algebra.Bundles.d2436
                                                                                      (coe v0))) in
                                                                      coe
                                                                        (MAlonzo.Code.Algebra.Structures.du742
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Structures.d768
                                                                                 (coe v11)))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2430
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.d2428
                                                                                    v0 v3 v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.d2428
                                                                                    v0 v3 v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2428
                                                                              v0 v3
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2426
                                                                                 v0 v4 v5))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2426
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v5))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
                                                                              (MAlonzo.Code.Algebra.Bundles.du2492
                                                                                 (coe v0))
                                                                              v3 v4 v5)))
                                                                     (coe
                                                                        (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                                                           (coe
                                                                              (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                                                 (let v11
                                                                                        = MAlonzo.Code.Algebra.Bundles.du2492
                                                                                            (coe
                                                                                               v0) in
                                                                                  coe
                                                                                    (MAlonzo.Code.Algebra.Bundles.du1050
                                                                                       (coe
                                                                                          (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                             (coe
                                                                                                v11)))))))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2428
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2426
                                                                                 v0
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.d2428
                                                                                    v0 v3 v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.d2428
                                                                                    v0 v3 v5))
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2430
                                                                                 v0
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.Bundles.d2428
                                                                                    v0
                                                                                    (coe
                                                                                       MAlonzo.Code.Algebra.Bundles.d2428
                                                                                       v0 v3 v4)
                                                                                    (coe
                                                                                       MAlonzo.Code.Algebra.Bundles.d2428
                                                                                       v0 v3 v5))))
                                                                           (coe
                                                                              v1
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v5))
                                                                           (coe
                                                                              v1
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v5))
                                                                           (coe
                                                                              v2
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.Bundles.d2428
                                                                                 v0 v3 v5))
                                                                           (let v11
                                                                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                                                                      (coe
                                                                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                                                            (let v11
                                                                                                   = MAlonzo.Code.Algebra.Bundles.du2492
                                                                                                       (coe
                                                                                                          v0) in
                                                                                             coe
                                                                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                                                                  (coe
                                                                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                                        (coe
                                                                                                           v11))))))) in
                                                                            let v12
                                                                                  = coe
                                                                                      v1
                                                                                      (coe
                                                                                         MAlonzo.Code.Algebra.Bundles.d2428
                                                                                         v0 v3 v4)
                                                                                      (coe
                                                                                         MAlonzo.Code.Algebra.Bundles.d2428
                                                                                         v0 v3
                                                                                         v5) in
                                                                            coe
                                                                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                                                                 (coe
                                                                                    v11
                                                                                    v12))))))))))))))))))))))))))
name1834 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂"
d1834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1834 v0 v1 v2 v3 v4 v5 v6 v7 = du1834 v2 v5 v6 v7
du1834 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1834 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d716
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                  v1 v2 v3)
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1) v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du742
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5))) (coe v3)
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d714
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              v1 v2)))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v1) v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d716
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              v2 v1 v3)
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v6
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v6))))))) in
                            let v7
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                      (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v6 v7))))))))))
name1836 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₁"
d1836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1836 v0 v1 v2 v3 v4 v5 v6 v7 = du1836 v2 v5 v6 v7
du1836 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1836 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
               (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                let v5 = MAlonzo.Code.Algebra.Structures.d1682 (coe v4) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du742
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5)))
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v1) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Properties.Lattice.du1606
                        (MAlonzo.Code.Algebra.Bundles.du1128
                           (coe (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))))
                        v1)))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d716
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        v1 v1 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                           (let v6 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                            let v7 = MAlonzo.Code.Algebra.Structures.d1682 (coe v6) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du738
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v7))) (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                                 (coe (du1834 (coe v0) (coe v1) (coe v2) (coe v3)))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Bundles.du80
                                       (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.Bundles.du1050
                                             (coe
                                                (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v2
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d716
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    v1 v2 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3))
                                 (let v6
                                        = MAlonzo.Code.Relation.Binary.Structures.d34
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v6
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v6))))))) in
                                  let v7
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                            (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                            (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v3) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v6 v7))))))))))))
name1838 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₃"
d1838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1838 v0 v1 v2 v3 v4 v5 v6 v7 = du1838 v2 v5 v6 v7
du1838 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1838 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
               (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                  (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
               (coe
                  (du1594
                     (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                     (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d1682 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du738
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5)))
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1686
                              (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)) v1)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                           (coe
                              (MAlonzo.Code.Relation.Binary.Bundles.du80
                                 (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.Bundles.du1050
                                       (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3) v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d716
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3) v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3) v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d718
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3) v1)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d714
                                       (MAlonzo.Code.Algebra.Structures.d768
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1682
                                                (coe
                                                   (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3) v1)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d34
                                       (MAlonzo.Code.Algebra.Structures.d706
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d768
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d1682
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Bundles.d2436
                                                            (coe v0))))))))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)))
                                 (let v5
                                        = MAlonzo.Code.Relation.Binary.Structures.d34
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                  (let v5
                                                         = MAlonzo.Code.Algebra.Bundles.du2492
                                                             (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1050
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1128
                                                              (coe v5))))))) in
                                  let v6
                                        = coe
                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                               (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                       (coe v5 v6))))))))))))
name1840 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distribʳ-⊕"
d1840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1840 v0 v1 v2 v3 v4 = du1840 v2 v3 v4
du1840 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1840 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du278
         (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Bundles.du1050
               (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))
         (coe (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0))) (coe v1)
         (coe (du1742 (coe v0) (coe v1) (coe v2)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe (du1822 (coe v0) (coe v1) (coe v2))))
name1842 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distrib-⊕"
d1842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1842 v0 v1 v2 v3 v4 = du1842 v2 v3 v4
du1842 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1842 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1822 (coe v0) (coe v1) (coe v2)))
         (coe (du1840 (coe v0) (coe v1) (coe v2))))
name1852 = "Algebra.Properties.BooleanAlgebra.XorRing.lemma₂"
d1852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1852 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1852 v2 v5 v6 v7 v8
du1852 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1852 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v5
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v3 v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v4)
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v4)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du286
                  (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))
                  (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v3 v4)
               (let v6
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v4))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d718
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2) v4)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v4)
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v4))
                        (let v7 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du812
                           (MAlonzo.Code.Algebra.Structures.d1682 (coe v7)) v3 v1 v2)
                        (let v7 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du812
                           (MAlonzo.Code.Algebra.Structures.d1682 (coe v7)) v4 v1 v2))
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   (MAlonzo.Code.Relation.Binary.Bundles.d60
                                      (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128
                                                  (coe v7))))))) in
                      let v8
                            = coe
                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                   (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v3)
                                   (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                   (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v4)
                                   (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v4)) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v7 v8))))))))
name1862 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-assoc"
d1862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1862 v0 v1 v2 v3 v4 v5 v6 v7 = du1862 v2 v3 v4 v5 v6 v7
du1862 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1862 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (MAlonzo.Code.Algebra.Structures.d706
         (coe
            (MAlonzo.Code.Algebra.Structures.d768
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1682
                     (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
      (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v6
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
               (coe v1 v3 (coe v1 v4 v5))
               (coe
                  v1 v3
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
               (coe v1 (coe v1 v3 v4) v5)
               (coe
                  (du1742
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v3) (coe v1 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d34
                        (MAlonzo.Code.Algebra.Structures.d706
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                        v3)
                     (coe v2 v4 v5)))
               (let v7
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v7)))))
                     (coe
                        v1 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))))
                     (coe v1 (coe v1 v3 v4) v5)
                     (coe
                        v2 v3
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
                     (let v8
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v8 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v8))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v8)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))))
                           (coe v1 (coe v1 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d718
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v4 v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v4 v5)))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                              (du1880 (coe v0) (coe v3) (coe v4) (coe v5))
                              (du1884 (coe v0) (coe v3) (coe v4) (coe v5)))
                           (let v9
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v9 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v9))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v9)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4) v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                          v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                             v5)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))))
                                 (coe v1 (coe v1 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d716
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                          v5)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3) v4)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))))
                                 (let v10
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (let v10
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v10))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v10)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4) v5)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                      v4)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4) v5)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                                v5)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                      v4)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2430 v0 v5)))))
                                       (coe v1 (coe v1 v3 v4) v5)
                                       (let v11 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                                        let v12 = MAlonzo.Code.Algebra.Structures.d1682 (coe v11) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du738
                                             (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v12)))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                                                v5)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4))
                                                      v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v5))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v5))))
                                             (coe (du1886 (coe v0) (coe v3) (coe v4) (coe v5)))))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                   (let v11
                                                          = MAlonzo.Code.Algebra.Bundles.du2492
                                                              (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Bundles.du1050
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Bundles.du1128
                                                               (coe v11)))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4))
                                                      v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v4))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v3)
                                                            v4)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v5)))))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                         v4)
                                                      v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4))
                                                      v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v5))))
                                             (coe v1 (coe v1 v3 v4) v5)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d716
                                                (MAlonzo.Code.Algebra.Structures.d768
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d1682
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Bundles.d2436
                                                               (coe v0))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v3 v4)
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v4))
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0 v3
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v4))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0 v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                            v3)
                                                         v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         v5))))
                                             (let v11
                                                    = MAlonzo.Code.Relation.Binary.Bundles.du80
                                                        (let v11
                                                               = MAlonzo.Code.Algebra.Bundles.du2492
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1050
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1128
                                                                    (coe v11))))) in
                                              coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Structures.d24
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                               (coe v11)))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               v3 v4)
                                                            v5)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v4))
                                                            v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v4))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v5))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v3)
                                                               v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v5))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               v3 v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0 v3 v4)))
                                                         v5)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0 v3 v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3 v4)))
                                                            v5)))
                                                   (coe v1 (coe v1 v3 v4) v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d718
                                                      (MAlonzo.Code.Algebra.Structures.d768
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d1682
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Bundles.d2436
                                                                     (coe v0))))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               v3 v4)
                                                            v5)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v4))
                                                            v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               v3 v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0 v3 v4)))
                                                         v5)
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v4))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v5))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0 v3)
                                                               v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               v5)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0 v3 v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3 v4)))
                                                            v5))
                                                      (du1874 (coe v0) (coe v3) (coe v4) (coe v5))
                                                      (du1878 (coe v0) (coe v3) (coe v4) (coe v5)))
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                               (let v12
                                                                      = MAlonzo.Code.Algebra.Bundles.du2492
                                                                          (coe v0) in
                                                                coe
                                                                  (MAlonzo.Code.Algebra.Bundles.du1050
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Bundles.du1128
                                                                           (coe v12)))))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2426
                                                                     v0 v3 v4)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2430
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0 v3 v4)))
                                                               v5)
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2428
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2426
                                                                        v0 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2430
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v4)))
                                                                  v5)))
                                                         (coe
                                                            v1
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0 v3 v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3 v4)))
                                                            v5)
                                                         (coe v1 (coe v1 v3 v4) v5)
                                                         (coe
                                                            v2
                                                            (coe
                                                               MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2426
                                                                  v0 v3 v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Bundles.d2430
                                                                  v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0 v3 v4)))
                                                            v5)
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                                               (coe
                                                                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                                                                     (let v12
                                                                            = MAlonzo.Code.Algebra.Bundles.du2492
                                                                                (coe v0) in
                                                                      coe
                                                                        (MAlonzo.Code.Algebra.Bundles.du1050
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                 (coe v12)))))))
                                                               (coe
                                                                  v1
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Bundles.d2428
                                                                     v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2426
                                                                        v0 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2430
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2428
                                                                           v0 v3 v4)))
                                                                  v5)
                                                               (coe v1 (coe v1 v3 v4) v5)
                                                               (coe v1 (coe v1 v3 v4) v5)
                                                               (coe
                                                                  (du1742
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v1 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Bundles.d2428
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2426
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Bundles.d2430
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Bundles.d2428
                                                                              v0 v3 v4)))
                                                                     (coe v5) (coe v5)
                                                                     (coe v2 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Binary.Structures.d34
                                                                        (MAlonzo.Code.Algebra.Structures.d706
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Structures.d768
                                                                                 (coe
                                                                                    (MAlonzo.Code.Algebra.Structures.d1682
                                                                                       (coe
                                                                                          (MAlonzo.Code.Algebra.Bundles.d2436
                                                                                             (coe
                                                                                                v0))))))))
                                                                        v5)))
                                                               (let v12
                                                                      = MAlonzo.Code.Relation.Binary.Structures.d34
                                                                          (coe
                                                                             (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                                                (let v12
                                                                                       = MAlonzo.Code.Algebra.Bundles.du2492
                                                                                           (coe
                                                                                              v0) in
                                                                                 coe
                                                                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                                                                      (coe
                                                                                         (MAlonzo.Code.Algebra.Bundles.du1128
                                                                                            (coe
                                                                                               v12))))))) in
                                                                let v13
                                                                      = coe v1 (coe v1 v3 v4) v5 in
                                                                coe
                                                                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                                                     (coe
                                                                        v12
                                                                        v13))))))))))))))))))))))
name1874 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₁"
d1874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1874 v0 v1 v2 v3 v4 v5 v6 v7 = du1874 v2 v5 v6 v7
du1874 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1874 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                  v3)
               (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du812
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe v4)) v3
                  (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                        v3)
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du750
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v4))) (coe v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                           (let v5 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d1682 (coe v5) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du738
                                 (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v6)))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe (du1658 (coe v0) (coe v1) (coe v2)))))))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Structures.d34
                                (coe
                                   (MAlonzo.Code.Relation.Binary.Bundles.d60
                                      (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128
                                                  (coe v4))))))) in
                      let v5
                            = coe
                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                (coe
                                   MAlonzo.Code.Algebra.Bundles.d2428 v0
                                   (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                   (coe
                                      MAlonzo.Code.Algebra.Bundles.d2430 v0
                                      (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                                v3 in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                           (coe v4 v5))))))))
name1876 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂'"
d1876 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1876 v0 v1 v2 v3 v4 v5 v6 v7 = du1876 v2 v5 v6
du1876 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1876 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                     (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d718
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                     (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                  (coe
                     du1582 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                  (du1578
                     (coe v0)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                     (coe
                        (MAlonzo.Code.Relation.Binary.Bundles.du80
                           (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.Bundles.du1050
                                 (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d718
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d718
                           (MAlonzo.Code.Algebra.Structures.d768
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d1682
                                    (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                           (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (coe du1566 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d708
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d1682
                                   (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                         MAlonzo.Code.Algebra.Structures.du738
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2)
                           (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                           (coe du1566 v0 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                           (coe
                              (MAlonzo.Code.Relation.Binary.Bundles.du80
                                 (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.Bundles.du1050
                                       (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                           (coe
                              (du1852
                                 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) (coe v1) (coe v2)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Bundles.du80
                                       (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.Bundles.du1050
                                             (coe
                                                (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d712
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                                    (du1678 (coe v0) (coe v1) (coe v2))
                                    (du1650
                                       (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Bundles.du80
                                             (let v3
                                                    = MAlonzo.Code.Algebra.Bundles.du2492
                                                        (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.Bundles.du1050
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.du1128
                                                         (coe v3)))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2430 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2430 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                                       (coe
                                          (du1658
                                             (coe v0)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                                       (let v3
                                              = MAlonzo.Code.Relation.Binary.Structures.d34
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                        (let v3
                                                               = MAlonzo.Code.Algebra.Bundles.du2492
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1050
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1128
                                                                    (coe v3))))))) in
                                        let v4
                                              = coe
                                                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                     (coe
                                                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                                     (coe
                                                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                                                           v2))) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                             (coe v3 v4))))))))))))))
name1878 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂"
d1878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1878 v0 v1 v2 v3 v4 v5 v6 v7 = du1878 v2 v5 v6 v7
du1878 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1878 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                     v3))
               (let v4 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du812
                  (MAlonzo.Code.Algebra.Structures.d1682 (coe v4))
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                           v3))
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d1682 (coe v5) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du750
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v6)))
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                           (coe (du1876 (coe v0) (coe v1) (coe v2)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                           (coe
                              (MAlonzo.Code.Relation.Binary.Bundles.du80
                                 (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.Bundles.du1050
                                       (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5)))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                                 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                                 v3))
                           (coe
                              (du1658
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                                 (coe v3)))
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v5
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v5))))))) in
                            let v6
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.d2430 v0
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d2428 v0
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d2428 v0
                                            (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d2430 v0
                                               (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                                         v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v5 v6))))))))))
name1880 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₃"
d1880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1880 v0 v1 v2 v3 v4 v5 v6 v7 = du1880 v2 v5 v6 v7
du1880 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1880 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
               (let v5
                      = MAlonzo.Code.Algebra.Structures.d1682
                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du746
                     (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                     (let v6
                            = MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du738
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v6)))
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                           (coe (du1658 (coe v0) (coe v2) (coe v3)))))))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2) v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Properties.DistributiveLattice.du286
                        (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0)) v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                           (coe
                              (MAlonzo.Code.Relation.Binary.Bundles.du80
                                 (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.Bundles.du1050
                                       (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6)))))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2) v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2) v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d718
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2) v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d710
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1682
                                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                 v1 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d710
                                 (MAlonzo.Code.Algebra.Structures.d768
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1682
                                          (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                 v1 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v6
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v6))))))) in
                            let v7
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                         (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2) v3)
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                         (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v6 v7))))))))))
name1882 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₄'"
d1882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1882 v0 v1 v2 v3 v4 v5 v6 v7 = du1882 v2 v6 v7
du1882 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1882 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v3 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v3))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
               (coe
                  (du1658
                     (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d712
                        (MAlonzo.Code.Algebra.Structures.d768
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1682
                                 (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                        (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)
                        (du1678 (coe v0) (coe v1) (coe v2))
                        (du1650
                           (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2)))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                           (coe
                              (du1852
                                 (coe v0) (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) (coe v1) (coe v2)))
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Bundles.du80
                                      (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.Bundles.du1050
                                            (coe
                                               (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Structures.d24
                                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d718
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2428 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d718
                                       (MAlonzo.Code.Algebra.Structures.d768
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1682
                                                (coe
                                                   (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v1)
                                       (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                       (coe du1566 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d708
                                          (MAlonzo.Code.Algebra.Structures.d768
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1682
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.d2436
                                                         (coe v0))))))
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v1))
                                    (let v7
                                           = MAlonzo.Code.Algebra.Structures.d1682
                                               (coe
                                                  (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                                     MAlonzo.Code.Algebra.Structures.du738
                                       (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v7)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v2)
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                       (coe du1566 v0 v2)))
                                 (let v7
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (let v7
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v7))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v7)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                             (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d718
                                          (MAlonzo.Code.Algebra.Structures.d768
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1682
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.d2436
                                                         (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2428 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                             (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                          (coe
                                             du1582 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2)))
                                          (du1578
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)))
                                       (let v8
                                              = MAlonzo.Code.Relation.Binary.Structures.d34
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                        (let v8
                                                               = MAlonzo.Code.Algebra.Bundles.du2492
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1050
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1128
                                                                    (coe v8))))))) in
                                        let v9
                                              = coe
                                                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                     v2) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                             (coe v8 v9))))))))))))))
name1884 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₄"
d1884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1884 v0 v1 v2 v3 v4 v5 v6 v7 = du1884 v2 v5 v6 v7
du1884 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1884 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v4
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                     coe
                       (MAlonzo.Code.Algebra.Bundles.du1050
                          (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2430 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2426 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2430 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
               (coe
                  (du1658
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)))))
               (let v5
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2430 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                     (let v6 = MAlonzo.Code.Algebra.Bundles.d2436 (coe v0) in
                      let v7 = MAlonzo.Code.Algebra.Structures.d1682 (coe v6) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du746
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v7)))
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2430 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v2 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v2 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3))
                           (coe (du1882 (coe v0) (coe v2) (coe v3)))))
                     (let v6
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v6 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v6))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Properties.DistributiveLattice.du286
                              (MAlonzo.Code.Algebra.Bundles.du2492 (coe v0))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Bundles.du80
                                       (let v7 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.Bundles.du1050
                                             (coe
                                                (MAlonzo.Code.Algebra.Bundles.du1128 (coe v7)))))))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                       v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                       v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d718
                                    (MAlonzo.Code.Algebra.Structures.d768
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1682
                                             (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0 v2
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                       v3)
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2426 v0
                                          (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d710
                                       (MAlonzo.Code.Algebra.Structures.d768
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1682
                                                (coe
                                                   (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d710
                                       (MAlonzo.Code.Algebra.Structures.d768
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1682
                                                (coe
                                                   (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2) v3))
                                 (let v7
                                        = MAlonzo.Code.Relation.Binary.Bundles.du80
                                            (let v7
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v7))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Structures.d24
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Bundles.d26
                                                   (coe v7)))))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                             v3))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.Bundles.d2428 v0
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d714
                                          (MAlonzo.Code.Algebra.Structures.d768
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1682
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Bundles.d2436
                                                         (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.Bundles.d2426 v0
                                             (coe
                                                MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                             v3))
                                       (let v8
                                              = MAlonzo.Code.Relation.Binary.Structures.d34
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.Bundles.d60
                                                        (let v8
                                                               = MAlonzo.Code.Algebra.Bundles.du2492
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.Bundles.du1050
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Bundles.du1128
                                                                    (coe v8))))))) in
                                        let v9
                                              = coe
                                                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                     (coe
                                                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                           v2))
                                                     v3)
                                                  (coe
                                                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                     (coe
                                                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                                                        (coe
                                                           MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                                        v2)
                                                     (coe
                                                        MAlonzo.Code.Algebra.Bundles.d2430 v0
                                                        v3)) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                             (coe v8 v9))))))))))))))
name1886 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₅"
d1886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1886 v0 v1 v2 v3 v4 v5 v6 v7 = du1886 v2 v5 v6 v7
du1886 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1886 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du56
               (coe
                  (MAlonzo.Code.Relation.Binary.Bundles.du80
                     (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.Bundles.du1050
                           (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4)))))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d2428 v0
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2428 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d716
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d2426 v0
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2426 v0
                        (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
               (let v4
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v4 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                           coe
                             (MAlonzo.Code.Algebra.Bundles.du1050
                                (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v4))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              v3))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              v3)
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Bundles.d2428 v0
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2426 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d2428 v0
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du742
                           (coe (MAlonzo.Code.Algebra.Structures.d768 (coe v5)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2426 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 v3))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d714
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 v3))))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v5 = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                 coe
                                   (MAlonzo.Code.Algebra.Bundles.du1050
                                      (coe (MAlonzo.Code.Algebra.Bundles.du1128 (coe v5))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                    v3)
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Bundles.d2428 v0
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe
                                       MAlonzo.Code.Algebra.Bundles.d2426 v0
                                       (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d716
                              (MAlonzo.Code.Algebra.Structures.d768
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1682
                                       (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.Bundles.d2426 v0
                                 (coe
                                    MAlonzo.Code.Algebra.Bundles.d2426 v0
                                    (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                 (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3)))
                           (let v6
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v6
                                                   = MAlonzo.Code.Algebra.Bundles.du2492 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.Bundles.du1050
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Bundles.du1128
                                                        (coe v6))))))) in
                            let v7
                                  = coe
                                      MAlonzo.Code.Algebra.Bundles.d2428 v0
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d2426 v0
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1)
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                         v3)
                                      (coe
                                         MAlonzo.Code.Algebra.Bundles.d2428 v0
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d2426 v0 v1
                                               (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v2))
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))
                                         (coe
                                            MAlonzo.Code.Algebra.Bundles.d2426 v0
                                            (coe
                                               MAlonzo.Code.Algebra.Bundles.d2426 v0
                                               (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v1) v2)
                                            (coe MAlonzo.Code.Algebra.Bundles.d2430 v0 v3))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v6 v7))))))))))
name1888 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-isMagma"
d1888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T78
d1888 v0 v1 v2 v3 v4 = du1888 v2 v3 v4
du1888 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T78
du1888 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe
            (MAlonzo.Code.Algebra.Structures.d706
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0)))))))))
         (coe (du1742 (coe v0) (coe v1) (coe v2))))
name1890
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-isSemigroup"
d1890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T114
d1890 v0 v1 v2 v3 v4 = du1890 v2 v3 v4
du1890 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T114
du1890 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C773
         (coe (du1888 (coe v0) (coe v1) (coe v2)))
         (coe (du1862 (coe v0) (coe v1) (coe v2))))
name1892 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isMonoid"
d1892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T312
d1892 v0 v1 v2 v3 v4 = du1892 v2 v3 v4
du1892 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T312
du1892 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209
         (coe (du1890 (coe v0) (coe v1) (coe v2)))
         (coe (du1812 (coe v0) (coe v1) (coe v2))))
name1894 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isGroup"
d1894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T526
d1894 v0 v1 v2 v3 v4 = du1894 v2 v3 v4
du1894 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T526
du1894 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C3947
         (coe (du1892 (coe v0) (coe v1) (coe v2)))
         (coe (du1820 (coe v0) (coe v1) (coe v2))) (coe (\ v3 v4 v5 -> v5)))
name1896
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isAbelianGroup"
d1896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T608
d1896 v0 v1 v2 v3 v4 = du1896 v2 v3 v4
du1896 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T608
du1896 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C5141
         (coe (du1894 (coe v0) (coe v1) (coe v2)))
         (coe (du1756 (coe v0) (coe v1) (coe v2))))
name1898 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isRing"
d1898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1390
d1898 v0 v1 v2 v3 v4 = du1898 v2 v3 v4
du1898 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1390
du1898 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C13753
         (coe (du1896 (coe v0) (coe v1) (coe v2))) (coe (du1614 (coe v0)))
         (coe (du1842 (coe v0) (coe v1) (coe v2))) (coe (du1600 (coe v0))))
name1900
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isCommutativeRing"
d1900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1524
d1900 v0 v1 v2 v3 v4 = du1900 v2 v3 v4
du1900 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1524
du1900 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C15745
         (coe (du1898 (coe v0) (coe v1) (coe v2)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d714
               (coe
                  (MAlonzo.Code.Algebra.Structures.d768
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1682
                           (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))))
name1902
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-commutativeRing"
d1902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2200
d1902 v0 v1 v2 v3 v4 = du1902 v2 v3 v4
du1902 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2200
du1902 v0 v1 v2
  = coe
      (\ v3 v4 v5 v6 v7 v8 v9 v10 ->
         MAlonzo.Code.Algebra.Bundles.C8847 v5 v6 v7 v8 v9 v10)
      erased erased v1 (MAlonzo.Code.Algebra.Bundles.d2428 (coe v0))
      (\ v3 -> v3) (MAlonzo.Code.Algebra.Bundles.d2434 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2432 (coe v0))
      (du1900 (coe v0) (coe v1) (coe v2))
name1904 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribˡ"
d1904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1904 v0 v1 v2 v3 v4 = du1904 v2 v3 v4
du1904 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1904 v0 v1 v2 = coe (du1766 (coe v0) (coe v1) (coe v2))
name1906 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribʳ"
d1906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1906 v0 v1 v2 v3 v4 = du1906 v2 v3 v4
du1906 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1906 v0 v1 v2 = coe (du1790 (coe v0) (coe v1) (coe v2))
name1908
  = "Algebra.Properties.BooleanAlgebra.XorRing.isCommutativeRing"
d1908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1524
d1908 v0 v1 v2 v3 v4 = du1908 v2 v3 v4
du1908 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1524
du1908 v0 v1 v2 = coe (du1900 (coe v0) (coe v1) (coe v2))
name1910
  = "Algebra.Properties.BooleanAlgebra.XorRing.commutativeRing"
d1910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2200
d1910 v0 v1 v2 v3 v4 = du1910 v2 v3 v4
du1910 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Bundles.T2200
du1910 v0 v1 v2 = coe (du1902 (coe v0) (coe v1) (coe v2))
name1912 = "Algebra.Properties.BooleanAlgebra._⊕_"
d1912 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1912 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Bundles.d2428 v0
      (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.Bundles.d2430 v0
         (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))
name1924
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.commutativeRing"
d1924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T2200
d1924 v0 v1 v2 = du1924 v2
du1924 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T2200
du1924 v0
  = coe
      (du1910
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1926
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.isCommutativeRing"
d1926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1524
d1926 v0 v1 v2 = du1926 v2
du1926 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1524
du1926 v0
  = coe
      (du1908
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1928
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribʳ-⊕"
d1928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1928 v0 v1 v2 = du1928 v2
du1928 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1928 v0
  = coe
      (du1790
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1930
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribˡ-⊕"
d1930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1930 v0 v1 v2 = du1930 v2
du1930 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1930 v0
  = coe
      (du1766
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1932
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distrib-⊕"
d1932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1932 v0 v1 v2 = du1932 v2
du1932 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1932 v0
  = coe
      (du1842
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1934
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribʳ-⊕"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1934 v0 v1 v2 = du1934 v2
du1934 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1934 v0
  = coe
      (du1840
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1936
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribˡ-⊕"
d1936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1936 v0 v1 v2 = du1936 v2
du1936 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1936 v0
  = coe
      (du1822
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1938
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-annihilates-¬"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1938 v0 v1 v2 = du1938 v2
du1938 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1938 v0
  = coe
      (du1800
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1940
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-assoc"
d1940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1940 v0 v1 v2 = du1940 v2
du1940 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1940 v0
  = coe
      (du1862
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1942
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-comm"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1942 v0 v1 v2 = du1942 v2
du1942 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1942 v0
  = coe
      (du1756
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1944
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-cong"
d1944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1944 v0 v1 v2 = du1944 v2
du1944 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1944 v0
  = coe
      (du1742
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1946
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identity"
d1946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1946 v0 v1 v2 = du1946 v2
du1946 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1946 v0
  = coe
      (du1812
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1948
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityʳ"
d1948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1948 v0 v1 v2 = du1948 v2
du1948 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1948 v0
  = coe
      (du1810
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1950
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityˡ"
d1950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1950 v0 v1 v2 = du1950 v2
du1950 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1950 v0
  = coe
      (du1806
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1952
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverse"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1952 v0 v1 v2 = du1952 v2
du1952 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1952 v0
  = coe
      (du1820
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1954
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseʳ"
d1954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1954 v0 v1 v2 = du1954 v2
du1954 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1954 v0
  = coe
      (du1818
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1956
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseˡ"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
d1956 v0 v1 v2 = du1956 v2
du1956 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny
du1956 v0
  = coe
      (du1814
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1958
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isMagma"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T78
d1958 v0 v1 v2 = du1958 v2
du1958 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T78
du1958 v0
  = coe
      (du1888
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1960
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isSemigroup"
d1960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T114
d1960 v0 v1 v2 = du1960 v2
du1960 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T114
du1960 v0
  = coe
      (du1890
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1962
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribʳ"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1962 v0 v1 v2 = du1962 v2
du1962 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1962 v0
  = coe
      (du1906
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1964
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribˡ"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
d1964 v0 v1 v2 = du1964 v2
du1964 ::
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny -> AgdaAny -> AgdaAny
du1964 v0
  = coe
      (du1904
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1966
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-commutativeRing"
d1966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T2200
d1966 v0 v1 v2 = du1966 v2
du1966 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Bundles.T2200
du1966 v0
  = coe
      (du1902
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1968
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isCommutativeRing"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1524
d1968 v0 v1 v2 = du1968 v2
du1968 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1524
du1968 v0
  = coe
      (du1900
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1970
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isRing"
d1970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1390
d1970 v0 v1 v2 = du1970 v2
du1970 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T1390
du1970 v0
  = coe
      (du1898
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1972
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isAbelianGroup"
d1972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T608
d1972 v0 v1 v2 = du1972 v2
du1972 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T608
du1972 v0
  = coe
      (du1896
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1974
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isGroup"
d1974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T526
d1974 v0 v1 v2 = du1974 v2
du1974 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T526
du1974 v0
  = coe
      (du1894
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1976
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isMonoid"
d1976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T312
d1976 v0 v1 v2 = du1976 v2
du1976 ::
  MAlonzo.Code.Algebra.Bundles.T2400 ->
  MAlonzo.Code.Algebra.Structures.T312
du1976 v0
  = coe
      (du1892
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.Bundles.d2428 v0
                 (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2430 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d706
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d768
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1682
                                (coe (MAlonzo.Code.Algebra.Bundles.d2436 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.Bundles.d2428 v0
                    (coe MAlonzo.Code.Algebra.Bundles.d2426 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.Bundles.d2430 v0
                       (coe MAlonzo.Code.Algebra.Bundles.d2428 v0 v1 v2))))))
name1978 = "Algebra.Properties.BooleanAlgebra.¬⊥=⊤"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
d1978 v0 v1 v2 = du1978 v2
du1978 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
du1978 v0 = coe (du1646 (coe v0))
name1980 = "Algebra.Properties.BooleanAlgebra.¬⊤=⊥"
d1980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
d1980 v0 v1 v2 = du1980 v2
du1980 :: MAlonzo.Code.Algebra.Bundles.T2400 -> AgdaAny
du1980 v0 = coe (du1648 (coe v0))
