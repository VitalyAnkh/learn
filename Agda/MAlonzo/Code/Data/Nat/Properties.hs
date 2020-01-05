{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Morphism
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name8 = "Data.Nat.Properties._._Absorbs_"
d8 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d8 = erased
name10 = "Data.Nat.Properties._._DistributesOver_"
d10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d10 = erased
name12 = "Data.Nat.Properties._._DistributesOverʳ_"
d12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d12 = erased
name14 = "Data.Nat.Properties._._DistributesOverˡ_"
d14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d14 = erased
name18 = "Data.Nat.Properties._.Absorptive"
d18 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d18 = erased
name20 = "Data.Nat.Properties._.Associative"
d20 :: (Integer -> Integer -> Integer) -> ()
d20 = erased
name22 = "Data.Nat.Properties._.Commutative"
d22 :: (Integer -> Integer -> Integer) -> ()
d22 = erased
name30 = "Data.Nat.Properties._.Idempotent"
d30 :: (Integer -> Integer -> Integer) -> ()
d30 = erased
name34 = "Data.Nat.Properties._.Identity"
d34 :: Integer -> (Integer -> Integer -> Integer) -> ()
d34 = erased
name44 = "Data.Nat.Properties._.LeftIdentity"
d44 :: Integer -> (Integer -> Integer -> Integer) -> ()
d44 = erased
name48 = "Data.Nat.Properties._.LeftZero"
d48 :: Integer -> (Integer -> Integer -> Integer) -> ()
d48 = erased
name54 = "Data.Nat.Properties._.RightIdentity"
d54 :: Integer -> (Integer -> Integer -> Integer) -> ()
d54 = erased
name58 = "Data.Nat.Properties._.RightZero"
d58 :: Integer -> (Integer -> Integer -> Integer) -> ()
d58 = erased
name60 = "Data.Nat.Properties._.Selective"
d60 :: (Integer -> Integer -> Integer) -> ()
d60 = erased
name62 = "Data.Nat.Properties._.Zero"
d62 :: Integer -> (Integer -> Integer -> Integer) -> ()
d62 = erased
name68 = "Data.Nat.Properties._.IsBand"
d68 a0 = ()
name74 = "Data.Nat.Properties._.IsCommutativeMonoid"
d74 a0 a1 = ()
name78 = "Data.Nat.Properties._.IsCommutativeSemigroup"
d78 a0 = ()
name80 = "Data.Nat.Properties._.IsCommutativeSemiring"
d80 a0 a1 a2 a3 = ()
name82 = "Data.Nat.Properties._.IsCommutativeSemiringWithoutOne"
d82 a0 a1 a2 = ()
name84 = "Data.Nat.Properties._.IsDistributiveLattice"
d84 a0 a1 = ()
name90 = "Data.Nat.Properties._.IsLattice"
d90 a0 a1 = ()
name92 = "Data.Nat.Properties._.IsMagma"
d92 a0 = ()
name94 = "Data.Nat.Properties._.IsMonoid"
d94 a0 a1 = ()
name102 = "Data.Nat.Properties._.IsSemigroup"
d102 a0 = ()
name104 = "Data.Nat.Properties._.IsSemilattice"
d104 a0 = ()
name106 = "Data.Nat.Properties._.IsSemiring"
d106 a0 a1 a2 a3 = ()
name110 = "Data.Nat.Properties._.IsSemiringWithoutOne"
d110 a0 a1 a2 = ()
name1332 = "Data.Nat.Properties.suc-injective"
d1332 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1332 = erased
name1338 = "Data.Nat.Properties.≡ᵇ⇒≡"
d1338 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1338 = erased
name1350 = "Data.Nat.Properties.≡⇒≡ᵇ"
d1350 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1350 = erased
name1360 = "Data.Nat.Properties._≟_"
d1360 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1360 v0 v1
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
         erased
         (coe
            (MAlonzo.Code.Data.Bool.Properties.d2042
               (coe (eqInt (coe v0) (coe v1))))))
name1366 = "Data.Nat.Properties.≡-irrelevant"
d1366 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1366 = erased
name1374 = "Data.Nat.Properties.≟-diag"
d1374 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1374 = erased
name1376 = "Data.Nat.Properties.≡-isDecEquivalence"
d1376 :: MAlonzo.Code.Relation.Binary.Structures.T44
d1376
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C589
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         (coe d1360))
name1378 = "Data.Nat.Properties.≡-decSetoid"
d1378 :: MAlonzo.Code.Relation.Binary.Bundles.T86
d1378
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.Bundles.C381 v2) erased
      erased d1376
name1382 = "Data.Nat.Properties.0≢1+n"
d1382 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1382 = erased
name1386 = "Data.Nat.Properties.1+n≢0"
d1386 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1386 = erased
name1390 = "Data.Nat.Properties.1+n≢n"
d1390 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1390 = erased
name1398 = "Data.Nat.Properties.<ᵇ⇒<"
d1398 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T6
d1398 v0 v1 v2 = du1398 v0
du1398 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1398 v0
  = case coe v0 of
      0 -> coe
             (\ v1 v2 v3 -> MAlonzo.Code.Data.Nat.Base.C18 v3) erased erased
             (coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1398 (coe v1))
