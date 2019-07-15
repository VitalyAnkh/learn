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
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Properties.BooleanAlgebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
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
name80 = "Data.Bool.Properties._.IsBand"
d80 a0 = ()
name82 = "Data.Bool.Properties._.IsBooleanAlgebra"
d82 a0 a1 a2 a3 a4 = ()
name86 = "Data.Bool.Properties._.IsCommutativeMonoid"
d86 a0 a1 = ()
name90 = "Data.Bool.Properties._.IsCommutativeSemiring"
d90 a0 a1 a2 a3 = ()
name94 = "Data.Bool.Properties._.IsDistributiveLattice"
d94 a0 a1 = ()
name98 = "Data.Bool.Properties._.IsIdempotentCommutativeMonoid"
d98 a0 a1 = ()
name100 = "Data.Bool.Properties._.IsLattice"
d100 a0 a1 = ()
name102 = "Data.Bool.Properties._.IsMagma"
d102 a0 = ()
name112 = "Data.Bool.Properties._.IsSemigroup"
d112 a0 = ()
name114 = "Data.Bool.Properties._.IsSemilattice"
d114 a0 = ()
name1250 = "Data.Bool.Properties._≟_"
d1250 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T14
d1250 v0 v1
  = if coe v0
      then if coe v1
             then coe (MAlonzo.Code.Relation.Nullary.C22 erased)
             else coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      else (if coe v1
              then coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
              else coe (MAlonzo.Code.Relation.Nullary.C22 erased))
name1252 = "Data.Bool.Properties.≡-setoid"
d1252 :: MAlonzo.Code.Relation.Binary.T128
d1252 = coe MAlonzo.Code.Relation.Binary.PropositionalEquality.du66
name1254 = "Data.Bool.Properties.≡-decSetoid"
d1254 :: MAlonzo.Code.Relation.Binary.T206
d1254
  = coe
      (MAlonzo.Code.Relation.Binary.PropositionalEquality.du70
         (coe d1250))
name1256 = "Data.Bool.Properties.≤-reflexive"
d1256 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Bool.Base.T10
d1256 v0 v1 v2 = du1256
du1256 :: MAlonzo.Code.Data.Bool.Base.T10
du1256 = coe (\ v0 -> MAlonzo.Code.Data.Bool.Base.C16) erased
name1258 = "Data.Bool.Properties.≤-refl"
d1258 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1258 v0 = du1258
du1258 :: MAlonzo.Code.Data.Bool.Base.T10
du1258 = coe du1256
name1260 = "Data.Bool.Properties.≤-trans"
d1260 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T10
d1260 v0 v1 v2 v3 v4 = du1260 v3 v4
du1260 ::
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T10
du1260 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Bool.Base.C12 -> coe (seq (coe v1) (coe v0))
      MAlonzo.Code.Data.Bool.Base.C16 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1264 = "Data.Bool.Properties.≤-antisym"
d1264 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1264 = erased
name1266 = "Data.Bool.Properties.≤-minimum"
d1266 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1266 v0
  = if coe v0
      then coe MAlonzo.Code.Data.Bool.Base.C12
      else coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.C16) erased
name1268 = "Data.Bool.Properties.≤-maximum"
d1268 :: Bool -> MAlonzo.Code.Data.Bool.Base.T10
d1268 v0
  = if coe v0
      then coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.C16) erased
      else coe MAlonzo.Code.Data.Bool.Base.C12
name1270 = "Data.Bool.Properties.≤-total"
d1270 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1270 v0 v1
  = if coe v0
      then coe (MAlonzo.Code.Data.Sum.Base.C42 (coe (d1268 (coe v1))))
      else coe (MAlonzo.Code.Data.Sum.Base.C38 (coe (d1266 (coe v1))))
name1276 = "Data.Bool.Properties._≤?_"
d1276 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T14
d1276 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    (MAlonzo.Code.Relation.Nullary.C22
                       (coe (\ v2 -> MAlonzo.Code.Data.Bool.Base.C16) erased))
             else coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      else coe (MAlonzo.Code.Relation.Nullary.C22 (coe (d1266 (coe v1))))
