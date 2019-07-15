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
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.FunctionProperties.Consequences
import qualified MAlonzo.Code.Algebra.Properties.DistributiveLattice
import qualified MAlonzo.Code.Algebra.Properties.Lattice
import qualified MAlonzo.Code.Algebra.Properties.Semilattice
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Lattice
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Setoid

name88 = "Algebra.Properties.BooleanAlgebra._.IsAbelianGroup"
d88 a0 a1 a2 a3 a4 a5 = ()
name92 = "Algebra.Properties.BooleanAlgebra._.IsBooleanAlgebra"
d92 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name96 = "Algebra.Properties.BooleanAlgebra._.IsCommutativeMonoid"
d96 a0 a1 a2 a3 a4 = ()
name98 = "Algebra.Properties.BooleanAlgebra._.IsCommutativeRing"
d98 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name100
  = "Algebra.Properties.BooleanAlgebra._.IsCommutativeSemiring"
d100 a0 a1 a2 a3 a4 a5 a6 = ()
name106 = "Algebra.Properties.BooleanAlgebra._.IsGroup"
d106 a0 a1 a2 a3 a4 a5 = ()
name112 = "Algebra.Properties.BooleanAlgebra._.IsMagma"
d112 a0 a1 a2 a3 = ()
name114 = "Algebra.Properties.BooleanAlgebra._.IsMonoid"
d114 a0 a1 a2 a3 a4 = ()
name118 = "Algebra.Properties.BooleanAlgebra._.IsRing"
d118 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name122 = "Algebra.Properties.BooleanAlgebra._.IsSemigroup"
d122 a0 a1 a2 a3 = ()
name1256 = "Algebra.Properties.BooleanAlgebra._._DistributesOver_"
d1256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1256 = erased
name1258 = "Algebra.Properties.BooleanAlgebra._._DistributesOverʳ_"
d1258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1258 = erased
name1260 = "Algebra.Properties.BooleanAlgebra._._DistributesOverˡ_"
d1260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1260 = erased
name1266 = "Algebra.Properties.BooleanAlgebra._.Associative"
d1266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1266 = erased
name1270 = "Algebra.Properties.BooleanAlgebra._.Commutative"
d1270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1270 = erased
name1274 = "Algebra.Properties.BooleanAlgebra._.Congruent₂"
d1274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1274 = erased
name1282 = "Algebra.Properties.BooleanAlgebra._.Identity"
d1282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1282 = erased
name1284 = "Algebra.Properties.BooleanAlgebra._.Inverse"
d1284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1284 = erased
name1286 = "Algebra.Properties.BooleanAlgebra._.Involutive"
d1286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> (AgdaAny -> AgdaAny) -> ()
d1286 = erased
name1294 = "Algebra.Properties.BooleanAlgebra._.LeftIdentity"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1294 = erased
name1296 = "Algebra.Properties.BooleanAlgebra._.LeftInverse"
d1296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1296 = erased
name1298 = "Algebra.Properties.BooleanAlgebra._.LeftZero"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1298 = erased
name1306 = "Algebra.Properties.BooleanAlgebra._.RightIdentity"
d1306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1306 = erased
name1308 = "Algebra.Properties.BooleanAlgebra._.RightInverse"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1308 = erased
name1310 = "Algebra.Properties.BooleanAlgebra._.RightZero"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1310 = erased
name1314 = "Algebra.Properties.BooleanAlgebra._.Zero"
d1314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1314 = erased
name1320 = "Algebra.Properties.BooleanAlgebra._.Core.Op₂"
d1320 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d1320 = erased
name1388
  = "Algebra.Properties.BooleanAlgebra._.isOrderTheoreticLattice"
d1388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
d1388 v0 v1 v2 = du1388 v2
du1388 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
du1388 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1514
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1390
  = "Algebra.Properties.BooleanAlgebra._.orderTheoreticLattice"
d1390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
d1390 v0 v1 v2 = du1390 v2
du1390 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
du1390 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1516
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1392 = "Algebra.Properties.BooleanAlgebra._.poset"
d1392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Relation.Binary.T310
d1392 v0 v1 v2 = du1392 v2
du1392 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Relation.Binary.T310
du1392 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du134
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v2))))
name1394 = "Algebra.Properties.BooleanAlgebra._.∧-distrib-∨"
d1394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1394 v0 v1 v2 = du1394 v2
du1394 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1394 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du250
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1396 = "Algebra.Properties.BooleanAlgebra._.∧-distribʳ-∨"
d1396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1396 v0 v1 v2 = du1396 v2
du1396 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1396 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du242
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1398 = "Algebra.Properties.BooleanAlgebra._.∧-distribˡ-∨"
d1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1398 v0 v1 v2 = du1398 v2
du1398 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1398 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du234
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1400 = "Algebra.Properties.BooleanAlgebra._.∧-idem"
d1400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1400 v0 v1 v2 = du1400 v2
du1400 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1400 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1322
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1402 = "Algebra.Properties.BooleanAlgebra._.∧-idempotent"
d1402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1402 v0 v1 v2 = du1402 v2
du1402 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1402 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1510
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1404 = "Algebra.Properties.BooleanAlgebra._.∧-isBand"
d1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T152
d1404 v0 v1 v2 = du1404 v2
du1404 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T152
du1404 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1330
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1406 = "Algebra.Properties.BooleanAlgebra._.∧-isMagma"
d1406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T84
d1406 v0 v1 v2 = du1406 v2
du1406 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T84
du1406 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1326
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1408
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1408 v0 v1 v2 = du1408 v2
du1408 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1408 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du144
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v2))))
name1410
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d1410 v0 v1 v2 = du1410 v2
du1410 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du1410 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du142
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v2))))
name1412 = "Algebra.Properties.BooleanAlgebra._.∧-isSemigroup"
d1412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T118
d1412 v0 v1 v2 = du1412 v2
du1412 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T118
du1412 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1328
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1414 = "Algebra.Properties.BooleanAlgebra._.∧-isSemilattice"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T190
d1414 v0 v1 v2 = du1414 v2
du1414 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T190
du1414 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1332
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1416
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d1416 v0 v1 v2 = du1416 v2
du1416 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du1416 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du148
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v2))))
name1418
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d1418 v0 v1 v2 = du1418 v2
du1418 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du1418 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du146
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1334 (coe v2))))
name1420 = "Algebra.Properties.BooleanAlgebra._.∧-semilattice"
d1420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T194
d1420 v0 v1 v2 = du1420 v2
du1420 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T194
du1420 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1334
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1422 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distrib"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1422 v0 v1 v2 = du1422 v2
du1422 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1422 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du296
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1424
  = "Algebra.Properties.BooleanAlgebra._.∧-∨-distributiveLattice"
d1424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T958
d1424 v0 v1 v2 = du1424 v2
du1424 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T958
du1424 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du254
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1426 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distribʳ"
d1426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1426 v0 v1 v2 = du1426 v2
du1426 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1426 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1428 = "Algebra.Properties.BooleanAlgebra._.∧-∨-distribˡ"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1428 v0 v1 v2 = du1428 v2
du1428 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1428 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1430
  = "Algebra.Properties.BooleanAlgebra._.∧-∨-isDistributiveLattice"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T692
d1430 v0 v1 v2 = du1430 v2
du1430 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T692
du1430 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du252
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1432 = "Algebra.Properties.BooleanAlgebra._.∧-∨-isLattice"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T620
d1432 v0 v1 v2 = du1432 v2
du1432 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T620
du1432 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1370
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1434 = "Algebra.Properties.BooleanAlgebra._.∧-∨-lattice"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T888
d1434 v0 v1 v2 = du1434 v2
du1434 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T888
du1434 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1372
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1436 = "Algebra.Properties.BooleanAlgebra._.∨-distrib-∧"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1436 v0 v1 v2 = du1436 v2
du1436 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1436 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du232
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1438 = "Algebra.Properties.BooleanAlgebra._.∨-distribˡ-∧"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1438 v0 v1 v2 = du1438 v2
du1438 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1438 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du224
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1440 = "Algebra.Properties.BooleanAlgebra._.∨-idem"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1440 v0 v1 v2 = du1440 v2
du1440 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1440 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1346
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1442 = "Algebra.Properties.BooleanAlgebra._.∨-idempotent"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1442 v0 v1 v2 = du1442 v2
du1442 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1442 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1512
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1444 = "Algebra.Properties.BooleanAlgebra._.∨-isBand"
d1444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T152
d1444 v0 v1 v2 = du1444 v2
du1444 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T152
du1444 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1354
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1446 = "Algebra.Properties.BooleanAlgebra._.∨-isMagma"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T84
d1446 v0 v1 v2 = du1446 v2
du1446 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T84
du1446 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1350
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1448
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticJoinSemilattice"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
d1448 v0 v1 v2 = du1448 v2
du1448 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T68
du1448 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du144
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v2))))
name1450
  = "Algebra.Properties.BooleanAlgebra._.∧-isOrderTheoreticMeetSemilattice"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
d1450 v0 v1 v2 = du1450 v2
du1450 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T430
du1450 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du142
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v2))))
name1452 = "Algebra.Properties.BooleanAlgebra._.∨-isSemigroup"
d1452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T118
d1452 v0 v1 v2 = du1452 v2
du1452 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T118
du1452 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.d1352
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1454 = "Algebra.Properties.BooleanAlgebra._.∨-isSemilattice"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T190
d1454 v0 v1 v2 = du1454 v2
du1454 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T190
du1454 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1356
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1456
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticJoinSemilattice"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
d1456 v0 v1 v2 = du1456 v2
du1456 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T168
du1456 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du148
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v2))))
name1458
  = "Algebra.Properties.BooleanAlgebra._.∧-orderTheoreticMeetSemilattice"
d1458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
d1458 v0 v1 v2 = du1458 v2
du1458 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T530
du1458 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1028 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Properties.Semilattice.du146
         (coe (MAlonzo.Code.Algebra.Properties.Lattice.du1358 (coe v2))))