name1414 = "Data.Nat.Properties.<⇒<ᵇ"
d1414 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> AgdaAny
d1414 = erased
name1422 = "Data.Nat.Properties.≤-pred"
d1422 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1422 v0 v1 v2 = du1422 v2
du1422 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1422 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1426 = "Data.Nat.Properties.≤-reflexive"
d1426 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1426 v0 v1 v2 = du1426 v0
du1426 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1426 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1426 (coe v1))
name1430 = "Data.Nat.Properties.≤-refl"
d1430 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1430 v0 = coe (du1426 (coe v0))
name1432 = "Data.Nat.Properties.≤-antisym"
d1432 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1432 = erased
name1438 = "Data.Nat.Properties.≤-trans"
d1438 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1438 v0 v1 v2 v3 v4 = du1438 v3 v4
du1438 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1438 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du1438 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1444 = "Data.Nat.Properties.≤-total"
d1444 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1444 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Data.Sum.Base.C38
                (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (MAlonzo.Code.Data.Sum.Base.C42
                       (coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  let v4 = d1444 (coe v2) (coe v3) in
                  case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C38 v5
                      -> coe
                           (MAlonzo.Code.Data.Sum.Base.C38
                              (coe
                                 (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                                 v5))
                    MAlonzo.Code.Data.Sum.Base.C42 v5
                      -> coe
                           (MAlonzo.Code.Data.Sum.Base.C42
                              (coe
                                 (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                                 v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
name1466 = "Data.Nat.Properties.≤-irrelevant"
d1466 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1466 = erased
name1472 = "Data.Nat.Properties._≤?_"
d1472 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1472 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Relation.Nullary.C46
                (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                (coe
                   (MAlonzo.Code.Relation.Nullary.C22
                      (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
                (coe (\ v3 -> du1398 (coe v2)))
                (coe
                   (MAlonzo.Code.Data.Bool.Properties.d2042
                      (coe (ltInt (coe v2) (coe v1))))))
name1478 = "Data.Nat.Properties._≥?_"
d1478 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1478 v0 v1 = coe (d1472 (coe v1) (coe v0))
name1480 = "Data.Nat.Properties.≤-isPreorder"
d1480 :: MAlonzo.Code.Relation.Binary.Structures.T70
d1480
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C753
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         (coe d1426) (coe d1438))
name1482 = "Data.Nat.Properties.≤-isPartialOrder"
d1482 :: MAlonzo.Code.Relation.Binary.Structures.T118
d1482
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C1589 (coe d1480) erased)
name1484 = "Data.Nat.Properties.≤-isTotalOrder"
d1484 :: MAlonzo.Code.Relation.Binary.Structures.T340
d1484
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C3913
         (coe d1482) (coe d1444))
name1486 = "Data.Nat.Properties.≤-isDecTotalOrder"
d1486 :: MAlonzo.Code.Relation.Binary.Structures.T388
d1486
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C4345
         (coe d1484) (coe d1360) (coe d1472))
name1488 = "Data.Nat.Properties.≤-preorder"
d1488 :: MAlonzo.Code.Relation.Binary.Bundles.T128
d1488
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C563 v3)
      erased erased erased d1480
name1490 = "Data.Nat.Properties.≤-poset"
d1490 :: MAlonzo.Code.Relation.Binary.Bundles.T186
d1490
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C807 v3)
      erased erased erased d1482
name1492 = "Data.Nat.Properties.≤-totalOrder"
d1492 :: MAlonzo.Code.Relation.Binary.Bundles.T520
d1492
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C2427 v3)
      erased erased erased d1484
name1494 = "Data.Nat.Properties.≤-decTotalOrder"
d1494 :: MAlonzo.Code.Relation.Binary.Bundles.T592
d1494
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C2791 v3)
      erased erased erased d1486
name1504 = "Data.Nat.Properties.s≤s-injective"
d1504 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1504 = erased
name1510 = "Data.Nat.Properties.≤-step"
d1510 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1510 v0 v1 v2 = du1510 v2
du1510 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1510 v0 = coe v0
name1516 = "Data.Nat.Properties.n≤1+n"
d1516 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1516 v0 = coe (d1430 (coe v0))
name1520 = "Data.Nat.Properties.1+n≰n"
d1520 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1520 = erased
name1526 = "Data.Nat.Properties.n≤0⇒n≡0"
d1526 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1526 = erased
name1528 = "Data.Nat.Properties.<⇒≤"
d1528 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1528 v0 v1 v2 = du1528 v1 v2
du1528 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1528 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1438 (coe v4) (coe (d1430 (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1532 = "Data.Nat.Properties.<⇒≢"
d1532 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1532 = erased
name1536 = "Data.Nat.Properties.≤⇒≯"
d1536 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1536 = erased
name1542 = "Data.Nat.Properties.<⇒≱"
d1542 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1542 = erased
name1548 = "Data.Nat.Properties.<⇒≯"
d1548 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1548 = erased
name1554 = "Data.Nat.Properties.≰⇒≮"
d1554 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1554 = erased
name1560 = "Data.Nat.Properties.≰⇒>"
d1560 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1560 v0 v1 v2 = du1560 v0 v1
du1560 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1560 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (\ v3 v4 v5 -> MAlonzo.Code.Data.Nat.Base.C18 v5) erased erased
                    (coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du1560 (coe v2) (coe v3))
name1572 = "Data.Nat.Properties.≰⇒≥"
d1572 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1572 v0 v1 v2 = du1572 v0 v1
du1572 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1572 v0 v1
  = coe (du1528 (coe v0) (coe (du1560 (coe v0) (coe v1))))
name1574 = "Data.Nat.Properties.≮⇒≥"
d1574 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1574 v0 v1 v2 = du1574 v0 v1
du1574 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1574 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du1574 (coe v3) (coe v2))
name1590 = "Data.Nat.Properties.≤∧≢⇒<"
d1590 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1590 v0 v1 v2 v3 = du1590 v1 v2
du1590 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1590 v0 v1
  = case coe v0 of
      0 -> coe
             (seq (coe v1) (coe MAlonzo.Code.Data.Empty.d10 () erased erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (coe (\ v4 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du1590 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1604 = "Data.Nat.Properties.≤-<-connex"
d1604 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1604 v0 v1
  = let v2 = d1472 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5
                      -> coe (MAlonzo.Code.Data.Sum.Base.C38 (coe v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    (seq
                       (coe v4)
                       (coe
                          (MAlonzo.Code.Data.Sum.Base.C42 (coe (du1560 (coe v0) (coe v1))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1626 = "Data.Nat.Properties.≥->-connex"
d1626 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1626 v0 v1 = coe (d1604 (coe v1) (coe v0))
name1628 = "Data.Nat.Properties.<-≤-connex"
d1628 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1628
  = coe (MAlonzo.Code.Relation.Binary.Consequences.du726 (coe d1604))
name1630 = "Data.Nat.Properties.>-≥-connex"
d1630 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1630
  = coe (MAlonzo.Code.Relation.Binary.Consequences.du726 (coe d1626))
name1632 = "Data.Nat.Properties.<-irrefl"
d1632 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1632 = erased
name1636 = "Data.Nat.Properties.<-asym"
d1636 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1636 = erased
name1642 = "Data.Nat.Properties.<-trans"
d1642 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1642 v0 v1 v2 v3 v4 = du1642 v1 v3 v4
du1642 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1642 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v8
               -> let v9 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v10 v11 v12 -> MAlonzo.Code.Data.Nat.Base.C18 v12) erased erased
                    (du1438 (coe v5) (coe (du1438 (coe (d1516 (coe v9))) (coe v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1648 = "Data.Nat.Properties.<-transʳ"
d1648 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1648 v0 v1 v2 v3 v4 = du1648 v3 v4
du1648 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1648 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> coe
             (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
             (du1438 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name1654 = "Data.Nat.Properties.<-transˡ"
d1654 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1654 v0 v1 v2 v3 v4 = du1654 v3 v4
du1654 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1654 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du1438 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1660 = "Data.Nat.Properties.<-cmp"
d1660 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Binary.Definitions.T136
d1660 v0 v1
  = let v2 = d1360 (coe v0) (coe v1) in
    let v3
          = MAlonzo.Code.Data.Bool.Properties.d2042
              (coe (ltInt (coe v0) (coe v1))) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v4 v5
        -> if coe v4
             then case coe v5 of
                    MAlonzo.Code.Relation.Nullary.C22 v6
                      -> coe
                           (\ v7 v8 v9 -> MAlonzo.Code.Relation.Binary.Definitions.C158 v8)
                           erased v6 erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    (seq
                       (coe v5)
                       (case coe v3 of
                          MAlonzo.Code.Relation.Nullary.C46 v6 v7
                            -> if coe v6
                                 then coe
                                        (seq
                                           (coe v7)
                                           (coe
                                              (\ v8 v9 v10 ->
                                                 MAlonzo.Code.Relation.Binary.Definitions.C150 v8)
                                              (du1398 (coe v0)) erased erased))
                                 else coe
                                        (seq
                                           (coe v7)
                                           (coe
                                              (\ v8 v9 v10 ->
                                                 MAlonzo.Code.Relation.Binary.Definitions.C166 v10)
                                              erased erased
                                              (du1590 (coe v0) (coe (du1574 (coe v0) (coe v1))))))
                          _ -> MAlonzo.RTE.mazUnreachableError))
      _ -> MAlonzo.RTE.mazUnreachableError
name1692 = "Data.Nat.Properties._<?_"
d1692 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1692 v0 v1
  = coe (d1472 (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1))
name1698 = "Data.Nat.Properties._>?_"
d1698 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d1698 v0 v1 = coe (d1692 (coe v1) (coe v0))
name1700 = "Data.Nat.Properties.<-irrelevant"
d1700 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1700 = erased
name1702 = "Data.Nat.Properties.<-resp₂-≡"
d1702 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1702
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
name1708 = "Data.Nat.Properties.<-isStrictPartialOrder"
d1708 :: MAlonzo.Code.Relation.Binary.Structures.T222
d1708
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Structures.C2525 v0 v2 v3)
      MAlonzo.Code.Relation.Binary.PropositionalEquality.du66 erased
      d1642 d1702
name1710 = "Data.Nat.Properties.<-isStrictTotalOrder"
d1710 :: MAlonzo.Code.Relation.Binary.Structures.T452
d1710
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C4945
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         (coe d1642) (coe d1660))
name1712 = "Data.Nat.Properties.<-strictPartialOrder"
d1712 :: MAlonzo.Code.Relation.Binary.Bundles.T358
d1712
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C1663 v3)
      erased erased erased d1708
name1714 = "Data.Nat.Properties.<-strictTotalOrder"
d1714 :: MAlonzo.Code.Relation.Binary.Bundles.T706
d1714
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C3355 v3)
      erased erased erased d1710
name1718 = "Data.Nat.Properties.n≮n"
d1718 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1718 = erased
name1724 = "Data.Nat.Properties.0<1+n"
d1724 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1724 v0 = du1724
du1724 :: MAlonzo.Code.Data.Nat.Base.T6
du1724
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Data.Nat.Base.C18 v2) erased erased
      (coe (\ v0 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
name1728 = "Data.Nat.Properties.n<1+n"
d1728 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1728 v0 = coe (d1430 (coe (addInt (coe (1 :: Integer)) (coe v0))))
name1734 = "Data.Nat.Properties.n≢0⇒n>0"
d1734 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1734 v0 v1 = du1734 v0
du1734 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1734 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> coe du1724
name1744 = "Data.Nat.Properties.m<n⇒n≢0"
d1744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1744 = erased
name1752 = "Data.Nat.Properties.m<n⇒m≤1+n"
d1752 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1752 v0 v1 v2 = du1752 v2
du1752 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1752 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe (\ v5 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased
                    (du1752
                       (coe
                          (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased
                          v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1762 = "Data.Nat.Properties.∀[m≤n⇒m≢o]⇒o<n"
d1762 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1762 v0 v1 v2 = du1762 v0 v1
du1762 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1762 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe du1724
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du1762 (coe v3) (coe v2))
name1780 = "Data.Nat.Properties._.rec"
d1780 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1780 = erased
name1790 = "Data.Nat.Properties.∀[m<n⇒m≢o]⇒o≤n"
d1790 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1790 v0 v1 v2 = du1790 v0 v1
du1790 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1790 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du1790 (coe v2) (coe v3))
name1810 = "Data.Nat.Properties._.rec"
d1810 ::
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T6 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1810 = erased
name1818 = "Data.Nat.Properties.≤-Reasoning._._<⟨_⟩_"
d1818 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1818
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du204
         (coe d1642)
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66)
         (coe d1654))
name1820 = "Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_"
d1820 a0 a1 = ()
name1822 = "Data.Nat.Properties.≤-Reasoning._._∎"
d1822 ::
  Integer -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1822
  = let v0 = d1480 in
    coe
      (\ v1 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
           (coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0)) v1))
name1824 = "Data.Nat.Properties.≤-Reasoning._._≈˘⟨_⟩_"
d1824 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1824
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du282
         (coe d1480)
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66))
name1826 = "Data.Nat.Properties.≤-Reasoning._._≡˘⟨_⟩_"
d1826 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1826 v0 v1 v2 v3 v4 = du1826 v4
du1826 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1826 v0 = coe v0
name1828 = "Data.Nat.Properties.≤-Reasoning._._≡⟨_⟩_"
d1828 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1828 v0 v1 v2 v3 v4 = du1828 v4
du1828 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
du1828 v0 = coe v0
name1830 = "Data.Nat.Properties.≤-Reasoning._._≡⟨⟩_"
d1830 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1830 v0 = coe v0
name1832 = "Data.Nat.Properties.≤-Reasoning._._≤⟨_⟩_"
d1832 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70
d1832
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du230
         (coe d1480) (coe d1648))
name1834 = "Data.Nat.Properties.≤-Reasoning._.IsEquality"
d1834 a0 a1 a2 = ()
name1836 = "Data.Nat.Properties.≤-Reasoning._.IsEquality?"
d1836 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d1836
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du142 v2)
name1838 = "Data.Nat.Properties.≤-Reasoning._.IsStrict"
d1838 a0 a1 a2 = ()
name1840 = "Data.Nat.Properties.≤-Reasoning._.IsStrict?"
d1840 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Nullary.T32
d1840
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du108 v2)
name1842 = "Data.Nat.Properties.≤-Reasoning._.begin_"
d1842 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1842
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du162
         (coe d1480) (coe d1528))
name1844 = "Data.Nat.Properties.≤-Reasoning._.begin-equality_"
d1844 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1844 = erased
name1846 = "Data.Nat.Properties.≤-Reasoning._.begin-strict_"
d1846 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T6
d1846
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du178 v2)
name1850 = "Data.Nat.Properties.≤-Reasoning._.extractEquality"
d1850 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T126 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1850 = erased
name1852 = "Data.Nat.Properties.≤-Reasoning._.extractStrict"
d1852 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T70 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T92 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1852
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du118 v2 v3)
name1878 = "Data.Nat.Properties.pred-mono"
d1878 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1878 v0 v1 v2 = du1878 v2
du1878 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1878 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1886 = "Data.Nat.Properties.≤pred⇒≤"
d1886 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1886 v0 v1 v2 = du1886 v1 v2
du1886 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1886 v0 v1 = coe (seq (coe v0) (coe v1))
name1902 = "Data.Nat.Properties.≤⇒pred≤"
d1902 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1902 v0 v1 v2 = du1902 v0 v2
du1902 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1902 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1438 (coe (d1516 (coe v2))) (coe v1))
name1914 = "Data.Nat.Properties.<⇒≤pred"
d1914 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1914 v0 v1 v2 = du1914 v2
du1914 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1914 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1920 = "Data.Nat.Properties.suc[pred[n]]≡n"
d1920 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1920 = erased
name1932 = "Data.Nat.Properties.+-suc"
d1932 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1932 = erased
name1940 = "Data.Nat.Properties.+-assoc"
d1940 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1940 = erased
name1948 = "Data.Nat.Properties.+-identityˡ"
d1948 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1948 = erased
name1950 = "Data.Nat.Properties.+-identityʳ"
d1950 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1950 = erased
name1954 = "Data.Nat.Properties.+-identity"
d1954 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1954 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1956 = "Data.Nat.Properties.+-comm"
d1956 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1956 = erased
name1964 = "Data.Nat.Properties.+-cancelˡ-≡"
d1964 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1964 = erased
name1972 = "Data.Nat.Properties.+-cancelʳ-≡"
d1972 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1972 = erased
name1974 = "Data.Nat.Properties.+-cancel-≡"
d1974 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1974 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1976 = "Data.Nat.Properties.+-isMagma"
d1976 :: MAlonzo.Code.Algebra.Structures.T78
d1976
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased)
name1978 = "Data.Nat.Properties.+-isSemigroup"
d1978 :: MAlonzo.Code.Algebra.Structures.T114
d1978
  = coe (MAlonzo.Code.Algebra.Structures.C773 (coe d1976) erased)
name1980 = "Data.Nat.Properties.+-isCommutativeSemigroup"
d1980 :: MAlonzo.Code.Algebra.Structures.T190
d1980
  = coe (MAlonzo.Code.Algebra.Structures.C1321 (coe d1978) erased)
name1982 = "Data.Nat.Properties.+-0-isMonoid"
d1982 :: MAlonzo.Code.Algebra.Structures.T312
d1982
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209 (coe d1978) (coe d1954))
name1984 = "Data.Nat.Properties.+-0-isCommutativeMonoid"
d1984 :: MAlonzo.Code.Algebra.Structures.T360
d1984
  = coe (MAlonzo.Code.Algebra.Structures.C2759 (coe d1982) erased)
name1986 = "Data.Nat.Properties.+-rawMagma"
d1986 :: MAlonzo.Code.Algebra.Bundles.T8
d1986
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Algebra.Bundles.C3 v2) erased erased
      addInt
name1988 = "Data.Nat.Properties.+-0-rawMonoid"
d1988 :: MAlonzo.Code.Algebra.Bundles.T394
d1988
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C1567 v2 v3) erased
      erased addInt (0 :: Integer)
name1990 = "Data.Nat.Properties.+-magma"
d1990 :: MAlonzo.Code.Algebra.Bundles.T30
d1990
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C77 v2 v3) erased
      erased addInt d1976