name1280 = "Data.Bool.Properties.≤-irrelevant"
d1280 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1280 = erased
name1282 = "Data.Bool.Properties.≤-isPreorder"
d1282 :: MAlonzo.Code.Relation.Binary.T16
d1282
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         (coe d1256) (coe d1260))
name1284 = "Data.Bool.Properties.≤-isPartialOrder"
d1284 :: MAlonzo.Code.Relation.Binary.T256
d1284 = coe (MAlonzo.Code.Relation.Binary.C1639 (coe d1282) erased)
name1286 = "Data.Bool.Properties.≤-isTotalOrder"
d1286 :: MAlonzo.Code.Relation.Binary.T876
d1286
  = coe (MAlonzo.Code.Relation.Binary.C5461 (coe d1284) (coe d1270))
name1288 = "Data.Bool.Properties.≤-isDecTotalOrder"
d1288 :: MAlonzo.Code.Relation.Binary.T1010
d1288
  = coe
      (MAlonzo.Code.Relation.Binary.C6205
         (coe d1286) (coe d1250) (coe d1276))
name1290 = "Data.Bool.Properties.≤-poset"
d1290 :: MAlonzo.Code.Relation.Binary.T310
d1290
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1973 v3) erased
      erased erased d1284
name1292 = "Data.Bool.Properties.≤-preorder"
d1292 :: MAlonzo.Code.Relation.Binary.T74
d1292
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C807 v3) erased
      erased erased d1282
name1294 = "Data.Bool.Properties.≤-totalOrder"
d1294 :: MAlonzo.Code.Relation.Binary.T934
d1294
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C5847 v3) erased
      erased erased d1286
name1296 = "Data.Bool.Properties.≤-decTotalOrder"
d1296 :: MAlonzo.Code.Relation.Binary.T1084
d1296
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C6763 v3) erased
      erased erased d1288
name1298 = "Data.Bool.Properties.<-irrefl"
d1298 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d1298 = erased
name1300 = "Data.Bool.Properties.<-asym"
d1300 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d1300 = erased
name1302 = "Data.Bool.Properties.<-trans"
d1302 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Bool.Base.T18
d1302 = erased
name1304 = "Data.Bool.Properties.<-transʳ"
d1304 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T10 ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Bool.Base.T18
d1304 = erased
name1306 = "Data.Bool.Properties.<-transˡ"
d1306 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Bool.Base.T18
d1306 = erased
name1308 = "Data.Bool.Properties.<-cmp"
d1308 :: Bool -> Bool -> MAlonzo.Code.Relation.Binary.Core.T198
d1308 v0 v1
  = if coe v0
      then if coe v1
             then coe
                    (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Core.C220 v3) erased
                    erased erased
             else coe
                    (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Core.C228 v4) erased
                    erased erased
      else (if coe v1
              then coe
                     (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Core.C212 v2) erased
                     erased erased
              else coe
                     (\ v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Core.C220 v3) erased
                     erased erased)
name1310 = "Data.Bool.Properties._<?_"
d1310 :: Bool -> Bool -> MAlonzo.Code.Relation.Nullary.T14
d1310 v0 v1
  = if coe v0
      then coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      else (if coe v1
              then coe (MAlonzo.Code.Relation.Nullary.C22 erased)
              else coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased)
name1312 = "Data.Bool.Properties.<-resp₂-≡"
d1312 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1312
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (\ v0 v1 v2 v3 v4 -> v4)) (coe (\ v0 v1 v2 v3 v4 -> v4)))
name1318 = "Data.Bool.Properties.<-irrelevant"
d1318 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Data.Bool.Base.T18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1318 = erased
name1320 = "Data.Bool.Properties.<-isStrictPartialOrder"
d1320 :: MAlonzo.Code.Relation.Binary.T570
d1320
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C3423 v0 v2 v3)
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70 erased
      erased d1312
name1322 = "Data.Bool.Properties.<-isStrictTotalOrder"
d1322 :: MAlonzo.Code.Relation.Binary.T1202
d1322
  = coe
      (MAlonzo.Code.Relation.Binary.C7321
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased (coe d1308))
name1324 = "Data.Bool.Properties.<-strictPartialOrder"
d1324 :: MAlonzo.Code.Relation.Binary.T628
d1324
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C4141 v3) erased
      erased erased d1320