name1460 = "Algebra.Properties.BooleanAlgebra._.∨-semilattice"
d1460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T194
d1460 v0 v1 v2 = du1460 v2
du1460 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T194
du1460 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1358
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1462 = "Algebra.Properties.BooleanAlgebra._.∨-∧-distrib"
d1462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1462 v0 v1 v2 = du1462 v2
du1462 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1462 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du290
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1464 = "Algebra.Properties.BooleanAlgebra._.∨-∧-distribˡ"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1464 v0 v1 v2 = du1464 v2
du1464 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1464 v0
  = coe
      (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
         (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
name1466
  = "Algebra.Properties.BooleanAlgebra._.∨-∧-isOrderTheoreticLattice"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
d1466 v0 v1 v2 = du1466 v2
du1466 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T794
du1466 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1384
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1468
  = "Algebra.Properties.BooleanAlgebra._.∨-∧-orderTheoreticLattice"
d1468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
d1468 v0 v1 v2 = du1468 v2
du1468 ::
  MAlonzo.Code.Algebra.T2262 ->
  MAlonzo.Code.Relation.Binary.Lattice.T880
du1468 v0
  = let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Properties.Lattice.du1440
         (coe (MAlonzo.Code.Algebra.du1028 (coe v1))))
name1470 = "Algebra.Properties.BooleanAlgebra.∨-complementˡ"
d1470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1470 v0 v1 v2 = du1470 v2
du1470 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1470 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du212
         (let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.du952
               (coe (MAlonzo.Code.Algebra.du1028 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.d2288 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d2292 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d644
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1658
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
name1472 = "Algebra.Properties.BooleanAlgebra.∨-complement"
d1472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1472 v0 v1 v2 = du1472 v2
du1472 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1472 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1470 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1658
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
name1474 = "Algebra.Properties.BooleanAlgebra.∧-complementˡ"
d1474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1474 v0 v1 v2 = du1474 v2
du1474 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1474 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du212
         (let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.du952
               (coe (MAlonzo.Code.Algebra.du1028 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.d2290 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d2292 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1660
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
name1476 = "Algebra.Properties.BooleanAlgebra.∧-complement"
d1476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1476 v0 v1 v2 = du1476 v2
du1476 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1476 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1474 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1660
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
name1478 = "Algebra.Properties.BooleanAlgebra.∧-∨-isBooleanAlgebra"
d1478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1636
d1478 v0 v1 v2 = du1478 v2
du1478 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1636
du1478 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C18211
         (coe
            (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du252
               (coe (MAlonzo.Code.Algebra.du2352 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1660
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1658
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d1662
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
name1480 = "Algebra.Properties.BooleanAlgebra.∧-∨-booleanAlgebra"
d1480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T2262
d1480 v0 v1 v2 = du1480 v2
du1480 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T2262
du1480 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 ->
         MAlonzo.Code.Algebra.C9061 v3 v4 v5 v6 v7 v8)
      erased erased (MAlonzo.Code.Algebra.d2290 (coe v0))
      (MAlonzo.Code.Algebra.d2288 (coe v0))
      (MAlonzo.Code.Algebra.d2292 (coe v0))
      (MAlonzo.Code.Algebra.d2296 (coe v0))
      (MAlonzo.Code.Algebra.d2294 (coe v0)) (du1478 (coe v0))
name1482 = "Algebra.Properties.BooleanAlgebra.∧-identityʳ"
d1482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1482 v0 v1 v2 v3 = du1482 v2 v3
du1482 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1482 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (MAlonzo.Code.Algebra.d2294 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
               (coe v1)
               (let v2 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                let v3 = MAlonzo.Code.Algebra.Structures.d1656 (coe v2) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du672
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3))) (coe v1)
                     (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d416
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                        (MAlonzo.Code.Algebra.d2294 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1658
                           (MAlonzo.Code.Algebra.d2298 (coe v0)) v1))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                     (coe v1) (coe v1)
                     (let v2 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                      let v3 = MAlonzo.Code.Algebra.Structures.d1656 (coe v2) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d702 (coe v3) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d30
                        (MAlonzo.Code.Algebra.Structures.d656 (coe v4)) v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (let v2
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Relation.Binary.d144
                                      (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.du952
                                            (coe (MAlonzo.Code.Algebra.du1028 (coe v2))))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v2 v1))))))))
name1486 = "Algebra.Properties.BooleanAlgebra.∧-identityˡ"
d1486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1486 v0 v1 v2 = du1486 v2
du1486 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1486 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du176
         (let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.du952
               (coe (MAlonzo.Code.Algebra.du1028 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.d2290 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
         (coe (du1482 (coe v0))))
name1488 = "Algebra.Properties.BooleanAlgebra.∧-identity"
d1488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1488 v0 v1 v2 = du1488 v2
du1488 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1488 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1486 (coe v0))) (coe (du1482 (coe v0))))
name1490 = "Algebra.Properties.BooleanAlgebra.∨-identityʳ"
d1490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1490 v0 v1 v2 v3 = du1490 v2 v3
du1490 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1490 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0 v1
                  (MAlonzo.Code.Algebra.d2296 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
               (coe v1)
               (let v2
                      = MAlonzo.Code.Algebra.Structures.d1656
                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du680
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v2))) (coe v1)
                     (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d416
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                        (MAlonzo.Code.Algebra.d2296 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1660
                           (MAlonzo.Code.Algebra.d2298 (coe v0)) v1))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                     (coe v1) (coe v1)
                     (let v2 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                      let v3 = MAlonzo.Code.Algebra.Structures.d1656 (coe v2) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d702 (coe v3) in
                      coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d28
                        (MAlonzo.Code.Algebra.Structures.d656 (coe v4)) v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (let v2
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Relation.Binary.d144
                                      (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.du952
                                            (coe (MAlonzo.Code.Algebra.du1028 (coe v2))))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v2 v1))))))))
name1494 = "Algebra.Properties.BooleanAlgebra.∨-identityˡ"
d1494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1494 v0 v1 v2 = du1494 v2
du1494 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1494 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du176
         (let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.du952
               (coe (MAlonzo.Code.Algebra.du1028 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.d2288 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d644
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
         (coe (du1490 (coe v0))))
name1496 = "Algebra.Properties.BooleanAlgebra.∨-identity"
d1496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1496 v0 v1 v2 = du1496 v2
du1496 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1496 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1494 (coe v0))) (coe (du1490 (coe v0))))
name1498 = "Algebra.Properties.BooleanAlgebra.∧-zeroʳ"
d1498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1498 v0 v1 v2 v3 = du1498 v2 v3
du1498 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1498 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (MAlonzo.Code.Algebra.d2296 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
               (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
               (let v2 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                let v3 = MAlonzo.Code.Algebra.Structures.d1656 (coe v2) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du672
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1660
                        (MAlonzo.Code.Algebra.d2298 (coe v0)) v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d652
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        v1 v1 (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                           (let v2 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                            let v3 = MAlonzo.Code.Algebra.Structures.d1656 (coe v2) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du676
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v1) (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Properties.Lattice.du1510
                                    (MAlonzo.Code.Algebra.du1028
                                       (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
                                    v1)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1660
                                    (MAlonzo.Code.Algebra.d2298 (coe v0)) v1)
                                 (let v2
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.du952
                                                        (coe
                                                           (MAlonzo.Code.Algebra.du1028
                                                              (coe v2))))))) in
                                  let v3 = MAlonzo.Code.Algebra.d2296 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v2 v3))))))))))))
name1502 = "Algebra.Properties.BooleanAlgebra.∧-zeroˡ"
d1502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1502 v0 v1 v2 = du1502 v2
du1502 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1502 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du188
         (let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.du952
               (coe (MAlonzo.Code.Algebra.du1028 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.d2290 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
         (coe (du1498 (coe v0))))
name1504 = "Algebra.Properties.BooleanAlgebra.∧-zero"
d1504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1504 v0 v1 v2 = du1504 v2
du1504 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1504 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1502 (coe v0))) (coe (du1498 (coe v0))))
name1508 = "Algebra.Properties.BooleanAlgebra.∨-zeroʳ"
d1508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1508 v0 v1 v2 v3 = du1508 v2 v3
du1508 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1508 v0 v1
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0 v1
                  (MAlonzo.Code.Algebra.d2294 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
               (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
               (let v2 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                let v3 = MAlonzo.Code.Algebra.Structures.d1656 (coe v2) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du680
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1658
                        (MAlonzo.Code.Algebra.d2298 (coe v0)) v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v1 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d646
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        v1 v1 (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v1 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                           (let v2 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                            let v3 = MAlonzo.Code.Algebra.Structures.d1656 (coe v2) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du684
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v1) (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Properties.Lattice.du1512
                                    (MAlonzo.Code.Algebra.du1028
                                       (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
                                    v1)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v2)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1658
                                    (MAlonzo.Code.Algebra.d2298 (coe v0)) v1)
                                 (let v2
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v2 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.du952
                                                        (coe
                                                           (MAlonzo.Code.Algebra.du1028
                                                              (coe v2))))))) in
                                  let v3 = MAlonzo.Code.Algebra.d2294 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v2 v3))))))))))))
name1512 = "Algebra.Properties.BooleanAlgebra.∨-zeroˡ"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1512 v0 v1 v2 = du1512 v2
du1512 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1512 v0
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du188
         (let v1 = MAlonzo.Code.Algebra.du2352 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.du952
               (coe (MAlonzo.Code.Algebra.du1028 (coe v1)))))
         (coe (MAlonzo.Code.Algebra.d2288 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d644
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
         (coe (du1508 (coe v0))))
name1514 = "Algebra.Properties.BooleanAlgebra.∨-zero"
d1514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1514 v0 v1 v2 = du1514 v2
du1514 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1514 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1512 (coe v0))) (coe (du1508 (coe v0))))
name1516 = "Algebra.Properties.BooleanAlgebra.∨-⊥-isMonoid"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T268
d1516 v0 v1 v2 = du1516 v2
du1516 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T268
du1516 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1873
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.d1352
               (coe
                  (MAlonzo.Code.Algebra.du1028
                     (coe (MAlonzo.Code.Algebra.du2352 (coe v0)))))))
         (coe (du1496 (coe v0))))
name1518 = "Algebra.Properties.BooleanAlgebra.∧-⊤-isMonoid"
d1518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T268
d1518 v0 v1 v2 = du1518 v2
du1518 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T268
du1518 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C1873
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.d1328
               (coe
                  (MAlonzo.Code.Algebra.du1028
                     (coe (MAlonzo.Code.Algebra.du2352 (coe v0)))))))
         (coe (du1488 (coe v0))))
name1520
  = "Algebra.Properties.BooleanAlgebra.∨-⊥-isCommutativeMonoid"
d1520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T314
d1520 v0 v1 v2 = du1520 v2
du1520 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T314
du1520 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C2409
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.d1352
               (coe
                  (MAlonzo.Code.Algebra.du1028
                     (coe (MAlonzo.Code.Algebra.du2352 (coe v0)))))))
         (coe (du1494 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d644
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))))
name1522
  = "Algebra.Properties.BooleanAlgebra.∧-⊤-isCommutativeMonoid"
d1522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T314
d1522 v0 v1 v2 = du1522 v2
du1522 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T314
du1522 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C2409
         (coe
            (MAlonzo.Code.Algebra.Properties.Lattice.d1328
               (coe
                  (MAlonzo.Code.Algebra.du1028
                     (coe (MAlonzo.Code.Algebra.du2352 (coe v0)))))))
         (coe (du1486 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))))
name1524
  = "Algebra.Properties.BooleanAlgebra.∨-∧-isCommutativeSemiring"
d1524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1192
d1524 v0 v1 v2 = du1524 v2
du1524 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1192
du1524 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C11793
         (coe (du1520 (coe v0))) (coe (du1522 (coe v0)))
         (coe
            (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
               (coe (MAlonzo.Code.Algebra.du2352 (coe v0)))))
         (coe (du1502 (coe v0))))
name1526
  = "Algebra.Properties.BooleanAlgebra.∧-∨-isCommutativeSemiring"
d1526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1192
d1526 v0 v1 v2 = du1526 v2
du1526 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1192
du1526 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.C11793
         (coe (du1522 (coe v0))) (coe (du1520 (coe v0)))
         (let v1 = MAlonzo.Code.Algebra.d2298 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.Structures.du744
               (coe (MAlonzo.Code.Algebra.Structures.d1656 (coe v1)))))
         (coe (du1512 (coe v0))))
name1528
  = "Algebra.Properties.BooleanAlgebra.∨-∧-commutativeSemiring"
d1528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T1698
d1528 v0 v1 v2 = du1528 v2
du1528 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T1698
du1528 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 ->
         MAlonzo.Code.Algebra.C6801 v3 v4 v5 v6 v7)
      erased erased (MAlonzo.Code.Algebra.d2288 (coe v0))
      (MAlonzo.Code.Algebra.d2290 (coe v0))
      (MAlonzo.Code.Algebra.d2296 (coe v0))
      (MAlonzo.Code.Algebra.d2294 (coe v0)) (du1524 (coe v0))
name1530
  = "Algebra.Properties.BooleanAlgebra.∧-∨-commutativeSemiring"
d1530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T1698
d1530 v0 v1 v2 = du1530 v2
du1530 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T1698
du1530 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 ->
         MAlonzo.Code.Algebra.C6801 v3 v4 v5 v6 v7)
      erased erased (MAlonzo.Code.Algebra.d2290 (coe v0))
      (MAlonzo.Code.Algebra.d2288 (coe v0))
      (MAlonzo.Code.Algebra.d2294 (coe v0))
      (MAlonzo.Code.Algebra.d2296 (coe v0)) (du1526 (coe v0))
