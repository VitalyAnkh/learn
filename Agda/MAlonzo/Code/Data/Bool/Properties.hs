{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Bool.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.BooleanAlgebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary

name8 = "Data.Bool.Properties._._Absorbs_"
d8 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d8 = erased
name10 = "Data.Bool.Properties._._DistributesOver_"
d10 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d10 = erased
name12 = "Data.Bool.Properties._._DistributesOverʳ_"
d12 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d12 = erased
name14 = "Data.Bool.Properties._._DistributesOverˡ_"
d14 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d14 = erased
name18 = "Data.Bool.Properties._.Absorptive"
d18 :: (Bool -> Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d18 = erased
name20 = "Data.Bool.Properties._.Associative"
d20 :: (Bool -> Bool -> Bool) -> ()
d20 = erased
name24 = "Data.Bool.Properties._.Commutative"
d24 :: (Bool -> Bool -> Bool) -> ()
d24 = erased
name32 = "Data.Bool.Properties._.Idempotent"
d32 :: (Bool -> Bool -> Bool) -> ()
d32 = erased
name36 = "Data.Bool.Properties._.Identity"
d36 :: Bool -> (Bool -> Bool -> Bool) -> ()
d36 = erased
name38 = "Data.Bool.Properties._.Inverse"
d38 :: Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d38 = erased
name40 = "Data.Bool.Properties._.Involutive"
d40 :: (Bool -> Bool) -> ()
d40 = erased
name48 = "Data.Bool.Properties._.LeftIdentity"
d48 :: Bool -> (Bool -> Bool -> Bool) -> ()
d48 = erased
name50 = "Data.Bool.Properties._.LeftInverse"
d50 :: Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d50 = erased
name52 = "Data.Bool.Properties._.LeftZero"
d52 :: Bool -> (Bool -> Bool -> Bool) -> ()
d52 = erased
name60 = "Data.Bool.Properties._.RightIdentity"
d60 :: Bool -> (Bool -> Bool -> Bool) -> ()
d60 = erased
name62 = "Data.Bool.Properties._.RightInverse"
d62 :: Bool -> (Bool -> Bool) -> (Bool -> Bool -> Bool) -> ()
d62 = erased
name64 = "Data.Bool.Properties._.RightZero"
d64 :: Bool -> (Bool -> Bool -> Bool) -> ()
d64 = erased
name66 = "Data.Bool.Properties._.Selective"
d66 :: (Bool -> Bool -> Bool) -> ()
d66 = erased
name68 = "Data.Bool.Properties._.Zero"
d68 :: Bool -> (Bool -> Bool -> Bool) -> ()
d68 = erased
name74 = "Data.Bool.Properties._.IsBand"
d74 a0 = ()
name76 = "Data.Bool.Properties._.IsBooleanAlgebra"
d76 a0 a1 a2 a3 a4 = ()
name80 = "Data.Bool.Properties._.IsCommutativeMonoid"
d80 a0 a1 = ()
name86 = "Data.Bool.Properties._.IsCommutativeSemiring"
d86 a0 a1 a2 a3 = ()
name90 = "Data.Bool.Properties._.IsDistributiveLattice"
d90 a0 a1 = ()
name94 = "Data.Bool.Properties._.IsIdempotentCommutativeMonoid"
d94 a0 a1 = ()
name96 = "Data.Bool.Properties._.IsLattice"
d96 a0 a1 = ()
name98 = "Data.Bool.Properties._.IsMagma"
d98 a0 = ()
name100 = "Data.Bool.Properties._.IsMonoid"
d100 a0 a1 = ()
name108 = "Data.Bool.Properties._.IsSemigroup"
d108 a0 = ()
name110 = "Data.Bool.Properties._.IsSemilattice"
d110 a0 = ()
name112 = "Data.Bool.Properties._.IsSemiring"
d112 a0 a1 a2 a3 = ()
name1342 = "Data.Bool.Properties._≟_"
d1342 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T32
d1342 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    (MAlonzo.Code.Relation.Nullary.C46
                       (coe v1) (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))
             else coe
                    (MAlonzo.Code.Relation.Nullary.C46
                       (coe v1) (coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased))
      else (if coe v1
              then coe
                     (MAlonzo.Code.Relation.Nullary.C46
                        (coe v0) (coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased))
              else coe
                     (MAlonzo.Code.Relation.Nullary.C46
                        (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                        (coe (MAlonzo.Code.Relation.Nullary.C22 erased))))
name1344 = "Data.Bool.Properties.≡-setoid"
d1344 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d1344 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du74
name1346 = "Data.Bool.Properties.≡-decSetoid"
d1346 :: MAlonzo.Code.Relation.Binary.Bundles.T86
d1346
  = coe
      (MAlonzo.Code.Relation.Binary.PropositionalEquality.du78
         (coe d1342))
name1348 = "Data.Bool.Properties.≤-reflexive"
d1348 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Bool.Base.T10
d1348 v0 v1 v2 = du1348
du1348 :: MAlonzo.Code.Data.Bool.Base.T10
du1348 = coe (\ v0 -> MAlonzo.Code.Data.Bool.Base.C16) erased
name1350 = "Data.Bool.Properties.≤-refl"
d1350 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1350 v0 = du1350
du1350 :: MAlonzo.Code.Data.Bool.Base.T10
du1350 = coe du1348
name1352 = "Data.Bool.Properties.≤-trans"
d1352 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T10
d1352 v0 v1 v2 v3 v4 = du1352 v3 v4
du1352 ::
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T10
du1352 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Bool.Base.C12 -> coe (seq (coe v1) (coe v0))
      MAlonzo.Code.Data.Bool.Base.C16 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1356 = "Data.Bool.Properties.≤-antisym"
d1356 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1356 = erased
name1358 = "Data.Bool.Properties.≤-minimum"
d1358 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1358 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C12
      else coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.C16) erased
name1360 = "Data.Bool.Properties.≤-maximum"
d1360 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1360 v0
  = if coe v0
      then coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.C16) erased
      else coe MAlonzo.Code.Data.Bool.Base.C12
name1362 = "Data.Bool.Properties.≤-total"
d1362 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1362 v0 v1
  = if coe v0
      then coe (MAlonzo.Code.Data.Sum.Base.C42 (coe (d1360 (coe v1))))
      else coe (MAlonzo.Code.Data.Sum.Base.C38 (coe (d1358 (coe v1))))
name1368 = "Data.Bool.Properties._≤?_"
d1368 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T32
d1368 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    (MAlonzo.Code.Relation.Nullary.C46
                       (coe v1)
                       (coe
                          (MAlonzo.Code.Relation.Nullary.C22
                             (coe (\ v2 -> MAlonzo.Code.Data.Bool.Base.C16) erased))))
             else coe
                    (MAlonzo.Code.Relation.Nullary.C46
                       (coe v1) (coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased))
      else coe
             (MAlonzo.Code.Relation.Nullary.C46
                (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                (coe (MAlonzo.Code.Relation.Nullary.C22 (coe (d1358 (coe v1))))))
name1372 = "Data.Bool.Properties.≤-irrelevant"
d1372 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1372 = erased
name1374 = "Data.Bool.Properties.≤-isPreorder"
d1374 :: MAlonzo.Code.Relation.Binary.Structures.T70
d1374
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C753
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         (coe d1348) (coe d1352))
name1376 = "Data.Bool.Properties.≤-isPartialOrder"
d1376 :: MAlonzo.Code.Relation.Binary.Structures.T118
d1376
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C1589 (coe d1374) erased)
name1378 = "Data.Bool.Properties.≤-isTotalOrder"
d1378 :: MAlonzo.Code.Relation.Binary.Structures.T340
d1378
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C3913
         (coe d1376) (coe d1362))