name1326 = "Data.Bool.Properties.<-strictTotalOrder"
d1326 :: MAlonzo.Code.Relation.Binary.T1268
d1326
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C8495 v3) erased
      erased erased d1322
name1328 = "Data.Bool.Properties.∨-assoc"
d1328 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1328 = erased
name1338 = "Data.Bool.Properties.∨-comm"
d1338 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1338 = erased
name1340 = "Data.Bool.Properties.∨-identityˡ"
d1340 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1340 = erased
name1342 = "Data.Bool.Properties.∨-identityʳ"
d1342 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1342 = erased
name1344 = "Data.Bool.Properties.∨-identity"
d1344 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1344 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1346 = "Data.Bool.Properties.∨-zeroˡ"
d1346 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1346 = erased
name1348 = "Data.Bool.Properties.∨-zeroʳ"
d1348 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1348 = erased
name1350 = "Data.Bool.Properties.∨-zero"
d1350 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1350 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1352 = "Data.Bool.Properties.∨-inverseˡ"
d1352 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1352 = erased
name1354 = "Data.Bool.Properties.∨-inverseʳ"
d1354 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1354 = erased
name1358 = "Data.Bool.Properties.∨-inverse"
d1358 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1358 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1360 = "Data.Bool.Properties.∨-idem"
d1360 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1360 = erased
name1362 = "Data.Bool.Properties.∨-sel"
d1362 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1362 v0 v1 = du1362 v0
du1362 :: Bool -> MAlonzo.Code.Data.Sum.Base.T30
du1362 v0
  = if coe v0
      then coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
      else coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
name1368 = "Data.Bool.Properties.∨-isMagma"
d1368 :: MAlonzo.Code.Algebra.Structures.T84
d1368
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased)
name1370 = "Data.Bool.Properties.∨-magma"
d1370 :: MAlonzo.Code.Algebra.T28
d1370
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d30 d1368
name1372 = "Data.Bool.Properties.∨-isSemigroup"
d1372 :: MAlonzo.Code.Algebra.Structures.T118
d1372
  = coe (MAlonzo.Code.Algebra.Structures.C781 (coe d1368) erased)
name1374 = "Data.Bool.Properties.∨-semigroup"
d1374 :: MAlonzo.Code.Algebra.T76
d1374
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C285 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d30 d1372
name1376 = "Data.Bool.Properties.∨-isBand"
d1376 :: MAlonzo.Code.Algebra.Structures.T152
d1376
  = coe (MAlonzo.Code.Algebra.Structures.C1021 (coe d1372) erased)
name1378 = "Data.Bool.Properties.∨-band"
d1378 :: MAlonzo.Code.Algebra.T132
d1378
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C515 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d30 d1376
name1380 = "Data.Bool.Properties.∨-isSemilattice"
d1380 :: MAlonzo.Code.Algebra.Structures.T190
d1380
  = coe (MAlonzo.Code.Algebra.Structures.C1305 (coe d1376) erased)
name1382 = "Data.Bool.Properties.∨-semilattice"
d1382 :: MAlonzo.Code.Algebra.T194
d1382
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C771 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d30 d1380
name1384 = "Data.Bool.Properties.∨-isCommutativeMonoid"
d1384 :: MAlonzo.Code.Algebra.Structures.T314
d1384
  = coe
      (MAlonzo.Code.Algebra.Structures.C2409 (coe d1372) erased erased)
name1386 = "Data.Bool.Properties.∨-commutativeMonoid"
d1386 :: MAlonzo.Code.Algebra.T418
d1386
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1739 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1384
name1388 = "Data.Bool.Properties.∨-isIdempotentCommutativeMonoid"
d1388 :: MAlonzo.Code.Algebra.Structures.T366
d1388
  = coe (MAlonzo.Code.Algebra.Structures.C3071 (coe d1384) erased)