name1536 = "Algebra.Properties.BooleanAlgebra.lemma"
d1536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1536 v0 v1 v2 v3 v4 v5 v6 = du1536 v2 v3 v4 v5 v6
du1536 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1536 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))
               (coe MAlonzo.Code.Algebra.d2292 v0 v1)
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                  (MAlonzo.Code.Algebra.d2294 (coe v0)))
               (coe v2)
               (coe (du1482 (coe v0) (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (MAlonzo.Code.Algebra.d2294 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                     (coe v2)
                     (let v5 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d1656 (coe v5) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du672
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v6)))
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                           (coe (MAlonzo.Code.Algebra.d2294 (coe v0))) (coe v4)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                           (coe v2)
                           (coe
                              MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                              (MAlonzo.Code.Algebra.du2352 (coe v0))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1 v2)
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (MAlonzo.Code.Algebra.d2296 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                 (coe v2)
                                 (let v5
                                        = MAlonzo.Code.Algebra.Structures.d1656
                                            (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du684
                                       (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5)))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                                       (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                       (coe du1474 v0 v1)))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                       (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (MAlonzo.Code.Algebra.d2296 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                       (coe v2)
                                       (let v5 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d1656 (coe v5) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du684
                                             (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v6)))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                             (coe (MAlonzo.Code.Algebra.d2296 (coe v0))) (coe v3)))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                             (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0 v1
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                                v2)
                                             (coe v2)
                                             (coe
                                                MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
                                                (MAlonzo.Code.Algebra.du2352 (coe v0)) v2 v1
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.d144
                                                               (let v5
                                                                      = MAlonzo.Code.Algebra.du2352
                                                                          (coe v0) in
                                                                coe
                                                                  (MAlonzo.Code.Algebra.du952
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.du1028
                                                                           (coe v5)))))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0 v1
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                                      v2)
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (MAlonzo.Code.Algebra.d2294 (coe v0)) v2)
                                                   (coe v2)
                                                   (let v5
                                                          = MAlonzo.Code.Algebra.Structures.d1656
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.d2298
                                                                    (coe v0))) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Structures.du676
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d702
                                                               (coe v5)))
                                                         (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0 v1
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                                         (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d1658
                                                            (MAlonzo.Code.Algebra.d2298 (coe v0))
                                                            v1)))
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Core.d418
                                                               (coe
                                                                  (MAlonzo.Code.Relation.Binary.d144
                                                                     (let v5
                                                                            = MAlonzo.Code.Algebra.du2352
                                                                                (coe v0) in
                                                                      coe
                                                                        (MAlonzo.Code.Algebra.du952
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.du1028
                                                                                 (coe v5)))))))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (MAlonzo.Code.Algebra.d2294 (coe v0))
                                                            v2)
                                                         (coe v2) (coe v2) (coe du1486 v0 v2)
                                                         (let v5
                                                                = MAlonzo.Code.Relation.Binary.Core.d414
                                                                    (coe
                                                                       (MAlonzo.Code.Relation.Binary.d144
                                                                          (let v5
                                                                                 = MAlonzo.Code.Algebra.du2352
                                                                                     (coe v0) in
                                                                           coe
                                                                             (MAlonzo.Code.Algebra.du952
                                                                                (coe
                                                                                   (MAlonzo.Code.Algebra.du1028
                                                                                      (coe
                                                                                         v5))))))) in
                                                          coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                               (coe v5 v2))))))))))))))))))))
name1546 = "Algebra.Properties.BooleanAlgebra.⊥≉⊤"
d1546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny
d1546 v0 v1 v2 = du1546 v2
du1546 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny
du1546 v0
  = coe
      (du1536
         (coe v0) (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
         (coe (du1482 (coe v0) (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))))
         (coe
            (du1508 (coe v0) (coe (MAlonzo.Code.Algebra.d2296 (coe v0))))))
name1548 = "Algebra.Properties.BooleanAlgebra.⊤≉⊥"
d1548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny
d1548 v0 v1 v2 = du1548 v2
du1548 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny
du1548 v0
  = coe
      (du1536
         (coe v0) (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
         (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
         (coe (du1498 (coe v0) (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))))
         (coe
            (du1490 (coe v0) (coe (MAlonzo.Code.Algebra.d2294 (coe v0))))))
name1550 = "Algebra.Properties.BooleanAlgebra.¬-involutive"
d1550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1550 v0 v1 v2 v3 = du1550 v2 v3
du1550 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1550 v0 v1
  = coe
      (du1536
         (coe v0) (coe MAlonzo.Code.Algebra.d2292 v0 v1) (coe v1)
         (coe du1474 v0 v1) (coe du1470 v0 v1))
name1558 = "Algebra.Properties.BooleanAlgebra.deMorgan₁"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1558 v0 v1 v2 v3 v4 = du1558 v2 v3 v4
du1558 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1558 v0 v1 v2
  = coe
      (du1536
         (coe v0) (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
         (coe
            MAlonzo.Code.Algebra.d2288 v0
            (coe MAlonzo.Code.Algebra.d2292 v0 v1)
            (coe MAlonzo.Code.Algebra.d2292 v0 v2))
         (coe (du1568 (coe v0) (coe v1) (coe v2)))
         (coe (du1572 (coe v0) (coe v1) (coe v2))))
name1568 = "Algebra.Properties.BooleanAlgebra._.lem₁"
d1568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1568 v0 v1 v2 v3 v4 = du1568 v2 v3 v4
du1568 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1568 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
               (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                  (MAlonzo.Code.Algebra.du2352 (coe v0))
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                  (coe MAlonzo.Code.Algebra.d2292 v0 v2))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                     (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du684
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (let v4
                                  = MAlonzo.Code.Algebra.Structures.d1656
                                      (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du676
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v4)))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d650
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    v1 v2)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v2
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v2
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))))
                           (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d648
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v2
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v2
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d652
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1656
                                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                 v2 v1 (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d652
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1656
                                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                 v1 v2 (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v2
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v1
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v2
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v2
                                       (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (MAlonzo.Code.Algebra.d2296 (coe v0))))
                                 (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d648
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v2
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v1
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v2
                                       (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v2
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                    (let v3
                                           = MAlonzo.Code.Algebra.Structures.d1656
                                               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                                     MAlonzo.Code.Algebra.Structures.du672
                                       (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                                       (coe v2)
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v1
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                       (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1660
                                          (MAlonzo.Code.Algebra.d2298 (coe v0)) v1))
                                    (let v3
                                           = MAlonzo.Code.Algebra.Structures.d1656
                                               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                                     MAlonzo.Code.Algebra.Structures.du672
                                       (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                                       (coe v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v2
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                       (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1660
                                          (MAlonzo.Code.Algebra.d2298 (coe v0)) v2)))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v3)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0 v2
                                             (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0 v1
                                             (MAlonzo.Code.Algebra.d2296 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (MAlonzo.Code.Algebra.d2296 (coe v0))
                                          (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                       (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d648
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1656
                                                   (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0 v2
                                             (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                          (MAlonzo.Code.Algebra.d2296 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0 v1
                                             (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                          (MAlonzo.Code.Algebra.d2296 (coe v0))
                                          (du1498 (coe v0) (coe v2)) (du1498 (coe v0) (coe v1)))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Core.d418
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.d144
                                                         (let v3
                                                                = MAlonzo.Code.Algebra.du2352
                                                                    (coe v0) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.du952
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.du1028
                                                                     (coe v3)))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (MAlonzo.Code.Algebra.d2296 (coe v0))
                                                (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                             (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                             (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                             (coe
                                                (du1490
                                                   (coe v0)
                                                   (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))))
                                             (let v3
                                                    = MAlonzo.Code.Relation.Binary.Core.d414
                                                        (coe
                                                           (MAlonzo.Code.Relation.Binary.d144
                                                              (let v3
                                                                     = MAlonzo.Code.Algebra.du2352
                                                                         (coe v0) in
                                                               coe
                                                                 (MAlonzo.Code.Algebra.du952
                                                                    (coe
                                                                       (MAlonzo.Code.Algebra.du1028
                                                                          (coe v3))))))) in
                                              let v4 = MAlonzo.Code.Algebra.d2296 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                   (coe v3 v4))))))))))))))))
name1570 = "Algebra.Properties.BooleanAlgebra._.lem₃"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1570 v0 v1 v2 v3 v4 = du1570 v2 v3 v4
du1570 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1570 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v2
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
               (let v3 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du744
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe v3))
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1 v2)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v2
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2294 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v2
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                     (let v3
                            = MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du676
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v2
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1658
                              (MAlonzo.Code.Algebra.d2298 (coe v0)) v1)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2294 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v2
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v2
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe
                              du1486 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v2
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v2
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d644
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    v2 (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (let v3
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.du952
                                                        (coe
                                                           (MAlonzo.Code.Algebra.du1028
                                                              (coe v3))))))) in
                                  let v4
                                        = coe
                                            MAlonzo.Code.Algebra.d2288 v0
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2 in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v3 v4))))))))))))
name1572 = "Algebra.Properties.BooleanAlgebra._.lem₂"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1572 v0 v1 v2 v3 v4 = du1572 v2 v3 v4
du1572 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1572 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                  (coe MAlonzo.Code.Algebra.d2292 v0 v2))
               (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.Structures.d646
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                  (coe MAlonzo.Code.Algebra.d2292 v0 v2))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                     (let v3 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                      let v4 = MAlonzo.Code.Algebra.Structures.d1656 (coe v3) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du684
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v4)))
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe (du1570 (coe v0) (coe v1) (coe v2)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v2
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                           (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d646
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0 v2
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                 (let v3
                                        = MAlonzo.Code.Algebra.Structures.d1656
                                            (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du680
                                       (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0 v2
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                       (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1658
                                          (MAlonzo.Code.Algebra.d2298 (coe v0)) v2)))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v3)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                          (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                       (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                       (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                       (coe
                                          (du1508 (coe v0) (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                                       (let v3
                                              = MAlonzo.Code.Relation.Binary.Core.d414
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.d144
                                                        (let v3
                                                               = MAlonzo.Code.Algebra.du2352
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.du952
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.du1028
                                                                    (coe v3))))))) in
                                        let v4 = MAlonzo.Code.Algebra.d2294 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                             (coe v3 v4))))))))))))))
name1578 = "Algebra.Properties.BooleanAlgebra.deMorgan₂"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1578 v0 v1 v2 v3 v4 = du1578 v2 v3 v4
du1578 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1578 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                  (coe MAlonzo.Code.Algebra.d2292 v0 v2))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1662
                  (MAlonzo.Code.Algebra.d2298 (coe v0))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                  (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.Structures.d648
                     (MAlonzo.Code.Algebra.Structures.d702
                        (coe
                           (MAlonzo.Code.Algebra.Structures.d1656
                              (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     v1
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     v2 (du1550 (coe v0) (coe v1)) (du1550 (coe v0) (coe v2))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1662
                        (MAlonzo.Code.Algebra.d2298 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                        (du1558
                           (coe v0) (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe
                              (du1550
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))))
                           (let v3
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v3))))))) in
                            let v4
                                  = coe
                                      MAlonzo.Code.Algebra.d2290 v0
                                      (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                      (coe MAlonzo.Code.Algebra.d2292 v0 v2) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v3 v4))))))))))
name1590 = "Algebra.Properties.BooleanAlgebra.replace-equality"
d1590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.T2262
d1590 v0 v1 v2 v3 v4 = du1590 v2 v4
du1590 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16) ->
  MAlonzo.Code.Algebra.T2262
du1590 v0 v1
  = coe
      (\ v2 v3 v4 v5 v6 v7 v8 v9 ->
         MAlonzo.Code.Algebra.C9061 v4 v5 v6 v7 v8 v9)
      erased erased (MAlonzo.Code.Algebra.d2288 (coe v0))
      (MAlonzo.Code.Algebra.d2290 (coe v0))
      (MAlonzo.Code.Algebra.d2292 (coe v0))
      (MAlonzo.Code.Algebra.d2294 (coe v0))
      (MAlonzo.Code.Algebra.d2296 (coe v0))
      (MAlonzo.Code.Algebra.Structures.C18211
         (coe
            (MAlonzo.Code.Algebra.d982
               (coe
                  (MAlonzo.Code.Algebra.Properties.DistributiveLattice.du262
                     (coe (MAlonzo.Code.Algebra.du2352 (coe v0))) (coe v1)))))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.d2288 v0 v2
                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                       (MAlonzo.Code.Algebra.d2294 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1658
                    (MAlonzo.Code.Algebra.d2298 (coe v0)) v2)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1
                       (coe
                          MAlonzo.Code.Algebra.d2290 v0 v2
                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                       (MAlonzo.Code.Algebra.d2296 (coe v0))))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1660
                    (MAlonzo.Code.Algebra.d2298 (coe v0)) v2)))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Equivalence.d34
                    (coe
                       v1 (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                       (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                 (coe
                    MAlonzo.Code.Algebra.Structures.d1662
                    (MAlonzo.Code.Algebra.d2298 (coe v0)) v2 v3
                    (coe
                       MAlonzo.Code.Function.Equality.d38
                       (MAlonzo.Code.Function.Equivalence.d36 (coe v1 v2 v3)) v4)))))
name1626 = "Algebra.Properties.BooleanAlgebra.XorRing._⊕_"
d1626 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1626 v0 v1 v2 = du1626 v1
du1626 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1626 v0 = coe v0
name1636 = "Algebra.Properties.BooleanAlgebra.XorRing.helper"
d1636 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1636 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1636 v0 v3 v4 v5 v6 v7 v8
du1636 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1636 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.d654
      (MAlonzo.Code.Algebra.Structures.d702
         (coe
            (MAlonzo.Code.Algebra.Structures.d1656
               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
      v1 v2 (coe MAlonzo.Code.Algebra.d2292 v0 v3)
      (coe MAlonzo.Code.Algebra.d2292 v0 v4) v5
      (coe
         MAlonzo.Code.Algebra.Structures.d1662
         (MAlonzo.Code.Algebra.d2298 (coe v0)) v3 v4 v6)
name1642 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-cong"
d1642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1642 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du1642 v2 v3 v4 v5 v6 v7 v8 v9 v10
du1642 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1642 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v9 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v9)))))))))
               (coe v1 v3 v5)
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2288 v0 v3 v5)
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5)))
               (coe v1 v4 v6) (coe v2 v3 v5)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v9 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v9)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v3 v5)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v4 v6)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v6)))
                     (coe v1 v4 v6)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d654
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.d2288 v0 v3 v5)
                        (coe MAlonzo.Code.Algebra.d2288 v0 v4 v6)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v6))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d648
                           (MAlonzo.Code.Algebra.Structures.d702
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d1656
                                    (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                           v3 v4 v5 v6 v7 v8)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1662
                           (MAlonzo.Code.Algebra.d2298 (coe v0))
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5)
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v6)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d654
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              v3 v4 v5 v6 v7 v8)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                           (let v9 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v9)))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v4 v6)
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v4 v6)))
                           (coe v1 v4 v6) (coe v1 v4 v6) (coe v2 v4 v6)
                           (let v9
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v9 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v9))))))) in
                            let v10 = coe v1 v4 v6 in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v9 v10))))))))))