name1380 = "Data.Bool.Properties.≤-isDecTotalOrder"
d1380 :: MAlonzo.Code.Relation.Binary.Structures.T388
d1380
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C4345
         (coe d1378) (coe d1342) (coe d1368))
name1382 = "Data.Bool.Properties.≤-poset"
d1382 :: MAlonzo.Code.Relation.Binary.Bundles.T186
d1382
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C807 v3)
      erased erased erased d1376
name1384 = "Data.Bool.Properties.≤-preorder"
d1384 :: MAlonzo.Code.Relation.Binary.Bundles.T128
d1384
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C563 v3)
      erased erased erased d1374
name1386 = "Data.Bool.Properties.≤-totalOrder"
d1386 :: MAlonzo.Code.Relation.Binary.Bundles.T520
d1386
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C2427 v3)
      erased erased erased d1378
name1388 = "Data.Bool.Properties.≤-decTotalOrder"
d1388 :: MAlonzo.Code.Relation.Binary.Bundles.T592
d1388
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C2791 v3)
      erased erased erased d1380
name1390 = "Data.Bool.Properties.<-irrefl"
d1390 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d1390 = erased
name1392 = "Data.Bool.Properties.<-asym"
d1392 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d1392 = erased
name1394 = "Data.Bool.Properties.<-trans"
d1394 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Bool.Base.T18
d1394 = erased
name1396 = "Data.Bool.Properties.<-transʳ"
d1396 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Bool.Base.T18
d1396 = erased
name1398 = "Data.Bool.Properties.<-transˡ"
d1398 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T18
d1398 = erased
name1400 = "Data.Bool.Properties.<-cmp"
d1400 ::
  Bool -> Bool -> MAlonzo.Code.Relation.Binary.Definitions.T136