name1390 = "Data.Bool.Properties.∨-idempotentCommutativeMonoid"
d1390 :: MAlonzo.Code.Algebra.T496
d1390
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C2051 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1388
name1392 = "Data.Bool.Properties.∧-assoc"
d1392 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1392 = erased
name1402 = "Data.Bool.Properties.∧-comm"
d1402 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1402 = erased
name1404 = "Data.Bool.Properties.∧-identityˡ"
d1404 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1404 = erased
name1406 = "Data.Bool.Properties.∧-identityʳ"
d1406 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1406 = erased
name1408 = "Data.Bool.Properties.∧-identity"
d1408 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1408 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1410 = "Data.Bool.Properties.∧-zeroˡ"
d1410 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1410 = erased
name1412 = "Data.Bool.Properties.∧-zeroʳ"
d1412 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1412 = erased
name1414 = "Data.Bool.Properties.∧-zero"
d1414 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1414 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1416 = "Data.Bool.Properties.∧-inverseˡ"
d1416 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1416 = erased
name1418 = "Data.Bool.Properties.∧-inverseʳ"
d1418 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1418 = erased
name1422 = "Data.Bool.Properties.∧-inverse"
d1422 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1422 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1424 = "Data.Bool.Properties.∧-idem"
d1424 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1424 = erased
name1426 = "Data.Bool.Properties.∧-sel"
d1426 :: Bool -> Bool -> MAlonzo.Code.Data.Sum.Base.T30
d1426 v0 v1 = du1426 v0
du1426 :: Bool -> MAlonzo.Code.Data.Sum.Base.T30
du1426 v0
  = if coe v0
      then coe (MAlonzo.Code.Data.Sum.Base.C42 erased)
      else coe (MAlonzo.Code.Data.Sum.Base.C38 erased)
name1432 = "Data.Bool.Properties.∧-distribˡ-∨"
d1432 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1432 = erased
name1442 = "Data.Bool.Properties.∧-distribʳ-∨"
d1442 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1442 = erased
name1450 = "Data.Bool.Properties.∧-distrib-∨"
d1450 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1450 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1452 = "Data.Bool.Properties.∨-distribˡ-∧"
d1452 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1452 = erased
name1462 = "Data.Bool.Properties.∨-distribʳ-∧"
d1462 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1462 = erased
name1470 = "Data.Bool.Properties.∨-distrib-∧"
d1470 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1470 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1472 = "Data.Bool.Properties.∧-abs-∨"
d1472 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1472 = erased
name1478 = "Data.Bool.Properties.∨-abs-∧"
d1478 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1478 = erased
name1484 = "Data.Bool.Properties.∨-∧-absorptive"
d1484 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1484 = coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
name1486 = "Data.Bool.Properties.∧-isMagma"
d1486 :: MAlonzo.Code.Algebra.Structures.T84
d1486
  = coe
      (MAlonzo.Code.Algebra.Structures.C277
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased)
name1488 = "Data.Bool.Properties.∧-magma"
d1488 :: MAlonzo.Code.Algebra.T28
d1488
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C77 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d24 d1486
name1490 = "Data.Bool.Properties.∧-isSemigroup"
d1490 :: MAlonzo.Code.Algebra.Structures.T118
d1490
  = coe (MAlonzo.Code.Algebra.Structures.C781 (coe d1486) erased)
name1492 = "Data.Bool.Properties.∧-semigroup"
d1492 :: MAlonzo.Code.Algebra.T76
d1492
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C285 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d24 d1490
name1494 = "Data.Bool.Properties.∧-isBand"
d1494 :: MAlonzo.Code.Algebra.Structures.T152
d1494
  = coe (MAlonzo.Code.Algebra.Structures.C1021 (coe d1490) erased)
name1496 = "Data.Bool.Properties.∧-band"
d1496 :: MAlonzo.Code.Algebra.T132
d1496
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C515 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d24 d1494
name1498 = "Data.Bool.Properties.∧-isSemilattice"
d1498 :: MAlonzo.Code.Algebra.Structures.T190
d1498
  = coe (MAlonzo.Code.Algebra.Structures.C1305 (coe d1494) erased)