name1656 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-comm"
d1656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1656 v0 v1 v2 v3 v4 v5 v6 = du1656 v2 v3 v4 v5 v6
du1656 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1656 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
               (coe v1 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
               (coe v1 v4 v3) (coe v2 v3 v4)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v4 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)))
                     (coe v1 v4 v3)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d654
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.d2288 v0 v4 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d644
                           (MAlonzo.Code.Algebra.Structures.d702
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d1656
                                    (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                           v3 v4)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1662
                           (MAlonzo.Code.Algebra.d2298 (coe v0))
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d650
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              v3 v4)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                           (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v4 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)))
                           (coe v1 v4 v3) (coe v1 v4 v3) (coe v2 v4 v3)
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v5))))))) in
                            let v6 = coe v1 v4 v3 in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v5 v6))))))))))
name1666 = "Algebra.Properties.BooleanAlgebra.XorRing.¬-distribˡ-⊕"
d1666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1666 v0 v1 v2 v3 v4 v5 v6 = du1666 v2 v3 v4 v5 v6
du1666 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1666 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
               (coe MAlonzo.Code.Algebra.d2292 v0 (coe v1 v3 v4))
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))))
               (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
               (coe
                  MAlonzo.Code.Algebra.Structures.d1662
                  (MAlonzo.Code.Algebra.d2298 (coe v0)) (coe v1 v3 v4)
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                  (coe v2 v3 v4))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))))
                     (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1662
                        (MAlonzo.Code.Algebra.d2298 (coe v0))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v4
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))))
                        (coe
                           MAlonzo.Code.Algebra.Properties.DistributiveLattice.du294
                           (MAlonzo.Code.Algebra.du2352 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))
                           v3 v4))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)))))
                           (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1662
                              (MAlonzo.Code.Algebra.d2298 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3))))
                              (let v5
                                     = MAlonzo.Code.Algebra.Structures.d1656
                                         (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                               MAlonzo.Code.Algebra.Structures.du680
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v4
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)))
                                 (let v6
                                        = MAlonzo.Code.Algebra.Structures.d1656
                                            (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du672
                                       (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v6)))
                                       (coe v4)
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d1662
                                          (MAlonzo.Code.Algebra.d2298 (coe v0))
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)
                                          (coe
                                             MAlonzo.Code.Algebra.Structures.d650
                                             (MAlonzo.Code.Algebra.Structures.d702
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d1656
                                                      (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                             v3 v4))))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v4
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v4
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                                 (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1662
                                    (MAlonzo.Code.Algebra.d2298 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v4
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3))))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v4
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d648
                                       (MAlonzo.Code.Algebra.Structures.d702
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1656
                                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v4
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe MAlonzo.Code.Algebra.d2290 v0 v4 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v4
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                       (du1680 (coe v0) (coe v3) (coe v4))
                                       (du1680 (coe v0) (coe v4) (coe v3))))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v5)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v3
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v4
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v3
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v4)))
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v4
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                                       (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                       (coe
                                          (du1578
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v3
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v4
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Core.d418
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.d144
                                                         (let v5
                                                                = MAlonzo.Code.Algebra.du2352
                                                                    (coe v0) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.du952
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.du1028
                                                                     (coe v5)))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2292 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0 v3
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4)))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2292 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0 v4
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2292 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4)))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2292 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0 v4
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                                             (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                             (let v5
                                                    = MAlonzo.Code.Algebra.Structures.d1656
                                                        (coe
                                                           (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du676
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d702
                                                         (coe v5)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2292 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0 v4
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2292 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0 v3
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2292 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4)))
                                                   (coe
                                                      (du1558
                                                         (coe v0) (coe v3)
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4)))))
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.d144
                                                               (let v5
                                                                      = MAlonzo.Code.Algebra.du2352
                                                                          (coe v0) in
                                                                coe
                                                                  (MAlonzo.Code.Algebra.du952
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.du1028
                                                                           (coe v5)))))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2292 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v4)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2292 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0 v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0 v3))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2292 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            v4)))
                                                   (coe
                                                      v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d654
                                                      (MAlonzo.Code.Algebra.Structures.d702
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d1656
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.d2298
                                                                     (coe v0))))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2292 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v4)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2292 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0 v4
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2292 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            v4))
                                                      (let v5
                                                             = MAlonzo.Code.Algebra.Structures.d1656
                                                                 (coe
                                                                    (MAlonzo.Code.Algebra.d2298
                                                                       (coe v0))) in
                                                       MAlonzo.Code.Algebra.Structures.du680
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d702
                                                               (coe v5)))
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2292 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                         (coe v4) (coe (du1550 (coe v0) (coe v4))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d1662
                                                         (MAlonzo.Code.Algebra.d2298 (coe v0))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0 v4
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            v4)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Structures.d650
                                                            (MAlonzo.Code.Algebra.Structures.d702
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d1656
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.d2298
                                                                           (coe v0))))))
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0 v3))))
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                                         (let v5
                                                                = MAlonzo.Code.Algebra.du2352
                                                                    (coe v0) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.du952
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.du1028
                                                                     (coe v5)))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v3)
                                                               v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     v3)
                                                                  v4)))
                                                         (coe
                                                            v1
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            v4)
                                                         (coe
                                                            v1
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            v4)
                                                         (coe
                                                            v2
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            v4)
                                                         (let v5
                                                                = MAlonzo.Code.Relation.Binary.Core.d414
                                                                    (coe
                                                                       (MAlonzo.Code.Relation.Binary.d144
                                                                          (let v5
                                                                                 = MAlonzo.Code.Algebra.du2352
                                                                                     (coe v0) in
                                                                           coe
                                                                             (MAlonzo.Code.Algebra.du952
                                                                                (coe
                                                                                   (MAlonzo.Code.Algebra.du1028
                                                                                      (coe
                                                                                         v5))))))) in
                                                          let v6
                                                                = coe
                                                                    v1
                                                                    (coe
                                                                       MAlonzo.Code.Algebra.d2292 v0
                                                                       v3)
                                                                    v4 in
                                                          coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                               (coe v5 v6))))))))))))))))))))
name1680 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem"
d1680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1680 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1680 v2 v7 v8
du1680 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1680 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (coe MAlonzo.Code.Algebra.d2292 v0 v2))
               (let v3
                      = MAlonzo.Code.Algebra.Structures.d1656
                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du672
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe (du1558 (coe v0) (coe v1) (coe v2)))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                        (MAlonzo.Code.Algebra.du2352 (coe v0)) v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (let v3
                                  = MAlonzo.Code.Algebra.Structures.d1656
                                      (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du684
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d1660
                                    (MAlonzo.Code.Algebra.d2298 (coe v0)) v1)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (MAlonzo.Code.Algebra.d2296 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe
                                    du1494 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                 (let v3
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.du952
                                                        (coe
                                                           (MAlonzo.Code.Algebra.du1028
                                                              (coe v3))))))) in
                                  let v4
                                        = coe
                                            MAlonzo.Code.Algebra.d2290 v0 v1
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v2) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v3 v4))))))))))))
name1690 = "Algebra.Properties.BooleanAlgebra.XorRing.¬-distribʳ-⊕"
d1690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1690 v0 v1 v2 v3 v4 v5 v6 = du1690 v2 v3 v4 v5 v6
du1690 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1690 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
               (coe MAlonzo.Code.Algebra.d2292 v0 (coe v1 v3 v4))
               (coe MAlonzo.Code.Algebra.d2292 v0 (coe v1 v4 v3))
               (coe v1 v3 (coe MAlonzo.Code.Algebra.d2292 v0 v4))
               (coe
                  MAlonzo.Code.Algebra.Structures.d1662
                  (MAlonzo.Code.Algebra.d2298 (coe v0)) (coe v1 v3 v4) (coe v1 v4 v3)
                  (du1656 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                     (coe MAlonzo.Code.Algebra.d2292 v0 (coe v1 v4 v3))
                     (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v4) v3)
                     (coe v1 v3 (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                     (coe (du1666 (coe v0) (coe v1) (coe v2) (coe v4) (coe v3)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                           (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v4) v3)
                           (coe v1 v3 (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                           (coe v1 v3 (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                           (coe
                              (du1656
                                 (coe v0) (coe v1) (coe v2) (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                 (coe v3)))
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v5))))))) in
                            let v6 = coe v1 v3 (coe MAlonzo.Code.Algebra.d2292 v0 v4) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v5 v6))))))))))
name1700
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-annihilates-¬"
d1700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1700 v0 v1 v2 v3 v4 v5 v6 = du1700 v2 v3 v4 v5 v6
du1700 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1700 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))
               (coe v1 v3 v4)
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe MAlonzo.Code.Algebra.d2292 v0 (coe v1 v3 v4)))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                  (coe MAlonzo.Code.Algebra.d2292 v0 v4))
               (coe (du1550 (coe v0) (coe v1 v3 v4)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 (coe v1 v3 v4)))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1662
                        (MAlonzo.Code.Algebra.d2298 (coe v0))
                        (coe MAlonzo.Code.Algebra.d2292 v0 (coe v1 v3 v4))
                        (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                        (du1666 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                           (coe
                              (du1690
                                 (coe v0) (coe v1) (coe v2) (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                 (coe v4)))
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v5))))))) in
                            let v6
                                  = coe
                                      v1 (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v5 v6))))))))))
name1706 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityˡ"
d1706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1706 v0 v1 v2 v3 v4 v5 = du1706 v2 v3 v4 v5
du1706 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1706 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
               (coe v1 (MAlonzo.Code.Algebra.d2296 (coe v0)) v3)
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                        v3)))
               (coe v3) (coe v2 (MAlonzo.Code.Algebra.d2296 (coe v0)) v3)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                              v3)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (MAlonzo.Code.Algebra.d2296 (coe v0))))
                     (coe v3)
                     (coe
                        MAlonzo.Code.Algebra.Structures.d654
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                           v3)
                        v3
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                              v3))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (MAlonzo.Code.Algebra.d2296 (coe v0)))
                        (coe du1494 v0 v3)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1662
                           (MAlonzo.Code.Algebra.d2298 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2296 (coe v0))
                              v3)
                           (MAlonzo.Code.Algebra.d2296 (coe v0)) (coe du1502 v0 v3)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (MAlonzo.Code.Algebra.d2296 (coe v0))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v3
                              (MAlonzo.Code.Algebra.d2294 (coe v0)))
                           (coe v3)
                           (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d1656 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du672
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5))) (coe v3)
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                 (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                 (coe (du1546 (coe v0)))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                 (coe v3) (coe v3) (coe (du1482 (coe v0) (coe v3)))
                                 (let v4
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.du952
                                                        (coe
                                                           (MAlonzo.Code.Algebra.du1028
                                                              (coe v4))))))) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v4 v3))))))))))))
name1710 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identityʳ"
d1710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1710 v0 v1 v2 v3 v4 v5 = du1710 v2 v3 v4 v5
du1710 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1710 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Core.d418
      (MAlonzo.Code.Algebra.Structures.d642
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656
                     (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
      (coe v1 v3 (MAlonzo.Code.Algebra.d2296 (coe v0)))
      (coe v1 (MAlonzo.Code.Algebra.d2296 (coe v0)) v3) v3
      (du1656
         (coe v0) (coe v1) (coe v2) (coe v3)
         (coe (MAlonzo.Code.Algebra.d2296 (coe v0))))
      (du1706 (coe v0) (coe v1) (coe v2) (coe v3))
name1712 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-identity"
d1712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1712 v0 v1 v2 v3 v4 = du1712 v2 v3 v4
du1712 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1712 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1706 (coe v0) (coe v1) (coe v2)))
         (coe (du1710 (coe v0) (coe v1) (coe v2))))
