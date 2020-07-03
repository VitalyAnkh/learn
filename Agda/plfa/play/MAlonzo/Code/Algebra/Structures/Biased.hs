{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Structures.Biased where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Algebra.Structures

name18 = "Algebra.Structures.Biased._._DistributesOver_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d18 = erased
name20 = "Algebra.Structures.Biased._._DistributesOverʳ_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d20 = erased
name22 = "Algebra.Structures.Biased._._DistributesOverˡ_"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d22 = erased
name32 = "Algebra.Structures.Biased._.Commutative"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d32 = erased
name44 = "Algebra.Structures.Biased._.Identity"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d44 = erased
name58 = "Algebra.Structures.Biased._.LeftIdentity"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d58 = erased
name62 = "Algebra.Structures.Biased._.LeftZero"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d62 = erased
name70 = "Algebra.Structures.Biased._.RightIdentity"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d70 = erased
name74 = "Algebra.Structures.Biased._.RightZero"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d74 = erased
name78 = "Algebra.Structures.Biased._.Zero"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d78 = erased
name82 = "Algebra.Structures.Biased._.IsAbelianGroup"
d82 a0 a1 a2 a3 a4 a5 a6 = ()
name90 = "Algebra.Structures.Biased._.IsCommutativeMonoid"
d90 a0 a1 a2 a3 a4 a5 = ()
name96 = "Algebra.Structures.Biased._.IsCommutativeSemiring"
d96 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name110 = "Algebra.Structures.Biased._.IsMonoid"
d110 a0 a1 a2 a3 a4 a5 = ()
name114 = "Algebra.Structures.Biased._.IsRing"
d114 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
name118 = "Algebra.Structures.Biased._.IsSemigroup"
d118 a0 a1 a2 a3 a4 = ()
name1346 = "Algebra.Structures.Biased.IsCommutativeMonoidˡ"
d1346 a0 a1 a2 a3 a4 a5 = ()
data T1346
  = C13563 MAlonzo.Code.Algebra.Structures.T116 (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
name1358
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.isSemigroup"
d1358 :: T1346 -> MAlonzo.Code.Algebra.Structures.T116
d1358 v0
  = case coe v0 of
      C13563 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1360
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityˡ"
d1360 :: T1346 -> AgdaAny -> AgdaAny
d1360 v0
  = case coe v0 of
      C13563 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1362 = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.comm"
d1362 :: T1346 -> AgdaAny -> AgdaAny -> AgdaAny
d1362 v0
  = case coe v0 of
      C13563 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1390
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.identityʳ"
d1390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1346 -> AgdaAny -> AgdaAny
d1390 v0 v1 v2 v3 v4 v5 v6 = du1390 v4 v5 v6
du1390 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1346 -> AgdaAny -> AgdaAny
du1390 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du168
      (let v3 = d1358 (coe v2) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3)))
      (coe v0) (coe d1362 (coe v2)) (coe v1) (coe d1360 (coe v2))
name1392
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.identity"
d1392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1346 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1392 v0 v1 v2 v3 v4 v5 v6 = du1392 v4 v5 v6
du1392 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1346 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1392 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1360 (coe v2))
      (coe du1390 (coe v0) (coe v1) (coe v2))
name1394
  = "Algebra.Structures.Biased.IsCommutativeMonoidˡ.isCommutativeMonoid"
d1394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1346 -> MAlonzo.Code.Algebra.Structures.T362
d1394 v0 v1 v2 v3 v4 v5 v6 = du1394 v4 v5 v6
du1394 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1346 -> MAlonzo.Code.Algebra.Structures.T362
du1394 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C5263
      (coe
         MAlonzo.Code.Algebra.Structures.C4201 (coe d1358 (coe v2))
         (coe du1392 (coe v0) (coe v1) (coe v2)))
      (coe d1362 (coe v2))
name1400 = "Algebra.Structures.Biased.IsCommutativeMonoidʳ"
d1400 a0 a1 a2 a3 a4 a5 = ()
data T1400
  = C14681 MAlonzo.Code.Algebra.Structures.T116 (AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny)
name1412
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.isSemigroup"
d1412 :: T1400 -> MAlonzo.Code.Algebra.Structures.T116
d1412 v0
  = case coe v0 of
      C14681 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1414
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityʳ"
d1414 :: T1400 -> AgdaAny -> AgdaAny
d1414 v0
  = case coe v0 of
      C14681 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1416 = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.comm"
d1416 :: T1400 -> AgdaAny -> AgdaAny -> AgdaAny
d1416 v0
  = case coe v0 of
      C14681 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1444
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.identityˡ"
d1444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1400 -> AgdaAny -> AgdaAny
d1444 v0 v1 v2 v3 v4 v5 v6 = du1444 v4 v5 v6
du1444 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1400 -> AgdaAny -> AgdaAny
du1444 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du174
      (let v3 = d1412 (coe v2) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v3)))
      (coe v0) (coe d1416 (coe v2)) (coe v1) (coe d1414 (coe v2))