name1992 = "Data.Nat.Properties.+-semigroup"
d1992 :: MAlonzo.Code.Algebra.Bundles.T80
d1992
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C291 v2 v3) erased
      erased addInt d1978
name1994 = "Data.Nat.Properties.+-commutativeSemigroup"
d1994 :: MAlonzo.Code.Algebra.Bundles.T202
d1994
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C789 v2 v3) erased
      erased addInt d1980
name1996 = "Data.Nat.Properties.+-0-monoid"
d1996 :: MAlonzo.Code.Algebra.Bundles.T422
d1996
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C1701 v2 v3 v4)
      erased erased addInt (0 :: Integer) d1982
name1998 = "Data.Nat.Properties.+-0-commutativeMonoid"
d1998 :: MAlonzo.Code.Algebra.Bundles.T496
d1998
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C2037 v2 v3 v4)
      erased erased addInt (0 :: Integer) d1984
name2004 = "Data.Nat.Properties.m≢1+m+n"
d2004 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2004 = erased
name2014 = "Data.Nat.Properties.m≢1+n+m"
d2014 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2014 = erased
name2024 = "Data.Nat.Properties.m+1+n≢m"
d2024 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2024 = erased
name2032 = "Data.Nat.Properties.m+1+n≢0"
d2032 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d2032 = erased
name2046 = "Data.Nat.Properties.m+n≡0⇒m≡0"
d2046 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2046 = erased
name2054 = "Data.Nat.Properties.m+n≡0⇒n≡0"
d2054 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2054 = erased
name2062 = "Data.Nat.Properties.+-cancelˡ-≤"
d2062 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2062 v0 v1 v2 v3 = du2062 v0 v3
du2062 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2062 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5 -> coe (du2062 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name2070 = "Data.Nat.Properties.+-cancelʳ-≤"
d2070 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2070 v0 v1 v2 v3 = du2070 v0 v3
du2070 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2070 v0 v1 = coe (du2062 (coe v0) (coe v1))
name2080 = "Data.Nat.Properties.+-cancel-≤"
d2080 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2080
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d2062) (coe d2070))
name2082 = "Data.Nat.Properties.+-cancelˡ-<"
d2082 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2082 v0 v1 v2 v3 = du2082 v0 v3
du2082 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2082 v0 v1 = coe (du2062 (coe v0) (coe v1))
name2092 = "Data.Nat.Properties.+-cancelʳ-<"
d2092 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2092 v0 v1 v2 v3 = du2092 v0 v3
du2092 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2092 v0 v1 = coe (du2070 (coe v0) (coe v1))
name2100 = "Data.Nat.Properties.+-cancel-<"
d2100 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2100
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d2082) (coe d2092))
name2108 = "Data.Nat.Properties.≤-stepsˡ"
d2108 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2108 v0 v1 v2 v3 = du2108 v3
du2108 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2108 v0 = coe v0
name2122 = "Data.Nat.Properties.≤-stepsʳ"
d2122 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2122 v0 v1 v2 v3 = du2122 v3
du2122 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2122 v0 = coe v0
name2136 = "Data.Nat.Properties.m≤m+n"
d2136 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2136 v0 v1 = du2136 v0
du2136 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2136 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du2136 (coe v1))
name2148 = "Data.Nat.Properties.m≤n+m"
d2148 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2148 v0 v1 = du2148 v0
du2148 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2148 v0 = coe (du2136 (coe v0))
name2160 = "Data.Nat.Properties.m≤n⇒m<n∨m≡n"
d2160 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Sum.Base.T30
d2160 v0 v1 v2
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
             _ -> coe (MAlonzo.Code.Data.Sum.Base.C38 (coe du1724))
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           let v4 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> let v8 = d2160 (coe v3) (coe v4) (coe v7) in
                  case coe v8 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9
                      -> coe
                           (MAlonzo.Code.Data.Sum.Base.C38
                              (coe
                                 (\ v10 v11 v12 -> MAlonzo.Code.Data.Nat.Base.C18 v12) erased erased
                                 v9))
                    MAlonzo.Code.Data.Sum.Base.C42 v9
                      -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name2196 = "Data.Nat.Properties.m+n≤o⇒m≤o"
d2196 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2196 v0 v1 v2 v3 = du2196 v0 v3
du2196 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2196 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du2196 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name2210 = "Data.Nat.Properties.m+n≤o⇒n≤o"
d2210 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2210 v0 v1 v2 v3 = du2210 v0 v2 v3
du2210 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2210 v0 v1 v2
  = case coe v0 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du2210 (coe v3) (coe v1) (coe (du1528 (coe v1) (coe v2))))
name2218 = "Data.Nat.Properties.+-mono-≤"
d2218 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2218 v0 v1 v2 v3 v4 v5 = du2218 v3 v4 v5
du2218 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2218 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (du1438 (coe v2) (coe (du2148 (coe v0))))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
             (du2218 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name2232 = "Data.Nat.Properties.+-monoˡ-≤"
d2232 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2232 v0 v1 v2 v3 = du2232 v0 v3
du2232 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2232 v0 v1
  = coe (du2218 (coe v0) (coe v1) (coe (d1430 (coe v0))))
name2242 = "Data.Nat.Properties.+-monoʳ-≤"
d2242 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2242 v0 v1 v2 v3 = du2242 v0 v2 v3
du2242 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2242 v0 v1 v2
  = coe (du2218 (coe v1) (coe (d1430 (coe v0))) (coe v2))
name2248 = "Data.Nat.Properties.+-mono-<-≤"
d2248 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2248 v0 v1 v2 v3 v4 v5 = du2248 v4 v5
du2248 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2248 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased v1
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du2248
                       (coe
                          (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                          v7)
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2258 = "Data.Nat.Properties.+-mono-≤-<"
d2258 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2258 v0 v1 v2 v3 v4 v5 = du2258 v3 v4 v5
du2258 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2258 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (du1438 (coe v2) (coe (du2148 (coe v0))))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
             (du2258 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name2268 = "Data.Nat.Properties.+-mono-<"
d2268 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2268 v0 v1 v2 v3 v4 = du2268 v1 v3 v4
du2268 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2268 v0 v1 v2
  = coe (du2258 (coe v1) (coe (du1528 (coe v0) (coe v2))))
name2276 = "Data.Nat.Properties.+-monoˡ-<"
d2276 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2276 v0 v1 v2 = du2276 v0
du2276 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2276 v0 = coe (du2232 (coe v0))
name2284 = "Data.Nat.Properties.+-monoʳ-<"
d2284 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2284 v0 v1 v2 v3 = du2284 v0 v3
du2284 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2284 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 v4 v5 -> MAlonzo.Code.Data.Nat.Base.C18 v5) erased erased
             (du2284 (coe v2) (coe v1))
name2296 = "Data.Nat.Properties.m+1+n≰m"
d2296 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2296 = erased
name2306 = "Data.Nat.Properties.m<m+n"
d2306 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2306 v0 v1 v2 = du2306 v0 v2
du2306 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2306 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 v4 v5 -> MAlonzo.Code.Data.Nat.Base.C18 v5) erased erased
             (du2306 (coe v2) (coe v1))
name2318 = "Data.Nat.Properties.m+n≮n"
d2318 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2318 = erased
name2332 = "Data.Nat.Properties.m+n≮m"
d2332 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2332 = erased
name2344 = "Data.Nat.Properties.*-suc"
d2344 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2344 = erased
name2356 = "Data.Nat.Properties.*-identityˡ"
d2356 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2356 = erased
name2360 = "Data.Nat.Properties.*-identityʳ"
d2360 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2360 = erased
name2364 = "Data.Nat.Properties.*-identity"
d2364 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2364 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2366 = "Data.Nat.Properties.*-zeroˡ"
d2366 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2366 = erased
name2368 = "Data.Nat.Properties.*-zeroʳ"
d2368 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2368 = erased
name2372 = "Data.Nat.Properties.*-zero"
d2372 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2372 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2374 = "Data.Nat.Properties.*-comm"
d2374 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2374 = erased
name2384 = "Data.Nat.Properties.*-distribʳ-+"
d2384 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2384 = erased
name2398 = "Data.Nat.Properties.*-distribˡ-+"
d2398 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2398 = erased
name2400 = "Data.Nat.Properties.*-distrib-+"
d2400 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2400 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2402 = "Data.Nat.Properties.*-assoc"
d2402 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2402 = erased
name2416 = "Data.Nat.Properties.*-isMagma"
d2416 :: MAlonzo.Code.Algebra.Structures.T78
d2416
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased)
name2418 = "Data.Nat.Properties.*-isSemigroup"
d2418 :: MAlonzo.Code.Algebra.Structures.T114
d2418
  = coe (MAlonzo.Code.Algebra.Structures.C773 (coe d2416) erased)
name2420 = "Data.Nat.Properties.*-1-isMonoid"
d2420 :: MAlonzo.Code.Algebra.Structures.T312
d2420
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209 (coe d2418) (coe d2364))
name2422 = "Data.Nat.Properties.*-1-isCommutativeMonoid"
d2422 :: MAlonzo.Code.Algebra.Structures.T360
d2422
  = coe (MAlonzo.Code.Algebra.Structures.C2759 (coe d2420) erased)
name2424 = "Data.Nat.Properties.*-+-isSemiring"
d2424 :: MAlonzo.Code.Algebra.Structures.T1174
d2424
  = coe
      (MAlonzo.Code.Algebra.Structures.C11149
         (coe
            (MAlonzo.Code.Algebra.Structures.C9969
               (coe d1984) (coe d2420) (coe d2400)))
         (coe d2372))