name1714 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseˡ"
d1714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1714 v0 v1 v2 v3 v4 v5 = du1714 v2 v3 v4 v5
du1714 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1714 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
               (coe v1 v3 v3)
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2288 v0 v3 v3)
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v3 v3)))
               (coe (MAlonzo.Code.Algebra.d2296 (coe v0))) (coe v2 v3 v3)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v3 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v3)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v3
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                     (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d654
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        (coe MAlonzo.Code.Algebra.d2288 v0 v3 v3) v3
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v3))
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                        (coe
                           MAlonzo.Code.Algebra.Properties.Lattice.du1512
                           (MAlonzo.Code.Algebra.du1028
                              (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1662
                           (MAlonzo.Code.Algebra.d2298 (coe v0))
                           (coe MAlonzo.Code.Algebra.d2290 v0 v3 v3) v3
                           (coe
                              MAlonzo.Code.Algebra.Properties.Lattice.du1510
                              (MAlonzo.Code.Algebra.du1028
                                 (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
                              v3)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v3
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                           (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                           (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1660
                              (MAlonzo.Code.Algebra.d2298 (coe v0)) v3)
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v4))))))) in
                            let v5 = MAlonzo.Code.Algebra.d2296 (coe v0) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name1718 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverseʳ"
d1718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d1718 v0 v1 v2 v3 v4 v5 = du1718 v2 v3 v4 v5
du1718 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du1718 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Core.d418
      (MAlonzo.Code.Algebra.Structures.d642
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656
                     (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
      (coe v1 v3 v3) (coe v1 v3 v3) (MAlonzo.Code.Algebra.d2296 (coe v0))
      (du1656 (coe v0) (coe v1) (coe v2) (coe v3) (coe v3))
      (du1714 (coe v0) (coe v1) (coe v2) (coe v3))
name1720 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-inverse"
d1720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1720 v0 v1 v2 v3 v4 = du1720 v2 v3 v4
du1720 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1720 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1714 (coe v0) (coe v1) (coe v2)))
         (coe (du1718 (coe v0) (coe v1) (coe v2))))
name1722 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distribˡ-⊕"
d1722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1722 v0 v1 v2 v3 v4 v5 v6 v7 = du1722 v2 v3 v4 v5 v6 v7
du1722 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1722 v0 v1 v2 v3 v4 v5
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))))))
               (coe MAlonzo.Code.Algebra.d2290 v0 v3 (coe v1 v4 v5))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v3
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
               (coe
                  v1 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                  (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
               (let v6
                      = MAlonzo.Code.Algebra.Structures.d1656
                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du672
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v6))) (coe v3)
                     (coe v1 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5)))
                     (coe v2 v4 v5)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v3
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v3
                           (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5)))
                     (coe
                        v1 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                        (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d652
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        v3 (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v3
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v3
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                           (coe
                              v1 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                              (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                           (let v6
                                  = MAlonzo.Code.Algebra.Structures.d1656
                                      (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du672
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v6)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                 (coe (du1558 (coe v0) (coe v4) (coe v5)))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                 (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v3
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (MAlonzo.Code.Algebra.d2296 (coe v0))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                 (coe
                                    v1 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                                 (coe
                                    du1494 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0 v3
                                          (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v6)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (MAlonzo.Code.Algebra.d2296 (coe v0))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v3
                                                (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v3
                                                (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0 v3
                                                (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                       (coe
                                          v1 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                                       (let v6 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                                        let v7 = MAlonzo.Code.Algebra.Structures.d1656 (coe v6) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du684
                                             (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v7)))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0 v3
                                                   (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                                             (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0 v3
                                                   (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                             (coe (du1738 (coe v0) (coe v3) (coe v4) (coe v5)))))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                             (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0 v3
                                                      (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0 v3
                                                      (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0 v3
                                                   (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                             (coe
                                                v1 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                                                (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                                                (MAlonzo.Code.Algebra.du2352 (coe v0))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0 v3
                                                   (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                                   (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v6)))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0 v3
                                                         (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0 v5))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0 v3
                                                         (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2292 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0 v4
                                                               v5))))
                                                   (coe
                                                      v1 (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                                                      (coe MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                                                   (let v6
                                                          = MAlonzo.Code.Algebra.Structures.d1656
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.d2298
                                                                    (coe v0))) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Structures.du672
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d702
                                                               (coe v6)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0 v3
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0 v4 v5))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0 v4
                                                                  v5)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  v5)))
                                                         (let v7
                                                                = MAlonzo.Code.Algebra.d2298
                                                                    (coe v0) in
                                                          let v8
                                                                = MAlonzo.Code.Algebra.Structures.d1656
                                                                    (coe v7) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.Structures.du680
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d702
                                                                     (coe v8)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v4 v5))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     v4)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     v5))
                                                               (coe
                                                                  (du1558
                                                                     (coe v0) (coe v4)
                                                                     (coe v5)))))))
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                                         (let v6
                                                                = MAlonzo.Code.Algebra.du2352
                                                                    (coe v0) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.du952
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.du1028
                                                                     (coe v6)))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0 v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0 v4
                                                                  v5))
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v4 v5))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0 v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0 v4
                                                                  v5))
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0 v3
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v4 v5))))
                                                         (coe
                                                            v1
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0 v3 v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0 v3 v5))
                                                         (let v6
                                                                = MAlonzo.Code.Algebra.d2298
                                                                    (coe v0) in
                                                          let v7
                                                                = MAlonzo.Code.Algebra.Structures.d1656
                                                                    (coe v6) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.Structures.du672
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d702
                                                                     (coe v7)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0 v3
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2288 v0
                                                                     v4 v5))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v4 v5)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     v3)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v4 v5)))
                                                               (coe
                                                                  (du1558
                                                                     (coe v0) (coe v3)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v4 v5)))))
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                               (coe
                                                                  (MAlonzo.Code.Relation.Binary.Core.d418
                                                                     (coe
                                                                        (MAlonzo.Code.Relation.Binary.d144
                                                                           (let v6
                                                                                  = MAlonzo.Code.Algebra.du2352
                                                                                      (coe v0) in
                                                                            coe
                                                                              (MAlonzo.Code.Algebra.du952
                                                                                 (coe
                                                                                    (MAlonzo.Code.Algebra.du1028
                                                                                       (coe
                                                                                          v6)))))))))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2288
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v4 v5))))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2288
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v5))))
                                                               (coe
                                                                  v1
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3 v4)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3 v5))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Structures.d654
                                                                  (MAlonzo.Code.Algebra.Structures.d702
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d1656
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.d2298
                                                                                 (coe v0))))))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2288
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2288
                                                                        v0 v4 v5))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v4 v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Relation.Binary.Core.d414
                                                                     (MAlonzo.Code.Algebra.Structures.d642
                                                                        (coe
                                                                           (MAlonzo.Code.Algebra.Structures.d702
                                                                              (coe
                                                                                 (MAlonzo.Code.Algebra.Structures.d1656
                                                                                    (coe
                                                                                       (MAlonzo.Code.Algebra.d2298
                                                                                          (coe
                                                                                             v0))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2288
                                                                           v0 v4 v5)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Structures.d1662
                                                                     (MAlonzo.Code.Algebra.d2298
                                                                        (coe v0))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v3
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v4 v5))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v5))
                                                                     (du1736
                                                                        (coe v0) (coe v3) (coe v4)
                                                                        (coe v5))))
                                                               (coe
                                                                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                                     (coe
                                                                        (MAlonzo.Code.Relation.Binary.Core.d418
                                                                           (coe
                                                                              (MAlonzo.Code.Relation.Binary.d144
                                                                                 (let v6
                                                                                        = MAlonzo.Code.Algebra.du2352
                                                                                            (coe
                                                                                               v0) in
                                                                                  coe
                                                                                    (MAlonzo.Code.Algebra.du952
                                                                                       (coe
                                                                                          (MAlonzo.Code.Algebra.du1028
                                                                                             (coe
                                                                                                v6)))))))))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2288
                                                                              v0 v4 v5))
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2292
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2290
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v5))))
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2288
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2290
                                                                              v0 v3 v4)
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2290
                                                                              v0 v3 v5))
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2292
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2290
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v5))))
                                                                     (coe
                                                                        v1
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v5))
                                                                     (let v6
                                                                            = MAlonzo.Code.Algebra.Structures.d1656
                                                                                (coe
                                                                                   (MAlonzo.Code.Algebra.d2298
                                                                                      (coe v0))) in
                                                                      coe
                                                                        (MAlonzo.Code.Algebra.Structures.du676
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Structures.d702
                                                                                 (coe v6)))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2292
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.d2290
                                                                                    v0 v3 v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.d2290
                                                                                    v0 v3 v5)))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2290
                                                                              v0 v3
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2288
                                                                                 v0 v4 v5))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2288
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v5))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.Properties.DistributiveLattice.du292
                                                                              (MAlonzo.Code.Algebra.du2352
                                                                                 (coe v0))
                                                                              v3 v4 v5)))
                                                                     (coe
                                                                        (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                                                           (let v6
                                                                                  = MAlonzo.Code.Algebra.du2352
                                                                                      (coe v0) in
                                                                            coe
                                                                              (MAlonzo.Code.Algebra.du952
                                                                                 (coe
                                                                                    (MAlonzo.Code.Algebra.du1028
                                                                                       (coe v6)))))
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2290
                                                                              v0
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2288
                                                                                 v0
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.d2290
                                                                                    v0 v3 v4)
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.d2290
                                                                                    v0 v3 v5))
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2292
                                                                                 v0
                                                                                 (coe
                                                                                    MAlonzo.Code.Algebra.d2290
                                                                                    v0
                                                                                    (coe
                                                                                       MAlonzo.Code.Algebra.d2290
                                                                                       v0 v3 v4)
                                                                                    (coe
                                                                                       MAlonzo.Code.Algebra.d2290
                                                                                       v0 v3 v5))))
                                                                           (coe
                                                                              v1
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v5))
                                                                           (coe
                                                                              v1
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v5))
                                                                           (coe
                                                                              v2
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v4)
                                                                              (coe
                                                                                 MAlonzo.Code.Algebra.d2290
                                                                                 v0 v3 v5))
                                                                           (let v6
                                                                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                                                                      (coe
                                                                                         (MAlonzo.Code.Relation.Binary.d144
                                                                                            (let v6
                                                                                                   = MAlonzo.Code.Algebra.du2352
                                                                                                       (coe
                                                                                                          v0) in
                                                                                             coe
                                                                                               (MAlonzo.Code.Algebra.du952
                                                                                                  (coe
                                                                                                     (MAlonzo.Code.Algebra.du1028
                                                                                                        (coe
                                                                                                           v6))))))) in
                                                                            let v7
                                                                                  = coe
                                                                                      v1
                                                                                      (coe
                                                                                         MAlonzo.Code.Algebra.d2290
                                                                                         v0 v3 v4)
                                                                                      (coe
                                                                                         MAlonzo.Code.Algebra.d2290
                                                                                         v0 v3
                                                                                         v5) in
                                                                            coe
                                                                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                                                 (coe
                                                                                    v6
                                                                                    v7))))))))))))))))))))))))))
name1734 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1734 v0 v1 v2 v3 v4 v5 v6 v7 = du1734 v2 v5 v6 v7
du1734 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1734 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v3)
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v2
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
               (coe
                  MAlonzo.Code.Algebra.Structures.d652
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                  v1 v2 v3)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v3)
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1) v3)
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v2
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du676
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v4))) (coe v3)
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                           (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d650
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              v1 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v2 v1) v3)
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v2
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v2
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d652
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              v2 v1 v3)
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v4))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.d2290 v0 v2
                                      (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name1736 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₁"
d1736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1736 v0 v1 v2 v3 v4 v5 v6 v7 = du1736 v2 v5 v6 v7
du1736 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1736 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0 v1
                  (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v1)
                  (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
               (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                let v5 = MAlonzo.Code.Algebra.Structures.d1656 (coe v4) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du676
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5)))
                     (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)
                     (coe MAlonzo.Code.Algebra.d2290 v0 v1 v1) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.Properties.Lattice.du1510
                        (MAlonzo.Code.Algebra.du1028
                           (coe (MAlonzo.Code.Algebra.du2352 (coe v0))))
                        v1)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v1)
                        (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d652
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        v1 v1 (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v1
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v2
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                           (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                            let v5 = MAlonzo.Code.Algebra.Structures.d1656 (coe v4) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du672
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5))) (coe v1)
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v2
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                                 (coe (du1734 (coe v0) (coe v1) (coe v2) (coe v3)))))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v1
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v2
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d652
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    v1 v2 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3))
                                 (let v4
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.du952
                                                        (coe
                                                           (MAlonzo.Code.Algebra.du1028
                                                              (coe v4))))))) in
                                  let v5
                                        = coe
                                            MAlonzo.Code.Algebra.d2290 v0
                                            (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                            (coe MAlonzo.Code.Algebra.d2290 v0 v1 v3) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v4 v5))))))))))))