name1446
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.identity"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1400 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1446 v0 v1 v2 v3 v4 v5 v6 = du1446 v4 v5 v6
du1446 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1400 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1446 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1444 (coe v0) (coe v1) (coe v2)) (coe d1414 (coe v2))
name1448
  = "Algebra.Structures.Biased.IsCommutativeMonoidʳ.isCommutativeMonoid"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1400 -> MAlonzo.Code.Algebra.Structures.T362
d1448 v0 v1 v2 v3 v4 v5 v6 = du1448 v4 v5 v6
du1448 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1400 -> MAlonzo.Code.Algebra.Structures.T362
du1448 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Structures.C5263
      (coe
         MAlonzo.Code.Algebra.Structures.C4201 (coe d1412 (coe v2))
         (coe du1446 (coe v0) (coe v1) (coe v2)))
      (coe d1416 (coe v2))
name1458 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ"
d1458 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1458
  = C15817 MAlonzo.Code.Algebra.Structures.T362
           MAlonzo.Code.Algebra.Structures.T362
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name1476
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.+-isCommutativeMonoid"
d1476 :: T1458 -> MAlonzo.Code.Algebra.Structures.T362
d1476 v0
  = case coe v0 of
      C15817 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1478
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-isCommutativeMonoid"
d1478 :: T1458 -> MAlonzo.Code.Algebra.Structures.T362
d1478 v0
  = case coe v0 of
      C15817 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1480
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribʳ"
d1480 :: T1458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1480 v0
  = case coe v0 of
      C15817 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1482 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroˡ"
d1482 :: T1458 -> AgdaAny -> AgdaAny
d1482 v0
  = case coe v0 of
      C15817 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1528
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.*-CM.comm"
d1528 :: T1458 -> AgdaAny -> AgdaAny -> AgdaAny
d1528 v0
  = coe MAlonzo.Code.Algebra.Structures.d374 (coe d1478 (coe v0))
name1564
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.distribˡ"
d1564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1564 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1564 v4 v5 v8
du1564 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1564 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du290
      (let v3 = d1476 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1476 (coe v2))))))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1478 (coe v2)))
      (coe d1480 (coe v2))
name1566
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.distrib"
d1566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1458 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1566 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1566 v4 v5 v8
du1566 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1458 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1566 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1564 (coe v0) (coe v1) (coe v2)) (coe d1480 (coe v2))
name1568 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.zeroʳ"
d1568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1458 -> AgdaAny -> AgdaAny
d1568 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1568 v5 v6 v8
du1568 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1458 -> AgdaAny -> AgdaAny
du1568 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du180
      (let v3 = d1476 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v0)
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1478 (coe v2)))
      (coe v1) (coe d1482 (coe v2))
name1570 = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.zero"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1458 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1570 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1570 v5 v6 v8
du1570 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1458 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1570 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1482 (coe v2))
      (coe du1568 (coe v0) (coe v1) (coe v2))
name1572
  = "Algebra.Structures.Biased.IsCommutativeSemiringˡ.isCommutativeSemiring"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1458 -> MAlonzo.Code.Algebra.Structures.T1276
d1572 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1572 v4 v5 v6 v8
du1572 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1458 -> MAlonzo.Code.Algebra.Structures.T1276
du1572 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C23215
      (coe
         MAlonzo.Code.Algebra.Structures.C21369
         (coe
            MAlonzo.Code.Algebra.Structures.C19341 (coe d1476 (coe v3))
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1478 (coe v3)))
            (coe du1566 (coe v0) (coe v1) (coe v3)))
         (coe du1570 (coe v1) (coe v2) (coe v3)))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1478 (coe v3)))
name1582 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ"
d1582 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1582
  = C18987 MAlonzo.Code.Algebra.Structures.T362
           MAlonzo.Code.Algebra.Structures.T362
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name1600
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.+-isCommutativeMonoid"
d1600 :: T1582 -> MAlonzo.Code.Algebra.Structures.T362
d1600 v0
  = case coe v0 of
      C18987 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1602
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-isCommutativeMonoid"
d1602 :: T1582 -> MAlonzo.Code.Algebra.Structures.T362
d1602 v0
  = case coe v0 of
      C18987 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1604
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribˡ"
d1604 :: T1582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1604 v0
  = case coe v0 of
      C18987 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1606 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroʳ"
d1606 :: T1582 -> AgdaAny -> AgdaAny
d1606 v0
  = case coe v0 of
      C18987 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1652
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.*-CM.comm"
d1652 :: T1582 -> AgdaAny -> AgdaAny -> AgdaAny
d1652 v0
  = coe MAlonzo.Code.Algebra.Structures.d374 (coe d1602 (coe v0))
name1688
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.distribʳ"
d1688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1688 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1688 v4 v5 v8
du1688 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1688 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du280
      (let v3 = d1600 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v1) (coe v0)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1600 (coe v2))))))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1602 (coe v2)))
      (coe d1604 (coe v2))