d1400 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Definitions.C158 v3)
                    erased erased erased
             else coe
                    (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Definitions.C166 v4)
                    erased erased erased
      else (if coe v1
              then coe
                     (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Definitions.C150 v2)
                     erased erased erased
              else coe
                     (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Definitions.C158 v3)
                     erased erased erased)
name1402 = "Data.Bool.Properties._<?_"
d1402 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T32
d1402 v0 v1
  = if coe v0
      then coe
             (MAlonzo.Code.Relation.Nullary.C46
                (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                (coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased))
      else (if coe v1
              then coe
                     (MAlonzo.Code.Relation.Nullary.C46
                        (coe v1) (coe (MAlonzo.Code.Relation.Nullary.C22 erased)))
              else coe
                     (MAlonzo.Code.Relation.Nullary.C46
                        (coe v1) (coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased)))
name1404 = "Data.Bool.Properties.<-resp₂-≡"
d1404 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1404
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
name1410 = "Data.Bool.Properties.<-irrelevant"
d1410 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1410 = erased
name1412 = "Data.Bool.Properties.<-isStrictPartialOrder"
d1412 :: MAlonzo.Code.Relation.Binary.Structures.T222
d1412
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Structures.C2525 v0 v2 v3)
      MAlonzo.Code.Relation.Binary.PropositionalEquality.du66 erased
      erased d1404
name1414 = "Data.Bool.Properties.<-isStrictTotalOrder"
d1414 :: MAlonzo.Code.Relation.Binary.Structures.T452
d1414
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C4945
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased (coe d1400))
name1416 = "Data.Bool.Properties.<-strictPartialOrder"
d1416 :: MAlonzo.Code.Relation.Binary.Bundles.T358
d1416
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C1663 v3)
      erased erased erased d1412
name1418 = "Data.Bool.Properties.<-strictTotalOrder"
d1418 :: MAlonzo.Code.Relation.Binary.Bundles.T706
d1418
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C3355 v3)
      erased erased erased d1414
name1420 = "Data.Bool.Properties.∨-assoc"
d1420 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1420 = erased
name1430 = "Data.Bool.Properties.∨-comm"
d1430 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1430 = erased
name1432 = "Data.Bool.Properties.∨-identityˡ"
d1432 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1432 = erased
name1434 = "Data.Bool.Properties.∨-identityʳ"
d1434 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1434 = erased
name1436 = "Data.Bool.Properties.∨-identity"
d1436 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1436 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1438 = "Data.Bool.Properties.∨-zeroˡ"
d1438 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1438 = erased
name1440 = "Data.Bool.Properties.∨-zeroʳ"
d1440 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1440 = erased
name1442 = "Data.Bool.Properties.∨-zero"
d1442 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1442 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1444 = "Data.Bool.Properties.∨-inverseˡ"
d1444 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1444 = erased
name1446 = "Data.Bool.Properties.∨-inverseʳ"
d1446 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1446 = erased
name1450 = "Data.Bool.Properties.∨-inverse"
d1450 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1450 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1452 = "Data.Bool.Properties.∨-idem"
d1452 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1452 = erased
name1454 = "Data.Bool.Properties.∨-sel"
d1454 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1454 v0 v1 = du1454 v0
du1454 :: Bool -> MAlonzo.Code.Data.Sum.Base.T30
du1454 v0
  = if coe v0
      then coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      else coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