name1738 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₃"
d1738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1738 v0 v1 v2 v3 v4 v5 v6 v7 = du1738 v2 v5 v6 v7
du1738 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1738 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
               (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                  (MAlonzo.Code.Algebra.d2296 (coe v0)))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0 v1
                     (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1))
               (coe (du1498 (coe v0) (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (MAlonzo.Code.Algebra.d2296 (coe v0)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 v1
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                     (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d1656 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du672
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5)))
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe (MAlonzo.Code.Algebra.d2296 (coe v0)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1660
                              (MAlonzo.Code.Algebra.d2298 (coe v0)) v1)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                           (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3) v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d652
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3) v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3) v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d654
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3) v1)
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d650
                                       (MAlonzo.Code.Algebra.Structures.d702
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1656
                                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3) v1)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Core.d414
                                       (MAlonzo.Code.Algebra.Structures.d642
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d702
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d1656
                                                      (coe
                                                         (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)))
                                 (let v4
                                        = MAlonzo.Code.Relation.Binary.Core.d414
                                            (coe
                                               (MAlonzo.Code.Relation.Binary.d144
                                                  (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                   coe
                                                     (MAlonzo.Code.Algebra.du952
                                                        (coe
                                                           (MAlonzo.Code.Algebra.du1028
                                                              (coe v4))))))) in
                                  let v5
                                        = coe
                                            MAlonzo.Code.Algebra.d2290 v0
                                            (coe
                                               MAlonzo.Code.Algebra.d2290 v0 v1
                                               (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v1) in
                                  coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                       (coe v4 v5))))))))))))
name1740 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distribʳ-⊕"
d1740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1740 v0 v1 v2 v3 v4 = du1740 v2 v3 v4
du1740 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1740 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.FunctionProperties.Consequences.du282
         (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
          coe
            (MAlonzo.Code.Algebra.du952
               (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
         (coe (MAlonzo.Code.Algebra.d2290 (coe v0))) (coe v1)
         (coe (du1642 (coe v0) (coe v1) (coe v2)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe (du1722 (coe v0) (coe v1) (coe v2))))
name1742 = "Algebra.Properties.BooleanAlgebra.XorRing.∧-distrib-⊕"
d1742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d1742 v0 v1 v2 v3 v4 = du1742 v2 v3 v4
du1742 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du1742 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du1722 (coe v0) (coe v1) (coe v2)))
         (coe (du1740 (coe v0) (coe v1) (coe v2))))
name1752 = "Algebra.Properties.BooleanAlgebra.XorRing.lemma₂"
d1752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1752 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1752 v2 v5 v6 v7 v8
du1752 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1752 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                  (coe MAlonzo.Code.Algebra.d2290 v0 v3 v4))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v4))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v3)
                     (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v4)
                     (coe MAlonzo.Code.Algebra.d2288 v0 v2 v4)))
               (coe
                  MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
                  (MAlonzo.Code.Algebra.du2352 (coe v0))
                  (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v3 v4)
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v5)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v3)
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v4))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v4)
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v4)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v4)
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v4)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d654
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v3)
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v3)
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2) v4)
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v4)
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v4))
                        (let v5 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du744
                           (MAlonzo.Code.Algebra.Structures.d1656 (coe v5)) v3 v1 v2)
                        (let v5 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                         coe
                           MAlonzo.Code.Algebra.Structures.du744
                           (MAlonzo.Code.Algebra.Structures.d1656 (coe v5)) v4 v1 v2))
                     (let v5
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Relation.Binary.d144
                                      (let v5 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.du952
                                            (coe (MAlonzo.Code.Algebra.du1028 (coe v5))))))) in
                      let v6
                            = coe
                                MAlonzo.Code.Algebra.d2290 v0
                                (coe
                                   MAlonzo.Code.Algebra.d2290 v0
                                   (coe MAlonzo.Code.Algebra.d2288 v0 v1 v3)
                                   (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                                (coe
                                   MAlonzo.Code.Algebra.d2290 v0
                                   (coe MAlonzo.Code.Algebra.d2288 v0 v1 v4)
                                   (coe MAlonzo.Code.Algebra.d2288 v0 v2 v4)) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v5 v6))))))))
name1762 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-assoc"
d1762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1762 v0 v1 v2 v3 v4 v5 v6 v7 = du1762 v2 v3 v4 v5 v6 v7
du1762 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1762 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Relation.Binary.Core.d416
      (MAlonzo.Code.Algebra.Structures.d642
         (coe
            (MAlonzo.Code.Algebra.Structures.d702
               (coe
                  (MAlonzo.Code.Algebra.Structures.d1656
                     (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
      (coe v1 v3 (coe v1 v4 v5)) (coe v1 (coe v1 v3 v4) v5)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))))))
               (coe v1 v3 (coe v1 v4 v5))
               (coe
                  v1 v3
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
               (coe v1 (coe v1 v3 v4) v5)
               (coe
                  (du1642
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v3) (coe v1 v4 v5)
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d414
                        (MAlonzo.Code.Algebra.Structures.d642
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                        v3)
                     (coe v2 v4 v5)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))))))
                     (coe
                        v1 v3
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v3
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0 v3
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))))
                     (coe v1 (coe v1 v3 v4) v5)
                     (coe
                        v2 v3
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v3
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0 v3
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                           (coe v1 (coe v1 v3 v4) v5)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d654
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v3
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5))))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0 v3
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0 v3
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v4 v5)
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v4 v5)))))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                    v5)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                              (du1780 (coe v0) (coe v3) (coe v4) (coe v5))
                              (du1784 (coe v0) (coe v3) (coe v4) (coe v5)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v6)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0 v3
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                          v5)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0 v3
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                             v5)
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v5)))))
                                 (coe v1 (coe v1 v3 v4) v5)
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d652
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0 v3
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                          v5)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v6)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0 v3
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v5)))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                v5)
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0 v3
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v5)))))
                                       (coe v1 (coe v1 v3 v4) v5)
                                       (let v6 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                                        let v7 = MAlonzo.Code.Algebra.Structures.d1656 (coe v6) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du672
                                             (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v7)))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0 v3
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                   (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                      v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0 v3
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                             (coe (du1786 (coe v0) (coe v3) (coe v4) (coe v5)))))
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                             (let v6 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe (MAlonzo.Code.Algebra.du1028 (coe v6)))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                      v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0 v3
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                            v4)
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v5)))))
                                             (coe
                                                MAlonzo.Code.Algebra.d2290 v0
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                      v5))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0 v3
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                             (coe v1 (coe v1 v3 v4) v5)
                                             (coe
                                                MAlonzo.Code.Algebra.Structures.d652
                                                (MAlonzo.Code.Algebra.Structures.d702
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d1656
                                                         (coe
                                                            (MAlonzo.Code.Algebra.d2298
                                                               (coe v0))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe MAlonzo.Code.Algebra.d2288 v0 v3 v4) v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.d2288 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                   v5)
                                                (coe
                                                   MAlonzo.Code.Algebra.d2290 v0
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0 v3
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v4))
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2288 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3) v4)
                                                      (coe MAlonzo.Code.Algebra.d2292 v0 v5))))
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.d144
                                                               (let v6
                                                                      = MAlonzo.Code.Algebra.du2352
                                                                          (coe v0) in
                                                                coe
                                                                  (MAlonzo.Code.Algebra.du952
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.du1028
                                                                           (coe v6)))))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                                                            v5)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v4))
                                                            v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0 v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v4))
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v3)
                                                               v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0 v5))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.d2290 v0
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0 v3
                                                                  v4)))
                                                         v5)
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2292 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0 v3
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3 v4)))
                                                            v5)))
                                                   (coe v1 (coe v1 v3 v4) v5)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.d654
                                                      (MAlonzo.Code.Algebra.Structures.d702
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d1656
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.d2298
                                                                     (coe v0))))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                                                            v5)
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v3)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v4))
                                                            v5))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2288 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0 v3 v4)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0 v3
                                                                  v4)))
                                                         v5)
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2290 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0 v3
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v4))
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v5))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2288 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0 v3)
                                                               v4)
                                                            (coe MAlonzo.Code.Algebra.d2292 v0 v5)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.d2292 v0
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0 v3
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3 v4)))
                                                            v5))
                                                      (du1774 (coe v0) (coe v3) (coe v4) (coe v5))
                                                      (du1778 (coe v0) (coe v3) (coe v4) (coe v5)))
                                                   (coe
                                                      (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                                         (let v6
                                                                = MAlonzo.Code.Algebra.du2352
                                                                    (coe v0) in
                                                          coe
                                                            (MAlonzo.Code.Algebra.du952
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.du1028
                                                                     (coe v6)))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.d2290 v0
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2288 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2288 v0
                                                                     v3 v4)
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2292 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0 v3 v4)))
                                                               v5)
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2292 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2290 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2288
                                                                        v0 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2292
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v4)))
                                                                  v5)))
                                                         (coe
                                                            v1
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0 v3
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3 v4)))
                                                            v5)
                                                         (coe v1 (coe v1 v3 v4) v5)
                                                         (coe
                                                            v2
                                                            (coe
                                                               MAlonzo.Code.Algebra.d2290 v0
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2288 v0 v3
                                                                  v4)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.d2292 v0
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     v3 v4)))
                                                            v5)
                                                         (coe
                                                            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                                               (let v6
                                                                      = MAlonzo.Code.Algebra.du2352
                                                                          (coe v0) in
                                                                coe
                                                                  (MAlonzo.Code.Algebra.du952
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.du1028
                                                                           (coe v6)))))
                                                               (coe
                                                                  v1
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.d2290 v0
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2288
                                                                        v0 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2292
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2290
                                                                           v0 v3 v4)))
                                                                  v5)
                                                               (coe v1 (coe v1 v3 v4) v5)
                                                               (coe v1 (coe v1 v3 v4) v5)
                                                               (coe
                                                                  (du1642
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v1 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.d2290
                                                                        v0
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2288
                                                                           v0 v3 v4)
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.d2292
                                                                           v0
                                                                           (coe
                                                                              MAlonzo.Code.Algebra.d2290
                                                                              v0 v3 v4)))
                                                                     (coe v5) (coe v5)
                                                                     (coe v2 v3 v4)
                                                                     (coe
                                                                        MAlonzo.Code.Relation.Binary.Core.d414
                                                                        (MAlonzo.Code.Algebra.Structures.d642
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Structures.d702
                                                                                 (coe
                                                                                    (MAlonzo.Code.Algebra.Structures.d1656
                                                                                       (coe
                                                                                          (MAlonzo.Code.Algebra.d2298
                                                                                             (coe
                                                                                                v0))))))))
                                                                        v5)))
                                                               (let v6
                                                                      = MAlonzo.Code.Relation.Binary.Core.d414
                                                                          (coe
                                                                             (MAlonzo.Code.Relation.Binary.d144
                                                                                (let v6
                                                                                       = MAlonzo.Code.Algebra.du2352
                                                                                           (coe
                                                                                              v0) in
                                                                                 coe
                                                                                   (MAlonzo.Code.Algebra.du952
                                                                                      (coe
                                                                                         (MAlonzo.Code.Algebra.du1028
                                                                                            (coe
                                                                                               v6))))))) in
                                                                let v7 = coe v1 (coe v1 v3 v4) v5 in
                                                                coe
                                                                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                                     (coe
                                                                        v6 v7))))))))))))))))))))))
name1774 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₁"
d1774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1774 v0 v1 v2 v3 v4 v5 v6 v7 = du1774 v2 v5 v6 v7
du1774 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1774 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     v3))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                  v3)
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                  v3)
               (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du744
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe v4)) v3
                  (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                        v3)
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du684
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v4))) (coe v3)
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                           (let v5 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d1656 (coe v5) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du672
                                 (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v6)))
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe (du1558 (coe v0) (coe v1) (coe v2)))))))
                     (let v4
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Relation.Binary.d144
                                      (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                       coe
                                         (MAlonzo.Code.Algebra.du952
                                            (coe (MAlonzo.Code.Algebra.du1028 (coe v4))))))) in
                      let v5
                            = coe
                                MAlonzo.Code.Algebra.d2288 v0
                                (coe
                                   MAlonzo.Code.Algebra.d2290 v0
                                   (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                   (coe
                                      MAlonzo.Code.Algebra.d2292 v0
                                      (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                                v3 in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v4 v5))))))))
