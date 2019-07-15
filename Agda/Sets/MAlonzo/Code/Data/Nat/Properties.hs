{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Morphism
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable

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
name74 = "Data.Nat.Properties._.IsBand"
d74 a0 = ()
name80 = "Data.Nat.Properties._.IsCommutativeMonoid"
d80 a0 a1 = ()
name84 = "Data.Nat.Properties._.IsCommutativeSemiring"
d84 a0 a1 a2 a3 = ()
name86 = "Data.Nat.Properties._.IsCommutativeSemiringWithoutOne"
d86 a0 a1 a2 = ()
name88 = "Data.Nat.Properties._.IsDistributiveLattice"
d88 a0 a1 = ()
name94 = "Data.Nat.Properties._.IsLattice"
d94 a0 a1 = ()
name96 = "Data.Nat.Properties._.IsMagma"
d96 a0 = ()
name98 = "Data.Nat.Properties._.IsMonoid"
d98 a0 a1 = ()
name106 = "Data.Nat.Properties._.IsSemigroup"
d106 a0 = ()
name108 = "Data.Nat.Properties._.IsSemilattice"
d108 a0 = ()
name110 = "Data.Nat.Properties._.IsSemiring"
d110 a0 a1 a2 a3 = ()
name114 = "Data.Nat.Properties._.IsSemiringWithoutOne"
d114 a0 a1 a2 = ()
name1240 = "Data.Nat.Properties.suc-injective"
d1240 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1240 = erased
name1246 = "Data.Nat.Properties.≡ᵇ⇒≡"
d1246 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1246 = erased
name1258 = "Data.Nat.Properties.≡⇒≡ᵇ"
d1258 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1258 = erased
name1268 = "Data.Nat.Properties._≟_"
d1268 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1268 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du24 erased erased
      (MAlonzo.Code.Data.Bool.Properties.d1928
         (coe (eqInt (coe v0) (coe v1))))
name1274 = "Data.Nat.Properties.≡-irrelevant"
d1274 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1274 = erased
name1282 = "Data.Nat.Properties.≟-diag"
d1282 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1282 = erased
name1284 = "Data.Nat.Properties.≡-isDecEquivalence"
d1284 :: MAlonzo.Code.Relation.Binary.T174
d1284
  = coe
      (MAlonzo.Code.Relation.Binary.C1313
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         (coe d1268))
name1286 = "Data.Nat.Properties.≡-decSetoid"
d1286 :: MAlonzo.Code.Relation.Binary.T206
d1286
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1455 v2) erased erased
      d1284
name1290 = "Data.Nat.Properties.0≢1+n"
d1290 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1290 = erased
name1294 = "Data.Nat.Properties.1+n≢0"
d1294 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1294 = erased
name1300 = "Data.Nat.Properties.<ᵇ⇒<"
d1300 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T6
d1300 v0 v1 v2 = du1300 v0
du1300 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1300 v0
  = case coe v0 of
      0 -> coe
             (\ v1 v2 v3 -> MAlonzo.Code.Data.Nat.Base.C18 v3) erased erased
             (coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1300 (coe v1))
name1316 = "Data.Nat.Properties.<⇒<ᵇ"
d1316 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6 -> AgdaAny
d1316 = erased
name1324 = "Data.Nat.Properties.≤-pred"
d1324 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1324 v0 v1 v2 = du1324 v2
du1324 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1324 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1328 = "Data.Nat.Properties.≤-reflexive"
d1328 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1328 v0 v1 v2 = du1328 v0
du1328 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1328 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1328 (coe v1))
name1332 = "Data.Nat.Properties.≤-refl"
d1332 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1332 v0 = coe (du1328 (coe v0))
name1334 = "Data.Nat.Properties.≤-antisym"
d1334 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1334 = erased
name1340 = "Data.Nat.Properties.≤-trans"
d1340 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1340 v0 v1 v2 v3 v4 = du1340 v3 v4
du1340 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1340 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du1340 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1346 = "Data.Nat.Properties.≤-total"
d1346 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1346 v0 v1
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
                  let v4 = d1346 (coe v2) (coe v3) in
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
name1368 = "Data.Nat.Properties.≤-irrelevant"
d1368 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1368 = erased
name1374 = "Data.Nat.Properties._≤?_"
d1374 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1374 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Relation.Nullary.C22
                (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           let v3
                 = MAlonzo.Code.Data.Bool.Properties.d1928
                     (coe (ltInt (coe v2) (coe v1))) in
           case coe v3 of
             MAlonzo.Code.Relation.Nullary.C22 v4
               -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe (du1300 (coe v2))))
             MAlonzo.Code.Relation.Nullary.C26
               -> coe (\ v5 -> MAlonzo.Code.Relation.Nullary.C26) erased
             _ -> MAlonzo.RTE.mazUnreachableError
name1396 = "Data.Nat.Properties._≥?_"
d1396 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1396 v0 v1 = coe (d1374 (coe v1) (coe v0))
name1400 = "Data.Nat.Properties.n<1+n"
d1400 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1400 v0 = coe (d1332 (coe (addInt (coe (1 :: Integer)) (coe v0))))
name1402 = "Data.Nat.Properties.≤-isPreorder"
d1402 :: MAlonzo.Code.Relation.Binary.T16
d1402
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         (coe d1328) (coe d1340))
name1404 = "Data.Nat.Properties.≤-isPartialOrder"
d1404 :: MAlonzo.Code.Relation.Binary.T256
d1404 = coe (MAlonzo.Code.Relation.Binary.C1639 (coe d1402) erased)
name1406 = "Data.Nat.Properties.≤-isTotalOrder"
d1406 :: MAlonzo.Code.Relation.Binary.T876
d1406
  = coe (MAlonzo.Code.Relation.Binary.C5461 (coe d1404) (coe d1346))
name1408 = "Data.Nat.Properties.≤-isDecTotalOrder"
d1408 :: MAlonzo.Code.Relation.Binary.T1010
d1408
  = coe
      (MAlonzo.Code.Relation.Binary.C6205
         (coe d1406) (coe d1268) (coe d1374))
name1410 = "Data.Nat.Properties.≤-preorder"
d1410 :: MAlonzo.Code.Relation.Binary.T74
d1410
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C807 v3) erased
      erased erased d1402
name1412 = "Data.Nat.Properties.≤-poset"
d1412 :: MAlonzo.Code.Relation.Binary.T310
d1412
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1973 v3) erased
      erased erased d1404
name1414 = "Data.Nat.Properties.≤-totalOrder"
d1414 :: MAlonzo.Code.Relation.Binary.T934
d1414
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C5847 v3) erased
      erased erased d1406
name1416 = "Data.Nat.Properties.≤-decTotalOrder"
d1416 :: MAlonzo.Code.Relation.Binary.T1084
d1416
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C6763 v3) erased
      erased erased d1408