name2426 = "Data.Nat.Properties.*-+-isCommutativeSemiring"
d2426 :: MAlonzo.Code.Algebra.Structures.T1278
d2426
  = coe (MAlonzo.Code.Algebra.Structures.C12345 (coe d2424) erased)
name2428 = "Data.Nat.Properties.*-rawMagma"
d2428 :: MAlonzo.Code.Algebra.Bundles.T8
d2428
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Algebra.Bundles.C3 v2) erased erased
      mulInt
name2430 = "Data.Nat.Properties.*-1-rawMonoid"
d2430 :: MAlonzo.Code.Algebra.Bundles.T394
d2430
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C1567 v2 v3) erased
      erased mulInt (1 :: Integer)
name2432 = "Data.Nat.Properties.*-magma"
d2432 :: MAlonzo.Code.Algebra.Bundles.T30
d2432
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C77 v2 v3) erased
      erased mulInt d2416
name2434 = "Data.Nat.Properties.*-semigroup"
d2434 :: MAlonzo.Code.Algebra.Bundles.T80
d2434
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C291 v2 v3) erased
      erased mulInt d2418
name2436 = "Data.Nat.Properties.*-1-monoid"
d2436 :: MAlonzo.Code.Algebra.Bundles.T422
d2436
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C1701 v2 v3 v4)
      erased erased mulInt (1 :: Integer) d2420
name2438 = "Data.Nat.Properties.*-1-commutativeMonoid"
d2438 :: MAlonzo.Code.Algebra.Bundles.T496
d2438
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C2037 v2 v3 v4)
      erased erased mulInt (1 :: Integer) d2422
name2440 = "Data.Nat.Properties.*-+-semiring"
d2440 :: MAlonzo.Code.Algebra.Bundles.T1664
d2440
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.Bundles.C6579 v2 v3 v4 v5 v6)
      erased erased addInt mulInt (0 :: Integer) (1 :: Integer) d2424
name2442 = "Data.Nat.Properties.*-+-commutativeSemiring"
d2442 :: MAlonzo.Code.Algebra.Bundles.T1816
d2442
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.Bundles.C7235 v2 v3 v4 v5 v6)
      erased erased addInt mulInt (0 :: Integer) (1 :: Integer) d2426