name1776 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂'"
d1776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1776 v0 v1 v2 v3 v4 v5 v6 v7 = du1776 v2 v5 v6
du1776 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1776 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2294 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d2294 (coe v0))))
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d654
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2294 (coe v0))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                     (MAlonzo.Code.Algebra.d2294 (coe v0)))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                  (coe
                     du1486 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                  (du1482
                     (coe v0)
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                     (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                      coe
                        (MAlonzo.Code.Algebra.du952
                           (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2294 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d2294 (coe v0))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2)))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d654
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0 (MAlonzo.Code.Algebra.d2294 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (MAlonzo.Code.Algebra.d2294 (coe v0)))
                        (coe
                           MAlonzo.Code.Algebra.Structures.d654
                           (MAlonzo.Code.Algebra.Structures.d702
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d1656
                                    (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                           (MAlonzo.Code.Algebra.d2294 (coe v0))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe du1470 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.Structures.d644
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                        (let v3
                               = MAlonzo.Code.Algebra.Structures.d1656
                                   (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                         MAlonzo.Code.Algebra.Structures.du672
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2)
                           (coe (MAlonzo.Code.Algebra.d2294 (coe v0))) (coe du1470 v0 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                           (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2)))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                           (coe
                              (du1752
                                 (coe v0) (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2) (coe v1) (coe v2)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                 (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d648
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                                    (du1578 (coe v0) (coe v1) (coe v2))
                                    (du1550 (coe v0) (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                       (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.d2292 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2292 v0
                                                (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                             (coe
                                                MAlonzo.Code.Algebra.d2292 v0
                                                (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2292 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                             (coe
                                                MAlonzo.Code.Algebra.d2292 v0
                                                (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                                       (coe
                                          (du1558
                                             (coe v0) (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                             (coe
                                                MAlonzo.Code.Algebra.d2292 v0
                                                (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                                       (let v3
                                              = MAlonzo.Code.Relation.Binary.Core.d414
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.d144
                                                        (let v3
                                                               = MAlonzo.Code.Algebra.du2352
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.du952
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.du1028
                                                                    (coe v3))))))) in
                                        let v4
                                              = coe
                                                  MAlonzo.Code.Algebra.d2292 v0
                                                  (coe
                                                     MAlonzo.Code.Algebra.d2290 v0
                                                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                                     (coe
                                                        MAlonzo.Code.Algebra.d2292 v0
                                                        (coe
                                                           MAlonzo.Code.Algebra.d2290 v0 v1 v2))) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                             (coe v3 v4))))))))))))))
name1778 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₂"
d1778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1778 v0 v1 v2 v3 v4 v5 v6 v7 = du1778 v2 v5 v6 v7
du1778 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1778 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                  (coe MAlonzo.Code.Algebra.d2292 v0 v3))
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                     v3))
               (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                coe
                  MAlonzo.Code.Algebra.Structures.du744
                  (MAlonzo.Code.Algebra.Structures.d1656 (coe v4))
                  (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                           v3))
                     (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d1656 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du684
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5)))
                           (coe MAlonzo.Code.Algebra.d2292 v0 v3)
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                           (coe (du1776 (coe v0) (coe v1) (coe v2)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                           (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                                 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                                 v3))
                           (coe
                              (du1558
                                 (coe v0)
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                    (coe
                                       MAlonzo.Code.Algebra.d2292 v0
                                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                                 (coe v3)))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v4))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.d2292 v0
                                      (coe
                                         MAlonzo.Code.Algebra.d2290 v0
                                         (coe
                                            MAlonzo.Code.Algebra.d2290 v0
                                            (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                                            (coe
                                               MAlonzo.Code.Algebra.d2292 v0
                                               (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                                         v3) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name1780 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₃"
d1780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1780 v0 v1 v2 v3 v4 v5 v6 v7 = du1780 v2 v5 v6 v7
du1780 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1780 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0 v1
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2) v3)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
               (let v4
                      = MAlonzo.Code.Algebra.Structures.d1656
                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                coe
                  (MAlonzo.Code.Algebra.Structures.du680
                     (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v4))) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                     (let v5
                            = MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du672
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5)))
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                           (coe (du1558 (coe v0) (coe v2) (coe v3)))))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2) v3)
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v1
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
                        (MAlonzo.Code.Algebra.du2352 (coe v0)) v1
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                           (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2) v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2) v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d654
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2) v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d646
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1656
                                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                 v1 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d646
                                 (MAlonzo.Code.Algebra.Structures.d702
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d1656
                                          (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                 v1 (coe MAlonzo.Code.Algebra.d2292 v0 v2)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v4))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.d2290 v0
                                      (coe
                                         MAlonzo.Code.Algebra.d2288 v0
                                         (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2) v3)
                                      (coe
                                         MAlonzo.Code.Algebra.d2288 v0
                                         (coe
                                            MAlonzo.Code.Algebra.d2288 v0 v1
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                         (coe MAlonzo.Code.Algebra.d2292 v0 v3)) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name1782 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₄'"
d1782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1782 v0 v1 v2 v3 v4 v5 v6 v7 = du1782 v2 v6 v7
du1782 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1782 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0 v1
                     (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
               (coe
                  (du1558
                     (coe v0) (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                     (coe
                        MAlonzo.Code.Algebra.d2292 v0
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                     (coe
                        MAlonzo.Code.Algebra.Structures.d648
                        (MAlonzo.Code.Algebra.Structures.d702
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1656
                                 (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2))
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                        (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)
                        (du1578 (coe v0) (coe v1) (coe v2))
                        (du1550 (coe v0) (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2)))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                           (coe
                              (du1752
                                 (coe v0) (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2) (coe v1) (coe v2)))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Core.d418
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                              coe
                                                (MAlonzo.Code.Algebra.du952
                                                   (coe
                                                      (MAlonzo.Code.Algebra.du1028 (coe v3)))))))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (MAlonzo.Code.Algebra.d2294 (coe v0))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0 v1
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (MAlonzo.Code.Algebra.d2294 (coe v0))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d654
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (MAlonzo.Code.Algebra.d2294 (coe v0))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0 v1
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2))
                                    (coe
                                       MAlonzo.Code.Algebra.d2290 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d654
                                       (MAlonzo.Code.Algebra.Structures.d702
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1656
                                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v1)
                                       (MAlonzo.Code.Algebra.d2294 (coe v0))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0 v1
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                       (coe du1470 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d644
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1656
                                                   (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v1))
                                    (let v3
                                           = MAlonzo.Code.Algebra.Structures.d1656
                                               (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                                     MAlonzo.Code.Algebra.Structures.du672
                                       (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v2)
                                       (coe (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                       (coe du1470 v0 v2)))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v3 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v3)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (MAlonzo.Code.Algebra.d2294 (coe v0))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0 v1
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                             (MAlonzo.Code.Algebra.d2294 (coe v0))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0 v1
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0 v1
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d654
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1656
                                                   (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (MAlonzo.Code.Algebra.d2294 (coe v0))
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0 v1
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0 v1
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                          (coe
                                             MAlonzo.Code.Algebra.d2290 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                             (MAlonzo.Code.Algebra.d2294 (coe v0)))
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                          (coe
                                             du1486 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0 v1
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v2)))
                                          (du1482
                                             (coe v0)
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)))
                                       (let v3
                                              = MAlonzo.Code.Relation.Binary.Core.d414
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.d144
                                                        (let v3
                                                               = MAlonzo.Code.Algebra.du2352
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.du952
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.du1028
                                                                    (coe v3))))))) in
                                        let v4
                                              = coe
                                                  MAlonzo.Code.Algebra.d2290 v0
                                                  (coe
                                                     MAlonzo.Code.Algebra.d2288 v0 v1
                                                     (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                                  (coe
                                                     MAlonzo.Code.Algebra.d2288 v0
                                                     (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                             (coe v3 v4))))))))))))))
name1784 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₄"
d1784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1784 v0 v1 v2 v3 v4 v5 v6 v7 = du1784 v2 v5 v6 v7
du1784 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1784 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                            coe
                              (MAlonzo.Code.Algebra.du952
                                 (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
               (coe
                  MAlonzo.Code.Algebra.d2292 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0 v1
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)))))
               (coe
                  MAlonzo.Code.Algebra.d2288 v0
                  (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                  (coe
                     MAlonzo.Code.Algebra.d2292 v0
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
               (coe
                  (du1558
                     (coe v0) (coe v1)
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)))))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.d2292 v0
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2292 v0
                                 (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3)))))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0 v2
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                     (let v4 = MAlonzo.Code.Algebra.d2298 (coe v0) in
                      let v5 = MAlonzo.Code.Algebra.Structures.d1656 (coe v4) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du680
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v5)))
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe
                              MAlonzo.Code.Algebra.d2292 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe MAlonzo.Code.Algebra.d2288 v0 v2 v3)
                                 (coe
                                    MAlonzo.Code.Algebra.d2292 v0
                                    (coe MAlonzo.Code.Algebra.d2290 v0 v2 v3))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v2
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3))
                           (coe (du1782 (coe v0) (coe v2) (coe v3)))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v2
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v2
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Properties.DistributiveLattice.du288
                              (MAlonzo.Code.Algebra.du2352 (coe v0))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v2
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3))
                           (coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0 v2
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                       v3))
                                 (coe
                                    MAlonzo.Code.Algebra.d2290 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                       v3)
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                 (coe
                                    MAlonzo.Code.Algebra.Structures.d654
                                    (MAlonzo.Code.Algebra.Structures.d702
                                       (coe
                                          (MAlonzo.Code.Algebra.Structures.d1656
                                             (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0 v2
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                       v3)
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe
                                          MAlonzo.Code.Algebra.d2288 v0
                                          (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d646
                                       (MAlonzo.Code.Algebra.Structures.d702
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1656
                                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                    (coe
                                       MAlonzo.Code.Algebra.Structures.d646
                                       (MAlonzo.Code.Algebra.Structures.d702
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1656
                                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2) v3))
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.Core.d418
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.du952
                                                         (coe
                                                            (MAlonzo.Code.Algebra.du1028
                                                               (coe v4)))))))))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                             v3))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.d2290 v0
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                             v3)
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                                       (coe
                                          MAlonzo.Code.Algebra.Structures.d650
                                          (MAlonzo.Code.Algebra.Structures.d702
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d1656
                                                   (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                             (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                          (coe
                                             MAlonzo.Code.Algebra.d2288 v0
                                             (coe
                                                MAlonzo.Code.Algebra.d2288 v0
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                                (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                             v3))
                                       (let v4
                                              = MAlonzo.Code.Relation.Binary.Core.d414
                                                  (coe
                                                     (MAlonzo.Code.Relation.Binary.d144
                                                        (let v4
                                                               = MAlonzo.Code.Algebra.du2352
                                                                   (coe v0) in
                                                         coe
                                                           (MAlonzo.Code.Algebra.du952
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.du1028
                                                                    (coe v4))))))) in
                                        let v5
                                              = coe
                                                  MAlonzo.Code.Algebra.d2290 v0
                                                  (coe
                                                     MAlonzo.Code.Algebra.d2288 v0
                                                     (coe
                                                        MAlonzo.Code.Algebra.d2288 v0
                                                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                                     v3)
                                                  (coe
                                                     MAlonzo.Code.Algebra.d2288 v0
                                                     (coe
                                                        MAlonzo.Code.Algebra.d2288 v0
                                                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                                     (coe MAlonzo.Code.Algebra.d2292 v0 v3)) in
                                        coe
                                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                             (coe v4 v5))))))))))))))