name1426 = "Data.Nat.Properties.s≤s-injective"
d1426 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1426 = erased
name1432 = "Data.Nat.Properties.≤-step"
d1432 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1432 v0 v1 v2 = du1432 v2
du1432 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1432 v0 = coe v0
name1438 = "Data.Nat.Properties.n≤1+n"
d1438 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1438 v0 = coe (d1332 (coe v0))
name1442 = "Data.Nat.Properties.1+n≰n"
d1442 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1442 = erased
name1448 = "Data.Nat.Properties.n≤0⇒n≡0"
d1448 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1448 = erased
name1450 = "Data.Nat.Properties.<⇒≤"
d1450 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1450 v0 v1 v2 = du1450 v1 v2
du1450 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1450 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1340 (coe v4) (coe (d1332 (coe v5))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1454 = "Data.Nat.Properties.<⇒≢"
d1454 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1454 = erased
name1458 = "Data.Nat.Properties.≤⇒≯"
d1458 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1458 = erased
name1464 = "Data.Nat.Properties.<⇒≱"
d1464 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1464 = erased
name1470 = "Data.Nat.Properties.<⇒≯"
d1470 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1470 = erased
name1476 = "Data.Nat.Properties.≰⇒≮"
d1476 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1476 = erased
name1482 = "Data.Nat.Properties.≰⇒>"
d1482 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1482 v0 v1 v2 = du1482 v0 v1
du1482 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1482 v0 v1
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
                    (du1482 (coe v2) (coe v3))
name1494 = "Data.Nat.Properties.≰⇒≥"
d1494 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1494 v0 v1 v2 = du1494 v0 v1
du1494 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1494 v0 v1
  = coe (du1450 (coe v0) (coe (du1482 (coe v0) (coe v1))))
name1496 = "Data.Nat.Properties.≮⇒≥"
d1496 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1496 v0 v1 v2 = du1496 v0 v1
du1496 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1496 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du1496 (coe v3) (coe v2))
name1512 = "Data.Nat.Properties.≤∧≢⇒<"
d1512 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1512 v0 v1 v2 v3 = du1512 v1 v2
du1512 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1512 v0 v1
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
                    (du1512 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1526 = "Data.Nat.Properties.≤-<-connex"
d1526 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1526 v0 v1
  = let v2 = d1374 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3
        -> coe (MAlonzo.Code.Data.Sum.Base.C38 (coe v3))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C42 (coe (du1482 (coe v0) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1548 = "Data.Nat.Properties.≥->-connex"
d1548 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1548 v0 v1 = coe (d1526 (coe v1) (coe v0))
name1550 = "Data.Nat.Properties.<-≤-connex"
d1550 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1550
  = coe (MAlonzo.Code.Relation.Binary.Consequences.du782 (coe d1526))
name1552 = "Data.Nat.Properties.>-≥-connex"
d1552 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d1552
  = coe (MAlonzo.Code.Relation.Binary.Consequences.du782 (coe d1548))
name1554 = "Data.Nat.Properties.<-irrefl"
d1554 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1554 = erased
name1558 = "Data.Nat.Properties.<-asym"
d1558 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1558 = erased
name1564 = "Data.Nat.Properties.<-trans"
d1564 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1564 v0 v1 v2 v3 v4 = du1564 v1 v3 v4
du1564 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1564 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v8
               -> let v9 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v10 v11 v12 -> MAlonzo.Code.Data.Nat.Base.C18 v12) erased erased
                    (du1340 (coe v5) (coe (du1340 (coe (d1438 (coe v9))) (coe v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1570 = "Data.Nat.Properties.<-transʳ"
d1570 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1570 v0 v1 v2 v3 v4 = du1570 v3 v4
du1570 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1570 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> coe
             (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
             (du1340 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name1576 = "Data.Nat.Properties.<-transˡ"
d1576 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1576 v0 v1 v2 v3 v4 = du1576 v3 v4
du1576 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1576 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du1340 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1582 = "Data.Nat.Properties.<-cmp"
d1582 ::
  Integer -> Integer -> MAlonzo.Code.Relation.Binary.Core.T198
d1582 v0 v1
  = let v2 = d1268 (coe v0) (coe v1) in
    let v3
          = MAlonzo.Code.Data.Bool.Properties.d1928
              (coe (ltInt (coe v0) (coe v1))) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v4
        -> coe
             (\ v5 v6 v7 -> MAlonzo.Code.Relation.Binary.Core.C220 v6) erased v4
             erased
      MAlonzo.Code.Relation.Nullary.C26
        -> case coe v3 of
             MAlonzo.Code.Relation.Nullary.C22 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Relation.Binary.Core.C212 v6)
                    (du1300 (coe v0)) erased erased
             MAlonzo.Code.Relation.Nullary.C26
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Relation.Binary.Core.C228 v8) erased
                    erased (du1512 (coe v0) (coe (du1496 (coe v0) (coe v1))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1614 = "Data.Nat.Properties._<?_"
d1614 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1614 v0 v1
  = coe (d1374 (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1))
name1620 = "Data.Nat.Properties._>?_"
d1620 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d1620 v0 v1 = coe (d1614 (coe v1) (coe v0))
name1622 = "Data.Nat.Properties.<-irrelevant"
d1622 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1622 = erased
name1624 = "Data.Nat.Properties.<-resp₂-≡"
d1624 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1624
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
name1630 = "Data.Nat.Properties.<-isStrictPartialOrder"
d1630 :: MAlonzo.Code.Relation.Binary.T570
d1630
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C3423 v0 v2 v3)
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70 erased
      d1564 d1624
name1632 = "Data.Nat.Properties.<-isStrictTotalOrder"
d1632 :: MAlonzo.Code.Relation.Binary.T1202
d1632
  = coe
      (MAlonzo.Code.Relation.Binary.C7321
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         (coe d1564) (coe d1582))
name1634 = "Data.Nat.Properties.<-strictPartialOrder"
d1634 :: MAlonzo.Code.Relation.Binary.T628
d1634
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C4141 v3) erased
      erased erased d1630
name1636 = "Data.Nat.Properties.<-strictTotalOrder"
d1636 :: MAlonzo.Code.Relation.Binary.T1268
d1636
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C8495 v3) erased
      erased erased d1632
name1640 = "Data.Nat.Properties.n≮n"
d1640 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d1640 = erased
name1648 = "Data.Nat.Properties.m<n⇒n≢0"
d1648 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1648 = erased
name1654 = "Data.Nat.Properties.n≢0⇒n>0"
d1654 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d1654 v0 v1 = du1654 v0
du1654 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1654 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> coe
             (\ v1 v2 v3 -> MAlonzo.Code.Data.Nat.Base.C18 v3) erased erased
             (coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
name1664 = "Data.Nat.Properties.≤-Reasoning._._<⟨_⟩_"
d1664 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1664
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du202
         (coe d1564)
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66)
         (coe d1576))
name1666 = "Data.Nat.Properties.≤-Reasoning._._IsRelatedTo_"
d1666 a0 a1 = ()
name1668 = "Data.Nat.Properties.≤-Reasoning._._∎"
d1668 ::
  Integer -> MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1668
  = let v0 = d1402 in
    coe
      (\ v1 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C84
           (coe
              MAlonzo.Code.Relation.Binary.Core.d414
              (MAlonzo.Code.Relation.Binary.d36 (coe v0)) v1))
name1670 = "Data.Nat.Properties.≤-Reasoning._._≈˘⟨_⟩_"
d1670 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1670
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du280
         (coe d1402)
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66))
name1672 = "Data.Nat.Properties.≤-Reasoning._._≡˘⟨_⟩_"
d1672 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1672 v0 v1 v2 v3 v4 = du1672 v4
du1672 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1672 v0 = coe v0
name1674 = "Data.Nat.Properties.≤-Reasoning._._≡⟨_⟩_"
d1674 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1674 v0 v1 v2 v3 v4 = du1674 v4
du1674 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
du1674 v0 = coe v0
name1676 = "Data.Nat.Properties.≤-Reasoning._._≡⟨⟩_"
d1676 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1676 v0 = coe v0
name1678 = "Data.Nat.Properties.≤-Reasoning._._≤⟨_⟩_"
d1678 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68
d1678
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
         (coe d1402) (coe d1570))
name1680 = "Data.Nat.Properties.≤-Reasoning._.IsEquality"
d1680 a0 a1 a2 = ()
name1682 = "Data.Nat.Properties.≤-Reasoning._.IsEquality?"
d1682 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
d1682
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du140 v2)
name1684 = "Data.Nat.Properties.≤-Reasoning._.IsStrict"
d1684 a0 a1 a2 = ()
name1686 = "Data.Nat.Properties.≤-Reasoning._.IsStrict?"
d1686 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Nullary.T14
d1686
  = coe
      (\ v0 v1 v2 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du106 v2)
name1688 = "Data.Nat.Properties.≤-Reasoning._.begin_"
d1688 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1688
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
         (coe d1402) (coe d1450))
name1690 = "Data.Nat.Properties.≤-Reasoning._.begin-equality_"
d1690 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1690 = erased
name1692 = "Data.Nat.Properties.≤-Reasoning._.begin-strict_"
d1692 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  AgdaAny -> MAlonzo.Code.Data.Nat.Base.T6
d1692
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du176 v2)
name1696 = "Data.Nat.Properties.≤-Reasoning._.extractEquality"
d1696 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T124 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1696 = erased
name1698 = "Data.Nat.Properties.≤-Reasoning._.extractStrict"
d1698 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T68 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T90 ->
  MAlonzo.Code.Data.Nat.Base.T6
d1698
  = coe
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du116 v2 v3)
name1724 = "Data.Nat.Properties.pred-mono"
d1724 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1724 v0 v1 v2 = du1724 v2
du1724 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1724 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1732 = "Data.Nat.Properties.≤pred⇒≤"
d1732 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1732 v0 v1 v2 = du1732 v1 v2
du1732 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1732 v0 v1 = coe (seq (coe v0) (coe v1))
name1748 = "Data.Nat.Properties.≤⇒pred≤"
d1748 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1748 v0 v1 v2 = du1748 v0 v2
du1748 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1748 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du1340 (coe (d1438 (coe v2))) (coe v1))
name1760 = "Data.Nat.Properties.<⇒≤pred"
d1760 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1760 v0 v1 v2 = du1760 v2
du1760 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1760 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1766 = "Data.Nat.Properties.suc[pred[n]]≡n"
d1766 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1766 = erased
name1778 = "Data.Nat.Properties.+-suc"
d1778 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1778 = erased
name1786 = "Data.Nat.Properties.+-assoc"
d1786 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1786 = erased
name1794 = "Data.Nat.Properties.+-identityˡ"
d1794 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1794 = erased
name1796 = "Data.Nat.Properties.+-identityʳ"
d1796 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1796 = erased
name1800 = "Data.Nat.Properties.+-identity"
d1800 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1800 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1802 = "Data.Nat.Properties.+-comm"
d1802 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1802 = erased
name1810 = "Data.Nat.Properties.+-cancelˡ-≡"
d1810 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1810 = erased
name1818 = "Data.Nat.Properties.+-cancelʳ-≡"
d1818 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1818 = erased
name1820 = "Data.Nat.Properties.+-cancel-≡"
d1820 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1820 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1822 = "Data.Nat.Properties.+-isMagma"
d1822 :: MAlonzo.Code.Algebra.Structures.T84
d1822
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased)
name1824 = "Data.Nat.Properties.+-isSemigroup"
d1824 :: MAlonzo.Code.Algebra.Structures.T118
d1824
  = coe (MAlonzo.Code.Algebra.Structures.C781 (coe d1822) erased)
name1826 = "Data.Nat.Properties.+-0-isMonoid"
d1826 :: MAlonzo.Code.Algebra.Structures.T268
d1826
  = coe
      (MAlonzo.Code.Algebra.Structures.C1873 (coe d1824) (coe d1800))
name1828 = "Data.Nat.Properties.+-0-isCommutativeMonoid"
d1828 :: MAlonzo.Code.Algebra.Structures.T314
d1828
  = coe
      (MAlonzo.Code.Algebra.Structures.C2409 (coe d1824) erased erased)
name1830 = "Data.Nat.Properties.+-magma"
d1830 :: MAlonzo.Code.Algebra.T28
d1830
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      addInt d1822
name1832 = "Data.Nat.Properties.+-semigroup"
d1832 :: MAlonzo.Code.Algebra.T76
d1832
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C285 v2 v3) erased erased
      addInt d1824
name1834 = "Data.Nat.Properties.+-0-monoid"
d1834 :: MAlonzo.Code.Algebra.T346
d1834
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1409 v2 v3 v4) erased
      erased addInt (0 :: Integer) d1826
name1836 = "Data.Nat.Properties.+-0-commutativeMonoid"
d1836 :: MAlonzo.Code.Algebra.T418
d1836
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1739 v2 v3 v4) erased
      erased addInt (0 :: Integer) d1828