name1460 = "Data.Bool.Properties.∨-isMagma"
d1460 :: MAlonzo.Code.Algebra.Structures.T78
d1460
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased)
name1462 = "Data.Bool.Properties.∨-magma"
d1462 :: MAlonzo.Code.Algebra.Bundles.T30
d1462
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C77 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d30 d1460
name1464 = "Data.Bool.Properties.∨-isSemigroup"
d1464 :: MAlonzo.Code.Algebra.Structures.T114
d1464
  = coe (MAlonzo.Code.Algebra.Structures.C773 (coe d1460) erased)
name1466 = "Data.Bool.Properties.∨-semigroup"
d1466 :: MAlonzo.Code.Algebra.Bundles.T80
d1466
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C291 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d30 d1464
name1468 = "Data.Bool.Properties.∨-isBand"
d1468 :: MAlonzo.Code.Algebra.Structures.T150
d1468
  = coe (MAlonzo.Code.Algebra.Structures.C1025 (coe d1464) erased)
name1470 = "Data.Bool.Properties.∨-band"
d1470 :: MAlonzo.Code.Algebra.Bundles.T138
d1470
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C527 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d30 d1468
name1472 = "Data.Bool.Properties.∨-isSemilattice"
d1472 :: MAlonzo.Code.Algebra.Structures.T230
d1472
  = coe (MAlonzo.Code.Algebra.Structures.C1617 (coe d1468) erased)
name1474 = "Data.Bool.Properties.∨-semilattice"
d1474 :: MAlonzo.Code.Algebra.Bundles.T266
d1474
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C1051 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d30 d1472
name1476 = "Data.Bool.Properties.∨-isMonoid"
d1476 :: MAlonzo.Code.Algebra.Structures.T312
d1476
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209 (coe d1464) (coe d1436))
name1478 = "Data.Bool.Properties.∨-isCommutativeMonoid"
d1478 :: MAlonzo.Code.Algebra.Structures.T360
d1478
  = coe (MAlonzo.Code.Algebra.Structures.C2759 (coe d1476) erased)
name1480 = "Data.Bool.Properties.∨-commutativeMonoid"
d1480 :: MAlonzo.Code.Algebra.Bundles.T496
d1480
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C2037 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1478
name1482 = "Data.Bool.Properties.∨-isIdempotentCommutativeMonoid"
d1482 :: MAlonzo.Code.Algebra.Structures.T414
d1482
  = coe (MAlonzo.Code.Algebra.Structures.C3283 (coe d1478) erased)
name1484 = "Data.Bool.Properties.∨-idempotentCommutativeMonoid"
d1484 :: MAlonzo.Code.Algebra.Bundles.T578
d1484
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C2365 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1482
name1486 = "Data.Bool.Properties.∧-assoc"
d1486 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1486 = erased
name1496 = "Data.Bool.Properties.∧-comm"
d1496 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1496 = erased
name1498 = "Data.Bool.Properties.∧-identityˡ"
d1498 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1498 = erased
name1500 = "Data.Bool.Properties.∧-identityʳ"
d1500 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1500 = erased
name1502 = "Data.Bool.Properties.∧-identity"
d1502 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1502 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1504 = "Data.Bool.Properties.∧-zeroˡ"
d1504 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1504 = erased
name1506 = "Data.Bool.Properties.∧-zeroʳ"
d1506 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1506 = erased
name1508 = "Data.Bool.Properties.∧-zero"
d1508 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1508 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1510 = "Data.Bool.Properties.∧-inverseˡ"
d1510 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1510 = erased
name1512 = "Data.Bool.Properties.∧-inverseʳ"
d1512 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1512 = erased
name1516 = "Data.Bool.Properties.∧-inverse"
d1516 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1516 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1518 = "Data.Bool.Properties.∧-idem"
d1518 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1518 = erased
name1520 = "Data.Bool.Properties.∧-sel"
d1520 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1520 v0 v1 = du1520 v0
du1520 :: Bool -> MAlonzo.Code.Data.Sum.Base.T30
du1520 v0
  = if coe v0
      then coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
      else coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
