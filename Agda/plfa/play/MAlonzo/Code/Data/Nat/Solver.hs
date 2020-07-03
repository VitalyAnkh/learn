{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Solver where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Algebra.Solver.Ring
import qualified MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Reflection

name8 = "Data.Nat.Solver.+-*-Solver._*H_"
d8 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d8
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d728 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name10 = "Data.Nat.Solver.+-*-Solver._*HN_"
d10 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d10
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d724 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name12 = "Data.Nat.Solver.+-*-Solver._*N_"
d12 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d12
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d732 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name14 = "Data.Nat.Solver.+-*-Solver._*NH_"
d14 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d14
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d720 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name20 = "Data.Nat.Solver.+-*-Solver._*x+H_"
d20 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d20
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d706 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name22 = "Data.Nat.Solver.+-*-Solver._*x+HN_"
d22 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d22
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d656 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name24 = "Data.Nat.Solver.+-*-Solver._+H_"
d24 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d24
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d678 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name26 = "Data.Nat.Solver.+-*-Solver._+N_"
d26 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d26
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d682 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name28 = "Data.Nat.Solver.+-*-Solver._:*_"
d28 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d28
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C358
      (coe MAlonzo.Code.Algebra.Solver.Ring.C344)
name30 = "Data.Nat.Solver.+-*-Solver._:+_"
d30 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d30
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C358
      (coe MAlonzo.Code.Algebra.Solver.Ring.C342)
name32 = "Data.Nat.Solver.+-*-Solver._:-_"
d32 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d32 v0 v1
  = coe
      MAlonzo.Code.Algebra.Solver.Ring.C358
      (coe MAlonzo.Code.Algebra.Solver.Ring.C342) (coe v0)
      (coe MAlonzo.Code.Algebra.Solver.Ring.C376 (coe v1))
name34 = "Data.Nat.Solver.+-*-Solver._⊜_"
d34 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d34 v0 = du34
du34 ::
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du34 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name38 = "Data.Nat.Solver.+-*-Solver._:×_"
d38 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348
d38
  = let v0
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    \ v1 v2 v3 ->
      coe
        MAlonzo.Code.Algebra.Solver.Ring.du396
        (coe
           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
           (coe v0))
        v2 v3
name40 = "Data.Nat.Solver.+-*-Solver._^N_"
d40 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
d40
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d804 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name42 = "Data.Nat.Solver.+-*-Solver._≈H_"
d42 a0 a1 a2 = ()
name44 = "Data.Nat.Solver.+-*-Solver._≈N_"
d44 a0 a1 a2 = ()
name46 = "Data.Nat.Solver.+-*-Solver._≟H_"
d46 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d46
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d516 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name48 = "Data.Nat.Solver.+-*-Solver._≟N_"
d48 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d48
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d520 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name50 = "Data.Nat.Solver.+-*-Solver.*H-homo"
d50 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d50 = erased
name52 = "Data.Nat.Solver.+-*-Solver.*HN-homo"
d52 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d52 = erased
name54 = "Data.Nat.Solver.+-*-Solver.*N-homo"
d54 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d54 = erased
name56 = "Data.Nat.Solver.+-*-Solver.*NH-homo"
d56 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d56 = erased
name58 = "Data.Nat.Solver.+-*-Solver.*x+H-homo"
d58 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d58 = erased
name60 = "Data.Nat.Solver.+-*-Solver.*x+HN≈*x+"
d60 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d60 = erased
name62 = "Data.Nat.Solver.+-*-Solver.+H-homo"
d62 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d62 = erased
name64 = "Data.Nat.Solver.+-*-Solver.+N-homo"
d64 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d64 = erased
name66 = "Data.Nat.Solver.+-*-Solver.-H_"
d66 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436
d66
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d814 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name68 = "Data.Nat.Solver.+-*-Solver.-H‿-homo"
d68 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d68 = erased
name70 = "Data.Nat.Solver.+-*-Solver.-N_"
d70 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d70
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d818 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name72 = "Data.Nat.Solver.+-*-Solver.-N‿-homo"
d72 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d72 = erased
name74 = "Data.Nat.Solver.+-*-Solver.0H"
d74 :: Integer -> MAlonzo.Code.Algebra.Solver.Ring.T436
d74 v0 = du74
du74 :: MAlonzo.Code.Algebra.Solver.Ring.T436
du74 = coe MAlonzo.Code.Algebra.Solver.Ring.C442
name76 = "Data.Nat.Solver.+-*-Solver.0N"
d76 :: Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
d76
  = let v0
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.du638
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v0))
name78 = "Data.Nat.Solver.+-*-Solver.0N-homo"
d78 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d78 = erased
name80 = "Data.Nat.Solver.+-*-Solver.0≈⟦0⟧"
d80 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T482 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d80 = erased
name82 = "Data.Nat.Solver.+-*-Solver.1H"
d82 :: Integer -> MAlonzo.Code.Algebra.Solver.Ring.T436
d82
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d644 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name84 = "Data.Nat.Solver.+-*-Solver.1N"
d84 :: Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
d84
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d648 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name86 = "Data.Nat.Solver.+-*-Solver.1N-homo"
d86 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d86 = erased
name90 = "Data.Nat.Solver.+-*-Solver.HNF"
d90 a0 = ()
name92 = "Data.Nat.Solver.+-*-Solver.Normal"
d92 a0 = ()
name94 = "Data.Nat.Solver.+-*-Solver.Op"
d94 = ()
name96 = "Data.Nat.Solver.+-*-Solver.Polynomial"
d96 a0 = ()
name102 = "Data.Nat.Solver.+-*-Solver.^N-homo"
d102 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d102 = erased
name110 = "Data.Nat.Solver.+-*-Solver.correct"
d110 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d110 = erased
name112 = "Data.Nat.Solver.+-*-Solver.correct-con"
d112 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d112 = erased
name114 = "Data.Nat.Solver.+-*-Solver.correct-var"
d114 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d114 = erased
name116 = "Data.Nat.Solver.+-*-Solver.normalise"
d116 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d116
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d844 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name118 = "Data.Nat.Solver.+-*-Solver.normalise-con"
d118 :: Integer -> Integer -> MAlonzo.Code.Algebra.Solver.Ring.T438
d118
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d828 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name120 = "Data.Nat.Solver.+-*-Solver.normalise-var"
d120 ::
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438
d120
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d838 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name128 = "Data.Nat.Solver.+-*-Solver.prove"
d128 ::
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d128 = erased
name130 = "Data.Nat.Solver.+-*-Solver.sem"
d130 ::
  MAlonzo.Code.Algebra.Solver.Ring.T340 ->
  Integer -> Integer -> Integer