name1842 = "Data.Nat.Properties.m≢1+m+n"
d1842 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1842 = erased
name1852 = "Data.Nat.Properties.m≢1+n+m"
d1852 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1852 = erased
name1862 = "Data.Nat.Properties.m+1+n≢m"
d1862 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1862 = erased
name1870 = "Data.Nat.Properties.m+1+n≢0"
d1870 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1870 = erased
name1884 = "Data.Nat.Properties.m+n≡0⇒m≡0"
d1884 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1884 = erased
name1892 = "Data.Nat.Properties.m+n≡0⇒n≡0"
d1892 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1892 = erased
name1900 = "Data.Nat.Properties.+-cancelˡ-≤"
d1900 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1900 v0 v1 v2 v3 = du1900 v0 v3
du1900 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1900 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5 -> coe (du1900 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name1908 = "Data.Nat.Properties.+-cancelʳ-≤"
d1908 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1908 v0 v1 v2 v3 = du1908 v0 v3
du1908 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1908 v0 v1 = coe (du1900 (coe v0) (coe v1))
name1918 = "Data.Nat.Properties.+-cancel-≤"
d1918 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1918
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1900) (coe d1908))
name1920 = "Data.Nat.Properties.+-cancelˡ-<"
d1920 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1920 v0 v1 v2 v3 = du1920 v0 v3
du1920 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1920 v0 v1 = coe (du1900 (coe v0) (coe v1))
name1930 = "Data.Nat.Properties.+-cancelʳ-<"
d1930 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1930 v0 v1 v2 v3 = du1930 v0 v3
du1930 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1930 v0 v1 = coe (du1908 (coe v0) (coe v1))
name1938 = "Data.Nat.Properties.+-cancel-<"
d1938 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1938
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1920) (coe d1930))
name1946 = "Data.Nat.Properties.≤-stepsˡ"
d1946 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1946 v0 v1 v2 v3 = du1946 v3
du1946 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1946 v0 = coe v0
name1960 = "Data.Nat.Properties.≤-stepsʳ"
d1960 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d1960 v0 v1 v2 v3 = du1960 v3
du1960 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du1960 v0 = coe v0
name1974 = "Data.Nat.Properties.m≤m+n"
d1974 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1974 v0 v1 = du1974 v0
du1974 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1974 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du1974 (coe v1))
name1986 = "Data.Nat.Properties.m≤n+m"
d1986 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d1986 v0 v1 = du1986 v0
du1986 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du1986 v0 = coe (du1974 (coe v0))
name2000 = "Data.Nat.Properties.m+n≤o⇒m≤o"
d2000 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2000 v0 v1 v2 v3 = du2000 v0 v3
du2000 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2000 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                    (du2000 (coe v2) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
name2014 = "Data.Nat.Properties.m+n≤o⇒n≤o"
d2014 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2014 v0 v1 v2 v3 = du2014 v0 v2 v3
du2014 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2014 v0 v1 v2
  = case coe v0 of
      0 -> coe v2
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du2014 (coe v3) (coe v1) (coe (du1450 (coe v1) (coe v2))))
name2022 = "Data.Nat.Properties.+-mono-≤"
d2022 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2022 v0 v1 v2 v3 v4 v5 = du2022 v3 v4 v5
du2022 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2022 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (du1340 (coe v2) (coe (du1986 (coe v0))))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
             (du2022 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name2036 = "Data.Nat.Properties.+-monoˡ-≤"
d2036 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2036 v0 v1 v2 v3 = du2036 v0 v3
du2036 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2036 v0 v1
  = coe (du2022 (coe v0) (coe v1) (coe (d1332 (coe v0))))
name2046 = "Data.Nat.Properties.+-monoʳ-≤"
d2046 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2046 v0 v1 v2 v3 = du2046 v0 v2 v3
du2046 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2046 v0 v1 v2
  = coe (du2022 (coe v1) (coe (d1332 (coe v0))) (coe v2))
name2052 = "Data.Nat.Properties.+-mono-<-≤"
d2052 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2052 v0 v1 v2 v3 v4 v5 = du2052 v4 v5
du2052 ::
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2052 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> case coe v4 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased v1
             MAlonzo.Code.Data.Nat.Base.C18 v7
               -> coe
                    (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                    (du2052
                       (coe
                          (\ v8 v9 v10 -> MAlonzo.Code.Data.Nat.Base.C18 v10) erased erased
                          v7)
                       (coe v1))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2062 = "Data.Nat.Properties.+-mono-≤-<"
d2062 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2062 v0 v1 v2 v3 v4 v5 = du2062 v3 v4 v5
du2062 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2062 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (du1340 (coe v2) (coe (du1986 (coe v0))))
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> coe
             (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
             (du2062 (coe v0) (coe v5) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name2072 = "Data.Nat.Properties.+-mono-<"
d2072 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2072 v0 v1 v2 v3 v4 = du2072 v1 v3 v4
du2072 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2072 v0 v1 v2
  = coe (du2062 (coe v1) (coe (du1450 (coe v0) (coe v2))))
name2080 = "Data.Nat.Properties.+-monoˡ-<"
d2080 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2080 v0 v1 v2 = du2080 v0
du2080 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2080 v0 = coe (du2036 (coe v0))
name2088 = "Data.Nat.Properties.+-monoʳ-<"
d2088 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2088 v0 v1 v2 v3 = du2088 v0 v3
du2088 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2088 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 v4 v5 -> MAlonzo.Code.Data.Nat.Base.C18 v5) erased erased
             (du2088 (coe v2) (coe v1))
name2100 = "Data.Nat.Properties.m+1+n≰m"
d2100 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2100 = erased
name2110 = "Data.Nat.Properties.m+n≮n"
d2110 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2110 = erased
name2124 = "Data.Nat.Properties.m+n≮m"
d2124 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d2124 = erased
name2136 = "Data.Nat.Properties.*-suc"
d2136 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2136 = erased
name2148 = "Data.Nat.Properties.*-identityˡ"
d2148 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2148 = erased
name2152 = "Data.Nat.Properties.*-identityʳ"
d2152 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2152 = erased
name2156 = "Data.Nat.Properties.*-identity"
d2156 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2156 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2158 = "Data.Nat.Properties.*-zeroˡ"
d2158 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2158 = erased
name2160 = "Data.Nat.Properties.*-zeroʳ"
d2160 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2160 = erased
name2164 = "Data.Nat.Properties.*-zero"
d2164 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2164 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2166 = "Data.Nat.Properties.*-comm"
d2166 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2166 = erased
name2176 = "Data.Nat.Properties.*-distribʳ-+"
d2176 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2176 = erased
name2190 = "Data.Nat.Properties.*-distribˡ-+"
d2190 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2190 = erased
name2192 = "Data.Nat.Properties.*-distrib-+"
d2192 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2192 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2194 = "Data.Nat.Properties.*-assoc"
d2194 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2194 = erased
name2208 = "Data.Nat.Properties.*-isMagma"
d2208 :: MAlonzo.Code.Algebra.Structures.T84
d2208
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased)
name2210 = "Data.Nat.Properties.*-isSemigroup"
d2210 :: MAlonzo.Code.Algebra.Structures.T118
d2210
  = coe (MAlonzo.Code.Algebra.Structures.C781 (coe d2208) erased)
name2212 = "Data.Nat.Properties.*-1-isMonoid"
d2212 :: MAlonzo.Code.Algebra.Structures.T268
d2212
  = coe
      (MAlonzo.Code.Algebra.Structures.C1873 (coe d2210) (coe d2156))
name2214 = "Data.Nat.Properties.*-1-isCommutativeMonoid"
d2214 :: MAlonzo.Code.Algebra.Structures.T314
d2214
  = coe
      (MAlonzo.Code.Algebra.Structures.C2409 (coe d2210) erased erased)
name2216 = "Data.Nat.Properties.*-+-isSemiring"
d2216 :: MAlonzo.Code.Algebra.Structures.T1092
d2216
  = coe
      (MAlonzo.Code.Algebra.Structures.C10649
         (coe
            (MAlonzo.Code.Algebra.Structures.C9521
               (coe d1828) (coe d2212) (coe d2192)))
         (coe d2164))
name2218 = "Data.Nat.Properties.*-+-isCommutativeSemiring"
d2218 :: MAlonzo.Code.Algebra.Structures.T1192
d2218
  = coe
      (MAlonzo.Code.Algebra.Structures.C11793
         (coe d1828) (coe d2214) erased erased)
name2220 = "Data.Nat.Properties.*-magma"
d2220 :: MAlonzo.Code.Algebra.T28
d2220
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      mulInt d2208
name2222 = "Data.Nat.Properties.*-semigroup"
d2222 :: MAlonzo.Code.Algebra.T76
d2222
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C285 v2 v3) erased erased
      mulInt d2210
name2224 = "Data.Nat.Properties.*-1-monoid"
d2224 :: MAlonzo.Code.Algebra.T346
d2224
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1409 v2 v3 v4) erased
      erased mulInt (1 :: Integer) d2212
name2226 = "Data.Nat.Properties.*-1-commutativeMonoid"
d2226 :: MAlonzo.Code.Algebra.T418
d2226
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1739 v2 v3 v4) erased
      erased mulInt (1 :: Integer) d2214
name2228 = "Data.Nat.Properties.*-+-semiring"
d2228 :: MAlonzo.Code.Algebra.T1550
d2228
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.C6161 v2 v3 v4 v5 v6)
      erased erased addInt mulInt (0 :: Integer) (1 :: Integer) d2216
name2230 = "Data.Nat.Properties.*-+-commutativeSemiring"
d2230 :: MAlonzo.Code.Algebra.T1698
d2230
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.C6801 v2 v3 v4 v5 v6)
      erased erased addInt mulInt (0 :: Integer) (1 :: Integer) d2218