name1526 = "Data.Bool.Properties.∧-distribˡ-∨"
d1526 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1526 = erased
name1536 = "Data.Bool.Properties.∧-distribʳ-∨"
d1536 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1536 = erased
name1544 = "Data.Bool.Properties.∧-distrib-∨"
d1544 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1544 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1546 = "Data.Bool.Properties.∨-distribˡ-∧"
d1546 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1546 = erased
name1556 = "Data.Bool.Properties.∨-distribʳ-∧"
d1556 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1556 = erased
name1564 = "Data.Bool.Properties.∨-distrib-∧"
d1564 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1564 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1566 = "Data.Bool.Properties.∧-abs-∨"
d1566 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1566 = erased
name1572 = "Data.Bool.Properties.∨-abs-∧"
d1572 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1572 = erased
name1578 = "Data.Bool.Properties.∨-∧-absorptive"
d1578 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1578 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1580 = "Data.Bool.Properties.∧-isMagma"
d1580 :: MAlonzo.Code.Algebra.Structures.T78
d1580
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased)
name1582 = "Data.Bool.Properties.∧-magma"
d1582 :: MAlonzo.Code.Algebra.Bundles.T30
d1582
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C77 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d24 d1580
name1584 = "Data.Bool.Properties.∧-isSemigroup"
d1584 :: MAlonzo.Code.Algebra.Structures.T114
d1584
  = coe (MAlonzo.Code.Algebra.Structures.C773 (coe d1580) erased)
name1586 = "Data.Bool.Properties.∧-semigroup"
d1586 :: MAlonzo.Code.Algebra.Bundles.T80
d1586
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C291 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d24 d1584
name1588 = "Data.Bool.Properties.∧-isBand"
d1588 :: MAlonzo.Code.Algebra.Structures.T150
d1588
  = coe (MAlonzo.Code.Algebra.Structures.C1025 (coe d1584) erased)
name1590 = "Data.Bool.Properties.∧-band"
d1590 :: MAlonzo.Code.Algebra.Bundles.T138
d1590
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C527 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d24 d1588
name1592 = "Data.Bool.Properties.∧-isSemilattice"
d1592 :: MAlonzo.Code.Algebra.Structures.T230
d1592
  = coe (MAlonzo.Code.Algebra.Structures.C1617 (coe d1588) erased)
name1594 = "Data.Bool.Properties.∧-semilattice"
d1594 :: MAlonzo.Code.Algebra.Bundles.T266
d1594
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C1051 v2 v3) erased
      erased MAlonzo.Code.Data.Bool.Base.d24 d1592
name1596 = "Data.Bool.Properties.∧-isMonoid"
d1596 :: MAlonzo.Code.Algebra.Structures.T312
d1596
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209 (coe d1584) (coe d1502))
name1598 = "Data.Bool.Properties.∧-isCommutativeMonoid"
d1598 :: MAlonzo.Code.Algebra.Structures.T360
d1598
  = coe (MAlonzo.Code.Algebra.Structures.C2759 (coe d1596) erased)
name1600 = "Data.Bool.Properties.∧-commutativeMonoid"
d1600 :: MAlonzo.Code.Algebra.Bundles.T496
d1600
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C2037 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Agda.Builtin.Bool.C10 d1598
name1602 = "Data.Bool.Properties.∧-isIdempotentCommutativeMonoid"
d1602 :: MAlonzo.Code.Algebra.Structures.T414
d1602
  = coe (MAlonzo.Code.Algebra.Structures.C3283 (coe d1598) erased)