name1690
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.distrib"
d1690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1582 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1690 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1690 v4 v5 v8
du1690 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1582 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1690 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d1604 (coe v2))
      (coe du1688 (coe v0) (coe v1) (coe v2))
name1692 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.zeroˡ"
d1692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1582 -> AgdaAny -> AgdaAny
d1692 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1692 v5 v6 v8
du1692 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1582 -> AgdaAny -> AgdaAny
du1692 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du186
      (let v3 = d1600 (coe v2) in
       let v4 = MAlonzo.Code.Algebra.Structures.d372 (coe v3) in
       let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5)))
      (coe v0)
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1602 (coe v2)))
      (coe v1) (coe d1606 (coe v2))
name1694 = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.zero"
d1694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1582 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1694 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1694 v5 v6 v8
du1694 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1582 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1694 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1692 (coe v0) (coe v1) (coe v2)) (coe d1606 (coe v2))
name1696
  = "Algebra.Structures.Biased.IsCommutativeSemiringʳ.isCommutativeSemiring"
d1696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1582 -> MAlonzo.Code.Algebra.Structures.T1276
d1696 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1696 v4 v5 v6 v8
du1696 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T1582 -> MAlonzo.Code.Algebra.Structures.T1276
du1696 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.C23215
      (coe
         MAlonzo.Code.Algebra.Structures.C21369
         (coe
            MAlonzo.Code.Algebra.Structures.C19341 (coe d1600 (coe v3))
            (coe MAlonzo.Code.Algebra.Structures.d372 (coe d1602 (coe v3)))
            (coe du1690 (coe v0) (coe v1) (coe v3)))
         (coe du1694 (coe v1) (coe v2) (coe v3)))
      (coe MAlonzo.Code.Algebra.Structures.d374 (coe d1602 (coe v3)))
name1708
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero"
d1708 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T1708
  = C22183 MAlonzo.Code.Algebra.Structures.T610
           MAlonzo.Code.Algebra.Structures.T314
           MAlonzo.Code.Agda.Builtin.Sigma.T14
name1726
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.+-isAbelianGroup"
d1726 :: T1708 -> MAlonzo.Code.Algebra.Structures.T610
d1726 v0
  = case coe v0 of
      C22183 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1728
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.*-isMonoid"
d1728 :: T1708 -> MAlonzo.Code.Algebra.Structures.T314
d1728 v0
  = case coe v0 of
      C22183 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1730
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.distrib"
d1730 :: T1708 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1730 v0
  = case coe v0 of
      C22183 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1824
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroˡ"
d1824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1708 -> AgdaAny -> AgdaAny
d1824 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1824 v4 v5 v6 v7 v9
du1824 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1708 -> AgdaAny -> AgdaAny
du1824 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du332
      (let v5 = d1726 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       let v8 = MAlonzo.Code.Algebra.Structures.d324 (coe v7) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8)))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1726 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d1728 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d126
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1726 (coe v4))))))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1730 (coe v4)))
      (let v5 = d1726 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d326 (coe v7)))
      (let v5 = d1726 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d544 (coe v6)))
name1826
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zeroʳ"
d1826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1708 -> AgdaAny -> AgdaAny
d1826 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1826 v4 v5 v6 v7 v9
du1826 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T1708 -> AgdaAny -> AgdaAny
du1826 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du344
      (let v5 = d1726 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       let v8 = MAlonzo.Code.Algebra.Structures.d324 (coe v7) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v8)))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d542
                  (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1726 (coe v4)))))))
      (coe
         MAlonzo.Code.Algebra.Structures.d90
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe MAlonzo.Code.Algebra.Structures.d324 (coe d1728 (coe v4)))))
      (coe
         MAlonzo.Code.Algebra.Structures.d126
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d542
               (coe MAlonzo.Code.Algebra.Structures.d622 (coe d1726 (coe v4))))))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1730 (coe v4)))
      (let v5 = d1726 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       let v7 = MAlonzo.Code.Algebra.Structures.d542 (coe v6) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d326 (coe v7)))
      (let v5 = d1726 (coe v4) in
       let v6 = MAlonzo.Code.Algebra.Structures.d622 (coe v5) in
       coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe MAlonzo.Code.Algebra.Structures.d544 (coe v6)))
name1828
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.zero"
d1828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1708 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1828 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1828 v4 v5 v6 v7 v9
du1828 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1708 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe du1824 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe du1826 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
name1830
  = "Algebra.Structures.Biased.IsRingWithoutAnnihilatingZero.isRing"
d1830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1708 -> MAlonzo.Code.Algebra.Structures.T1390
d1830 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du1830 v4 v5 v6 v7 v9
du1830 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T1708 -> MAlonzo.Code.Algebra.Structures.T1390
du1830 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.C25373 (coe d1726 (coe v4))
      (coe d1728 (coe v4)) (coe d1730 (coe v4))
      (coe du1828 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