name2238 = "Data.Nat.Properties.*-cancelʳ-≡"
d2238 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2238 = erased
name2256 = "Data.Nat.Properties.*-cancelˡ-≡"
d2256 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2256 = erased
name2270 = "Data.Nat.Properties.m*n≡0⇒m≡0∨n≡0"
d2270 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d2270 v0 v1 v2 = du2270 v0
du2270 :: Integer -> MAlonzo.Code.Data.Sum.Base.T30
du2270 v0
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
name2284 = "Data.Nat.Properties.m*n≡1⇒m≡1"
d2284 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2284 = erased
name2298 = "Data.Nat.Properties.m*n≡1⇒n≡1"
d2298 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2298 = erased
name2312 = "Data.Nat.Properties.*-cancelʳ-≤"
d2312 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2312 v0 v1 v2 v3 = du2312 v0
du2312 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2312 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du2312 (coe v1))
name2322 = "Data.Nat.Properties.*-mono-≤"
d2322 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2322 v0 v1 v2 v3 v4 v5 = du2322 v1 v3 v4 v5
du2322 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2322 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C10
        -> coe (\ v5 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Nat.Base.C18 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (du2022
                (coe (mulInt (coe v7) (coe v1))) (coe v3)
                (coe (du2322 (coe v7) (coe v1) (coe v6) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name2332 = "Data.Nat.Properties.*-monoˡ-≤"
d2332 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2332 v0 v1 v2 v3 = du2332 v0 v2 v3
du2332 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2332 v0 v1 v2
  = coe (du2322 (coe v1) (coe v0) (coe v2) (coe (d1332 (coe v0))))
name2342 = "Data.Nat.Properties.*-monoʳ-≤"
d2342 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2342 v0 v1 v2 v3 = du2342 v0 v2 v3
du2342 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2342 v0 v1 v2
  = coe (du2322 (coe v0) (coe v1) (coe (d1332 (coe v0))) (coe v2))
name2348 = "Data.Nat.Properties.*-mono-<"
d2348 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2348 v0 v1 v2 v3 v4 v5 = du2348 v1 v3 v4 v5
du2348 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2348 v0 v1 v2 v3
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
                           du2072 v1
                           (mulInt (coe (subInt (coe v0) (coe (1 :: Integer)))) (coe v1))
                           (coe
                              (\ v13 v14 v15 -> MAlonzo.Code.Data.Nat.Base.C18 v15) erased erased
                              v12)
                           (du2348
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
name2360 = "Data.Nat.Properties.*-monoˡ-<"
d2360 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2360 v0 v1 v2 v3 = du2360 v0 v2 v3
du2360 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2360 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Nat.Base.C18 v5
        -> case coe v5 of
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased
                    (coe (\ v7 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
             MAlonzo.Code.Data.Nat.Base.C18 v8
               -> coe
                    (du2062
                       (coe
                          (mulInt
                             (coe (subInt (coe v1) (coe (1 :: Integer))))
                             (coe (addInt (coe (1 :: Integer)) (coe v0)))))
                       (coe (d1332 (coe (addInt (coe (1 :: Integer)) (coe v0)))))
                       (coe
                          (du2360
                             (coe v0) (coe (subInt (coe v1) (coe (1 :: Integer))))
                             (coe
                                (\ v9 v10 v11 -> MAlonzo.Code.Data.Nat.Base.C18 v11) erased erased
                                v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name2372 = "Data.Nat.Properties.*-monoʳ-<"
d2372 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2372 v0 v1 v2 v3 = du2372 v0 v2 v3
du2372 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2372 v0 v1 v2
  = case coe v0 of
      0 -> case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v5
               -> coe
                    (du2022
                       (coe (0 :: Integer))
                       (coe
                          (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased v5)
                       (coe (\ v6 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Nat.Base.C18 v6
               -> coe
                    (du2022
                       (coe (mulInt (coe v0) (coe v1)))
                       (coe
                          (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased erased v6)
                       (coe
                          (du1450
                             (coe (mulInt (coe v0) (coe v1)))
                             (coe
                                (du2372
                                   (coe v3) (coe v1)
                                   (coe
                                      (\ v7 v8 v9 -> MAlonzo.Code.Data.Nat.Base.C18 v9) erased
                                      erased v6))))))
             _ -> MAlonzo.RTE.mazUnreachableError
name2384 = "Data.Nat.Properties.m≤m*n"
d2384 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2384 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du160
         (coe d1402) (coe d1450) (coe v0) (coe (mulInt (coe v0) (coe v1)))
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
               (coe d1402) (coe d1570)
               (coe (mulInt (coe v0) (coe (1 :: Integer))))
               (coe (mulInt (coe v0) (coe v1))) (coe (mulInt (coe v0) (coe v1)))
               (coe (du2342 (coe v0) (coe v1) (coe v2)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C84
                     (coe
                        MAlonzo.Code.Relation.Binary.Core.d414
                        (MAlonzo.Code.Relation.Binary.d36 (coe d1402))
                        (mulInt (coe v0) (coe v1))))))))
name2396 = "Data.Nat.Properties.m<m*n"
d2396 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2396 v0 v1 v2 v3
  = let v4 = subInt (coe v0) (coe (1 :: Integer)) in
    coe
      (seq
         (coe v2)
         (case coe v3 of
            MAlonzo.Code.Data.Nat.Base.C18 v7
              -> let v8 = subInt (coe v1) (coe (2 :: Integer)) in
                 coe
                   (seq
                      (coe v7)
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du176
                            (coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du202
                                  (coe d1564)
                                  (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du66)
                                  (coe d1576) (coe (du2406 (coe v4)))
                                  (coe
                                     (subInt (coe (addInt (coe v0) (coe v1))) (coe (1 :: Integer))))
                                  (coe (mulInt (coe (du2406 (coe v4))) (coe (du2408 (coe v8)))))
                                  (coe
                                     (\ v9 v10 v11 -> MAlonzo.Code.Data.Nat.Base.C18 v11) erased
                                     erased
                                     (coe
                                        (\ v9 v10 v11 -> MAlonzo.Code.Data.Nat.Base.C18 v11) erased
                                        erased (du1986 (coe v4))))
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du228
                                        (coe d1402) (coe d1570)
                                        (coe (addInt (coe (du2408 (coe v8))) (coe v4)))
                                        (coe
                                           (addInt
                                              (coe (du2408 (coe v8)))
                                              (coe (mulInt (coe v4) (coe v1)))))
                                        (coe
                                           (mulInt (coe (du2406 (coe v4))) (coe (du2408 (coe v8)))))
                                        (coe
                                           (du2046
                                              (coe (du2408 (coe v8)))
                                              (coe (mulInt (coe v4) (coe v1)))
                                              (coe
                                                 (d2384
                                                    (coe v4) (coe v1)
                                                    (coe
                                                       (\ v9 v10 v11 ->
                                                          MAlonzo.Code.Data.Nat.Base.C18 v11)
                                                       erased erased
                                                       (coe
                                                          (\ v9 -> MAlonzo.Code.Data.Nat.Base.C10)
                                                          erased))))))
                                        (coe
                                           (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C84
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Core.d414
                                                 (MAlonzo.Code.Relation.Binary.d36 (coe d1402))
                                                 (mulInt
                                                    (coe (du2406 (coe v4)))
                                                    (coe (du2408 (coe v8))))))))))))))
            _ -> MAlonzo.RTE.mazUnreachableError))
name2406 = "Data.Nat.Properties._.m"
d2406 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> Integer
d2406 v0 v1 v2 v3 = du2406 v1
du2406 :: Integer -> Integer
du2406 v0 = coe (addInt (coe (1 :: Integer)) (coe v0))
name2408 = "Data.Nat.Properties._.n"
d2408 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> Integer
d2408 v0 v1 v2 v3 = du2408 v0
du2408 :: Integer -> Integer
du2408 v0 = coe (addInt (coe (2 :: Integer)) (coe v0))
name2410 = "Data.Nat.Properties.*-cancelʳ-<"
d2410 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2410 v0 v1 v2 v3 = du2410 v0 v1 v2
du2410 ::
  Integer -> Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2410 v0 v1 v2
  = let v3
          = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
            let v4 = subInt (coe v2) (coe (1 :: Integer)) in
            coe
              (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
              (du2410 (coe v0) (coe v3) (coe v4)) in
    coe
      (seq
         (coe v0)
         (case coe v1 of
            0 -> case coe v2 of
                   _ | coe (geqInt (coe v2) (coe (1 :: Integer))) ->
                       coe
                         (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                         (coe (\ v4 -> MAlonzo.Code.Data.Nat.Base.C10) erased)
                   _ -> coe v3
            _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                 case coe v2 of
                   _ | coe (geqInt (coe v2) (coe (1 :: Integer))) ->
                       let v5 = subInt (coe v2) (coe (1 :: Integer)) in
                       coe
                         (\ v6 v7 v8 -> MAlonzo.Code.Data.Nat.Base.C18 v8) erased erased
                         (du2410 (coe v0) (coe v4) (coe v5))
                   _ -> coe v3))
name2426 = "Data.Nat.Properties.*-cancelˡ-<"
d2426 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2426 v0 v1 v2 = coe (\ v3 -> du2410 (coe v0) (coe v1) (coe v2))
name2442 = "Data.Nat.Properties.*-cancel-<"
d2442 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2442
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d2426) (coe d2410))
name2444 = "Data.Nat.Properties.^-identityʳ"
d2444 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2444 = erased
name2448 = "Data.Nat.Properties.^-zeroˡ"
d2448 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2448 = erased
name2458 = "Data.Nat.Properties.^-distribˡ-+-*"
d2458 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2458 = erased
name2476 = "Data.Nat.Properties.^-semigroup-morphism"
d2476 :: Integer -> MAlonzo.Code.Algebra.Morphism.T328
d2476 v0 = du2476
du2476 :: MAlonzo.Code.Algebra.Morphism.T328
du2476 = coe (MAlonzo.Code.Algebra.Morphism.C1499 erased erased)
name2484 = "Data.Nat.Properties.^-monoid-morphism"
d2484 :: Integer -> MAlonzo.Code.Algebra.Morphism.T470
d2484 v0 = du2484
du2484 :: MAlonzo.Code.Algebra.Morphism.T470
du2484
  = coe (MAlonzo.Code.Algebra.Morphism.C1803 (coe du2476) erased)
name2492 = "Data.Nat.Properties.^-*-assoc"
d2492 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2492 = erased
name2514 = "Data.Nat.Properties.m^n≡0⇒m≡0"
d2514 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2514 = erased
name2526 = "Data.Nat.Properties.m^n≡1⇒n≡0∨m≡1"
d2526 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d2526 v0 v1 v2 = du2526 v1
du2526 :: Integer -> MAlonzo.Code.Data.Sum.Base.T30
du2526 v0
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
name2536 = "Data.Nat.Properties.⊔-assoc"
d2536 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2536 = erased
name2552 = "Data.Nat.Properties.⊔-identityˡ"
d2552 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2552 = erased
name2554 = "Data.Nat.Properties.⊔-identityʳ"
d2554 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2554 = erased
name2558 = "Data.Nat.Properties.⊔-identity"
d2558 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2558 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2560 = "Data.Nat.Properties.⊔-comm"
d2560 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2560 = erased
name2570 = "Data.Nat.Properties.⊔-sel"
d2570 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d2570 v0 v1
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d2570 (coe v2) (coe v3))
name2594 = "Data.Nat.Properties.⊔-idem"
d2594 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2594 = erased
name2602 = "Data.Nat.Properties.⊔-least"
d2602 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2602 v0 v1 v2 v3 v4 = du2602 v0 v1 v3 v4
du2602 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2602 v0 v1 v2 v3
  = let v4 = d2570 (coe v0) (coe v1) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v2
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name2644 = "Data.Nat.Properties.⊔-isMagma"
d2644 :: MAlonzo.Code.Algebra.Structures.T84
d2644
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased)
name2646 = "Data.Nat.Properties.⊔-isSemigroup"
d2646 :: MAlonzo.Code.Algebra.Structures.T118
d2646
  = coe (MAlonzo.Code.Algebra.Structures.C781 (coe d2644) erased)
name2648 = "Data.Nat.Properties.⊔-isBand"
d2648 :: MAlonzo.Code.Algebra.Structures.T152
d2648
  = coe (MAlonzo.Code.Algebra.Structures.C1021 (coe d2646) erased)
name2650 = "Data.Nat.Properties.⊔-isSemilattice"
d2650 :: MAlonzo.Code.Algebra.Structures.T190
d2650
  = coe (MAlonzo.Code.Algebra.Structures.C1305 (coe d2648) erased)
name2652 = "Data.Nat.Properties.⊔-0-isCommutativeMonoid"
d2652 :: MAlonzo.Code.Algebra.Structures.T314
d2652
  = coe
      (MAlonzo.Code.Algebra.Structures.C2409 (coe d2646) erased erased)
name2654 = "Data.Nat.Properties.⊔-magma"
d2654 :: MAlonzo.Code.Algebra.T28
d2654
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d74 d2644
name2656 = "Data.Nat.Properties.⊔-semigroup"
d2656 :: MAlonzo.Code.Algebra.T76
d2656
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C285 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d74 d2646
name2658 = "Data.Nat.Properties.⊔-band"
d2658 :: MAlonzo.Code.Algebra.T132
d2658
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C515 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d74 d2648
name2660 = "Data.Nat.Properties.⊔-semilattice"
d2660 :: MAlonzo.Code.Algebra.T194
d2660
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C771 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d74 d2650
name2662 = "Data.Nat.Properties.⊔-0-commutativeMonoid"
d2662 :: MAlonzo.Code.Algebra.T418
d2662
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1739 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Nat.Base.d74 (0 :: Integer) d2652
name2670 = "Data.Nat.Properties.⊔-triangulate"
d2670 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2670 = erased
name2686 = "Data.Nat.Properties.m≤m⊔n"
d2686 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2686 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (d1332 (coe v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d2686 (coe v2) (coe v3))
name2698 = "Data.Nat.Properties.n≤m⊔n"
d2698 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2698 v0 v1 = coe (d2686 (coe v1) (coe v0))
name2710 = "Data.Nat.Properties.m≤n⇒n⊔m≡n"
d2710 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2710 = erased
name2718 = "Data.Nat.Properties.m≤n⇒m⊔n≡n"
d2718 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d2718 = erased
name2728 = "Data.Nat.Properties.n⊔m≡m⇒n≤m"
d2728 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2728 v0 v1 v2 = du2728 v0 v1
du2728 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2728 v0 v1 = coe (d2686 (coe v1) (coe v0))
name2738 = "Data.Nat.Properties.n⊔m≡n⇒m≤n"
d2738 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d2738 v0 v1 v2 = du2738 v0 v1
du2738 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du2738 v0 v1 = coe (d2698 (coe v1) (coe v0))
name2750 = "Data.Nat.Properties.m≤n⇒m≤n⊔o"
d2750 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2750 v0 v1 v2 v3 = du2750 v1 v2 v3
du2750 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2750 v0 v1 v2
  = coe (du1340 (coe v2) (coe (d2686 (coe v0) (coe v1))))
name2762 = "Data.Nat.Properties.m≤n⇒m≤o⊔n"
d2762 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2762 v0 v1 v2 v3 = du2762 v1 v2 v3
du2762 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2762 v0 v1 v2
  = coe (du1340 (coe v2) (coe (d2698 (coe v1) (coe v0))))
name2774 = "Data.Nat.Properties.m⊔n≤o⇒m≤o"
d2774 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2774 v0 v1 v2 v3 = du2774 v0 v1 v3
du2774 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2774 v0 v1 v2
  = coe (du1340 (coe (d2686 (coe v0) (coe v1))) (coe v2))
name2788 = "Data.Nat.Properties.m⊔n≤o⇒n≤o"
d2788 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2788 v0 v1 v2 v3 = du2788 v0 v1 v3
du2788 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2788 v0 v1 v2
  = coe (du1340 (coe (d2698 (coe v0) (coe v1))) (coe v2))
name2802 = "Data.Nat.Properties.m<n⇒m<n⊔o"
d2802 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2802 v0 v1 = du2802 v1
du2802 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2802 v0 = coe (du2750 (coe v0))
name2810 = "Data.Nat.Properties.m<n⇒m<o⊔n"
d2810 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2810 v0 v1 = du2810 v1
du2810 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2810 v0 = coe (du2762 (coe v0))
name2818 = "Data.Nat.Properties.m⊔n<o⇒m<o"
d2818 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2818 v0 v1 v2 v3 = du2818 v0 v1 v3
du2818 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2818 v0 v1 v2
  = coe (du1570 (coe (d2686 (coe v0) (coe v1))) (coe v2))
name2832 = "Data.Nat.Properties.m⊔n<o⇒n<o"
d2832 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2832 v0 v1 v2 v3 = du2832 v0 v1 v3
du2832 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du2832 v0 v1 v2
  = coe (du1570 (coe (d2698 (coe v0) (coe v1))) (coe v2))
name2840 = "Data.Nat.Properties.⊔-mono-≤"
d2840 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2840 v0 v1 v2 v3 v4 v5
  = let v6 = d2570 (coe v0) (coe v2) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> coe (du1340 (coe v4) (coe (d2686 (coe v1) (coe v3))))
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe (du1340 (coe v5) (coe (d2698 (coe v1) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name2898 = "Data.Nat.Properties.⊔-monoˡ-≤"
d2898 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2898 v0 v1 v2 v3
  = coe
      (d2840
         (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
         (coe (d1332 (coe v0))))
name2908 = "Data.Nat.Properties.⊔-monoʳ-≤"
d2908 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2908 v0 v1 v2 v3
  = coe
      (d2840
         (coe v0) (coe v0) (coe v1) (coe v2) (coe (d1332 (coe v0)))
         (coe v3))
name2914 = "Data.Nat.Properties.⊔-mono-<"
d2914 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d2914 v0 v1 v2 v3
  = coe
      (d2840
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1)
         (coe (addInt (coe (1 :: Integer)) (coe v2))) (coe v3))
name2916 = "Data.Nat.Properties.+-distribˡ-⊔"
d2916 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2916 = erased
name2928 = "Data.Nat.Properties.+-distribʳ-⊔"
d2928 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2928 = erased
name2930 = "Data.Nat.Properties.+-distrib-⊔"
d2930 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2930 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2936 = "Data.Nat.Properties.m⊔n≤m+n"
d2936 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d2936 v0 v1
  = let v2 = d2570 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe (du1974 (coe v0))
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe (du1986 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name2966 = "Data.Nat.Properties.⊓-assoc"
d2966 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2966 = erased
name2982 = "Data.Nat.Properties.⊓-zeroˡ"
d2982 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2982 = erased
name2984 = "Data.Nat.Properties.⊓-zeroʳ"
d2984 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2984 = erased
name2988 = "Data.Nat.Properties.⊓-zero"
d2988 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d2988 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name2990 = "Data.Nat.Properties.⊓-comm"
d2990 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d2990 = erased
name3000 = "Data.Nat.Properties.⊓-sel"
d3000 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d3000 v0 v1
  = case coe v0 of
      0 -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d3000 (coe v2) (coe v3))
name3024 = "Data.Nat.Properties.⊓-idem"
d3024 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3024 = erased
name3032 = "Data.Nat.Properties.⊓-greatest"
d3032 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3032 v0 v1 v2 v3 v4 = du3032 v0 v1 v3 v4
du3032 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3032 v0 v1 v2 v3
  = let v4 = d3000 (coe v0) (coe v1) in
    case coe v4 of
      MAlonzo.Code.Data.Sum.Base.C38 v5 -> coe v2
      MAlonzo.Code.Data.Sum.Base.C42 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name3074 = "Data.Nat.Properties.⊓-distribʳ-⊔"
d3074 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3074 = erased
name3094 = "Data.Nat.Properties.⊓-distribˡ-⊔"
d3094 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3094 = erased
name3096 = "Data.Nat.Properties.⊓-distrib-⊔"
d3096 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3096 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3098 = "Data.Nat.Properties.⊔-abs-⊓"
d3098 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3098 = erased
name3108 = "Data.Nat.Properties.⊓-abs-⊔"
d3108 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3108 = erased
name3120 = "Data.Nat.Properties.⊓-⊔-absorptive"
d3120 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3120 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3122 = "Data.Nat.Properties.⊓-isMagma"
d3122 :: MAlonzo.Code.Algebra.Structures.T84
d3122
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased)
name3124 = "Data.Nat.Properties.⊓-isSemigroup"
d3124 :: MAlonzo.Code.Algebra.Structures.T118
d3124
  = coe (MAlonzo.Code.Algebra.Structures.C781 (coe d3122) erased)
name3126 = "Data.Nat.Properties.⊓-isBand"
d3126 :: MAlonzo.Code.Algebra.Structures.T152
d3126
  = coe (MAlonzo.Code.Algebra.Structures.C1021 (coe d3124) erased)
name3128 = "Data.Nat.Properties.⊓-isSemilattice"
d3128 :: MAlonzo.Code.Algebra.Structures.T190
d3128
  = coe (MAlonzo.Code.Algebra.Structures.C1305 (coe d3126) erased)
name3130 = "Data.Nat.Properties.⊔-⊓-isSemiringWithoutOne"
d3130 :: MAlonzo.Code.Algebra.Structures.T826
d3130
  = coe
      (MAlonzo.Code.Algebra.Structures.C7939
         (coe d2652) (coe d3124) (coe d3096) (coe d2988))
name3132
  = "Data.Nat.Properties.⊔-⊓-isCommutativeSemiringWithoutOne"
d3132 :: MAlonzo.Code.Algebra.Structures.T914
d3132
  = coe (MAlonzo.Code.Algebra.Structures.C8849 (coe d3130) erased)
name3134 = "Data.Nat.Properties.⊓-⊔-isLattice"
d3134 :: MAlonzo.Code.Algebra.Structures.T620
d3134
  = coe
      (MAlonzo.Code.Algebra.Structures.C5667
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased erased erased erased erased erased (coe d3120))
name3136 = "Data.Nat.Properties.⊓-⊔-isDistributiveLattice"
d3136 :: MAlonzo.Code.Algebra.Structures.T692
d3136
  = coe (MAlonzo.Code.Algebra.Structures.C6793 (coe d3134) erased)
name3138 = "Data.Nat.Properties.⊓-magma"
d3138 :: MAlonzo.Code.Algebra.T28
d3138
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d84 d3122
name3140 = "Data.Nat.Properties.⊓-semigroup"
d3140 :: MAlonzo.Code.Algebra.T76
d3140
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C285 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d74 d2646
name3142 = "Data.Nat.Properties.⊓-band"
d3142 :: MAlonzo.Code.Algebra.T132
d3142
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C515 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d84 d3126
name3144 = "Data.Nat.Properties.⊓-semilattice"
d3144 :: MAlonzo.Code.Algebra.T194
d3144
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C771 v2 v3) erased erased
      MAlonzo.Code.Data.Nat.Base.d84 d3128
name3146 = "Data.Nat.Properties.⊔-⊓-commutativeSemiringWithoutOne"
d3146 :: MAlonzo.Code.Algebra.T1262
d3146
  = coe
      (\ v0 v1 v2 v3 v4 v5 -> MAlonzo.Code.Algebra.C5071 v2 v3 v4 v5)
      erased erased MAlonzo.Code.Data.Nat.Base.d74
      MAlonzo.Code.Data.Nat.Base.d84 (0 :: Integer) d3132
name3148 = "Data.Nat.Properties.⊓-⊔-lattice"
d3148 :: MAlonzo.Code.Algebra.T888
d3148
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C3535 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d3134
name3150 = "Data.Nat.Properties.⊓-⊔-distributiveLattice"
d3150 :: MAlonzo.Code.Algebra.T958
d3150
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C3833 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Nat.Base.d84
      MAlonzo.Code.Data.Nat.Base.d74 d3136
name3158 = "Data.Nat.Properties.⊓-triangulate"
d3158 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3158 = erased
name3174 = "Data.Nat.Properties.m⊓n≤m"
d3174 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3174 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d3174 (coe v2) (coe v3))
name3186 = "Data.Nat.Properties.m⊓n≤n"
d3186 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3186 v0 v1 = coe (d3174 (coe v1) (coe v0))
name3198 = "Data.Nat.Properties.m≤n⇒m⊓n≡m"
d3198 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3198 = erased
name3206 = "Data.Nat.Properties.m≤n⇒n⊓m≡m"
d3206 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3206 = erased
name3216 = "Data.Nat.Properties.m⊓n≡m⇒m≤n"
d3216 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3216 v0 v1 v2 = du3216 v0 v1
du3216 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3216 v0 v1 = coe (d3186 (coe v0) (coe v1))
name3226 = "Data.Nat.Properties.m⊓n≡n⇒n≤m"
d3226 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3226 v0 v1 v2 = du3226 v0 v1
du3226 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3226 v0 v1 = coe (d3174 (coe v0) (coe v1))
name3238 = "Data.Nat.Properties.m≤n⇒m⊓o≤n"
d3238 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3238 v0 v1 v2 v3 = du3238 v0 v2 v3
du3238 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3238 v0 v1 v2
  = coe (du1340 (coe (d3174 (coe v0) (coe v1))) (coe v2))
name3250 = "Data.Nat.Properties.m≤n⇒o⊓m≤n"
d3250 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3250 v0 v1 v2 v3 = du3250 v0 v2 v3
du3250 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3250 v0 v1 v2
  = coe (du1340 (coe (d3186 (coe v1) (coe v0))) (coe v2))
name3262 = "Data.Nat.Properties.m≤n⊓o⇒m≤n"
d3262 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3262 v0 v1 v2 v3 = du3262 v1 v2 v3
du3262 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3262 v0 v1 v2
  = coe (du1340 (coe v2) (coe (d3174 (coe v0) (coe v1))))
name3276 = "Data.Nat.Properties.m≤n⊓o⇒m≤o"
d3276 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3276 v0 v1 v2 v3 = du3276 v1 v2 v3
du3276 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3276 v0 v1 v2
  = coe (du1340 (coe v2) (coe (d3186 (coe v0) (coe v1))))
name3290 = "Data.Nat.Properties.m<n⇒m⊓o<n"
d3290 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3290 v0 v1 v2 v3 = du3290 v0 v2 v3
du3290 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3290 v0 v1 v2
  = coe (du1570 (coe (d3174 (coe v0) (coe v1))) (coe v2))
name3302 = "Data.Nat.Properties.m<n⇒o⊓m<n"
d3302 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3302 v0 v1 v2 v3 = du3302 v0 v2 v3
du3302 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3302 v0 v1 v2
  = coe (du1570 (coe (d3186 (coe v1) (coe v0))) (coe v2))
name3314 = "Data.Nat.Properties.m<n⊓o⇒m<n"
d3314 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3314 v0 = du3314
du3314 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3314 = coe du3262
name3322 = "Data.Nat.Properties.m<n⊓o⇒m<o"
d3322 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3322 v0 = du3322
du3322 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du3322 = coe du3276
name3324 = "Data.Nat.Properties.⊓-mono-≤"
d3324 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3324 v0 v1 v2 v3 v4 v5
  = let v6 = d3000 (coe v1) (coe v3) in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7
        -> coe (du1340 (coe (d3174 (coe v0) (coe v2))) (coe v4))
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe (du1340 (coe (d3186 (coe v0) (coe v2))) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name3382 = "Data.Nat.Properties.⊓-monoˡ-≤"
d3382 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3382 v0 v1 v2 v3
  = coe
      (d3324
         (coe v1) (coe v2) (coe v0) (coe v0) (coe v3)
         (coe (d1332 (coe v0))))
name3392 = "Data.Nat.Properties.⊓-monoʳ-≤"
d3392 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3392 v0 v1 v2 v3
  = coe
      (d3324
         (coe v0) (coe v0) (coe v1) (coe v2) (coe (d1332 (coe v0)))
         (coe v3))
name3398 = "Data.Nat.Properties.⊓-mono-<"
d3398 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3398 v0 v1 v2 v3
  = coe
      (d3324
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1)
         (coe (addInt (coe (1 :: Integer)) (coe v2))) (coe v3))
name3404 = "Data.Nat.Properties.m⊓n≤m⊔n"
d3404 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3404 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d3404 (coe v2) (coe v3))
name3414 = "Data.Nat.Properties.+-distribˡ-⊓"
d3414 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3414 = erased
name3426 = "Data.Nat.Properties.+-distribʳ-⊓"
d3426 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3426 = erased
name3428 = "Data.Nat.Properties.+-distrib-⊓"
d3428 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3428 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3434 = "Data.Nat.Properties.m⊓n≤m+n"
d3434 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3434 v0 v1
  = let v2 = d3000 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe (du1974 (coe v0))
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe (du1986 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name3464 = "Data.Nat.Properties.0∸n≡0"
d3464 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3464 = erased
name3468 = "Data.Nat.Properties.n∸n≡0"
d3468 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3468 = erased
name3476 = "Data.Nat.Properties.n∸m≤n"
d3476 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3476 v0 v1
  = case coe v0 of
      0 -> coe
             (d1332 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 (0 :: Integer)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (d1332 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 (0 :: Integer) v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (du1340 (coe (d3476 (coe v2) (coe v3))) (coe (d1438 (coe v3))))
name3490 = "Data.Nat.Properties.m≮m∸n"
d3490 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d3490 = erased
name3498 = "Data.Nat.Properties.∸-mono"
d3498 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3498 v0 v1 v2 v3 v4 v5
  = let v6
          = seq
              (coe v5) (coe (du1340 (coe (d3476 (coe v2) (coe v0))) (coe v4))) in
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
                    (du1340
                       (coe (d3476 (coe v2) (coe v0)))
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
                                            (d3498
                                               (coe v13) (coe v14) (coe v15) (coe v16) (coe v9)
                                               (coe v12))
                                      _ -> coe v6
                                _ -> coe v6
                          _ -> coe v6
                    _ -> coe v6
             MAlonzo.Code.Data.Nat.Base.C10
               -> coe
                    (du1340
                       (coe (d3476 (coe v2) (coe v0)))
                       (coe
                          (\ v11 v12 v13 -> MAlonzo.Code.Data.Nat.Base.C18 v13) erased erased
                          v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name3516 = "Data.Nat.Properties.∸-monoˡ-≤"
d3516 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3516 v0 v1 v2 v3
  = coe
      (d3498
         (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
         (coe (d1332 (coe v2))))
name3528 = "Data.Nat.Properties.∸-monoʳ-≤"
d3528 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d3528 v0 v1 v2 v3
  = coe
      (d3498
         (coe v2) (coe v2) (coe v1) (coe v0) (coe (d1332 (coe v2)))
         (coe v3))
name3536 = "Data.Nat.Properties.m∸n≡0⇒m≤n"
d3536 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3536 v0 v1 v2 = du3536 v0
du3536 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3536 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C18 v4) erased erased
             (du3536 (coe v1))
name3548 = "Data.Nat.Properties.m≤n⇒m∸n≡0"
d3548 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3548 = erased
name3558 = "Data.Nat.Properties.m∸n≢0⇒n<m"
d3558 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d3558 v0 v1 v2 = du3558 v0 v1
du3558 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3558 v0 v1
  = let v2 = d1614 (coe v1) (coe v0) in
    case coe v2 of
      MAlonzo.Code.Relation.Nullary.C22 v3 -> coe v3
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name3592 = "Data.Nat.Properties.+-∸-comm"
d3592 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3592 = erased
name3610 = "Data.Nat.Properties.∸-+-assoc"
d3610 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3610 = erased
name3640 = "Data.Nat.Properties.+-∸-assoc"
d3640 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3640 = erased
name3660 = "Data.Nat.Properties.m≤n+m∸n"
d3660 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d3660 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (d1332 (coe v0))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d3660 (coe v2) (coe v3))
name3674 = "Data.Nat.Properties.m+n∸n≡m"
d3674 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3674 = erased
name3686 = "Data.Nat.Properties.m+n∸m≡n"
d3686 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3686 = erased
name3698 = "Data.Nat.Properties.m+[n∸m]≡n"
d3698 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3698 = erased
name3712 = "Data.Nat.Properties.m∸n+n≡m"
d3712 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3712 = erased
name3724 = "Data.Nat.Properties.m∸[m∸n]≡n"
d3724 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3724 = erased
name3740 = "Data.Nat.Properties.[m+n]∸[m+o]≡n∸o"
d3740 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3740 = erased
name3752 = "Data.Nat.Properties.*-distribʳ-∸"
d3752 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3752 = erased
name3772 = "Data.Nat.Properties.*-distribˡ-∸"
d3772 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3772 = erased
name3774 = "Data.Nat.Properties.*-distrib-∸"
d3774 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d3774 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name3780 = "Data.Nat.Properties.even≢odd"
d3780 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3780 = erased
name3796 = "Data.Nat.Properties.m⊓n+n∸m≡n"
d3796 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3796 = erased
name3810 = "Data.Nat.Properties.[m∸n]⊓[n∸m]≡0"
d3810 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3810 = erased
name3826 = "Data.Nat.Properties.∸-distribˡ-⊓-⊔"
d3826 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3826 = erased
name3852 = "Data.Nat.Properties.∸-distribʳ-⊓"
d3852 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3852 = erased
name3878 = "Data.Nat.Properties.∸-distribˡ-⊔-⊓"
d3878 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3878 = erased
name3902 = "Data.Nat.Properties.∸-distribʳ-⊔"
d3902 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3902 = erased
name3926 = "Data.Nat.Properties.m≡n⇒∣m-n∣≡0"
d3926 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3926 = erased
name3934 = "Data.Nat.Properties.∣m-n∣≡0⇒m≡n"
d3934 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3934 = erased
name3948 = "Data.Nat.Properties.m≤n⇒∣n-m∣≡n∸m"
d3948 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d3948 = erased
name3958 = "Data.Nat.Properties.∣m-n∣≡m∸n⇒n≤m"
d3958 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d3958 v0 v1 v2 = du3958 v0 v1
du3958 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
du3958 v0 v1
  = case coe v0 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe (\ v3 -> MAlonzo.Code.Data.Nat.Base.C10) erased
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (du3958 (coe v2) (coe v3))
name3974 = "Data.Nat.Properties.∣n-n∣≡0"
d3974 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3974 = erased
name3982 = "Data.Nat.Properties.∣m-m+n∣≡n"
d3982 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3982 = erased
name3996 = "Data.Nat.Properties.∣m+n-m+o∣≡∣n-o|"
d3996 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d3996 = erased
name4012 = "Data.Nat.Properties.m∸n≤∣m-n∣"
d4012 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4012 v0 v1
  = let v2 = d1346 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe (\ v4 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe (d1332 (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name4042 = "Data.Nat.Properties.∣m-n∣≤m⊔n"
d4042 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4042 v0 v1
  = case coe v0 of
      0 -> coe
             (d1332
                (coe
                   (MAlonzo.Code.Data.Nat.Base.d110 (coe (0 :: Integer)) (coe v1))))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             0 -> coe
                    (d1332
                       (coe
                          (MAlonzo.Code.Data.Nat.Base.d110 (coe v0) (coe (0 :: Integer)))))
             _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (d4042 (coe v2) (coe v3))
name4052 = "Data.Nat.Properties.∣-∣-comm"
d4052 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4052 = erased
name4066 = "Data.Nat.Properties.∣m-n∣≡[m∸n]∨[n∸m]"
d4066 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d4066 v0 v1
  = let v2 = d1346 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C42
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C84
                            (coe
                               MAlonzo.Code.Relation.Binary.Core.d414
                               (MAlonzo.Code.Relation.Binary.d36 (coe d1402))
                               (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 v0)))))))
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name4094 = "Data.Nat.Properties.*-distribˡ-∣-∣-aux"
d4094 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4094 = erased
name4106 = "Data.Nat.Properties.*-distribˡ-∣-∣"
d4106 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4106 = erased
name4136 = "Data.Nat.Properties.*-distribʳ-∣-∣"
d4136 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4136 = erased
name4138 = "Data.Nat.Properties.*-distrib-∣-∣"
d4138 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d4138 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name4140 = "Data.Nat.Properties.⌊n/2⌋-mono"
d4140 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4140 v0 v1 v2 = du4140 v2
du4140 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4140 v0
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
                    (du4140 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name4144 = "Data.Nat.Properties.⌈n/2⌉-mono"
d4144 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4144 v0 v1 v2 = du4144 v2
du4144 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4144 v0
  = coe
      (du4140
         (coe
            (\ v1 v2 v3 -> MAlonzo.Code.Data.Nat.Base.C18 v3) erased erased
            v0))
name4148 = "Data.Nat.Properties.≤′-trans"
d4148 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
d4148 v0 v1 v2 v3 v4 = du4148 v3 v4
du4148 ::
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
du4148 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C126 -> coe v0
      MAlonzo.Code.Data.Nat.Base.C132 v3
        -> coe
             (\ v4 v5 -> MAlonzo.Code.Data.Nat.Base.C132 v5) erased
             (du4148 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name4158 = "Data.Nat.Properties.z≤′n"
d4158 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4158 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d4158 (coe v1))
name4166 = "Data.Nat.Properties.s≤′s"
d4166 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
d4166 v0 v1 v2 = du4166 v2
du4166 ::
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T122
du4166 v0 = coe v0
name4170 = "Data.Nat.Properties.≤′⇒≤"
d4170 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
d4170 v0 v1 v2 = du4170 v0 v2
du4170 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 -> MAlonzo.Code.Data.Nat.Base.T6
du4170 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C126 -> coe (d1332 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C132 v3
        -> coe (du4170 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name4174 = "Data.Nat.Properties.≤⇒≤′"
d4174 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
d4174 v0 v1 v2 = du4174 v1 v2
du4174 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T122
du4174 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Nat.Base.C10 -> coe (d4158 (coe v0))
      MAlonzo.Code.Data.Nat.Base.C18 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du4174 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name4186 = "Data.Nat.Properties.≤′-step-injective"
d4186 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Data.Nat.Base.T122 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4186 = erased
name4188 = "Data.Nat.Properties._≤′?_"
d4188 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4188 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du24 (du4174 (coe v1))
      (du4170 (coe v0)) (d1374 (coe v0) (coe v1))
name4194 = "Data.Nat.Properties._<′?_"
d4194 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4194 v0 v1
  = coe (d4188 (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1))
name4200 = "Data.Nat.Properties._≥′?_"
d4200 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4200 v0 v1 = coe (d4188 (coe v1) (coe v0))
name4202 = "Data.Nat.Properties._>′?_"
d4202 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4202 v0 v1 = coe (d4194 (coe v1) (coe v0))
name4208 = "Data.Nat.Properties.m≤′m+n"
d4208 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4208 v0 v1
  = coe
      (du4174 (coe (addInt (coe v0) (coe v1))) (coe (du1974 (coe v0))))
name4218 = "Data.Nat.Properties.n≤′m+n"
d4218 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4218 v0 v1 = du4218 v0
du4218 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
du4218 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (du4218 (coe v1))
name4228 = "Data.Nat.Properties.⌈n/2⌉≤′n"
d4228 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4228 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      1 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d4228 (coe v1))
name4234 = "Data.Nat.Properties.⌊n/2⌋≤′n"
d4234 :: Integer -> MAlonzo.Code.Data.Nat.Base.T122
d4234 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Nat.Base.C126
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C132 v3) erased
             (d4228 (coe v1))
name4242 = "Data.Nat.Properties.m<ᵇn⇒1+m+[n-1+m]≡n"
d4242 ::
  Integer ->
  Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4242 = erased
name4254 = "Data.Nat.Properties.m<ᵇ1+m+n"
d4254 :: Integer -> Integer -> AgdaAny
d4254 = erased
name4262 = "Data.Nat.Properties.<ᵇ⇒<″"
d4262 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Nat.Base.T156
d4262 v0 v1 v2 = du4262 v0 v1
du4262 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156
du4262 v0 v1
  = coe
      (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C170 v2)
      (coe
         MAlonzo.Code.Agda.Builtin.Nat.d22 v1
         (addInt (coe (1 :: Integer)) (coe v0)))
      erased
name4274 = "Data.Nat.Properties.<″⇒<ᵇ"
d4274 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156 -> AgdaAny
d4274 = erased
name4278 = "Data.Nat.Properties.≤″⇒≤"
d4278 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
d4278 v0 v1 v2 = du4278 v0 v2
du4278 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T6
du4278 v0 v1
  = case coe v0 of
      0 -> coe
             (seq
                (coe v1) (coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Data.Nat.Base.C170 v3
               -> coe
                    (\ v5 v6 v7 -> MAlonzo.Code.Data.Nat.Base.C18 v7) erased erased
                    (du4278
                       (coe v2)
                       (coe (\ v5 v6 -> MAlonzo.Code.Data.Nat.Base.C170 v5) v3 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name4282 = "Data.Nat.Properties.≤⇒≤″"
d4282 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T156
d4282 v0 v1 v2 = du4282 v0 v1
du4282 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T156
du4282 v0 v1
  = coe
      (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C170 v2)
      (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v1 v0) erased
name4284 = "Data.Nat.Properties._<″?_"
d4284 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4284 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du24
      (\ v2 -> du4262 (coe v0) (coe v1)) erased
      (MAlonzo.Code.Data.Bool.Properties.d1928
         (coe (ltInt (coe v0) (coe v1))))
name4290 = "Data.Nat.Properties._≤″?_"
d4290 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4290 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Relation.Nullary.C22
                (coe (\ v2 v3 -> MAlonzo.Code.Data.Nat.Base.C170 v2) v1 erased))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (d4284 (coe v2) (coe v1))
name4298 = "Data.Nat.Properties._≥″?_"
d4298 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4298 v0 v1 = coe (d4290 (coe v1) (coe v0))
name4300 = "Data.Nat.Properties._>″?_"
d4300 :: Integer -> Integer -> MAlonzo.Code.Relation.Nullary.T14
d4300 v0 v1 = coe (d4284 (coe v1) (coe v0))
name4302 = "Data.Nat.Properties.≤″-irrelevant"
d4302 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4302 = erased
name4320 = "Data.Nat.Properties.<″-irrelevant"
d4320 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4320 = erased
name4322 = "Data.Nat.Properties.>″-irrelevant"
d4322 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4322 = erased
name4324 = "Data.Nat.Properties.≥″-irrelevant"
d4324 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Data.Nat.Base.T156 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4324 = erased
name4330 = "Data.Nat.Properties.≤‴⇒≤″"
d4330 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T190 -> MAlonzo.Code.Data.Nat.Base.T156
d4330 v0 v1 v2
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
                      (coe (d4342 (coe v0) (coe v1) (coe v5))))))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
name4342 = "Data.Nat.Properties._.ind"
d4342 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T190 -> MAlonzo.Code.Data.Nat.Base.T156
d4342 v0 v1 v2
  = coe
      (d4330
         (coe (addInt (coe (1 :: Integer)) (coe v0))) (coe v1) (coe v2))
name4350 = "Data.Nat.Properties.m≤‴m+k"
d4350 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T190
d4350 v0 v1 v2 v3 = du4350 v2
du4350 :: Integer -> MAlonzo.Code.Data.Nat.Base.T190
du4350 v0
  = case coe v0 of
      0 -> coe (\ v1 -> MAlonzo.Code.Data.Nat.Base.C194) erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v2 v3 v4 -> MAlonzo.Code.Data.Nat.Base.C200 v4) erased erased
             (du4350 (coe v1))
name4366 = "Data.Nat.Properties.≤″⇒≤‴"
d4366 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T190
d4366 v0 v1 v2 = du4366 v2
du4366 ::
  MAlonzo.Code.Data.Nat.Base.T156 -> MAlonzo.Code.Data.Nat.Base.T190
du4366 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C170 v1 -> coe (du4350 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name4376 = "Data.Nat.Properties.eq?"
d4376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Function.Injection.T88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d4376 v0 v1 v2 = du4376 v2
du4376 ::
  MAlonzo.Code.Function.Injection.T88 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du4376 v0
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.du54 (coe v0) (coe d1268))
name4380 = "Data.Nat.Properties._*-mono_"
d4380 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4380 = coe d2322
name4382 = "Data.Nat.Properties._+-mono_"
d4382 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4382 = coe d2022
name4384 = "Data.Nat.Properties.+-right-identity"
d4384 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4384 = erased
name4386 = "Data.Nat.Properties.*-right-zero"
d4386 :: Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4386 = erased
name4388 = "Data.Nat.Properties.distribʳ-*-+"
d4388 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4388 = erased
name4390 = "Data.Nat.Properties.*-distrib-∸ʳ"
d4390 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4390 = erased
name4392 = "Data.Nat.Properties.cancel-+-left"
d4392 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4392 = erased
name4394 = "Data.Nat.Properties.cancel-+-left-≤"
d4394 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4394 = coe d1900
name4396 = "Data.Nat.Properties.cancel-*-right"
d4396 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4396 = erased
name4398 = "Data.Nat.Properties.cancel-*-right-≤"
d4398 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4398 = coe d2312
name4400 = "Data.Nat.Properties.strictTotalOrder"
d4400 :: MAlonzo.Code.Relation.Binary.T1268
d4400 = coe d1636
name4402 = "Data.Nat.Properties.isCommutativeSemiring"
d4402 :: MAlonzo.Code.Algebra.Structures.T1192
d4402 = coe d2218
name4404 = "Data.Nat.Properties.commutativeSemiring"
d4404 :: MAlonzo.Code.Algebra.T1698
d4404 = coe d2230
name4406 = "Data.Nat.Properties.isDistributiveLattice"
d4406 :: MAlonzo.Code.Algebra.Structures.T692
d4406 = coe d3136
name4408 = "Data.Nat.Properties.distributiveLattice"
d4408 :: MAlonzo.Code.Algebra.T958
d4408 = coe d3150
name4410 = "Data.Nat.Properties.⊔-⊓-0-isSemiringWithoutOne"
d4410 :: MAlonzo.Code.Algebra.Structures.T826
d4410 = coe d3130
name4412
  = "Data.Nat.Properties.⊔-⊓-0-isCommutativeSemiringWithoutOne"
d4412 :: MAlonzo.Code.Algebra.Structures.T914
d4412 = coe d3132
name4414
  = "Data.Nat.Properties.⊔-⊓-0-commutativeSemiringWithoutOne"
d4414 :: MAlonzo.Code.Algebra.T1262
d4414 = coe d3146
name4416 = "Data.Nat.Properties.¬i+1+j≤i"
d4416 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d4416 = erased
name4418 = "Data.Nat.Properties.≤-steps"
d4418 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d4418 v0 v1 v2 v3 = du4418 v3
du4418 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du4418 v0 = coe v0
name4426 = "Data.Nat.Properties.i∸k∸j+j∸k≡i+j∸k"
d4426 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4426 = erased
name4462 = "Data.Nat.Properties.im≡jm+n⇒[i∸j]m≡n"
d4462 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4462 = erased
name4478 = "Data.Nat.Properties.≤+≢⇒<"
d4478 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Nat.Base.T6
d4478 = coe d1512
name4480 = "Data.Nat.Properties.≤-irrelevance"
d4480 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4480 = erased
name4482 = "Data.Nat.Properties.<-irrelevance"
d4482 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Data.Nat.Base.T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4482 = erased
name4484 = "Data.Nat.Properties.i+1+j≢i"
d4484 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4484 = erased
name4486 = "Data.Nat.Properties.i+j≡0⇒i≡0"
d4486 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4486 = erased
name4488 = "Data.Nat.Properties.i+j≡0⇒j≡0"
d4488 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4488 = erased
name4490 = "Data.Nat.Properties.i+1+j≰i"
d4490 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Empty.T4
d4490 = erased
name4492 = "Data.Nat.Properties.i*j≡0⇒i≡0∨j≡0"
d4492 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d4492 = coe d2270
name4494 = "Data.Nat.Properties.i*j≡1⇒i≡1"
d4494 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4494 = erased
name4496 = "Data.Nat.Properties.i*j≡1⇒j≡1"
d4496 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4496 = erased
name4498 = "Data.Nat.Properties.i^j≡0⇒i≡0"
d4498 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4498 = erased
name4500 = "Data.Nat.Properties.i^j≡1⇒j≡0∨i≡1"
d4500 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Sum.Base.T30
d4500 = coe d2526
name4502 = "Data.Nat.Properties.[i+j]∸[i+k]≡j∸k"
d4502 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4502 = erased
name4504 = "Data.Nat.Properties.m≢0⇒suc[pred[m]]≡m"
d4504 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4504 = erased
name4506 = "Data.Nat.Properties.n≡m⇒∣n-m∣≡0"
d4506 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4506 = erased
name4508 = "Data.Nat.Properties.∣n-m∣≡0⇒n≡m"
d4508 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d4508 = erased
name4510 = "Data.Nat.Properties.∣n-m∣≡n∸m⇒m≤n"
d4510 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Nat.Base.T6
d4510 = coe d3958
name4512 = "Data.Nat.Properties.∣n-n+m∣≡m"
d4512 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4512 = erased
name4514 = "Data.Nat.Properties.∣n+m-n+o∣≡∣m-o|"
d4514 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4514 = erased
name4516 = "Data.Nat.Properties.n∸m≤∣n-m∣"
d4516 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4516 = coe d4012
name4518 = "Data.Nat.Properties.∣n-m∣≤n⊔m"
d4518 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4518 = coe d4042
name4524 = "Data.Nat.Properties.n≤m+n"
d4524 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4524 v0 v1 = du4524 v1
du4524 :: Integer -> MAlonzo.Code.Data.Nat.Base.T6
du4524 v0 = coe (du1974 (coe v0))
name4536 = "Data.Nat.Properties.n≤m+n∸m"
d4536 :: Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T6
d4536 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.Code.Data.Nat.Base.C10) erased
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v0 of
             0 -> coe (d1332 (coe v1))
             _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe
                    (\ v4 v5 v6 -> MAlonzo.Code.Data.Nat.Base.C18 v6) erased erased
                    (d4536 (coe v3) (coe v2))
name4550 = "Data.Nat.Properties.∣n-m∣≡[n∸m]∨[m∸n]"
d4550 :: Integer -> Integer -> MAlonzo.Code.Data.Sum.Base.T30
d4550 v0 v1
  = let v2 = d1346 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      MAlonzo.Code.Data.Sum.Base.C42 v3
        -> coe
             (MAlonzo.Code.Data.Sum.Base.C42
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du190
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.C84
                            (coe
                               MAlonzo.Code.Relation.Binary.Core.d414
                               (MAlonzo.Code.Relation.Binary.d36 (coe d1402))
                               (coe MAlonzo.Code.Agda.Builtin.Nat.d22 v0 v1)))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name4572 = "Data.Nat.Properties.+-*-suc"
d4572 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Equality.T12
d4572 = erased
name22209 = "Data.Nat.Properties..absurdlambda"
d22209 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d22209 = erased
name29727 = "Data.Nat.Properties..absurdlambda"
d29727 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d29727 = erased