name1604 = "Data.Bool.Properties.∧-idempotentCommutativeMonoid"
d1604 :: MAlonzo.Code.Algebra.Bundles.T578
d1604
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C2365 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Agda.Builtin.Bool.C10 d1602
name1606 = "Data.Bool.Properties.∨-∧-isSemiring"
d1606 :: MAlonzo.Code.Algebra.Structures.T1174
d1606
  = coe
      (MAlonzo.Code.Algebra.Structures.C11149
         (coe
            (MAlonzo.Code.Algebra.Structures.C9969
               (coe d1478) (coe d1596) (coe d1544)))
         (coe d1508))
name1608 = "Data.Bool.Properties.∨-∧-isCommutativeSemiring"
d1608 :: MAlonzo.Code.Algebra.Structures.T1278
d1608
  = coe (MAlonzo.Code.Algebra.Structures.C12345 (coe d1606) erased)
name1610 = "Data.Bool.Properties.∨-∧-commutativeSemiring"
d1610 :: MAlonzo.Code.Algebra.Bundles.T1816
d1610
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.Bundles.C7235 v2 v3 v4 v5 v6)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 MAlonzo.Code.Agda.Builtin.Bool.C8
      MAlonzo.Code.Agda.Builtin.Bool.C10 d1608
name1612 = "Data.Bool.Properties.∧-∨-isSemiring"
d1612 :: MAlonzo.Code.Algebra.Structures.T1174
d1612
  = coe
      (MAlonzo.Code.Algebra.Structures.C11149
         (coe
            (MAlonzo.Code.Algebra.Structures.C9969
               (coe d1598) (coe d1476) (coe d1564)))
         (coe d1442))
name1614 = "Data.Bool.Properties.∧-∨-isCommutativeSemiring"
d1614 :: MAlonzo.Code.Algebra.Structures.T1278
d1614
  = coe (MAlonzo.Code.Algebra.Structures.C12345 (coe d1612) erased)
name1616 = "Data.Bool.Properties.∧-∨-commutativeSemiring"
d1616 :: MAlonzo.Code.Algebra.Bundles.T1816
d1616
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.Bundles.C7235 v2 v3 v4 v5 v6)
      erased erased MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Data.Bool.Base.d30 MAlonzo.Code.Agda.Builtin.Bool.C10
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1614
name1618 = "Data.Bool.Properties.∨-∧-isLattice"
d1618 :: MAlonzo.Code.Algebra.Structures.T684
d1618
  = coe
      (MAlonzo.Code.Algebra.Structures.C5979
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased erased erased erased erased erased (coe d1578))
name1620 = "Data.Bool.Properties.∨-∧-lattice"
d1620 :: MAlonzo.Code.Algebra.Bundles.T984
d1620
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C3887 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 d1618
name1622 = "Data.Bool.Properties.∨-∧-isDistributiveLattice"
d1622 :: MAlonzo.Code.Algebra.Structures.T758
d1622
  = coe (MAlonzo.Code.Algebra.Structures.C7119 (coe d1618) erased)
name1624 = "Data.Bool.Properties.∨-∧-distributiveLattice"
d1624 :: MAlonzo.Code.Algebra.Bundles.T1056
d1624
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C4191 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 d1622
name1626 = "Data.Bool.Properties.∨-∧-isBooleanAlgebra"
d1626 :: MAlonzo.Code.Algebra.Structures.T1662
d1626
  = coe
      (MAlonzo.Code.Algebra.Structures.C17625
         (coe d1622) erased erased erased)
name1628 = "Data.Bool.Properties.∨-∧-booleanAlgebra"
d1628 :: MAlonzo.Code.Algebra.Bundles.T2400
d1628
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 v7 ->
         MAlonzo.Code.Algebra.Bundles.C9655 v2 v3 v4 v5 v6 v7)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 MAlonzo.Code.Data.Bool.Base.d22
      MAlonzo.Code.Agda.Builtin.Bool.C10
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1626
name1634 = "Data.Bool.Properties.xor-is-ok"
d1634 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1634 = erased
name1640 = "Data.Bool.Properties.xor-∧-commutativeRing"
d1640 :: MAlonzo.Code.Algebra.Bundles.T2200
d1640
  = coe
      (MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du1910
         (coe d1628) (coe MAlonzo.Code.Data.Bool.Base.d36) erased)