name1500 = "Data.Bool.Properties.∧-semilattice"
d1500 :: MAlonzo.Code.Algebra.T194
d1500
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Algebra.C771 v2 v3) erased erased
      MAlonzo.Code.Data.Bool.Base.d24 d1498
name1502 = "Data.Bool.Properties.∧-isCommutativeMonoid"
d1502 :: MAlonzo.Code.Algebra.Structures.T314
d1502
  = coe
      (MAlonzo.Code.Algebra.Structures.C2409 (coe d1490) erased erased)
name1504 = "Data.Bool.Properties.∧-commutativeMonoid"
d1504 :: MAlonzo.Code.Algebra.T418
d1504
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C1739 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Agda.Builtin.Bool.C10 d1502
name1506 = "Data.Bool.Properties.∧-isIdempotentCommutativeMonoid"
d1506 :: MAlonzo.Code.Algebra.Structures.T366
d1506
  = coe (MAlonzo.Code.Algebra.Structures.C3071 (coe d1502) erased)
name1508 = "Data.Bool.Properties.∧-idempotentCommutativeMonoid"
d1508 :: MAlonzo.Code.Algebra.T496
d1508
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C2051 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Agda.Builtin.Bool.C10 d1506
name1510 = "Data.Bool.Properties.∨-∧-isCommutativeSemiring"
d1510 :: MAlonzo.Code.Algebra.Structures.T1192
d1510
  = coe
      (MAlonzo.Code.Algebra.Structures.C11793
         (coe d1384) (coe d1502) erased erased)
name1512 = "Data.Bool.Properties.∨-∧-commutativeSemiring"
d1512 :: MAlonzo.Code.Algebra.T1698
d1512
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.C6801 v2 v3 v4 v5 v6)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 MAlonzo.Code.Agda.Builtin.Bool.C8
      MAlonzo.Code.Agda.Builtin.Bool.C10 d1510
name1514 = "Data.Bool.Properties.∧-∨-isCommutativeSemiring"
d1514 :: MAlonzo.Code.Algebra.Structures.T1192
d1514
  = coe
      (MAlonzo.Code.Algebra.Structures.C11793
         (coe d1502) (coe d1384) erased erased)
name1516 = "Data.Bool.Properties.∧-∨-commutativeSemiring"
d1516 :: MAlonzo.Code.Algebra.T1698
d1516
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 ->
         MAlonzo.Code.Algebra.C6801 v2 v3 v4 v5 v6)
      erased erased MAlonzo.Code.Data.Bool.Base.d24
      MAlonzo.Code.Data.Bool.Base.d30 MAlonzo.Code.Agda.Builtin.Bool.C10
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1514
name1518 = "Data.Bool.Properties.∨-∧-isLattice"
d1518 :: MAlonzo.Code.Algebra.Structures.T620
d1518
  = coe
      (MAlonzo.Code.Algebra.Structures.C5667
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         erased erased erased erased erased erased (coe d1484))
name1520 = "Data.Bool.Properties.∨-∧-lattice"
d1520 :: MAlonzo.Code.Algebra.T888
d1520
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C3535 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 d1518
name1522 = "Data.Bool.Properties.∨-∧-isDistributiveLattice"
d1522 :: MAlonzo.Code.Algebra.Structures.T692
d1522
  = coe (MAlonzo.Code.Algebra.Structures.C6793 (coe d1518) erased)
name1524 = "Data.Bool.Properties.∨-∧-distributiveLattice"
d1524 :: MAlonzo.Code.Algebra.T958
d1524
  = coe
      (\ v0 v1 v2 v3 v4 -> MAlonzo.Code.Algebra.C3833 v2 v3 v4) erased
      erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 d1522
name1526 = "Data.Bool.Properties.∨-∧-isBooleanAlgebra"
d1526 :: MAlonzo.Code.Algebra.Structures.T1636
d1526
  = coe
      (MAlonzo.Code.Algebra.Structures.C18211
         (coe d1522) erased erased erased)