name2450 = "Data.Nat.Properties.*-cancelʳ-≡"
d2450 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2450 = erased
name2468 = "Data.Nat.Properties.*-cancelˡ-≡"
d2468 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2468 = erased
name2482 = "Data.Nat.Properties.m*n≡0⇒m≡0∨n≡0"
d2482 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d2482 v0 v1 v2 = du2482 v0
du2482 :: Integer -> MAlonzo.Code.Data.Sum.Base.T30
du2482 v0
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
name2496 = "Data.Nat.Properties.m*n≡1⇒m≡1"
d2496 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2496 = erased
name2510 = "Data.Nat.Properties.m*n≡1⇒n≡1"
d2510 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2510 = erased
name2524 = "Data.Nat.Properties.*-cancelʳ-≤"
d2524 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2524 v0 v1 v2 v3 = du2524 v0
du2524 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2524 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du2524 (coe v1))
name2540 = "Data.Nat.Properties.*-cancelˡ-≤"
d2540 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2540 v0 v1 v2 = du2540 v0
du2540 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2540 v0 = coe (\ v1 -> du2524 (coe v0))
name2556 = "Data.Nat.Properties.*-mono-≤"
d2556 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2556 v0 v1 v2 v3 v4 v5 = du2556 v1 v3 v4 v5
du2556 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2556 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v5 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (du2218
                (coe (mulInt (coe v7) (coe v1))) (coe v3)
                (coe (du2556 (coe v7) (coe v1) (coe v6) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name2566 = "Data.Nat.Properties.*-monoˡ-≤"
d2566 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2566 v0 v1 v2 v3 = du2566 v0 v2 v3
du2566 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2566 v0 v1 v2
  = coe (du2556 (coe v1) (coe v0) (coe v2) (coe (d1430 (coe v0))))
name2576 = "Data.Nat.Properties.*-monoʳ-≤"
d2576 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2576 v0 v1 v2 v3 = du2576 v0 v2 v3
du2576 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2576 v0 v1 v2
  = coe (du2556 (coe v0) (coe v1) (coe (d1430 (coe v0))) (coe v2))
name2582 = "Data.Nat.Properties.*-mono-<"
d2582 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2582 v0 v1 v2 v3 v4 v5 = du2582 v1 v3 v4 v5
du2582 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2582 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C18 v6
        -> case coe v6 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (seq
                       (coe v3)
                       (coe
                          (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                          (coe (\ v8 -> MAlonzo.Code.Data.Nat.Base.C10) erased)))
             MAlonzo.Code.Data.Nat.Base.C18 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Nat.Base.C18 v12
                      -> coe
                           du2268 v1
                           (mulInt (coe (subInt (coe v0) (coe (1 :: Integer)))) (coe v1))
                           (coe
                              (\ v13 v14 v15 -> MAlonzo.Code.Data.Nat.Base.C18 v15) erased erased
                              v12)
                           (du2582
                              (coe (subInt (coe v0) (coe (1 :: Integer)))) (coe v1)
                              (coe
                                 (\ v13 v14 v15 -> MAlonzo.Code.Data.Nat.Base.C18 v15) erased erased
                                 v9)
                              (coe
                                 (\ v13 v14 v15 -> MAlonzo.Code.Data.Nat.Base.C18 v15) erased erased
                                 v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2594 = "Data.Nat.Properties.*-monoˡ-<"
d2594 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2594 v0 v1 v2 v3 = du2594 v0 v2 v3
du2594 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2594 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased
                    (coe (\ v7 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
             MAlonzo.Code.Data.Nat.Base.C18 v8
               -> coe
                    (du2258
                       (coe
                          (mulInt
                             (coe (subInt (coe v1) (coe (1 :: Integer))))
                             (coe (addInt (coe (1 :: Integer)) (coe v0)))))
                       (coe (d1430 (coe (addInt (coe (1 :: Integer)) (coe v0)))))
                       (coe
                          (du2594
                             (coe v0) (coe (subInt (coe v1) (coe (1 :: Integer))))
                             (coe
                                (\ v9 v10 v11 -> MAlonzo.Code.Data.Nat.Base.C18 v11) erased erased
                                v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2606 = "Data.Nat.Properties.*-monoʳ-<"
d2606 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2606 v0 v1 v2 v3 = du2606 v0 v2 v3
du2606 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2606 v0 v1 v2
  = case coe v0 of
      0 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (du2218
                       (coe (0 :: Integer))
                       (coe
                          (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased v5)
                       (coe (\ v6 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    (du2218
                       (coe (mulInt (coe v0) (coe v1)))
                       (coe
                          (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased v6)
                       (coe
                          (du1528
                             (coe (mulInt (coe v0) (coe v1)))
                             (coe
                                (du2606
                                   (coe v3) (coe v1)
                                   (coe
                                      (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased
                                      erased v6))))))
             _ -> MAlonzo.RTE.mazUnreachableError
name2618 = "Data.Nat.Properties.m≤m*n"
d2618 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2618 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du162
         (coe d1480) (coe d1528) (coe v0) (coe (mulInt (coe v0) (coe v1)))
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du230
               (coe d1480) (coe d1648)
               (coe (mulInt (coe v0) (coe (1 :: Integer))))
               (coe (mulInt (coe v0) (coe v1))) (coe (mulInt (coe v0) (coe v1)))
               (coe (du2576 (coe v0) (coe v1) (coe v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d34
                        (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d1480))
                        (mulInt (coe v0) (coe v1))))))))
name2630 = "Data.Nat.Properties.m<m*n"
d2630 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2630 v0 v1 v2 v3
  = let v4 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (seq
         (coe v2)
         (case coe v3 of
            MAlonzo.Code.Data.Nat.Base.C18 v7
              -> coe
                   (seq
                      (coe v7)
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du178
                            (coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du204
                                  (coe d1642)
                                  (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66)
                                  (coe d1654) (coe v0)
                                  (coe
                                     (subInt (coe (addInt (coe v0) (coe v1))) (coe (1 :: Integer))))
                                  (coe (mulInt (coe v0) (coe v1)))
                                  (coe
                                     (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased
                                     erased
                                     (coe
                                        (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased
                                        erased (du2148 (coe v4))))
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du230
                                        (coe d1480) (coe d1648) (coe (addInt (coe v1) (coe v4)))
                                        (coe (addInt (coe v1) (coe (mulInt (coe v4) (coe v1)))))
                                        (coe (mulInt (coe v0) (coe v1)))
                                        (coe
                                           (du2242
                                              (coe v1) (coe (mulInt (coe v4) (coe v1)))
                                              (coe (d2618 (coe v4) (coe v1) (coe du1724)))))
                                        (coe
                                           (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Structures.d34
                                                 (MAlonzo.Code.Relation.Binary.Structures.d80
                                                    (coe d1480))
                                                 (mulInt (coe v0) (coe v1))))))))))))
            _ -> MAlonzo.RTE.mazUnreachableError))
name2640 = "Data.Nat.Properties.*-cancelʳ-<"
d2640 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2640 v0 v1 v2 v3 = du2640 v0 v1 v2
du2640 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2640 v0 v1 v2
  = let v3
          = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
            let v4 = subInt (coe v2) (coe (1 :: Integer)) in
            coe
              (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
              (du2640 (coe v0) (coe v3) (coe v4)) in
    coe
      (seq
         (coe v0)
         (case coe v1 of
            0 -> case coe v2 of
                   _ | coe (geqInt (coe v2) (coe (1 :: Integer))) -> coe du1724
                   _ -> coe v3
            _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                 case coe v2 of
                   _ | coe (geqInt (coe v2) (coe (1 :: Integer))) ->
                       let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                       coe
                         (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                         (du2640 (coe v0) (coe v4) (coe v5))
                   _ -> coe v3))
name2656 = "Data.Nat.Properties.*-cancelˡ-<"
d2656 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2656 v0 v1 v2 = coe (\ v3 -> du2640 (coe v0) (coe v1) (coe v2))
name2672 = "Data.Nat.Properties.*-cancel-<"
d2672 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2672
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d2656) (coe d2640))
name2674 = "Data.Nat.Properties.^-identityʳ"
d2674 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2674 = erased
name2678 = "Data.Nat.Properties.^-zeroˡ"
d2678 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2678 = erased
name2688 = "Data.Nat.Properties.^-distribˡ-+-*"
d2688 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2688 = erased
name2706 = "Data.Nat.Properties.^-semigroup-morphism"
d2706 :: Integer -> MAlonzo.Code.Algebra.Morphism.T144
d2706 v0 = du2706
du2706 :: MAlonzo.Code.Algebra.Morphism.T144
du2706 = coe (MAlonzo.Code.Algebra.Morphism.C241 erased erased)
name2714 = "Data.Nat.Properties.^-monoid-morphism"
d2714 :: Integer -> MAlonzo.Code.Algebra.Morphism.T290
d2714 v0 = du2714
du2714 :: MAlonzo.Code.Algebra.Morphism.T290
du2714
  = coe (MAlonzo.Code.Algebra.Morphism.C545 (coe du2706) erased)
name2722 = "Data.Nat.Properties.^-*-assoc"
d2722 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2722 = erased
name2744 = "Data.Nat.Properties.m^n≡0⇒m≡0"
d2744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2744 = erased
name2756 = "Data.Nat.Properties.m^n≡1⇒n≡0∨m≡1"
d2756 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d2756 v0 v1 v2 = du2756 v1
du2756 :: Integer -> MAlonzo.Code.Data.Sum.Base.T30
du2756 v0
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
name2766 = "Data.Nat.Properties.⊔-assoc"
d2766 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2766 = erased
name2782 = "Data.Nat.Properties.⊔-identityˡ"
d2782 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2782 = erased
name2784 = "Data.Nat.Properties.⊔-identityʳ"
d2784 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2784 = erased
name2788 = "Data.Nat.Properties.⊔-identity"
d2788 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2788 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2790 = "Data.Nat.Properties.⊔-comm"
d2790 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2790 = erased
name2800 = "Data.Nat.Properties.⊔-sel"
d2800 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d2800 v0 v1
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d2800 (coe v2) (coe v3))
name2824 = "Data.Nat.Properties.⊔-idem"
d2824 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2824 = erased
name2832 = "Data.Nat.Properties.⊔-least"
d2832 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2832 v0 v1 v2 v3 v4 = du2832 v0 v1 v3 v4
du2832 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2832 v0 v1 v2 v3
  = let v4 = d2800 (coe v0) (coe v1) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v2
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2874 = "Data.Nat.Properties.⊔-isMagma"
d2874 :: MAlonzo.Code.Algebra.Structures.T78
d2874
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased)
name2876 = "Data.Nat.Properties.⊔-isSemigroup"
d2876 :: MAlonzo.Code.Algebra.Structures.T114
d2876
  = coe (MAlonzo.Code.Algebra.Structures.C773 (coe d2874) erased)
name2878 = "Data.Nat.Properties.⊔-isBand"
d2878 :: MAlonzo.Code.Algebra.Structures.T150
d2878
  = coe (MAlonzo.Code.Algebra.Structures.C1025 (coe d2876) erased)
name2880 = "Data.Nat.Properties.⊔-isSemilattice"
d2880 :: MAlonzo.Code.Algebra.Structures.T230
d2880
  = coe (MAlonzo.Code.Algebra.Structures.C1617 (coe d2878) erased)
name2882 = "Data.Nat.Properties.⊔-0-isMonoid"
d2882 :: MAlonzo.Code.Algebra.Structures.T312
d2882
  = coe
      (MAlonzo.Code.Algebra.Structures.C2209 (coe d2876) (coe d2788))
name2884 = "Data.Nat.Properties.⊔-0-isCommutativeMonoid"
d2884 :: MAlonzo.Code.Algebra.Structures.T360
d2884
  = coe (MAlonzo.Code.Algebra.Structures.C2759 (coe d2882) erased)
name2886 = "Data.Nat.Properties.⊔-magma"
d2886 :: MAlonzo.Code.Algebra.Bundles.T30
d2886
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C77 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d74 d2874
name2888 = "Data.Nat.Properties.⊔-semigroup"
d2888 :: MAlonzo.Code.Algebra.Bundles.T80
d2888
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C291 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d74 d2876
name2890 = "Data.Nat.Properties.⊔-band"
d2890 :: MAlonzo.Code.Algebra.Bundles.T138
d2890
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C527 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d74 d2878
name2892 = "Data.Nat.Properties.⊔-semilattice"
d2892 :: MAlonzo.Code.Algebra.Bundles.T266
d2892
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C1051 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d74 d2880
name2894 = "Data.Nat.Properties.⊔-0-commutativeMonoid"
d2894 :: MAlonzo.Code.Algebra.Bundles.T496
d2894
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C2037 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Nat.Base.d74 (0 :: Integer) d2884
name2902 = "Data.Nat.Properties.⊔-triangulate"
d2902 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2902 = erased
name2918 = "Data.Nat.Properties.m≤m⊔n"
d2918 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2918 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (d1430 (coe v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d2918 (coe v2) (coe v3))
name2930 = "Data.Nat.Properties.n≤m⊔n"
d2930 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2930 v0 v1 = coe (d2918 (coe v1) (coe v0))
name2942 = "Data.Nat.Properties.m≤n⇒n⊔m≡n"
d2942 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2942 = erased
name2950 = "Data.Nat.Properties.m≤n⇒m⊔n≡n"
d2950 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2950 = erased
name2960 = "Data.Nat.Properties.n⊔m≡m⇒n≤m"
d2960 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2960 v0 v1 v2 = du2960 v0 v1
du2960 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2960 v0 v1 = coe (d2918 (coe v1) (coe v0))
name2970 = "Data.Nat.Properties.n⊔m≡n⇒m≤n"
d2970 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2970 v0 v1 v2 = du2970 v0 v1
du2970 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2970 v0 v1 = coe (d2930 (coe v1) (coe v0))
name2982 = "Data.Nat.Properties.m≤n⇒m≤n⊔o"
d2982 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2982 v0 v1 v2 v3 = du2982 v1 v2 v3
du2982 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2982 v0 v1 v2
  = coe (du1438 (coe v2) (coe (d2918 (coe v0) (coe v1))))
name2994 = "Data.Nat.Properties.m≤n⇒m≤o⊔n"
d2994 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2994 v0 v1 v2 v3 = du2994 v1 v2 v3
du2994 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2994 v0 v1 v2
  = coe (du1438 (coe v2) (coe (d2930 (coe v1) (coe v0))))
name3006 = "Data.Nat.Properties.m⊔n≤o⇒m≤o"
d3006 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3006 v0 v1 v2 v3 = du3006 v0 v1 v3
du3006 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3006 v0 v1 v2
  = coe (du1438 (coe (d2918 (coe v0) (coe v1))) (coe v2))
name3020 = "Data.Nat.Properties.m⊔n≤o⇒n≤o"
d3020 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3020 v0 v1 v2 v3 = du3020 v0 v1 v3
du3020 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3020 v0 v1 v2
  = coe (du1438 (coe (d2930 (coe v0) (coe v1))) (coe v2))
name3034 = "Data.Nat.Properties.m<n⇒m<n⊔o"
d3034 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3034 v0 v1 = du3034 v1
du3034 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3034 v0 = coe (du2982 (coe v0))
name3042 = "Data.Nat.Properties.m<n⇒m<o⊔n"
d3042 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3042 v0 v1 = du3042 v1
du3042 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3042 v0 = coe (du2994 (coe v0))
name3050 = "Data.Nat.Properties.m⊔n<o⇒m<o"
d3050 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3050 v0 v1 v2 v3 = du3050 v0 v1 v3
du3050 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3050 v0 v1 v2
  = coe (du1648 (coe (d2918 (coe v0) (coe v1))) (coe v2))
name3064 = "Data.Nat.Properties.m⊔n<o⇒n<o"
d3064 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3064 v0 v1 v2 v3 = du3064 v0 v1 v3
du3064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3064 v0 v1 v2
  = coe (du1648 (coe (d2930 (coe v0) (coe v1))) (coe v2))
name3072 = "Data.Nat.Properties.⊔-mono-≤"
d3072 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3072 v0 v1 v2 v3 v4 v5
  = let v6 = d2800 (coe v0) (coe v2) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> coe (du1438 (coe v4) (coe (d2918 (coe v1) (coe v3))))
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe (du1438 (coe v5) (coe (d2930 (coe v1) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name3130 = "Data.Nat.Properties.⊔-monoˡ-≤"
d3130 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3130 v0 v1 v2 v3
  = coe
      (d3072
         (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
         (coe (d1430 (coe v0))))
name3140 = "Data.Nat.Properties.⊔-monoʳ-≤"
d3140 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3140 v0 v1 v2 v3
  = coe
      (d3072
         (coe v0) (coe v0) (coe v1) (coe v2) (coe (d1430 (coe v0)))
         (coe v3))
name3146 = "Data.Nat.Properties.⊔-mono-<"
d3146 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3146 v0 v1 v2 v3
  = coe
      (d3072
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1)
         (coe (addInt (coe (1 :: Integer)) (coe v2))) (coe v3))
name3148 = "Data.Nat.Properties.+-distribˡ-⊔"
d3148 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3148 = erased
name3160 = "Data.Nat.Properties.+-distribʳ-⊔"
d3160 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3160 = erased
name3162 = "Data.Nat.Properties.+-distrib-⊔"
d3162 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3162 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3168 = "Data.Nat.Properties.m⊔n≤m+n"
d3168 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3168 v0 v1
  = let v2 = d2800 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe (du2136 (coe v0))
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe (du2148 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name3198 = "Data.Nat.Properties.⊓-assoc"
d3198 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3198 = erased
name3214 = "Data.Nat.Properties.⊓-zeroˡ"
d3214 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3214 = erased
name3216 = "Data.Nat.Properties.⊓-zeroʳ"
d3216 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3216 = erased
name3220 = "Data.Nat.Properties.⊓-zero"
d3220 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3220 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3222 = "Data.Nat.Properties.⊓-comm"
d3222 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3222 = erased
name3232 = "Data.Nat.Properties.⊓-sel"
d3232 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d3232 v0 v1
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d3232 (coe v2) (coe v3))
name3256 = "Data.Nat.Properties.⊓-idem"
d3256 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3256 = erased
name3264 = "Data.Nat.Properties.⊓-greatest"
d3264 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3264 v0 v1 v2 v3 v4 = du3264 v0 v1 v3 v4
du3264 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3264 v0 v1 v2 v3
  = let v4 = d3232 (coe v0) (coe v1) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v2
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name3306 = "Data.Nat.Properties.⊓-distribʳ-⊔"
d3306 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3306 = erased
name3326 = "Data.Nat.Properties.⊓-distribˡ-⊔"
d3326 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3326 = erased
name3328 = "Data.Nat.Properties.⊓-distrib-⊔"
d3328 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3328 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3330 = "Data.Nat.Properties.⊔-abs-⊓"
d3330 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3330 = erased
name3340 = "Data.Nat.Properties.⊓-abs-⊔"
d3340 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3340 = erased
name3352 = "Data.Nat.Properties.⊓-⊔-absorptive"
d3352 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3352 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3354 = "Data.Nat.Properties.⊓-isMagma"
d3354 :: MAlonzo.Code.Algebra.Structures.T78
d3354
  = coe
      (MAlonzo.Code.Algebra.Structures.C257
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased)
name3356 = "Data.Nat.Properties.⊓-isSemigroup"
d3356 :: MAlonzo.Code.Algebra.Structures.T114
d3356
  = coe (MAlonzo.Code.Algebra.Structures.C773 (coe d3354) erased)
name3358 = "Data.Nat.Properties.⊓-isBand"
d3358 :: MAlonzo.Code.Algebra.Structures.T150
d3358
  = coe (MAlonzo.Code.Algebra.Structures.C1025 (coe d3356) erased)
name3360 = "Data.Nat.Properties.⊓-isSemilattice"
d3360 :: MAlonzo.Code.Algebra.Structures.T230
d3360
  = coe (MAlonzo.Code.Algebra.Structures.C1617 (coe d3358) erased)
name3362 = "Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne"
d3362 :: MAlonzo.Code.Algebra.Structures.T896
d3362
  = coe
      (MAlonzo.Code.Algebra.Structures.C8295
         (coe d2884) (coe d3356) (coe d3328) (coe d3220))
name3364
  = "Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne"
d3364 :: MAlonzo.Code.Algebra.Structures.T988
d3364
  = coe (MAlonzo.Code.Algebra.Structures.C9251 (coe d3362) erased)
name3366 = "Data.Nat.Properties.⊓-⊔-isLattice"
d3366 :: MAlonzo.Code.Algebra.Structures.T684
d3366
  = coe
      (MAlonzo.Code.Algebra.Structures.C5979
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66)
         erased erased erased erased erased erased (coe d3352))
name3368 = "Data.Nat.Properties.⊓-⊔-isDistributiveLattice"
d3368 :: MAlonzo.Code.Algebra.Structures.T758
d3368
  = coe (MAlonzo.Code.Algebra.Structures.C7119 (coe d3366) erased)
name3370 = "Data.Nat.Properties.⊓-magma"
d3370 :: MAlonzo.Code.Algebra.Bundles.T30
d3370
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C77 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d84 d3354
name3372 = "Data.Nat.Properties.⊓-semigroup"
d3372 :: MAlonzo.Code.Algebra.Bundles.T80
d3372
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C291 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d74 d2876
name3374 = "Data.Nat.Properties.⊓-band"
d3374 :: MAlonzo.Code.Algebra.Bundles.T138
d3374
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C527 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d84 d3358
name3376 = "Data.Nat.Properties.⊓-semilattice"
d3376 :: MAlonzo.Code.Algebra.Bundles.T266
d3376
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.Bundles.C1051 v2 v3) erased
      erased MAlonzo.Code.Data.Nat.Base.d84 d3360
name3378 = "Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne"
d3378 :: MAlonzo.Code.Algebra.Bundles.T1368
d3378
  = coe
      (\ v0 v1 v2 v3 v4 v5 ->
         MAlonzo.Code.Algebra.Bundles.C5457 v2 v3 v4 v5)
      erased erased MAlonzo.Code.Data.Nat.Base.d74
      MAlonzo.Code.Data.Nat.Base.d84 (0 :: Integer) d3364
name3380 = "Data.Nat.Properties.⊓-⊔-lattice"
d3380 :: MAlonzo.Code.Algebra.Bundles.T984
d3380
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C3887 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d3366
name3382 = "Data.Nat.Properties.⊓-⊔-distributiveLattice"
d3382 :: MAlonzo.Code.Algebra.Bundles.T1056
d3382
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C4191 v2 v3 v4)
      erased erased MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d3368
name3390 = "Data.Nat.Properties.⊓-triangulate"
d3390 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3390 = erased
name3406 = "Data.Nat.Properties.m⊓n≤m"
d3406 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3406 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d3406 (coe v2) (coe v3))
name3418 = "Data.Nat.Properties.m⊓n≤n"
d3418 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3418 v0 v1 = coe (d3406 (coe v1) (coe v0))
name3430 = "Data.Nat.Properties.m≤n⇒m⊓n≡m"
d3430 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3430 = erased
name3438 = "Data.Nat.Properties.m≤n⇒n⊓m≡m"
d3438 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3438 = erased
name3448 = "Data.Nat.Properties.m⊓n≡m⇒m≤n"
d3448 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3448 v0 v1 v2 = du3448 v0 v1
du3448 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3448 v0 v1 = coe (d3418 (coe v0) (coe v1))
name3458 = "Data.Nat.Properties.m⊓n≡n⇒n≤m"
d3458 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3458 v0 v1 v2 = du3458 v0 v1
du3458 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3458 v0 v1 = coe (d3406 (coe v0) (coe v1))
name3470 = "Data.Nat.Properties.m≤n⇒m⊓o≤n"
d3470 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3470 v0 v1 v2 v3 = du3470 v0 v2 v3
du3470 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3470 v0 v1 v2
  = coe (du1438 (coe (d3406 (coe v0) (coe v1))) (coe v2))
name3482 = "Data.Nat.Properties.m≤n⇒o⊓m≤n"
d3482 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3482 v0 v1 v2 v3 = du3482 v0 v2 v3
du3482 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3482 v0 v1 v2
  = coe (du1438 (coe (d3418 (coe v1) (coe v0))) (coe v2))
name3494 = "Data.Nat.Properties.m≤n⊓o⇒m≤n"
d3494 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3494 v0 v1 v2 v3 = du3494 v1 v2 v3
du3494 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3494 v0 v1 v2
  = coe (du1438 (coe v2) (coe (d3406 (coe v0) (coe v1))))
name3508 = "Data.Nat.Properties.m≤n⊓o⇒m≤o"
d3508 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3508 v0 v1 v2 v3 = du3508 v1 v2 v3
du3508 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3508 v0 v1 v2
  = coe (du1438 (coe v2) (coe (d3418 (coe v0) (coe v1))))
name3522 = "Data.Nat.Properties.m<n⇒m⊓o<n"
d3522 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3522 v0 v1 v2 v3 = du3522 v0 v2 v3
du3522 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3522 v0 v1 v2
  = coe (du1648 (coe (d3406 (coe v0) (coe v1))) (coe v2))
name3534 = "Data.Nat.Properties.m<n⇒o⊓m<n"
d3534 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3534 v0 v1 v2 v3 = du3534 v0 v2 v3
du3534 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3534 v0 v1 v2
  = coe (du1648 (coe (d3418 (coe v1) (coe v0))) (coe v2))
name3546 = "Data.Nat.Properties.m<n⊓o⇒m<n"
d3546 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3546 v0 = du3546
du3546 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3546 = coe du3494
name3554 = "Data.Nat.Properties.m<n⊓o⇒m<o"
d3554 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3554 v0 = du3554
du3554 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3554 = coe du3508
name3556 = "Data.Nat.Properties.⊓-mono-≤"
d3556 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3556 v0 v1 v2 v3 v4 v5
  = let v6 = d3232 (coe v1) (coe v3) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> coe (du1438 (coe (d3406 (coe v0) (coe v2))) (coe v4))
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe (du1438 (coe (d3418 (coe v0) (coe v2))) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name3614 = "Data.Nat.Properties.⊓-monoˡ-≤"
d3614 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3614 v0 v1 v2 v3
  = coe
      (d3556
         (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
         (coe (d1430 (coe v0))))
name3624 = "Data.Nat.Properties.⊓-monoʳ-≤"
d3624 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3624 v0 v1 v2 v3
  = coe
      (d3556
         (coe v0) (coe v0) (coe v1) (coe v2) (coe (d1430 (coe v0)))
         (coe v3))
name3630 = "Data.Nat.Properties.⊓-mono-<"
d3630 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3630 v0 v1 v2 v3
  = coe
      (d3556
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1)
         (coe (addInt (coe (1 :: Integer)) (coe v2))) (coe v3))
name3636 = "Data.Nat.Properties.m⊓n≤m⊔n"
d3636 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3636 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d3636 (coe v2) (coe v3))
name3646 = "Data.Nat.Properties.+-distribˡ-⊓"
d3646 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3646 = erased
name3658 = "Data.Nat.Properties.+-distribʳ-⊓"
d3658 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3658 = erased
name3660 = "Data.Nat.Properties.+-distrib-⊓"
d3660 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3660 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3666 = "Data.Nat.Properties.m⊓n≤m+n"
d3666 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3666 v0 v1
  = let v2 = d3232 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe (du2136 (coe v0))
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe (du2148 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name3696 = "Data.Nat.Properties.0∸n≡0"
d3696 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3696 = erased
name3700 = "Data.Nat.Properties.n∸n≡0"
d3700 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3700 = erased
name3708 = "Data.Nat.Properties.m∸n≤m"
d3708 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3708 v0 v1
  = case coe v1 of
      0 -> coe
             (d1430 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 (0 :: Integer)))
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe
                    (d1430 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 (0 :: Integer) v1))
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe (du1438 (coe (d3708 (coe v3) (coe v2))) (coe (d1516 (coe v3))))
name3722 = "Data.Nat.Properties.m≮m∸n"
d3722 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d3722 = erased
name3734 = "Data.Nat.Properties.1+m≢m∸n"
d3734 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3734 = erased
name3742 = "Data.Nat.Properties.∸-mono"
d3742 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3742 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5) (coe (du1438 (coe (d3708 (coe v0) (coe v2))) (coe v4))) in
    case coe v4 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C18 v10
               -> case coe v2 of
                    _ | coe (geqInt (coe v2) (coe (1 :: Integer))) ->
                        case coe v3 of
                          _ | coe (geqInt (coe v3) (coe (1 :: Integer))) ->
                              coe (\ v11 -> MAlonzo.Code.Data.Nat.Base.C10) erased
                          _ -> coe v6
                    _ -> coe v6
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (du1438
                       (coe (d3708 (coe v0) (coe v2)))
                       (coe (\ v9 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Nat.Base.C18 v9
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C18 v12
               -> case coe v0 of
                    _ | coe (geqInt (coe v0) (coe (1 :: Integer))) ->
                        let v13 = subInt (coe v0) (coe (1 :: Integer)) in
                        case coe v1 of
                          _ | coe (geqInt (coe v1) (coe (1 :: Integer))) ->
                              let v14 = subInt (coe v1) (coe (1 :: Integer)) in
                              case coe v2 of
                                _ | coe (geqInt (coe v2) (coe (1 :: Integer))) ->
                                    let v15 = subInt (coe v2) (coe (1 :: Integer)) in
                                    case coe v3 of
                                      _ | coe (geqInt (coe v3) (coe (1 :: Integer))) ->
                                          let v16 = subInt (coe v3) (coe (1 :: Integer)) in
                                          coe
                                            (d3742
                                               (coe v13) (coe v14) (coe v15) (coe v16) (coe v9)
                                               (coe v12))
                                      _ -> coe v6
                                _ -> coe v6
                          _ -> coe v6
                    _ -> coe v6
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (du1438
                       (coe (d3708 (coe v0) (coe v2)))
                       (coe
                          (\ v11 v12 v13 -> MAlonzo.Code.Data.Nat.Base.C18 v13) erased erased
                          v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3760 = "Data.Nat.Properties.∸-monoˡ-≤"
d3760 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3760 v0 v1 v2 v3
  = coe
      (d3742
         (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
         (coe (d1430 (coe v2))))
name3772 = "Data.Nat.Properties.∸-monoʳ-≤"
d3772 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3772 v0 v1 v2 v3
  = coe
      (d3742
         (coe v2) (coe v2) (coe v1) (coe v0) (coe (d1430 (coe v2)))
         (coe v3))
name3782 = "Data.Nat.Properties.∸-monoʳ-<"
d3782 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3782 v0 v1 v2 v3 v4
  = let v5 = subInt (coe v1) (coe (1 :: Integer)) in
    case coe v2 of
      0 -> coe
             (seq
                (coe v3)
                (coe
                   (seq
                      (coe v4)
                      (coe
                         (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                         (d3708 (coe (subInt (coe v0) (coe (1 :: Integer)))) (coe v5))))))
      _ -> let v6 = subInt (coe v2) (coe (1 :: Integer)) in
           case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C18 v9
               -> case coe v4 of
                    MAlonzo.Code.Data.Nat.Base.C18 v12
                      -> let v13 = subInt (coe v0) (coe (1 :: Integer)) in
                         coe (d3782 (coe v13) (coe v5) (coe v6) (coe v9) (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name3804 = "Data.Nat.Properties.∸-cancelʳ-≤"
d3804 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3804 v0 v1 v2 v3 v4 = du3804 v1 v3
du3804 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3804 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v0 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du3804 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name3824 = "Data.Nat.Properties.∸-cancelʳ-<"
d3824 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3824 v0 v1 v2 v3 = du3824 v0 v1
du3824 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3824 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe du1724
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du3824 (coe v2) (coe v3))
name3850 = "Data.Nat.Properties.∸-cancelˡ-≡"
d3850 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3850 = erased
name3870 = "Data.Nat.Properties.m∸n≡0⇒m≤n"
d3870 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3870 v0 v1 v2 = du3870 v0
du3870 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3870 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du3870 (coe v1))
name3882 = "Data.Nat.Properties.m≤n⇒m∸n≡0"
d3882 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3882 = erased
name3892 = "Data.Nat.Properties.m<n⇒0<n∸m"
d3892 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3892 v0 v1 v2 = du3892 v0 v2
du3892 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3892 v0 v1
  = case coe v0 of
      0 -> coe du1724
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5 -> coe (du3892 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name3906 = "Data.Nat.Properties.m∸n≢0⇒n<m"
d3906 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d3906 v0 v1 v2 = du3906 v0 v1
du3906 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3906 v0 v1
  = let v2 = d1692 (coe v1) (coe v0) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C46 v3 v4
        -> if coe v3
             then case coe v4 of
                    MAlonzo.Code.Relation.Nullary.C22 v5 -> coe v5
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    (seq (coe v4) (coe MAlonzo.Code.Data.Empty.d10 () erased erased))
      _ -> MAlonzo.RTE.mazUnreachableError
name3938 = "Data.Nat.Properties.m>n⇒m∸n≢0"
d3938 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3938 = erased
name3950 = "Data.Nat.Properties.+-∸-comm"
d3950 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3950 = erased
name3968 = "Data.Nat.Properties.∸-+-assoc"
d3968 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3968 = erased
name3992 = "Data.Nat.Properties.+-∸-assoc"
d3992 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3992 = erased
name4012 = "Data.Nat.Properties.m≤n+m∸n"
d4012 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4012 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (d1430 (coe v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d4012 (coe v2) (coe v3))
name4026 = "Data.Nat.Properties.m+n∸n≡m"
d4026 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4026 = erased
name4038 = "Data.Nat.Properties.m+n∸m≡n"
d4038 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4038 = erased
name4050 = "Data.Nat.Properties.m+[n∸m]≡n"
d4050 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4050 = erased
name4064 = "Data.Nat.Properties.m∸n+n≡m"
d4064 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4064 = erased
name4076 = "Data.Nat.Properties.m∸[m∸n]≡n"
d4076 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4076 = erased
name4092 = "Data.Nat.Properties.[m+n]∸[m+o]≡n∸o"
d4092 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4092 = erased
name4104 = "Data.Nat.Properties.*-distribʳ-∸"
d4104 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4104 = erased
name4124 = "Data.Nat.Properties.*-distribˡ-∸"
d4124 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4124 = erased
name4126 = "Data.Nat.Properties.*-distrib-∸"
d4126 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d4126 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name4132 = "Data.Nat.Properties.even≢odd"
d4132 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4132 = erased
name4148 = "Data.Nat.Properties.m⊓n+n∸m≡n"
d4148 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4148 = erased
name4162 = "Data.Nat.Properties.[m∸n]⊓[n∸m]≡0"
d4162 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4162 = erased
name4178 = "Data.Nat.Properties.∸-distribˡ-⊓-⊔"
d4178 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4178 = erased
name4204 = "Data.Nat.Properties.∸-distribʳ-⊓"
d4204 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4204 = erased
name4230 = "Data.Nat.Properties.∸-distribˡ-⊔-⊓"
d4230 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4230 = erased
name4254 = "Data.Nat.Properties.∸-distribʳ-⊔"
d4254 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4254 = erased
name4278 = "Data.Nat.Properties.m≡n⇒∣m-n∣≡0"
d4278 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4278 = erased
name4286 = "Data.Nat.Properties.∣m-n∣≡0⇒m≡n"
d4286 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4286 = erased
name4300 = "Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m"
d4300 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4300 = erased
name4310 = "Data.Nat.Properties.∣m-n∣≡m∸n⇒n≤m"
d4310 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d4310 v0 v1 v2 = du4310 v0 v1
du4310 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du4310 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du4310 (coe v2) (coe v3))
name4326 = "Data.Nat.Properties.∣n-n∣≡0"
d4326 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4326 = erased
name4334 = "Data.Nat.Properties.∣m-m+n∣≡n"
d4334 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4334 = erased
name4348 = "Data.Nat.Properties.∣m+n-m+o∣≡∣n-o|"
d4348 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4348 = erased
name4364 = "Data.Nat.Properties.m∸n≤∣m-n∣"
d4364 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4364 v0 v1
  = let v2 = d1444 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe (\ v4 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe (d1430 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name4394 = "Data.Nat.Properties.∣m-n∣≤m⊔n"
d4394 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4394 v0 v1
  = case coe v0 of
      0 -> coe
             (d1430
                (coe
                   (MAlonzo.Code.Data.Nat.Base.d110 (coe (0 :: Integer)) (coe v1))))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (d1430
                       (coe
                          (MAlonzo.Code.Data.Nat.Base.d110 (coe v0) (coe (0 :: Integer)))))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d4394 (coe v2) (coe v3))
name4404 = "Data.Nat.Properties.∣-∣-identityˡ"
d4404 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4404 = erased
name4408 = "Data.Nat.Properties.∣-∣-identityʳ"
d4408 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4408 = erased
name4412 = "Data.Nat.Properties.∣-∣-identity"
d4412 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d4412 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name4414 = "Data.Nat.Properties.∣-∣-comm"
d4414 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4414 = erased
name4428 = "Data.Nat.Properties.∣m-n∣≡[m∸n]∨[n∸m]"
d4428 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d4428 v0 v1
  = let v2 = d1444 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C42
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du192
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d34
                               (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d1480))
                               (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 v0)))))))
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name4456 = "Data.Nat.Properties.*-distribˡ-∣-∣-aux"
d4456 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4456 = erased
name4468 = "Data.Nat.Properties.*-distribˡ-∣-∣"
d4468 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4468 = erased
name4498 = "Data.Nat.Properties.*-distribʳ-∣-∣"
d4498 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4498 = erased
name4500 = "Data.Nat.Properties.*-distrib-∣-∣"
d4500 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d4500 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name4506 = "Data.Nat.Properties.m≤n+∣n-m∣"
d4506 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4506 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (d1430 (coe v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d4506 (coe v2) (coe v3))
name4520 = "Data.Nat.Properties.m≤n+∣m-n∣"
d4520 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4520 v0 v1 = coe (d4506 (coe v0) (coe v1))
name4534 = "Data.Nat.Properties.m≤∣m-n∣+n"
d4534 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4534 v0 v1 = coe (d4520 (coe v0) (coe v1))
name4542 = "Data.Nat.Properties.⌊n/2⌋-mono"
d4542 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4542 v0 v1 v2 = du4542 v2
du4542 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4542 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe (\ v5 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased
                    (du4542 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name4546 = "Data.Nat.Properties.⌈n/2⌉-mono"
d4546 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4546 v0 v1 v2 = du4546 v2
du4546 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4546 v0
  = coe
      (du4542
         (coe
            (\ v1 v2 v3 -> MAlonzo.Code.Data.Nat.Base.C18 v3) erased erased
            v0))
name4550 = "Data.Nat.Properties.≤′-trans"
d4550 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
d4550 v0 v1 v2 v3 v4 = du4550 v3 v4
du4550 ::
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
du4550 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C126 -> coe v0
      MAlonzo.Code.Data.Nat.Base.C132 v3
        -> coe
             (\ v4 v5 -> MAlonzo.Code.Data.Nat.Base.C132 v5) erased
             (du4550 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name4560 = "Data.Nat.Properties.z≤′n"
d4560 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4560 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d4560 (coe v1))
name4568 = "Data.Nat.Properties.s≤′s"
d4568 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
d4568 v0 v1 v2 = du4568 v2
du4568 ::
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
du4568 v0 = coe v0
name4572 = "Data.Nat.Properties.≤′⇒≤"
d4572 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
d4572 v0 v1 v2 = du4572 v0 v2
du4572 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
du4572 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C126 -> coe (d1430 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C132 v3
        -> coe (du4572 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name4576 = "Data.Nat.Properties.≤⇒≤′"
d4576 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
d4576 v0 v1 v2 = du4576 v1 v2
du4576 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
du4576 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 -> coe (d4560 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du4576 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name4588 = "Data.Nat.Properties.≤′-step-injective"
d4588 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4588 = erased
name4590 = "Data.Nat.Properties._≤′?_"
d4590 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4590 v0 v1
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
         (coe (du4576 (coe v1))) (coe (d1472 (coe v0) (coe v1))))
name4596 = "Data.Nat.Properties._<′?_"
d4596 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4596 v0 v1
  = coe (d4590 (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1))
name4602 = "Data.Nat.Properties._≥′?_"
d4602 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4602 v0 v1 = coe (d4590 (coe v1) (coe v0))
name4604 = "Data.Nat.Properties._>′?_"
d4604 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4604 v0 v1 = coe (d4596 (coe v1) (coe v0))
name4610 = "Data.Nat.Properties.m≤′m+n"
d4610 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4610 v0 v1
  = coe
      (du4576 (coe (addInt (coe v0) (coe v1))) (coe (du2136 (coe v0))))
name4620 = "Data.Nat.Properties.n≤′m+n"
d4620 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4620 v0 v1 = du4620 v0
du4620 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
du4620 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (du4620 (coe v1))
name4630 = "Data.Nat.Properties.⌈n/2⌉≤′n"
d4630 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4630 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      1 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d4630 (coe v1))
name4636 = "Data.Nat.Properties.⌊n/2⌋≤′n"
d4636 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4636 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d4630 (coe v1))
name4644 = "Data.Nat.Properties.m<ᵇn⇒1+m+[n-1+m]≡n"
d4644 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4644 = erased
name4656 = "Data.Nat.Properties.m<ᵇ1+m+n"
d4656 :: Integer -> Integer -> AgdaAny
d4656 = erased
name4664 = "Data.Nat.Properties.<ᵇ⇒<″"
d4664 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T156
d4664 v0 v1 v2 = du4664 v0 v1
du4664 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156
du4664 v0 v1
  = coe
      (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C170 v2)
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d22 v1
         (addInt (coe (1 :: Integer)) (coe v0)))
      erased
name4676 = "Data.Nat.Properties.<″⇒<ᵇ"
d4676 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> AgdaAny
d4676 = erased
name4680 = "Data.Nat.Properties.≤″⇒≤"
d4680 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
d4680 v0 v1 v2 = du4680 v0 v2
du4680 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
du4680 v0 v1
  = case coe v0 of
      0 -> coe
             (seq
                (coe v1) (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C170 v3
               -> coe
                    (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
                    (du4680
                       (coe v2)
                       (coe (\ v5 v6 -> MAlonzo.Code.Data.Nat.Base.C170 v5) v3 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name4684 = "Data.Nat.Properties.≤⇒≤″"
d4684 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T156
d4684 v0 v1 v2 = du4684 v0 v1
du4684 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156
du4684 v0 v1
  = coe
      (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C170 v2)
      (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 v0) erased
name4686 = "Data.Nat.Properties._<″?_"
d4686 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4686 v0 v1
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
         (coe (\ v2 -> du4664 (coe v0) (coe v1)))
         (coe
            (MAlonzo.Code.Data.Bool.Properties.d2042
               (coe (ltInt (coe v0) (coe v1))))))
name4692 = "Data.Nat.Properties._≤″?_"
d4692 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4692 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Relation.Nullary.C46
                (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                (coe
                   (MAlonzo.Code.Relation.Nullary.C22
                      (coe (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C170 v2) v1 erased))))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (d4686 (coe v2) (coe v1))
name4700 = "Data.Nat.Properties._≥″?_"
d4700 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4700 v0 v1 = coe (d4692 (coe v1) (coe v0))
name4702 = "Data.Nat.Properties._>″?_"
d4702 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T32
d4702 v0 v1 = coe (d4686 (coe v1) (coe v0))
name4704 = "Data.Nat.Properties.≤″-irrelevant"
d4704 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4704 = erased
name4722 = "Data.Nat.Properties.<″-irrelevant"
d4722 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4722 = erased
name4724 = "Data.Nat.Properties.>″-irrelevant"
d4724 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4724 = erased
name4726 = "Data.Nat.Properties.≥″-irrelevant"
d4726 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4726 = erased
name4732 = "Data.Nat.Properties.≤‴⇒≤″"
d4732 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T190 -> MAlonzo.Code.Data.Nat.Base.T156
d4732 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C194
        -> coe
             (\ v4 v5 -> MAlonzo.Code.Data.Nat.Base.C170 v4) (0 :: Integer)
             erased
      MAlonzo.Code.Data.Nat.Base.C200 v5
        -> coe
             (\ v6 v7 -> MAlonzo.Code.Data.Nat.Base.C170 v6)
             (addInt
                (coe (1 :: Integer))
                (coe
                   (MAlonzo.Code.Data.Nat.Base.d166
                      (coe (d4744 (coe v0) (coe v1) (coe v5))))))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
name4744 = "Data.Nat.Properties._.ind"
d4744 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T190 -> MAlonzo.Code.Data.Nat.Base.T156
d4744 v0 v1 v2
  = coe
      (d4732
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1) (coe v2))
name4752 = "Data.Nat.Properties.m≤‴m+k"
d4752 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T190
d4752 v0 v1 v2 v3 = du4752 v2
du4752 :: Integer -> MAlonzo.Code.Data.Nat.Base.T190
du4752 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C194) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C200 v4) erased erased
             (du4752 (coe v1))
name4768 = "Data.Nat.Properties.≤″⇒≤‴"
d4768 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T190
d4768 v0 v1 v2 = du4768 v2
du4768 ::
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T190
du4768 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C170 v1 -> coe (du4752 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name4778 = "Data.Nat.Properties.eq?"
d4778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Function.Injection.T88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d4778 v0 v1 v2 = du4778 v2
du4778 ::
  MAlonzo.Code.Function.Injection.T88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du4778 v0
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.du68 (coe v0) (coe d1360))
name4782 = "Data.Nat.Properties._*-mono_"
d4782 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4782 = coe d2556
name4784 = "Data.Nat.Properties._+-mono_"
d4784 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4784 = coe d2218
name4786 = "Data.Nat.Properties.+-right-identity"
d4786 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4786 = erased
name4788 = "Data.Nat.Properties.*-right-zero"
d4788 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4788 = erased
name4790 = "Data.Nat.Properties.distribʳ-*-+"
d4790 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4790 = erased
name4792 = "Data.Nat.Properties.*-distrib-∸ʳ"
d4792 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4792 = erased
name4794 = "Data.Nat.Properties.cancel-+-left"
d4794 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4794 = erased
name4796 = "Data.Nat.Properties.cancel-+-left-≤"
d4796 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4796 = coe d2062
name4798 = "Data.Nat.Properties.cancel-*-right"
d4798 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4798 = erased
name4800 = "Data.Nat.Properties.cancel-*-right-≤"
d4800 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4800 = coe d2524
name4802 = "Data.Nat.Properties.strictTotalOrder"
d4802 :: MAlonzo.Code.Relation.Binary.Bundles.T706
d4802 = coe d1714
name4804 = "Data.Nat.Properties.isCommutativeSemiring"
d4804 :: MAlonzo.Code.Algebra.Structures.T1278
d4804 = coe d2426
name4806 = "Data.Nat.Properties.commutativeSemiring"
d4806 :: MAlonzo.Code.Algebra.Bundles.T1816
d4806 = coe d2442
name4808 = "Data.Nat.Properties.isDistributiveLattice"
d4808 :: MAlonzo.Code.Algebra.Structures.T758
d4808 = coe d3368
name4810 = "Data.Nat.Properties.distributiveLattice"
d4810 :: MAlonzo.Code.Algebra.Bundles.T1056
d4810 = coe d3382
name4812 = "Data.Nat.Properties.⊔-⊓-0-isSemiringWithoutOne"
d4812 :: MAlonzo.Code.Algebra.Structures.T896
d4812 = coe d3362
name4814
  = "Data.Nat.Properties.⊔-⊓-0-isCommutativeSemiringWithoutOne"
d4814 :: MAlonzo.Code.Algebra.Structures.T988
d4814 = coe d3364
name4816
  = "Data.Nat.Properties.⊔-⊓-0-commutativeSemiringWithoutOne"
d4816 :: MAlonzo.Code.Algebra.Bundles.T1368
d4816 = coe d3378
name4818 = "Data.Nat.Properties.¬i+1+j≤i"
d4818 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d4818 = erased
name4820 = "Data.Nat.Properties.≤-steps"
d4820 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4820 v0 v1 v2 v3 = du4820 v3
du4820 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4820 v0 = coe v0
name4828 = "Data.Nat.Properties.i∸k∸j+j∸k≡i+j∸k"
d4828 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4828 = erased
name4864 = "Data.Nat.Properties.im≡jm+n⇒[i∸j]m≡n"
d4864 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4864 = erased
name4880 = "Data.Nat.Properties.≤+≢⇒<"
d4880 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d4880 = coe d1590
name4882 = "Data.Nat.Properties.≤-irrelevance"
d4882 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4882 = erased
name4884 = "Data.Nat.Properties.<-irrelevance"
d4884 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4884 = erased
name4886 = "Data.Nat.Properties.i+1+j≢i"
d4886 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4886 = erased
name4888 = "Data.Nat.Properties.i+j≡0⇒i≡0"
d4888 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4888 = erased
name4890 = "Data.Nat.Properties.i+j≡0⇒j≡0"
d4890 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4890 = erased
name4892 = "Data.Nat.Properties.i+1+j≰i"
d4892 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d4892 = erased
name4894 = "Data.Nat.Properties.i*j≡0⇒i≡0∨j≡0"
d4894 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d4894 = coe d2482
name4896 = "Data.Nat.Properties.i*j≡1⇒i≡1"
d4896 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4896 = erased
name4898 = "Data.Nat.Properties.i*j≡1⇒j≡1"
d4898 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4898 = erased
name4900 = "Data.Nat.Properties.i^j≡0⇒i≡0"
d4900 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4900 = erased
name4902 = "Data.Nat.Properties.i^j≡1⇒j≡0∨i≡1"
d4902 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d4902 = coe d2756
name4904 = "Data.Nat.Properties.[i+j]∸[i+k]≡j∸k"
d4904 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4904 = erased
name4906 = "Data.Nat.Properties.m≢0⇒suc[pred[m]]≡m"
d4906 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4906 = erased
name4908 = "Data.Nat.Properties.n≡m⇒∣n-m∣≡0"
d4908 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4908 = erased
name4910 = "Data.Nat.Properties.∣n-m∣≡0⇒n≡m"
d4910 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4910 = erased
name4912 = "Data.Nat.Properties.∣n-m∣≡n∸m⇒m≤n"
d4912 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d4912 = coe d4310
name4914 = "Data.Nat.Properties.∣n-n+m∣≡m"
d4914 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4914 = erased
name4916 = "Data.Nat.Properties.∣n+m-n+o∣≡∣m-o|"
d4916 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4916 = erased
name4918 = "Data.Nat.Properties.n∸m≤∣n-m∣"
d4918 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4918 = coe d4364
name4920 = "Data.Nat.Properties.∣n-m∣≤n⊔m"
d4920 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4920 = coe d4394
name4926 = "Data.Nat.Properties.n≤m+n"
d4926 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4926 v0 v1 = du4926 v1
du4926 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du4926 v0 = coe (du2136 (coe v0))
name4938 = "Data.Nat.Properties.n≤m+n∸m"
d4938 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4938 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe (d1430 (coe v1))
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d4938 (coe v3) (coe v2))
name4952 = "Data.Nat.Properties.∣n-m∣≡[n∸m]∨[m∸n]"
d4952 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d4952 v0 v1
  = let v2 = d1444 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C42
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du192
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C86
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d34
                               (MAlonzo.Code.Relation.Binary.Structures.d80 (coe d1480))
                               (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v1)))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name4974 = "Data.Nat.Properties.+-*-suc"
d4974 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4974 = erased
name4980 = "Data.Nat.Properties.n∸m≤n"
d4980 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4980 v0 v1 = coe (d3708 (coe v1) (coe v0))
name25119 = "Data.Nat.Properties..absurdlambda"
d25119 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d25119 = erased
name33705 = "Data.Nat.Properties..absurdlambda"
d33705 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d33705 = erased