name1972 = "Data.Bool.Properties.not-involutive"
d1972 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1972 = erased
name1978 = "Data.Bool.Properties.not-injective"
d1978 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1978 = erased
name1988 = "Data.Bool.Properties.not-¬"
d1988 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1988 = erased
name1994 = "Data.Bool.Properties.¬-not"
d1994 ::
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1994 = erased
name2006 = "Data.Bool.Properties.⇔→≡"
d2006 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2006 = erased
name2022 = "Data.Bool.Properties.T-≡"
d2022 :: Bool -> MAlonzo.Code.Function.Equivalence.T16
d2022 v0
  = coe
      (seq
         (coe v0)
         (coe (MAlonzo.Code.Function.Equivalence.du56 erased erased)))
name2026 = "Data.Bool.Properties.T-not-≡"
d2026 :: Bool -> MAlonzo.Code.Function.Equivalence.T16
d2026 v0
  = coe
      (seq
         (coe v0)
         (coe (MAlonzo.Code.Function.Equivalence.du56 erased erased)))
name2032 = "Data.Bool.Properties.T-∧"
d2032 :: Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T16
d2032 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    (MAlonzo.Code.Function.Equivalence.du56
                       (coe (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased))
                       erased)
             else coe
                    (MAlonzo.Code.Function.Equivalence.du56
                       erased (coe MAlonzo.Code.Agda.Builtin.Sigma.d30))
      else coe
             (MAlonzo.Code.Function.Equivalence.du56
                erased (coe MAlonzo.Code.Agda.Builtin.Sigma.d28))
name2038 = "Data.Bool.Properties.T-∨"
d2038 :: Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T16
d2038 v0 v1
  = if coe v0
      then coe
             (MAlonzo.Code.Function.Equivalence.du56
                (coe MAlonzo.Code.Data.Sum.Base.C38) erased)
      else (if coe v1
              then coe
                     (MAlonzo.Code.Function.Equivalence.du56
                        (coe MAlonzo.Code.Data.Sum.Base.C42) erased)
              else coe
                     (MAlonzo.Code.Function.Equivalence.du56
                        (coe MAlonzo.Code.Data.Sum.Base.C38)
                        (coe
                           (MAlonzo.Code.Data.Sum.Base.du52
                              (coe (\ v2 -> v2)) (coe (\ v2 -> v2))))))
name2040 = "Data.Bool.Properties.T-irrelevant"
d2040 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2040 = erased
name2042 = "Data.Bool.Properties.T?"
d2042 :: Bool -> MAlonzo.Code.Relation.Nullary.T32
d2042 v0
  = coe
      (MAlonzo.Code.Relation.Nullary.C46
         (coe v0)
         (if coe v0
            then coe (MAlonzo.Code.Relation.Nullary.C22 erased)
            else coe (\ v1 -> MAlonzo.Code.Relation.Nullary.C26) erased))