name1528 = "Data.Bool.Properties.∨-∧-booleanAlgebra"
d1528 :: MAlonzo.Code.Algebra.T2262
d1528
  = coe
      (\ v0 v1 v2 v3 v4 v5 v6 v7 ->
         MAlonzo.Code.Algebra.C9061 v2 v3 v4 v5 v6 v7)
      erased erased MAlonzo.Code.Data.Bool.Base.d30
      MAlonzo.Code.Data.Bool.Base.d24 MAlonzo.Code.Data.Bool.Base.d22
      MAlonzo.Code.Agda.Builtin.Bool.C10
      MAlonzo.Code.Agda.Builtin.Bool.C8 d1526
name1534 = "Data.Bool.Properties.xor-is-ok"
d1534 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1534 = erased
name1540 = "Data.Bool.Properties.xor-∧-commutativeRing"
d1540 :: MAlonzo.Code.Algebra.T2066
d1540
  = coe
      (MAlonzo.Code.Algebra.Properties.BooleanAlgebra.du1810
         (coe d1528) (coe MAlonzo.Code.Data.Bool.Base.d36) erased)
name1868 = "Data.Bool.Properties.not-involutive"
d1868 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1868 = erased
name1874 = "Data.Bool.Properties.not-¬"
d1874 ::
  Bool ->
  Bool ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d1874 = erased
name1880 = "Data.Bool.Properties.¬-not"
d1880 ::
  Bool ->
  Bool ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1880 = erased
name1892 = "Data.Bool.Properties.⇔→≡"
d1892 ::
  Bool ->
  Bool ->
  Bool ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d1892 = erased
name1908 = "Data.Bool.Properties.T-≡"
d1908 :: Bool -> MAlonzo.Code.Function.Equivalence.T16
d1908 v0
  = coe
      (seq
         (coe v0)
         (coe (MAlonzo.Code.Function.Equivalence.du56 erased erased)))
name1912 = "Data.Bool.Properties.T-not-≡"
d1912 :: Bool -> MAlonzo.Code.Function.Equivalence.T16
d1912 v0
  = coe
      (seq
         (coe v0)
         (coe (MAlonzo.Code.Function.Equivalence.du56 erased erased)))
name1918 = "Data.Bool.Properties.T-∧"
d1918 :: Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T16
d1918 v0 v1
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
name1924 = "Data.Bool.Properties.T-∨"
d1924 :: Bool -> Bool -> MAlonzo.Code.Function.Equivalence.T16
d1924 v0 v1
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
name1926 = "Data.Bool.Properties.T-irrelevant"
d1926 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1926 = erased
name1928 = "Data.Bool.Properties.T?"
d1928 :: Bool -> MAlonzo.Code.Relation.Nullary.T14
d1928 v0
  = if coe v0
      then coe (MAlonzo.Code.Relation.Nullary.C22 erased)
      else coe (\ v1 -> MAlonzo.Code.Relation.Nullary.C26) erased
name1932 = "Data.Bool.Properties.T?-diag"
d1932 :: Bool -> AgdaAny -> AgdaAny
d1932 = erased
name1942 = "Data.Bool.Properties.push-function-into-if"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1942 = erased
name1944 = "Data.Bool.Properties.∧-∨-distˡ"
d1944 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1944 = erased
name1946 = "Data.Bool.Properties.∧-∨-distʳ"
d1946 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1946 = erased
name1948 = "Data.Bool.Properties.distrib-∧-∨"
d1948 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1948 = coe d1450
name1950 = "Data.Bool.Properties.∨-∧-distˡ"
d1950 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1950 = erased
name1952 = "Data.Bool.Properties.∨-∧-distʳ"
d1952 ::
  Bool -> Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1952 = erased