name1786 = "Algebra.Properties.BooleanAlgebra.XorRing._.lem₅"
d1786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1786 v0 v1 v2 v3 v4 v5 v6 v7 = du1786 v2 v5 v6 v7
du1786 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1786 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Setoid.du64
               (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                coe
                  (MAlonzo.Code.Algebra.du952
                     (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                        v3)
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                        v3))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
               (coe
                  MAlonzo.Code.Algebra.d2290 v0
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.d2290 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0 v1
                           (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
               (coe
                  MAlonzo.Code.Algebra.Structures.d652
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0 v1
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                        (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                     v3)
                  (coe
                     MAlonzo.Code.Algebra.d2288 v0
                     (coe
                        MAlonzo.Code.Algebra.d2288 v0
                        (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                     (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                  coe
                                    (MAlonzo.Code.Algebra.du952
                                       (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              v3))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              v3)
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                           (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                     (coe
                        MAlonzo.Code.Algebra.d2290 v0
                        (coe
                           MAlonzo.Code.Algebra.d2288 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                           v3)
                        (coe
                           MAlonzo.Code.Algebra.d2290 v0
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0 v1
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                     (let v4
                            = MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))) in
                      coe
                        (MAlonzo.Code.Algebra.Structures.du676
                           (coe (MAlonzo.Code.Algebra.Structures.d702 (coe v4)))
                           (coe
                              MAlonzo.Code.Algebra.d2288 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                              (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 v3))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d650
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 v3))))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                        coe
                                          (MAlonzo.Code.Algebra.du952
                                             (coe (MAlonzo.Code.Algebra.du1028 (coe v4)))))))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                    v3)
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.d2290 v0
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2290 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0 v1
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe
                                       MAlonzo.Code.Algebra.d2288 v0
                                       (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v3))))
                           (coe
                              MAlonzo.Code.Algebra.Structures.d652
                              (MAlonzo.Code.Algebra.Structures.d702
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d1656
                                       (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 v3)
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0 v1
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                              (coe
                                 MAlonzo.Code.Algebra.d2288 v0
                                 (coe
                                    MAlonzo.Code.Algebra.d2288 v0
                                    (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                 (coe MAlonzo.Code.Algebra.d2292 v0 v3)))
                           (let v4
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v4 = MAlonzo.Code.Algebra.du2352 (coe v0) in
                                             coe
                                               (MAlonzo.Code.Algebra.du952
                                                  (coe
                                                     (MAlonzo.Code.Algebra.du1028 (coe v4))))))) in
                            let v5
                                  = coe
                                      MAlonzo.Code.Algebra.d2290 v0
                                      (coe
                                         MAlonzo.Code.Algebra.d2288 v0
                                         (coe
                                            MAlonzo.Code.Algebra.d2288 v0
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v1)
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                         v3)
                                      (coe
                                         MAlonzo.Code.Algebra.d2290 v0
                                         (coe
                                            MAlonzo.Code.Algebra.d2288 v0
                                            (coe
                                               MAlonzo.Code.Algebra.d2288 v0 v1
                                               (coe MAlonzo.Code.Algebra.d2292 v0 v2))
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3))
                                         (coe
                                            MAlonzo.Code.Algebra.d2288 v0
                                            (coe
                                               MAlonzo.Code.Algebra.d2288 v0
                                               (coe MAlonzo.Code.Algebra.d2292 v0 v1) v2)
                                            (coe MAlonzo.Code.Algebra.d2292 v0 v3))) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v4 v5))))))))))
name1788 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-isMagma"
d1788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84
d1788 v0 v1 v2 v3 v4 = du1788 v2 v3 v4
du1788 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T84
du1788 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe
            (MAlonzo.Code.Algebra.Structures.d642
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0)))))))))
         (coe (du1642 (coe v0) (coe v1) (coe v2))))
name1790
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-isSemigroup"
d1790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T118
d1790 v0 v1 v2 v3 v4 = du1790 v2 v3 v4
du1790 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T118
du1790 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C781
         (coe (du1788 (coe v0) (coe v1) (coe v2)))
         (coe (du1762 (coe v0) (coe v1) (coe v2))))
name1792 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isMonoid"
d1792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T268
d1792 v0 v1 v2 v3 v4 = du1792 v2 v3 v4
du1792 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T268
du1792 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C1873
         (coe (du1790 (coe v0) (coe v1) (coe v2)))
         (coe (du1712 (coe v0) (coe v1) (coe v2))))
name1794 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isGroup"
d1794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T470
d1794 v0 v1 v2 v3 v4 = du1794 v2 v3 v4
du1794 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T470
du1794 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C3683
         (coe (du1792 (coe v0) (coe v1) (coe v2)))
         (coe (du1720 (coe v0) (coe v1) (coe v2))) (coe (\ v3 v4 v5 -> v5)))
name1796
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-⊥-isAbelianGroup"
d1796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T550
d1796 v0 v1 v2 v3 v4 = du1796 v2 v3 v4
du1796 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T550
du1796 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C4861
         (coe (du1794 (coe v0) (coe v1) (coe v2)))
         (coe (du1656 (coe v0) (coe v1) (coe v2))))
name1798 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isRing"
d1798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1374
d1798 v0 v1 v2 v3 v4 = du1798 v2 v3 v4
du1798 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1374
du1798 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C14251
         (coe (du1796 (coe v0) (coe v1) (coe v2))) (coe (du1518 (coe v0)))
         (coe (du1742 (coe v0) (coe v1) (coe v2))))
name1800
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-isCommutativeRing"
d1800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1502
d1800 v0 v1 v2 v3 v4 = du1800 v2 v3 v4
du1800 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1502
du1800 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.C16389
         (coe (du1798 (coe v0) (coe v1) (coe v2)))
         (coe
            (MAlonzo.Code.Algebra.Structures.d650
               (coe
                  (MAlonzo.Code.Algebra.Structures.d702
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1656
                           (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))))
name1802
  = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-∧-commutativeRing"
d1802 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.T2066
d1802 v0 v1 v2 v3 v4 = du1802 v2 v3 v4
du1802 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.T2066
du1802 v0 v1 v2
  = coe
      (\ v3 v4 v5 v6 v7 v8 v9 v10 ->
         MAlonzo.Code.Algebra.C8269 v5 v6 v7 v8 v9 v10)
      erased erased v1 (MAlonzo.Code.Algebra.d2290 (coe v0)) (\ v3 -> v3)
      (MAlonzo.Code.Algebra.d2296 (coe v0))
      (MAlonzo.Code.Algebra.d2294 (coe v0))
      (du1800 (coe v0) (coe v1) (coe v2))
name1804 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribˡ"
d1804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1804 v0 v1 v2 v3 v4 = du1804 v2 v3 v4
du1804 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1804 v0 v1 v2 = coe (du1666 (coe v0) (coe v1) (coe v2))
name1806 = "Algebra.Properties.BooleanAlgebra.XorRing.⊕-¬-distribʳ"
d1806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d1806 v0 v1 v2 v3 v4 = du1806 v2 v3 v4
du1806 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1806 v0 v1 v2 = coe (du1690 (coe v0) (coe v1) (coe v2))
name1808
  = "Algebra.Properties.BooleanAlgebra.XorRing.isCommutativeRing"
d1808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1502
d1808 v0 v1 v2 v3 v4 = du1808 v2 v3 v4
du1808 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T1502
du1808 v0 v1 v2 = coe (du1800 (coe v0) (coe v1) (coe v2))
name1810
  = "Algebra.Properties.BooleanAlgebra.XorRing.commutativeRing"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.T2066
d1810 v0 v1 v2 v3 v4 = du1810 v2 v3 v4
du1810 ::
  MAlonzo.Code.Algebra.T2262 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.T2066
du1810 v0 v1 v2 = coe (du1802 (coe v0) (coe v1) (coe v2))
name1812 = "Algebra.Properties.BooleanAlgebra._⊕_"
d1812 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1812 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.d2290 v0
      (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
      (coe
         MAlonzo.Code.Algebra.d2292 v0
         (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))
name1824
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.commutativeRing"
d1824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T2066
d1824 v0 v1 v2 = du1824 v2
du1824 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T2066
du1824 v0
  = coe
      (du1810
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1826
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.isCommutativeRing"
d1826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1502
d1826 v0 v1 v2 = du1826 v2
du1826 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1502
du1826 v0
  = coe
      (du1808
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1828
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribʳ-⊕"
d1828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1828 v0 v1 v2 = du1828 v2
du1828 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1828 v0
  = coe
      (du1690
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1830
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.¬-distribˡ-⊕"
d1830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1830 v0 v1 v2 = du1830 v2
du1830 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1830 v0
  = coe
      (du1666
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1832
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distrib-⊕"
d1832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1832 v0 v1 v2 = du1832 v2
du1832 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1832 v0
  = coe
      (du1742
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1834
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribʳ-⊕"
d1834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1834 v0 v1 v2 = du1834 v2
du1834 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1834 v0
  = coe
      (du1740
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1836
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.∧-distribˡ-⊕"
d1836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1836 v0 v1 v2 = du1836 v2
du1836 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1836 v0
  = coe
      (du1722
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1838
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-annihilates-¬"
d1838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1838 v0 v1 v2 = du1838 v2
du1838 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1838 v0
  = coe
      (du1700
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1840
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-assoc"
d1840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1840 v0 v1 v2 = du1840 v2
du1840 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1840 v0
  = coe
      (du1762
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1842
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-comm"
d1842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1842 v0 v1 v2 = du1842 v2
du1842 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1842 v0
  = coe
      (du1656
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1844
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-cong"
d1844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1844 v0 v1 v2 = du1844 v2
du1844 ::
  MAlonzo.Code.Algebra.T2262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1844 v0
  = coe
      (du1642
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1846
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identity"
d1846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1846 v0 v1 v2 = du1846 v2
du1846 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1846 v0
  = coe
      (du1712
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1848
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityʳ"
d1848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1848 v0 v1 v2 = du1848 v2
du1848 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1848 v0
  = coe
      (du1710
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1850
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-identityˡ"
d1850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1850 v0 v1 v2 = du1850 v2
du1850 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1850 v0
  = coe
      (du1706
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1852
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverse"
d1852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1852 v0 v1 v2 = du1852 v2
du1852 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1852 v0
  = coe
      (du1720
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1854
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseʳ"
d1854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1854 v0 v1 v2 = du1854 v2
du1854 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1854 v0
  = coe
      (du1718
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1856
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-inverseˡ"
d1856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
d1856 v0 v1 v2 = du1856 v2
du1856 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny
du1856 v0
  = coe
      (du1714
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1858
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isMagma"
d1858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T84
d1858 v0 v1 v2 = du1858 v2
du1858 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T84
du1858 v0
  = coe
      (du1788
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1860
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-isSemigroup"
d1860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T118
d1860 v0 v1 v2 = du1860 v2
du1860 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T118
du1860 v0
  = coe
      (du1790
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1862
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribʳ"
d1862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1862 v0 v1 v2 = du1862 v2
du1862 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1862 v0
  = coe
      (du1806
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1864
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-¬-distribˡ"
d1864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
d1864 v0 v1 v2 = du1864 v2
du1864 ::
  MAlonzo.Code.Algebra.T2262 -> AgdaAny -> AgdaAny -> AgdaAny
du1864 v0
  = coe
      (du1804
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1866
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-commutativeRing"
d1866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T2066
d1866 v0 v1 v2 = du1866 v2
du1866 :: MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.T2066
du1866 v0
  = coe
      (du1802
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1868
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isCommutativeRing"
d1868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1502
d1868 v0 v1 v2 = du1868 v2
du1868 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1502
du1868 v0
  = coe
      (du1800
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1870
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-∧-isRing"
d1870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1374
d1870 v0 v1 v2 = du1870 v2
du1870 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T1374
du1870 v0
  = coe
      (du1798
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1872
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isAbelianGroup"
d1872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T550
d1872 v0 v1 v2 = du1872 v2
du1872 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T550
du1872 v0
  = coe
      (du1796
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1874
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isGroup"
d1874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T470
d1874 v0 v1 v2 = du1874 v2
du1874 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T470
du1874 v0
  = coe
      (du1794
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1876
  = "Algebra.Properties.BooleanAlgebra.DefaultXorRing.⊕-⊥-isMonoid"
d1876 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T268
d1876 v0 v1 v2 = du1876 v2
du1876 ::
  MAlonzo.Code.Algebra.T2262 -> MAlonzo.Code.Algebra.Structures.T268
du1876 v0
  = coe
      (du1792
         (coe v0)
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Algebra.d2290 v0
                 (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                 (coe
                    MAlonzo.Code.Algebra.d2292 v0
                    (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d642
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d702
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d1656
                                (coe (MAlonzo.Code.Algebra.d2298 (coe v0))))))))
                 (coe
                    MAlonzo.Code.Algebra.d2290 v0
                    (coe MAlonzo.Code.Algebra.d2288 v0 v1 v2)
                    (coe
                       MAlonzo.Code.Algebra.d2292 v0
                       (coe MAlonzo.Code.Algebra.d2290 v0 v1 v2))))))
name1878 = "Algebra.Properties.BooleanAlgebra.¬⊥=⊤"
d1878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny
d1878 v0 v1 v2 = du1878 v2
du1878 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny
du1878 v0 = coe (du1546 (coe v0))
name1880 = "Algebra.Properties.BooleanAlgebra.¬⊤=⊥"
d1880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2262 -> AgdaAny
d1880 v0 v1 v2 = du1880 v2
du1880 :: MAlonzo.Code.Algebra.T2262 -> AgdaAny
du1880 v0 = coe (du1548 (coe v0))