name2048 = "Data.Bool.Properties.T?-diag"
d2048 :: Bool -> AgdaAny -> AgdaAny
d2048 = erased
name2058 = "Data.Bool.Properties.push-function-into-if"
d2058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2058 = erased
name2060 = "Data.Bool.Properties.∧-∨-distˡ"
d2060 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2060 = erased
name2062 = "Data.Bool.Properties.∧-∨-distʳ"
d2062 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2062 = erased
name2064 = "Data.Bool.Properties.distrib-∧-∨"
d2064 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2064 = coe d1544
name2066 = "Data.Bool.Properties.∨-∧-distˡ"
d2066 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2066 = erased
name2068 = "Data.Bool.Properties.∨-∧-distʳ"
d2068 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2068 = erased
name2070 = "Data.Bool.Properties.∨-∧-distrib"
d2070 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2070 = coe d1564
name2072 = "Data.Bool.Properties.∨-∧-abs"
d2072 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2072 = erased
name2074 = "Data.Bool.Properties.∧-∨-abs"
d2074 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2074 = erased
name2076 = "Data.Bool.Properties.not-∧-inverseˡ"
d2076 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2076 = erased
name2078 = "Data.Bool.Properties.not-∧-inverseʳ"
d2078 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2078 = erased
name2080 = "Data.Bool.Properties.not-∧-inverse"
d2080 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2080 = coe d1516
name2082 = "Data.Bool.Properties.not-∨-inverseˡ"
d2082 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2082 = erased
name2084 = "Data.Bool.Properties.not-∨-inverseʳ"
d2084 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2084 = erased
name2086 = "Data.Bool.Properties.not-∨-inverse"
d2086 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2086 = coe d1450
name2088 = "Data.Bool.Properties.isCommutativeSemiring-∨-∧"
d2088 :: MAlonzo.Code.Algebra.Structures.T1278
d2088 = coe d1608
name2090 = "Data.Bool.Properties.commutativeSemiring-∨-∧"
d2090 :: MAlonzo.Code.Algebra.Bundles.T1816
d2090 = coe d1610
name2092 = "Data.Bool.Properties.isCommutativeSemiring-∧-∨"
d2092 :: MAlonzo.Code.Algebra.Structures.T1278
d2092 = coe d1614
name2094 = "Data.Bool.Properties.commutativeSemiring-∧-∨"
d2094 :: MAlonzo.Code.Algebra.Bundles.T1816
d2094 = coe d1616
name2096 = "Data.Bool.Properties.isBooleanAlgebra"
d2096 :: MAlonzo.Code.Algebra.Structures.T1662
d2096 = coe d1626
name2098 = "Data.Bool.Properties.booleanAlgebra"
d2098 :: MAlonzo.Code.Algebra.Bundles.T2400
d2098 = coe d1628
name2100 = "Data.Bool.Properties.commutativeRing-xor-∧"
d2100 :: MAlonzo.Code.Algebra.Bundles.T2200
d2100 = coe d1640
name2102 = "Data.Bool.Properties.proof-irrelevance"
d2102 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2102 = erased
name2104 = "Data.Bool.Properties.T-irrelevance"
d2104 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2104 = erased
name4781 = "Data.Bool.Properties..absurdlambda"
d4781 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4781 = erased
name4799 = "Data.Bool.Properties..absurdlambda"
d4799 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4799 = erased
name5627 = "Data.Bool.Properties..absurdlambda"
d5627 ::
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Empty.T4
d5627 = erased
name6979 = "Data.Bool.Properties..absurdlambda"
d6979 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6979 = erased
name6983 = "Data.Bool.Properties..absurdlambda"
d6983 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6983 = erased
name7001 = "Data.Bool.Properties..absurdlambda"
d7001 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d7001 = erased
name7005 = "Data.Bool.Properties..absurdlambda"
d7005 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d7005 = erased
name7023 = "Data.Bool.Properties..absurdlambda"
d7023 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d7023 = erased
name7027 = "Data.Bool.Properties..absurdlambda"
d7027 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d7027 = erased
name7045 = "Data.Bool.Properties..absurdlambda"
d7045 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d7045 = erased
name7049 = "Data.Bool.Properties..absurdlambda"
d7049 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d7049 = erased
name7079 = "Data.Bool.Properties..absurdlambda"
d7079 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d7079 = erased
name7127 = "Data.Bool.Properties..absurdlambda"
d7127 ::
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d7127 = erased
name9679 = "Data.Bool.Properties..absurdlambda"
d9679 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d9679 = erased
name9683 = "Data.Bool.Properties..absurdlambda"
d9683 ::
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d9683 = erased
name9779 = "Data.Bool.Properties..absurdlambda"
d9779 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d9779 = erased
name9783 = "Data.Bool.Properties..absurdlambda"
d9783 ::
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d9783 = erased
name9933 = "Data.Bool.Properties..absurdlambda"
d9933 ::
  MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d9933 = erased
name10007 = "Data.Bool.Properties..absurdlambda"
d10007 ::
  Bool ->
  MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d10007 = erased
name10325 = "Data.Bool.Properties..absurdlambda"
d10325 :: MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Data.Empty.T4
d10325 = erased