d130
  = let v0
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    coe MAlonzo.Code.Algebra.Solver.Ring.du404 (coe v0)
name132 = "Data.Nat.Solver.+-*-Solver.solve"
d132 :: Integer -> AgdaAny -> AgdaAny -> AgdaAny
d132
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    let v4
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
              (coe v2) in
    let v5
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
              (coe v2) in
    let v6
          = coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Reflection.du116
      (let v7
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d208
                 (coe v2) in
       let v8
             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                 (coe v7) in
       let v9 = MAlonzo.Code.Algebra.Structures.d1290 (coe v8) in
       let v10 = MAlonzo.Code.Algebra.Structures.d1186 (coe v9) in
       let v11 = MAlonzo.Code.Algebra.Structures.d1094 (coe v10) in
       let v12 = MAlonzo.Code.Algebra.Structures.d372 (coe v11) in
       let v13 = MAlonzo.Code.Algebra.Structures.d324 (coe v12) in
       coe
         MAlonzo.Code.Algebra.Structures.du104
         (coe MAlonzo.Code.Algebra.Structures.d124 (coe v13)))
      (coe (\ v7 -> coe MAlonzo.Code.Algebra.Solver.Ring.C366))
      (\ v7 v8 v9 ->
         coe MAlonzo.Code.Algebra.Solver.Ring.du408 (coe v2) (coe v5) v8 v9)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d866 (coe v0) (coe v0) (coe v1)
         (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.d1312 (coe v0) (coe v0) (coe v1)
         (coe v1) (coe v4) (coe v2) (coe v5) (coe v6))
name140 = "Data.Nat.Solver.+-*-Solver.∅*x+HN-homo"
d140 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d140 = erased
name142 = "Data.Nat.Solver.+-*-Solver.⟦_⟧"
d142 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> Integer
d142
  = let v0
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    \ v1 v2 v3 ->
      coe
        MAlonzo.Code.Algebra.Solver.Ring.du408 (coe v0)
        (coe
           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
           (coe v0))
        v2 v3
name144 = "Data.Nat.Solver.+-*-Solver.⟦_⟧H"
d144 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> Integer
d144
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d456 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name146 = "Data.Nat.Solver.+-*-Solver.⟦_⟧H-cong"
d146 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T436 ->
  MAlonzo.Code.Algebra.Solver.Ring.T478 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d146 = erased
name148 = "Data.Nat.Solver.+-*-Solver.⟦_⟧N"
d148 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> Integer
d148
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d460 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
name150 = "Data.Nat.Solver.+-*-Solver.⟦_⟧N-cong"
d150 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T438 ->
  MAlonzo.Code.Algebra.Solver.Ring.T482 ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d150 = erased
name152 = "Data.Nat.Solver.+-*-Solver.⟦_⟧↓"
d152 ::
  Integer ->
  MAlonzo.Code.Algebra.Solver.Ring.T348 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> Integer
d152
  = let v0 = MAlonzo.Code.Level.d22 in
    let v1 = MAlonzo.Code.Level.d22 in
    let v2
          = coe
              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du1334
              (coe MAlonzo.Code.Data.Nat.Properties.d2404) in
    let v3 = MAlonzo.Code.Data.Nat.Properties.d1360 in
    coe
      MAlonzo.Code.Algebra.Solver.Ring.d866 (coe v0) (coe v0) (coe v1)
      (coe v1)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du332
         (coe v2))
      (coe v2)
      (coe
         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du726
         (coe v2))
      (coe MAlonzo.Code.Relation.Binary.Consequences.du680 (coe v3))