name1954 = "Data.Bool.Properties.∨-∧-distrib"
d1954 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1954 = coe d1470
name1956 = "Data.Bool.Properties.∨-∧-abs"
d1956 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1956 = erased
name1958 = "Data.Bool.Properties.∧-∨-abs"
d1958 :: Bool -> Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1958 = erased
name1960 = "Data.Bool.Properties.not-∧-inverseˡ"
d1960 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1960 = erased
name1962 = "Data.Bool.Properties.not-∧-inverseʳ"
d1962 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1962 = erased
name1964 = "Data.Bool.Properties.not-∧-inverse"
d1964 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1964 = coe d1422
name1966 = "Data.Bool.Properties.not-∨-inverseˡ"
d1966 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1966 = erased
name1968 = "Data.Bool.Properties.not-∨-inverseʳ"
d1968 :: Bool -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1968 = erased
name1970 = "Data.Bool.Properties.not-∨-inverse"
d1970 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
d1970 = coe d1358
name1972 = "Data.Bool.Properties.isCommutativeSemiring-∨-∧"
d1972 :: MAlonzo.Code.Algebra.Structures.T1192
d1972 = coe d1510
name1974 = "Data.Bool.Properties.commutativeSemiring-∨-∧"
d1974 :: MAlonzo.Code.Algebra.T1698
d1974 = coe d1512
name1976 = "Data.Bool.Properties.isCommutativeSemiring-∧-∨"
d1976 :: MAlonzo.Code.Algebra.Structures.T1192
d1976 = coe d1514
name1978 = "Data.Bool.Properties.commutativeSemiring-∧-∨"
d1978 :: MAlonzo.Code.Algebra.T1698
d1978 = coe d1516
name1980 = "Data.Bool.Properties.isBooleanAlgebra"
d1980 :: MAlonzo.Code.Algebra.Structures.T1636
d1980 = coe d1526
name1982 = "Data.Bool.Properties.booleanAlgebra"
d1982 :: MAlonzo.Code.Algebra.T2262
d1982 = coe d1528
name1984 = "Data.Bool.Properties.commutativeRing-xor-∧"
d1984 :: MAlonzo.Code.Algebra.T2066
d1984 = coe d1540
name1986 = "Data.Bool.Properties.proof-irrelevance"
d1986 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1986 = erased
name1988 = "Data.Bool.Properties.T-irrelevance"
d1988 ::
  Bool ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1988 = erased
name4539 = "Data.Bool.Properties..absurdlambda"
d4539 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4539 = erased
name4557 = "Data.Bool.Properties..absurdlambda"
d4557 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d4557 = erased
name5385 = "Data.Bool.Properties..absurdlambda"
d5385 ::
  MAlonzo.Code.Data.Bool.Base.T10 -> MAlonzo.Code.Data.Empty.T4
d5385 = erased
name6737 = "Data.Bool.Properties..absurdlambda"
d6737 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6737 = erased
name6741 = "Data.Bool.Properties..absurdlambda"
d6741 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6741 = erased
name6759 = "Data.Bool.Properties..absurdlambda"
d6759 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d6759 = erased
name6763 = "Data.Bool.Properties..absurdlambda"
d6763 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6763 = erased
name6781 = "Data.Bool.Properties..absurdlambda"
d6781 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6781 = erased
name6785 = "Data.Bool.Properties..absurdlambda"
d6785 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d6785 = erased
name6803 = "Data.Bool.Properties..absurdlambda"
d6803 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6803 = erased
name6807 = "Data.Bool.Properties..absurdlambda"
d6807 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6807 = erased
name6837 = "Data.Bool.Properties..absurdlambda"
d6837 ::
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6837 = erased
name6885 = "Data.Bool.Properties..absurdlambda"
d6885 ::
  Bool ->
  MAlonzo.Code.Data.Bool.Base.T18 -> MAlonzo.Code.Data.Empty.T4
d6885 = erased
name9331 = "Data.Bool.Properties..absurdlambda"
d9331 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d9331 = erased
name9335 = "Data.Bool.Properties..absurdlambda"
d9335 ::
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d9335 = erased
name9431 = "Data.Bool.Properties..absurdlambda"
d9431 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d9431 = erased
name9435 = "Data.Bool.Properties..absurdlambda"
d9435 ::
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d9435 = erased
name9585 = "Data.Bool.Properties..absurdlambda"
d9585 ::
  MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d9585 = erased
name9659 = "Data.Bool.Properties..absurdlambda"
d9659 ::
  Bool ->
  MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d9659 = erased
name9965 = "Data.Bool.Properties..absurdlambda"
d9965 :: MAlonzo.Code.Data.Empty.T4 -> MAlonzo.Code.Data.Empty.T4
d9965 = erased
