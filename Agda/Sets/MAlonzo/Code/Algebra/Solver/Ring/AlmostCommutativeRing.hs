{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.Ring
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name26
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing"
d26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T26
  = C23 MAlonzo.Code.Algebra.Structures.T1192
        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
        (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
name62
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.isCommutativeSemiring"
d62 :: T26 -> MAlonzo.Code.Algebra.Structures.T1192
d62 v0
  = case coe v0 of
      C23 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name64
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿cong"
d64 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0
  = case coe v0 of
      C23 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name70
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿*-distribˡ"
d70 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0
  = case coe v0 of
      C23 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name76
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿+-comm"
d76 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
d76 v0
  = case coe v0 of
      C23 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name80
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d80 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du80 v9
du80 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du80 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))))
name82
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm"
d82 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe (d62 (coe v0))))))
name84
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d84 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du84 v9
du84 ::
  T26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du84 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))))))
name86
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du86 v4 v5 v7 v8 v9
du86 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du86 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d278 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name88
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du88 v4 v5 v7 v8 v9
du88 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du88 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d278 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name90
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du90 v5 v8 v9
du90 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du90 v0 v1 v2
  = let v3 = d62 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v0) (coe v1)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v3))))
name92
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du92 v4 v5 v7 v8 v9
du92 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
du92 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v8))))
name94
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d94 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du94 v4 v5 v7 v8 v9
du94 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
du94 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1020 (coe v7) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v8))))
name96
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeMonoid"
d96 :: T26 -> MAlonzo.Code.Algebra.Structures.T314
d96 v0
  = coe (MAlonzo.Code.Algebra.Structures.d1212 (coe (d62 (coe v0))))
name98
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T84
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du98 v9
du98 :: T26 -> MAlonzo.Code.Algebra.Structures.T84
du98 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))))
name100
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMonoid"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T268
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du100 v5 v8 v9
du100 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T268
du100 v0 v1 v2
  = let v3 = d62 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v0) (coe v1)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v3))))
name102
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T118
d102 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du102 v9
du102 :: T26 -> MAlonzo.Code.Algebra.Structures.T118
du102 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v1))))
name104
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du104 v9
du104 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du104 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))
name106
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du106 v9
du106 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
du106 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))
name108
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du108 v9
du108 ::
  T26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du108 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))
name110
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du110 v4 v5 v7 v8 v9
du110 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du110 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name112
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du112 v4 v5 v7 v8 v9
du112 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du112 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name114
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du114 v4 v5 v7 v8 v9
du114 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du114 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v0) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v7))))
name116
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du116 v4 v5 v7 v8 v9
du116 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
du116 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v0) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v7))))
name118
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d118 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du118 v9
du118 :: T26 -> AgdaAny -> AgdaAny
du118 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))
name120
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.+-isCommutativeMonoid"
d120 :: T26 -> MAlonzo.Code.Algebra.Structures.T314
d120 v0
  = coe (MAlonzo.Code.Algebra.Structures.d1210 (coe (d62 (coe v0))))
name122
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T84
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du122 v9
du122 :: T26 -> MAlonzo.Code.Algebra.Structures.T84
du122 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))
name124
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMonoid"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T268
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du124 v4 v5 v7 v8 v9
du124 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T268
du124 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v0) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v7))))
name126
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T118
d126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du126 v9
du126 :: T26 -> MAlonzo.Code.Algebra.Structures.T118
du126 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))
name128
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d128 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du128 v4 v5 v9
du128 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du128 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.du1292
         (coe v0) (coe v1) (coe (d62 (coe v2))))
name130
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribʳ"
d130 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d130 v0
  = coe (MAlonzo.Code.Algebra.Structures.d1214 (coe (d62 (coe v0))))
name132
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribˡ"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d132 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du132 v4 v5 v9
du132 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du132 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.du1290
         (coe v0) (coe v1) (coe (d62 (coe v2))))
name134
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemiringWithoutOne"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T914
d134 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du134 v4 v5 v7 v8 v9
du134 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T914
du134 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe v0) (coe v1) (coe v2) (coe v3) (coe (d62 (coe v4))))
name136
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isEquivalence"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Relation.Binary.Core.T402
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du136 v9
du136 :: T26 -> MAlonzo.Code.Relation.Binary.Core.T402
du136 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))
name138
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isNearSemiring"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T752
d138 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du138 v4 v5 v7 v8 v9
du138 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T752
du138 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v0) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v6))))
name140
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiring"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T1092
d140 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du140 v4 v5 v7 v8 v9
du140 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T1092
du140 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe v0) (coe v1) (coe v2) (coe v3) (coe (d62 (coe v4))))
name142
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T1002
d142 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du142 v4 v5 v7 v8 v9
du142 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T1002
du142 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.d1106
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))))
name144
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutOne"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T826
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du144 v4 v5 v7 v8 v9
du144 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T826
du144 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))))
name146
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.refl"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d146 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du146 v9
du146 :: T26 -> AgdaAny -> AgdaAny
du146 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))))
name148
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.reflexive"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d148 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du148 v4 v5 v7 v8 v9
du148 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du148 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d126 (coe v9) in
    coe
      (\ v11 v12 v13 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v10))) v11)
name150
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.setoid"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Relation.Binary.T128
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du150 v4 v5 v7 v8 v9
du150 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Relation.Binary.T128
du150 v0 v1 v2 v3 v4
  = let v5 = d62 (coe v4) in
    let v6
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d1106 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1018 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d326 (coe v8) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v9))))
name152
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.sym"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d152 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du152 v9
du152 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du152 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))))
name154
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.trans"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d154 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du154 v9
du154 ::
  T26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du154 v0
  = let v1 = d62 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v1))))))))))
name156
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d156 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du156 v5 v7 v9
du156 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du156 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.du1296
         (coe v0) (coe v1) (coe (d62 (coe v2))))
name158
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroʳ"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du158 v5 v7 v9
du158 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T26 -> AgdaAny -> AgdaAny
du158 v0 v1 v2
  = coe
      (MAlonzo.Code.Algebra.Structures.du1294
         (coe v0) (coe v1) (coe (d62 (coe v2))))
name160
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroˡ"
d160 :: T26 -> AgdaAny -> AgdaAny
d160 v0
  = coe (MAlonzo.Code.Algebra.Structures.d1216 (coe (d62 (coe v0))))
name166
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing"
d166 a0 a1 = ()
data T166
  = C1165 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny T26
name188
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.Carrier"
d188 :: T166 -> ()
d188 = erased
name190
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._≈_"
d190 :: T166 -> AgdaAny -> AgdaAny -> ()
d190 = erased
name192
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._+_"
d192 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d192 v0
  = case coe v0 of
      C1165 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name194
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._*_"
d194 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d194 v0
  = case coe v0 of
      C1165 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name196
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.-_"
d196 :: T166 -> AgdaAny -> AgdaAny
d196 v0
  = case coe v0 of
      C1165 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name198
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.0#"
d198 :: T166 -> AgdaAny
d198 v0
  = case coe v0 of
      C1165 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name200
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.1#"
d200 :: T166 -> AgdaAny
d200 v0
  = case coe v0 of
      C1165 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name202
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.isAlmostCommutativeRing"
d202 :: T166 -> T26
d202 v0
  = case coe v0 of
      C1165 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name206
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.assoc"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d206 v0 v1 v2 = du206 v2
du206 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du206 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name208
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.comm"
d208 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d208 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1212
               (coe (d62 (coe (d202 (coe v0))))))))
name210
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d210 v0 v1 v2 = du210 v2
du210 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du210 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))))
name212
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0 v1 v2 = du212 v2
du212 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du212 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name214
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d214 v0 v1 v2 = du214 v2
du214 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du214 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name216
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identity"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d216 v0 v1 v2 = du216 v2
du216 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du216 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name218
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d218 v0 v1 v2 = du218 v2
du218 :: T166 -> AgdaAny -> AgdaAny
du218 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name220
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d220 v0 v1 v2 = du220 v2
du220 :: T166 -> AgdaAny -> AgdaAny
du220 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name222
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeMonoid"
d222 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
d222 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1212
         (coe (d62 (coe (d202 (coe v0))))))
name224
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T84
d224 v0 v1 v2 = du224 v2
du224 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du224 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name226
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMonoid"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T268
d226 v0 v1 v2 = du226 v2
du226 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du226 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name228
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T118
d228 v0 v1 v2 = du228 v2
du228 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du228 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))
name230
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.assoc"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d230 v0 v1 v2 = du230 v2
du230 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du230 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name232
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.comm"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny
d232 v0 v1 v2 = du232 v2
du232 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du232 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name234
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d234 v0 v1 v2 = du234 v2
du234 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du234 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name236
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d236 v0 v1 v2 = du236 v2
du236 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du236 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name238
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d238 v0 v1 v2 = du238 v2
du238 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du238 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name240
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identity"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d240 v0 v1 v2 = du240 v2
du240 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du240 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name242
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d242 v0 v1 v2 = du242 v2
du242 :: T166 -> AgdaAny -> AgdaAny
du242 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name244
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d244 v0 v1 v2 = du244 v2
du244 :: T166 -> AgdaAny -> AgdaAny
du244 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name246
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-isCommutativeMonoid"
d246 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
d246 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1210
         (coe (d62 (coe (d202 (coe v0))))))
name248
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T84
d248 v0 v1 v2 = du248 v2
du248 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du248 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name250
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMonoid"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T268
d250 v0 v1 v2 = du250 v2
du250 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du250 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name252
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T118
d252 v0 v1 v2 = du252 v2
du252 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du252 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name254
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿*-distribˡ"
d254 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d254 v0 = coe (d70 (coe (d202 (coe v0))))
name256
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿+-comm"
d256 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d256 v0 = coe (d76 (coe (d202 (coe v0))))
name258
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿cong"
d258 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d258 v0 = coe (d64 (coe (d202 (coe v0))))
name260
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distrib"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d260 v0 v1 v2 = du260 v2
du260 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du260 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1292
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name262
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribʳ"
d262 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d262 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1214
         (coe (d62 (coe (d202 (coe v0))))))
name264
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribˡ"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d264 v0 v1 v2 = du264 v2
du264 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du264 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1290
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name266
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiring"
d266 :: T166 -> MAlonzo.Code.Algebra.Structures.T1192
d266 v0 = coe (d62 (coe (d202 (coe v0))))
name268
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiringWithoutOne"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T914
d268 v0 v1 v2 = du268 v2
du268 :: T166 -> MAlonzo.Code.Algebra.Structures.T914
du268 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name270
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isEquivalence"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Relation.Binary.Core.T402
d270 v0 v1 v2 = du270 v2
du270 :: T166 -> MAlonzo.Code.Relation.Binary.Core.T402
du270 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name272
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isNearSemiring"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T752
d272 v0 v1 v2 = du272 v2
du272 :: T166 -> MAlonzo.Code.Algebra.Structures.T752
du272 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v7))))
name274
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiring"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T1092
d274 v0 v1 v2 = du274 v2
du274 :: T166 -> MAlonzo.Code.Algebra.Structures.T1092
du274 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name276
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T1002
d276 v0 v1 v2 = du276 v2
du276 :: T166 -> MAlonzo.Code.Algebra.Structures.T1002
du276 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.d1106
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name278
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutOne"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T826
d278 v0 v1 v2 = du278 v2
du278 :: T166 -> MAlonzo.Code.Algebra.Structures.T826
du278 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name280
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.refl"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d280 v0 v1 v2 = du280 v2
du280 :: T166 -> AgdaAny -> AgdaAny
du280 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name282
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.reflexive"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d282 v0 v1 v2 = du282 v2
du282 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du282 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    let v11 = MAlonzo.Code.Algebra.Structures.d126 (coe v10) in
    coe
      (\ v12 v13 v14 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v11))) v12)
name284
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.setoid"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Relation.Binary.T128
d284 v0 v1 v2 = du284 v2
du284 :: T166 -> MAlonzo.Code.Relation.Binary.T128
du284 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name286
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.sym"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d286 v0 v1 v2 = du286 v2
du286 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du286 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name288
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.trans"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d288 v0 v1 v2 = du288 v2
du288 ::
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du288 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name290
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zero"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d290 v0 v1 v2 = du290 v2
du290 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du290 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1296
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name292
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroʳ"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d292 v0 v1 v2 = du292 v2
du292 :: T166 -> AgdaAny -> AgdaAny
du292 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1294
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name294
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroˡ"
d294 :: T166 -> AgdaAny -> AgdaAny
d294 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1216
         (coe (d62 (coe (d202 (coe v0))))))
name296
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.commutativeSemiring"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.T1698
d296 v0 v1 v2 = du296 v2
du296 :: T166 -> MAlonzo.Code.Algebra.T1698
du296 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 ->
         MAlonzo.Code.Algebra.C6801 v3 v4 v5 v6 v7)
      erased erased (d192 (coe v0)) (d194 (coe v0)) (d198 (coe v0))
      (d200 (coe v0)) (d62 (coe (d202 (coe v0))))
name300
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeMonoid"
d300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T418
d300 v0 v1 v2 = du300 v2
du300 :: T166 -> MAlonzo.Code.Algebra.T418
du300 v0 = coe (MAlonzo.Code.Algebra.du1850 (coe (du296 (coe v0))))
name302
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-monoid"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T346
d302 v0 v1 v2 = du302 v2
du302 :: T166 -> MAlonzo.Code.Algebra.T346
du302 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1534
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name304
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T76
d304 v0 v1 v2 = du304 v2
du304 :: T166 -> MAlonzo.Code.Algebra.T76
du304 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du1534 (coe v3))))
name306
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-commutativeMonoid"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T418
d306 v0 v1 v2 = du306 v2
du306 :: T166 -> MAlonzo.Code.Algebra.T418
du306 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1520
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name308
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.monoid"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T346
d308 v0 v1 v2 = du308 v2
du308 :: T166 -> MAlonzo.Code.Algebra.T346
du308 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du480
         (coe (MAlonzo.Code.Algebra.du1520 (coe v3))))
name310
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T76
d310 v0 v1 v2 = du310 v2
du310 :: T166 -> MAlonzo.Code.Algebra.T76
du310 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.du1520 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du480 (coe v4))))
name312
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semiring"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.T1550
d312 v0 v1 v2 = du312 v2
du312 :: T166 -> MAlonzo.Code.Algebra.T1550
du312 v0 = coe (MAlonzo.Code.Algebra.du1816 (coe (du296 (coe v0))))
name314
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.rawRing"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.T1856
d314 v0 v1 v2 = du314 v2
du314 :: T166 -> MAlonzo.Code.Algebra.T1856
du314 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> MAlonzo.Code.Algebra.C7405 v2 v3 v4 v5 v6)
      erased (d192 (coe v0)) (d194 (coe v0)) (d196 (coe v0))
      (d198 (coe v0)) (d200 (coe v0))
name326
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_"
d326 a0 a1 a2 a3 a4 = ()
data T326
  = C1923 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny
name340 = "Algebra.Solver.Ring.AlmostCommutativeRing.F._*_"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny -> AgdaAny
d340 v0 v1 v2 v3 v4 = du340 v3
du340 ::
  MAlonzo.Code.Algebra.T1856 -> AgdaAny -> AgdaAny -> AgdaAny
du340 v0 = coe (MAlonzo.Code.Algebra.d1876 (coe v0))
name342 = "Algebra.Solver.Ring.AlmostCommutativeRing.F._+_"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny -> AgdaAny
d342 v0 v1 v2 v3 v4 = du342 v3
du342 ::
  MAlonzo.Code.Algebra.T1856 -> AgdaAny -> AgdaAny -> AgdaAny
du342 v0 = coe (MAlonzo.Code.Algebra.d1874 (coe v0))
name344 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.-_"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny
d344 v0 v1 v2 v3 v4 = du344 v3
du344 :: MAlonzo.Code.Algebra.T1856 -> AgdaAny -> AgdaAny
du344 v0 = coe (MAlonzo.Code.Algebra.d1878 (coe v0))
name346 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.0#"
d346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny
d346 v0 v1 v2 v3 v4 = du346 v3
du346 :: MAlonzo.Code.Algebra.T1856 -> AgdaAny
du346 v0 = coe (MAlonzo.Code.Algebra.d1880 (coe v0))
name348 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.1#"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny
d348 v0 v1 v2 v3 v4 = du348 v3
du348 :: MAlonzo.Code.Algebra.T1856 -> AgdaAny
du348 v0 = coe (MAlonzo.Code.Algebra.d1882 (coe v0))
name350 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.Carrier"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> ()
d350 = erased
name354 = "Algebra.Solver.Ring.AlmostCommutativeRing.T._*_"
d354 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d354 v0 = coe (d194 (coe v0))
name356 = "Algebra.Solver.Ring.AlmostCommutativeRing.T._+_"
d356 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d356 v0 = coe (d192 (coe v0))
name358 = "Algebra.Solver.Ring.AlmostCommutativeRing.T._≈_"
d358 :: T166 -> AgdaAny -> AgdaAny -> ()
d358 = erased
name360 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.assoc"
d360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d360 v0 v1 v2 v3 v4 = du360 v4
du360 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du360 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name362 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.comm"
d362 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d362 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1212
               (coe (d62 (coe (d202 (coe v0))))))))
name364
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-commutativeMonoid"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T418
d364 v0 v1 v2 v3 v4 = du364 v4
du364 :: T166 -> MAlonzo.Code.Algebra.T418
du364 v0 = coe (MAlonzo.Code.Algebra.du1850 (coe (du296 (coe v0))))
name366 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-cong"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d366 v0 v1 v2 v3 v4 = du366 v4
du366 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du366 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))))
name368 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d368 v0 v1 v2 v3 v4 = du368 v4
du368 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du368 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name370 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d370 v0 v1 v2 v3 v4 = du370 v4
du370 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du370 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name372 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identity"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d372 v0 v1 v2 v3 v4 = du372 v4
du372 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du372 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name374 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny
d374 v0 v1 v2 v3 v4 = du374 v4
du374 :: T166 -> AgdaAny -> AgdaAny
du374 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name376 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny
d376 v0 v1 v2 v3 v4 = du376 v4
du376 :: T166 -> AgdaAny -> AgdaAny
du376 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name378
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isCommutativeMonoid"
d378 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
d378 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1212
         (coe (d62 (coe (d202 (coe v0))))))
name380 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isMagma"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T84
d380 v0 v1 v2 v3 v4 = du380 v4
du380 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du380 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name382 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isMonoid"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T268
d382 v0 v1 v2 v3 v4 = du382 v4
du382 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du382 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name384 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemigroup"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T118
d384 v0 v1 v2 v3 v4 = du384 v4
du384 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du384 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))
name386 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-monoid"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T346
d386 v0 v1 v2 v3 v4 = du386 v4
du386 :: T166 -> MAlonzo.Code.Algebra.T346
du386 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1534
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name388 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T76
d388 v0 v1 v2 v3 v4 = du388 v4
du388 :: T166 -> MAlonzo.Code.Algebra.T76
du388 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du1534 (coe v3))))
name390 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.assoc"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d390 v0 v1 v2 v3 v4 = du390 v4
du390 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du390 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name392 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.comm"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny -> AgdaAny
d392 v0 v1 v2 v3 v4 = du392 v4
du392 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du392 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name394
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.+-commutativeMonoid"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T418
d394 v0 v1 v2 v3 v4 = du394 v4
du394 :: T166 -> MAlonzo.Code.Algebra.T418
du394 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1520
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name396 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-cong"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d396 v0 v1 v2 v3 v4 = du396 v4
du396 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du396 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name398 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d398 v0 v1 v2 v3 v4 = du398 v4
du398 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du398 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name400 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d400 v0 v1 v2 v3 v4 = du400 v4
du400 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du400 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name402 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identity"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d402 v0 v1 v2 v3 v4 = du402 v4
du402 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du402 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name404 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny
d404 v0 v1 v2 v3 v4 = du404 v4
du404 :: T166 -> AgdaAny -> AgdaAny
du404 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name406 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny
d406 v0 v1 v2 v3 v4 = du406 v4
du406 :: T166 -> AgdaAny -> AgdaAny
du406 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name408
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.+-isCommutativeMonoid"
d408 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
d408 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1210
         (coe (d62 (coe (d202 (coe v0))))))
name410 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isMagma"
d410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T84
d410 v0 v1 v2 v3 v4 = du410 v4
du410 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du410 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name412 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isMonoid"
d412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T268
d412 v0 v1 v2 v3 v4 = du412 v4
du412 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du412 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name414 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemigroup"
d414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T118
d414 v0 v1 v2 v3 v4 = du414 v4
du414 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du414 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name416 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.monoid"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T346
d416 v0 v1 v2 v3 v4 = du416 v4
du416 :: T166 -> MAlonzo.Code.Algebra.T346
du416 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du480
         (coe (MAlonzo.Code.Algebra.du1520 (coe v3))))
name418 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup"
d418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T76
d418 v0 v1 v2 v3 v4 = du418 v4
du418 :: T166 -> MAlonzo.Code.Algebra.T76
du418 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.du1520 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du480 (coe v4))))
name420 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-_"
d420 :: T166 -> AgdaAny -> AgdaAny
d420 v0 = coe (d196 (coe v0))
name422
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿*-distribˡ"
d422 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d422 v0 = coe (d70 (coe (d202 (coe v0))))
name424 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿+-comm"
d424 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d424 v0 = coe (d76 (coe (d202 (coe v0))))
name426 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿cong"
d426 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d426 v0 = coe (d64 (coe (d202 (coe v0))))
name428 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.0#"
d428 :: T166 -> AgdaAny
d428 v0 = coe (d198 (coe v0))
name430 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.1#"
d430 :: T166 -> AgdaAny
d430 v0 = coe (d200 (coe v0))
name432 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.Carrier"
d432 :: T166 -> ()
d432 = erased
name434
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.commutativeSemiring"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T1698
d434 v0 v1 v2 v3 v4 = du434 v4
du434 :: T166 -> MAlonzo.Code.Algebra.T1698
du434 v0 = coe (du296 (coe v0))
name436 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.distrib"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d436 v0 v1 v2 v3 v4 = du436 v4
du436 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du436 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1292
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name438 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.distribʳ"
d438 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d438 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1214
         (coe (d62 (coe (d202 (coe v0))))))
name440 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.distribˡ"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d440 v0 v1 v2 v3 v4 = du440 v4
du440 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du440 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1290
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name442
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isAlmostCommutativeRing"
d442 :: T166 -> T26
d442 v0 = coe (d202 (coe v0))
name444
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiring"
d444 :: T166 -> MAlonzo.Code.Algebra.Structures.T1192
d444 v0 = coe (d62 (coe (d202 (coe v0))))
name446
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiringWithoutOne"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T914
d446 v0 v1 v2 v3 v4 = du446 v4
du446 :: T166 -> MAlonzo.Code.Algebra.Structures.T914
du446 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name448
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isEquivalence"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Relation.Binary.Core.T402
d448 v0 v1 v2 v3 v4 = du448 v4
du448 :: T166 -> MAlonzo.Code.Relation.Binary.Core.T402
du448 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name450
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isNearSemiring"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T752
d450 v0 v1 v2 v3 v4 = du450 v4
du450 :: T166 -> MAlonzo.Code.Algebra.Structures.T752
du450 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v7))))
name452 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiring"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T1092
d452 v0 v1 v2 v3 v4 = du452 v4
du452 :: T166 -> MAlonzo.Code.Algebra.Structures.T1092
du452 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name454
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutAnnihilatingZero"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T1002
d454 v0 v1 v2 v3 v4 = du454 v4
du454 :: T166 -> MAlonzo.Code.Algebra.Structures.T1002
du454 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.d1106
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name456
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutOne"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T826
d456 v0 v1 v2 v3 v4 = du456 v4
du456 :: T166 -> MAlonzo.Code.Algebra.Structures.T826
du456 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name458 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.rawRing"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T1856
d458 v0 v1 v2 v3 v4 = du458 v4
du458 :: T166 -> MAlonzo.Code.Algebra.T1856
du458 v0 = coe (du314 (coe v0))
name460 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.refl"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny
d460 v0 v1 v2 v3 v4 = du460 v4
du460 :: T166 -> AgdaAny -> AgdaAny
du460 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name462 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.reflexive"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d462 v0 v1 v2 v3 v4 = du462 v4
du462 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du462 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    let v11 = MAlonzo.Code.Algebra.Structures.d126 (coe v10) in
    coe
      (\ v12 v13 v14 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v11))) v12)
name464 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.semiring"
d464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> MAlonzo.Code.Algebra.T1550
d464 v0 v1 v2 v3 v4 = du464 v4
du464 :: T166 -> MAlonzo.Code.Algebra.T1550
du464 v0 = coe (MAlonzo.Code.Algebra.du1816 (coe (du296 (coe v0))))
name466 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.setoid"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Relation.Binary.T128
d466 v0 v1 v2 v3 v4 = du466 v4
du466 :: T166 -> MAlonzo.Code.Relation.Binary.T128
du466 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name468 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.sym"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d468 v0 v1 v2 v3 v4 = du468 v4
du468 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du468 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name470 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.trans"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d470 v0 v1 v2 v3 v4 = du470 v4
du470 ::
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du470 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name472 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.zero"
d472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d472 v0 v1 v2 v3 v4 = du472 v4
du472 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du472 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1296
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name474 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroʳ"
d474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> AgdaAny -> AgdaAny
d474 v0 v1 v2 v3 v4 = du474 v4
du474 :: T166 -> AgdaAny -> AgdaAny
du474 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1294
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name476 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroˡ"
d476 :: T166 -> AgdaAny -> AgdaAny
d476 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1216
         (coe (d62 (coe (d202 (coe v0))))))
name480
  = "Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₀"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d480 = erased
name482
  = "Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₁"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d482 = erased
name484
  = "Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₂"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d484 = erased
name486 = "Algebra.Solver.Ring.AlmostCommutativeRing._.Morphism"
d486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> ()
d486 = erased
name516
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._*_"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d516 v0 v1 v2 v3 v4 v5 = du516 v4
du516 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du516 v0 = coe (d194 (coe v0))
name518
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._+_"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d518 v0 v1 v2 v3 v4 v5 = du518 v4
du518 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du518 v0 = coe (d192 (coe v0))
name520
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._≈_"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> ()
d520 = erased
name522
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d522 v0 v1 v2 v3 v4 v5 = du522 v4
du522 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du522 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name524
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.comm"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d524 v0 v1 v2 v3 v4 v5 = du524 v4
du524 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du524 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1212
               (coe (d62 (coe (d202 (coe v0))))))))
name526
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-commutativeMonoid"
d526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T418
d526 v0 v1 v2 v3 v4 v5 = du526 v4
du526 :: T166 -> MAlonzo.Code.Algebra.T418
du526 v0 = coe (MAlonzo.Code.Algebra.du1850 (coe (du296 (coe v0))))
name528
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d528 v0 v1 v2 v3 v4 v5 = du528 v4
du528 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du528 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))))
name530
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d530 v0 v1 v2 v3 v4 v5 = du530 v4
du530 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du530 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name532
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d532 v0 v1 v2 v3 v4 v5 = du532 v4
du532 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du532 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name534
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d534 v0 v1 v2 v3 v4 v5 = du534 v4
du534 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du534 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name536
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d536 v0 v1 v2 v3 v4 v5 = du536 v4
du536 :: T166 -> AgdaAny -> AgdaAny
du536 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name538
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d538 v0 v1 v2 v3 v4 v5 = du538 v4
du538 :: T166 -> AgdaAny -> AgdaAny
du538 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name540
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeMonoid"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T314
d540 v0 v1 v2 v3 v4 v5 = du540 v4
du540 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
du540 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1212
         (coe (d62 (coe (d202 (coe v0))))))
name542
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T84
d542 v0 v1 v2 v3 v4 v5 = du542 v4
du542 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du542 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name544
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMonoid"
d544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T268
d544 v0 v1 v2 v3 v4 v5 = du544 v4
du544 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du544 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name546
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup"
d546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T118
d546 v0 v1 v2 v3 v4 v5 = du546 v4
du546 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du546 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))
name548
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-monoid"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T346
d548 v0 v1 v2 v3 v4 v5 = du548 v4
du548 :: T166 -> MAlonzo.Code.Algebra.T346
du548 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1534
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name550
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T76
d550 v0 v1 v2 v3 v4 v5 = du550 v4
du550 :: T166 -> MAlonzo.Code.Algebra.T76
du550 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du1534 (coe v3))))
name552
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc"
d552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d552 v0 v1 v2 v3 v4 v5 = du552 v4
du552 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du552 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name554
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.comm"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d554 v0 v1 v2 v3 v4 v5 = du554 v4
du554 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du554 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name556
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-commutativeMonoid"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T418
d556 v0 v1 v2 v3 v4 v5 = du556 v4
du556 :: T166 -> MAlonzo.Code.Algebra.T418
du556 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1520
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name558
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d558 v0 v1 v2 v3 v4 v5 = du558 v4
du558 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du558 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name560
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d560 v0 v1 v2 v3 v4 v5 = du560 v4
du560 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du560 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name562
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d562 v0 v1 v2 v3 v4 v5 = du562 v4
du562 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du562 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name564
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d564 v0 v1 v2 v3 v4 v5 = du564 v4
du564 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du564 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name566
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d566 v0 v1 v2 v3 v4 v5 = du566 v4
du566 :: T166 -> AgdaAny -> AgdaAny
du566 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name568
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d568 v0 v1 v2 v3 v4 v5 = du568 v4
du568 :: T166 -> AgdaAny -> AgdaAny
du568 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name570
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-isCommutativeMonoid"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T314
d570 v0 v1 v2 v3 v4 v5 = du570 v4
du570 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
du570 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1210
         (coe (d62 (coe (d202 (coe v0))))))
name572
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T84
d572 v0 v1 v2 v3 v4 v5 = du572 v4
du572 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du572 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name574
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMonoid"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T268
d574 v0 v1 v2 v3 v4 v5 = du574 v4
du574 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du574 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name576
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T118
d576 v0 v1 v2 v3 v4 v5 = du576 v4
du576 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du576 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name578
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.monoid"
d578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T346
d578 v0 v1 v2 v3 v4 v5 = du578 v4
du578 :: T166 -> MAlonzo.Code.Algebra.T346
du578 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du480
         (coe (MAlonzo.Code.Algebra.du1520 (coe v3))))
name580
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T76
d580 v0 v1 v2 v3 v4 v5 = du580 v4
du580 :: T166 -> MAlonzo.Code.Algebra.T76
du580 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.du1520 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du480 (coe v4))))
name582
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-_"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d582 v0 v1 v2 v3 v4 v5 = du582 v4
du582 :: T166 -> AgdaAny -> AgdaAny
du582 v0 = coe (d196 (coe v0))
name584
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿*-distribˡ"
d584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d584 v0 v1 v2 v3 v4 v5 = du584 v4
du584 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du584 v0 = coe (d70 (coe (d202 (coe v0))))
name586
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿+-comm"
d586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d586 v0 v1 v2 v3 v4 v5 = du586 v4
du586 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du586 v0 = coe (d76 (coe (d202 (coe v0))))
name588
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿cong"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d588 v0 v1 v2 v3 v4 v5 = du588 v4
du588 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du588 v0 = coe (d64 (coe (d202 (coe v0))))
name590
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0#"
d590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny
d590 v0 v1 v2 v3 v4 v5 = du590 v4
du590 :: T166 -> AgdaAny
du590 v0 = coe (d198 (coe v0))
name592
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.1#"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny
d592 v0 v1 v2 v3 v4 v5 = du592 v4
du592 :: T166 -> AgdaAny
du592 v0 = coe (d200 (coe v0))
name594
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.Carrier"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> ()
d594 = erased
name596
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemiring"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T1698
d596 v0 v1 v2 v3 v4 v5 = du596 v4
du596 :: T166 -> MAlonzo.Code.Algebra.T1698
du596 v0 = coe (du296 (coe v0))
name598
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distrib"
d598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d598 v0 v1 v2 v3 v4 v5 = du598 v4
du598 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du598 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1292
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name600
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribʳ"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d600 v0 v1 v2 v3 v4 v5 = du600 v4
du600 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du600 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1214
         (coe (d62 (coe (d202 (coe v0))))))
name602
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribˡ"
d602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d602 v0 v1 v2 v3 v4 v5 = du602 v4
du602 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du602 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1290
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name604
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isAlmostCommutativeRing"
d604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> T26
d604 v0 v1 v2 v3 v4 v5 = du604 v4
du604 :: T166 -> T26
du604 v0 = coe (d202 (coe v0))
name606
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiring"
d606 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T1192
d606 v0 v1 v2 v3 v4 v5 = du606 v4
du606 :: T166 -> MAlonzo.Code.Algebra.Structures.T1192
du606 v0 = coe (d62 (coe (d202 (coe v0))))
name608
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiringWithoutOne"
d608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T914
d608 v0 v1 v2 v3 v4 v5 = du608 v4
du608 :: T166 -> MAlonzo.Code.Algebra.Structures.T914
du608 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name610
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isEquivalence"
d610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Relation.Binary.Core.T402
d610 v0 v1 v2 v3 v4 v5 = du610 v4
du610 :: T166 -> MAlonzo.Code.Relation.Binary.Core.T402
du610 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name612
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isNearSemiring"
d612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T752
d612 v0 v1 v2 v3 v4 v5 = du612 v4
du612 :: T166 -> MAlonzo.Code.Algebra.Structures.T752
du612 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v7))))
name614
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiring"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T1092
d614 v0 v1 v2 v3 v4 v5 = du614 v4
du614 :: T166 -> MAlonzo.Code.Algebra.Structures.T1092
du614 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name616
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutAnnihilatingZero"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T1002
d616 v0 v1 v2 v3 v4 v5 = du616 v4
du616 :: T166 -> MAlonzo.Code.Algebra.Structures.T1002
du616 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.d1106
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name618
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutOne"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.Structures.T826
d618 v0 v1 v2 v3 v4 v5 = du618 v4
du618 :: T166 -> MAlonzo.Code.Algebra.Structures.T826
du618 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name620
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawRing"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T1856
d620 v0 v1 v2 v3 v4 v5 = du620 v4
du620 :: T166 -> MAlonzo.Code.Algebra.T1856
du620 v0 = coe (du314 (coe v0))
name622
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.refl"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d622 v0 v1 v2 v3 v4 v5 = du622 v4
du622 :: T166 -> AgdaAny -> AgdaAny
du622 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name624
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.reflexive"
d624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d624 v0 v1 v2 v3 v4 v5 = du624 v4
du624 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du624 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    let v11 = MAlonzo.Code.Algebra.Structures.d126 (coe v10) in
    coe
      (\ v12 v13 v14 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v11))) v12)
name626
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semiring"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Algebra.T1550
d626 v0 v1 v2 v3 v4 v5 = du626 v4
du626 :: T166 -> MAlonzo.Code.Algebra.T1550
du626 v0 = coe (MAlonzo.Code.Algebra.du1816 (coe (du296 (coe v0))))
name628
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.setoid"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Relation.Binary.T128
d628 v0 v1 v2 v3 v4 v5 = du628 v4
du628 :: T166 -> MAlonzo.Code.Relation.Binary.T128
du628 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name630
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.sym"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d630 v0 v1 v2 v3 v4 v5 = du630 v4
du630 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du630 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name632
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.trans"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d632 v0 v1 v2 v3 v4 v5 = du632 v4
du632 ::
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du632 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name634
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zero"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d634 v0 v1 v2 v3 v4 v5 = du634 v4
du634 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du634 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1296
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name636
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroʳ"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d636 v0 v1 v2 v3 v4 v5 = du636 v4
du636 :: T166 -> AgdaAny -> AgdaAny
du636 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1294
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name638
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroˡ"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 -> T166 -> T326 -> AgdaAny -> AgdaAny
d638 v0 v1 v2 v3 v4 v5 = du638 v4
du638 :: T166 -> AgdaAny -> AgdaAny
du638 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1216
         (coe (d62 (coe (d202 (coe v0))))))
name650
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.⟦_⟧"
d650 :: T326 -> AgdaAny -> AgdaAny
d650 v0
  = case coe v0 of
      C1923 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name652
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.+-homo"
d652 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny
d652 v0
  = case coe v0 of
      C1923 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name654
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.*-homo"
d654 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny
d654 v0
  = case coe v0 of
      C1923 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name656
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.-‿homo"
d656 :: T326 -> AgdaAny -> AgdaAny
d656 v0
  = case coe v0 of
      C1923 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name658
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.0-homo"
d658 :: T326 -> AgdaAny
d658 v0
  = case coe v0 of
      C1923 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name660
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.1-homo"
d660 :: T326 -> AgdaAny
d660 v0
  = case coe v0 of
      C1923 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name668
  = "Algebra.Solver.Ring.AlmostCommutativeRing.-raw-almostCommutative⟶"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> T326
d668 v0 v1 v2 = du668 v2
du668 :: T166 -> T326
du668 v0
  = coe
      (C1923
         (coe (\ v1 -> v1))
         (coe
            (\ v1 v2 ->
               let v3 = d202 (coe v0) in
               let v4 = d62 (coe v3) in
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d92
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d126
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d326
                                (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v4))))))))
                 (let v5 = du314 (coe v0) in
                  coe MAlonzo.Code.Algebra.d1874 v5 v1 v2)))
         (coe
            (\ v1 v2 ->
               let v3 = d202 (coe v0) in
               let v4 = d62 (coe v3) in
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d92
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d126
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d326
                                (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v4))))))))
                 (let v5 = du314 (coe v0) in
                  coe MAlonzo.Code.Algebra.d1876 v5 v1 v2)))
         (coe
            (\ v1 ->
               let v2 = d202 (coe v0) in
               let v3 = d62 (coe v2) in
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d92
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d126
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d326
                                (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v3))))))))
                 (let v4 = du314 (coe v0) in coe MAlonzo.Code.Algebra.d1878 v4 v1)))
         (let v1 = d202 (coe v0) in
          let v2 = d62 (coe v1) in
          coe
            MAlonzo.Code.Relation.Binary.Core.d414
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
            (let v3 = du314 (coe v0) in MAlonzo.Code.Algebra.d1880 (coe v3)))
         (let v1 = d202 (coe v0) in
          let v2 = d62 (coe v1) in
          coe
            MAlonzo.Code.Relation.Binary.Core.d414
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
            (let v3 = du314 (coe v0) in MAlonzo.Code.Algebra.d1882 (coe v3))))
name678 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._*_"
d678 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d678 v0 = coe (d194 (coe v0))
name680 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._+_"
d680 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d680 v0 = coe (d192 (coe v0))
name682 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_"
d682 :: T166 -> AgdaAny -> AgdaAny -> ()
d682 = erased
name684 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d684 v0 v1 v2 = du684 v2
du684 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du684 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name686 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.comm"
d686 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d686 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1212
               (coe (d62 (coe (d202 (coe v0))))))))
name688
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid"
d688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T418
d688 v0 v1 v2 = du688 v2
du688 :: T166 -> MAlonzo.Code.Algebra.T418
du688 v0 = coe (MAlonzo.Code.Algebra.du1850 (coe (du296 (coe v0))))
name690 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d690 v0 v1 v2 = du690 v2
du690 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du690 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))))
name692 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d692 v0 v1 v2 = du692 v2
du692 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du692 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name694 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d694 v0 v1 v2 = du694 v2
du694 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du694 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name696 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d696 v0 v1 v2 = du696 v2
du696 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du696 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name698 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d698 v0 v1 v2 = du698 v2
du698 :: T166 -> AgdaAny -> AgdaAny
du698 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name700 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d700 v0 v1 v2 = du700 v2
du700 :: T166 -> AgdaAny -> AgdaAny
du700 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name702
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid"
d702 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
d702 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1212
         (coe (d62 (coe (d202 (coe v0))))))
name704 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T84
d704 v0 v1 v2 = du704 v2
du704 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du704 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name706
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T268
d706 v0 v1 v2 = du706 v2
du706 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du706 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name708
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T118
d708 v0 v1 v2 = du708 v2
du708 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du708 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))
name710 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid"
d710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T346
d710 v0 v1 v2 = du710 v2
du710 :: T166 -> MAlonzo.Code.Algebra.T346
du710 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1534
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name712 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T76
d712 v0 v1 v2 = du712 v2
du712 :: T166 -> MAlonzo.Code.Algebra.T76
du712 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du1534 (coe v3))))
name714 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d714 v0 v1 v2 = du714 v2
du714 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du714 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name716 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.comm"
d716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny
d716 v0 v1 v2 = du716 v2
du716 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du716 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name718
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid"
d718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T418
d718 v0 v1 v2 = du718 v2
du718 :: T166 -> MAlonzo.Code.Algebra.T418
du718 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1520
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name720 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d720 v0 v1 v2 = du720 v2
du720 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du720 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name722 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d722 v0 v1 v2 = du722 v2
du722 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du722 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name724 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d724 v0 v1 v2 = du724 v2
du724 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du724 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name726 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d726 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d726 v0 v1 v2 = du726 v2
du726 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du726 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name728 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d728 v0 v1 v2 = du728 v2
du728 :: T166 -> AgdaAny -> AgdaAny
du728 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name730 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d730 v0 v1 v2 = du730 v2
du730 :: T166 -> AgdaAny -> AgdaAny
du730 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name732
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid"
d732 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
d732 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1210
         (coe (d62 (coe (d202 (coe v0))))))
name734 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T84
d734 v0 v1 v2 = du734 v2
du734 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du734 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name736 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T268
d736 v0 v1 v2 = du736 v2
du736 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du736 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name738
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T118
d738 v0 v1 v2 = du738 v2
du738 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du738 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name740 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T346
d740 v0 v1 v2 = du740 v2
du740 :: T166 -> MAlonzo.Code.Algebra.T346
du740 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du480
         (coe (MAlonzo.Code.Algebra.du1520 (coe v3))))
name742 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> MAlonzo.Code.Algebra.T76
d742 v0 v1 v2 = du742 v2
du742 :: T166 -> MAlonzo.Code.Algebra.T76
du742 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.du1520 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du480 (coe v4))))
name744 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-_"
d744 :: T166 -> AgdaAny -> AgdaAny
d744 v0 = coe (d196 (coe v0))
name746
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ"
d746 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d746 v0 = coe (d70 (coe (d202 (coe v0))))
name748 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm"
d748 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
d748 v0 = coe (d76 (coe (d202 (coe v0))))
name750 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong"
d750 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d750 v0 = coe (d64 (coe (d202 (coe v0))))
name752 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.0#"
d752 :: T166 -> AgdaAny
d752 v0 = coe (d198 (coe v0))
name754 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.1#"
d754 :: T166 -> AgdaAny
d754 v0 = coe (d200 (coe v0))
name756 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier"
d756 :: T166 -> ()
d756 = erased
name758
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.T1698
d758 v0 v1 v2 = du758 v2
du758 :: T166 -> MAlonzo.Code.Algebra.T1698
du758 v0 = coe (du296 (coe v0))
name760 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d760 v0 v1 v2 = du760 v2
du760 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du760 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1292
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name762 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ"
d762 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d762 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1214
         (coe (d62 (coe (d202 (coe v0))))))
name764 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d764 v0 v1 v2 = du764 v2
du764 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du764 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1290
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name766
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing"
d766 :: T166 -> T26
d766 v0 = coe (d202 (coe v0))
name768
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring"
d768 :: T166 -> MAlonzo.Code.Algebra.Structures.T1192
d768 v0 = coe (d62 (coe (d202 (coe v0))))
name770
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T914
d770 v0 v1 v2 = du770 v2
du770 :: T166 -> MAlonzo.Code.Algebra.Structures.T914
du770 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name772
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Relation.Binary.Core.T402
d772 v0 v1 v2 = du772 v2
du772 :: T166 -> MAlonzo.Code.Relation.Binary.Core.T402
du772 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name774
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T752
d774 v0 v1 v2 = du774 v2
du774 :: T166 -> MAlonzo.Code.Algebra.Structures.T752
du774 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v7))))
name776
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T1092
d776 v0 v1 v2 = du776 v2
du776 :: T166 -> MAlonzo.Code.Algebra.Structures.T1092
du776 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name778
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero"
d778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T1002
d778 v0 v1 v2 = du778 v2
du778 :: T166 -> MAlonzo.Code.Algebra.Structures.T1002
du778 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.d1106
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name780
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne"
d780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.Structures.T826
d780 v0 v1 v2 = du780 v2
du780 :: T166 -> MAlonzo.Code.Algebra.Structures.T826
du780 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name782 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.T1856
d782 v0 v1 v2 = du782 v2
du782 :: T166 -> MAlonzo.Code.Algebra.T1856
du782 v0 = coe (du314 (coe v0))
name784 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.refl"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d784 v0 v1 v2 = du784 v2
du784 :: T166 -> AgdaAny -> AgdaAny
du784 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name786 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive"
d786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d786 v0 v1 v2 = du786 v2
du786 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du786 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    let v11 = MAlonzo.Code.Algebra.Structures.d126 (coe v10) in
    coe
      (\ v12 v13 v14 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v11))) v12)
name788 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring"
d788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Algebra.T1550
d788 v0 v1 v2 = du788 v2
du788 :: T166 -> MAlonzo.Code.Algebra.T1550
du788 v0 = coe (MAlonzo.Code.Algebra.du1816 (coe (du296 (coe v0))))
name790 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Relation.Binary.T128
d790 v0 v1 v2 = du790 v2
du790 :: T166 -> MAlonzo.Code.Relation.Binary.T128
du790 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name792 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.sym"
d792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d792 v0 v1 v2 = du792 v2
du792 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du792 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name794 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.trans"
d794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d794 v0 v1 v2 = du794 v2
du794 ::
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du794 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name796 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zero"
d796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d796 v0 v1 v2 = du796 v2
du796 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du796 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1296
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name798 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ"
d798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T166 -> AgdaAny -> AgdaAny
d798 v0 v1 v2 = du798 v2
du798 :: T166 -> AgdaAny -> AgdaAny
du798 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1294
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name800 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ"
d800 :: T166 -> AgdaAny -> AgdaAny
d800 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1216
         (coe (d62 (coe (d202 (coe v0))))))
name822
  = "Algebra.Solver.Ring.AlmostCommutativeRing.Induced-equivalence"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> ()
d822 = erased
name838 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._*_"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d838 v0 v1 v2 v3 v4 v5 v6 v7 = du838 v4
du838 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du838 v0 = coe (d194 (coe v0))
name840 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._+_"
d840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d840 v0 v1 v2 v3 v4 v5 v6 v7 = du840 v4
du840 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du840 v0 = coe (d192 (coe v0))
name842 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d842 = erased
name844 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d844 v0 v1 v2 v3 v4 v5 v6 v7 = du844 v4
du844 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du844 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name846 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.comm"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0 v1 v2 v3 v4 v5 v6 v7 = du846 v4
du846 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du846 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe
            (MAlonzo.Code.Algebra.Structures.d1212
               (coe (d62 (coe (d202 (coe v0))))))))
name848
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T418
d848 v0 v1 v2 v3 v4 v5 v6 v7 = du848 v4
du848 :: T166 -> MAlonzo.Code.Algebra.T418
du848 v0 = coe (MAlonzo.Code.Algebra.du1850 (coe (du296 (coe v0))))
name850 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0 v1 v2 v3 v4 v5 v6 v7 = du850 v4
du850 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du850 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))))
name852 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0 v1 v2 v3 v4 v5 v6 v7 = du852 v4
du852 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du852 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name854 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 v1 v2 v3 v4 v5 v6 v7 = du854 v4
du854 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du854 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d278 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name856 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d856 v0 v1 v2 v3 v4 v5 v6 v7 = du856 v4
du856 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du856 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name858 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d858 v0 v1 v2 v3 v4 v5 v6 v7 = du858 v4
du858 :: T166 -> AgdaAny -> AgdaAny
du858 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name860 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d860 v0 v1 v2 v3 v4 v5 v6 v7 = du860 v4
du860 :: T166 -> AgdaAny -> AgdaAny
du860 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1020 (coe v8) in
    coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Algebra.Structures.d280 (coe v9))))
name862
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid"
d862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T314
d862 v0 v1 v2 v3 v4 v5 v6 v7 = du862 v4
du862 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
du862 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1212
         (coe (d62 (coe (d202 (coe v0))))))
name864 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T84
d864 v0 v1 v2 v3 v4 v5 v6 v7 = du864 v4
du864 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du864 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))))
name866
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid"
d866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T268
d866 v0 v1 v2 v3 v4 v5 v6 v7 = du866 v4
du866 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du866 v0
  = let v1 = d194 (coe v0) in
    let v2 = d200 (coe v0) in
    let v3 = d202 (coe v0) in
    let v4 = d62 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v2)
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v4))))
name868
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T118
d868 v0 v1 v2 v3 v4 v5 v6 v7 = du868 v4
du868 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du868 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v2))))
name870 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T346
d870 v0 v1 v2 v3 v4 v5 v6 v7 = du870 v4
du870 :: T166 -> MAlonzo.Code.Algebra.T346
du870 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1534
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name872 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T76
d872 v0 v1 v2 v3 v4 v5 v6 v7 = du872 v4
du872 :: T166 -> MAlonzo.Code.Algebra.T76
du872 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du1534 (coe v3))))
name874 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d874 v0 v1 v2 v3 v4 v5 v6 v7 = du874 v4
du874 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du874 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d128
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name876 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.comm"
d876 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d876 v0 v1 v2 v3 v4 v5 v6 v7 = du876 v4
du876 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du876 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d330
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name878
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid"
d878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T418
d878 v0 v1 v2 v3 v4 v5 v6 v7 = du878 v4
du878 :: T166 -> MAlonzo.Code.Algebra.T418
du878 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.du1520
         (coe (MAlonzo.Code.Algebra.du1662 (coe v2))))
name880 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d880 v0 v1 v2 v3 v4 v5 v6 v7 = du880 v4
du880 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du880 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name882 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d882 v0 v1 v2 v3 v4 v5 v6 v7 = du882 v4
du882 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du882 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du112
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name884 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d884 v0 v1 v2 v3 v4 v5 v6 v7 = du884 v4
du884 ::
  T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du884 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du108
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name886 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d886 v0 v1 v2 v3 v4 v5 v6 v7 = du886 v4
du886 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du886 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du358
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name888 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d888 v0 v1 v2 v3 v4 v5 v6 v7 = du888 v4
du888 :: T166 -> AgdaAny -> AgdaAny
du888 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du356
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name890 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d890 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d890 v0 v1 v2 v3 v4 v5 v6 v7 = du890 v4
du890 :: T166 -> AgdaAny -> AgdaAny
du890 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d328
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name892
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid"
d892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T314
d892 v0 v1 v2 v3 v4 v5 v6 v7 = du892 v4
du892 :: T166 -> MAlonzo.Code.Algebra.Structures.T314
du892 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1210
         (coe (d62 (coe (d202 (coe v0))))))
name894 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T84
d894 v0 v1 v2 v3 v4 v5 v6 v7 = du894 v4
du894 :: T166 -> MAlonzo.Code.Algebra.Structures.T84
du894 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d126
         (coe
            (MAlonzo.Code.Algebra.Structures.d326
               (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))
name896 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid"
d896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T268
d896 v0 v1 v2 v3 v4 v5 v6 v7 = du896 v4
du896 :: T166 -> MAlonzo.Code.Algebra.Structures.T268
du896 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    coe
      (MAlonzo.Code.Algebra.Structures.du360
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.d1018 (coe v8))))
name898
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T118
d898 v0 v1 v2 v3 v4 v5 v6 v7 = du898 v4
du898 :: T166 -> MAlonzo.Code.Algebra.Structures.T118
du898 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d326
         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))
name900 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid"
d900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T346
d900 v0 v1 v2 v3 v4 v5 v6 v7 = du900 v4
du900 :: T166 -> MAlonzo.Code.Algebra.T346
du900 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    coe
      (MAlonzo.Code.Algebra.du480
         (coe (MAlonzo.Code.Algebra.du1520 (coe v3))))
name902 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T76
d902 v0 v1 v2 v3 v4 v5 v6 v7 = du902 v4
du902 :: T166 -> MAlonzo.Code.Algebra.T76
du902 v0
  = let v1 = du296 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.du1816 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.du1662 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.du1520 (coe v3) in
    coe
      (MAlonzo.Code.Algebra.du404
         (coe (MAlonzo.Code.Algebra.du480 (coe v4))))
name904 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-_"
d904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d904 v0 v1 v2 v3 v4 v5 v6 v7 = du904 v4
du904 :: T166 -> AgdaAny -> AgdaAny
du904 v0 = coe (d196 (coe v0))
name906
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ"
d906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d906 v0 v1 v2 v3 v4 v5 v6 v7 = du906 v4
du906 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du906 v0 = coe (d70 (coe (d202 (coe v0))))
name908 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm"
d908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d908 v0 v1 v2 v3 v4 v5 v6 v7 = du908 v4
du908 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny
du908 v0 = coe (d76 (coe (d202 (coe v0))))
name910 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong"
d910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d910 v0 v1 v2 v3 v4 v5 v6 v7 = du910 v4
du910 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du910 v0 = coe (d64 (coe (d202 (coe v0))))
name912 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.0#"
d912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d912 v0 v1 v2 v3 v4 v5 v6 v7 = du912 v4
du912 :: T166 -> AgdaAny
du912 v0 = coe (d198 (coe v0))
name914 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.1#"
d914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny
d914 v0 v1 v2 v3 v4 v5 v6 v7 = du914 v4
du914 :: T166 -> AgdaAny
du914 v0 = coe (d200 (coe v0))
name916 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier"
d916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> ()
d916 = erased
name918
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring"
d918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T1698
d918 v0 v1 v2 v3 v4 v5 v6 v7 = du918 v4
du918 :: T166 -> MAlonzo.Code.Algebra.T1698
du918 v0 = coe (du296 (coe v0))
name920 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d920 v0 v1 v2 v3 v4 v5 v6 v7 = du920 v4
du920 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du920 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1292
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name922 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d922 v0 v1 v2 v3 v4 v5 v6 v7 = du922 v4
du922 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du922 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1214
         (coe (d62 (coe (d202 (coe v0))))))
name924 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d924 v0 v1 v2 v3 v4 v5 v6 v7 = du924 v4
du924 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du924 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1290
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name926
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> T26
d926 v0 v1 v2 v3 v4 v5 v6 v7 = du926 v4
du926 :: T166 -> T26
du926 v0 = coe (d202 (coe v0))
name928
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T1192
d928 v0 v1 v2 v3 v4 v5 v6 v7 = du928 v4
du928 :: T166 -> MAlonzo.Code.Algebra.Structures.T1192
du928 v0 = coe (d62 (coe (d202 (coe v0))))
name930
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne"
d930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T914
d930 v0 v1 v2 v3 v4 v5 v6 v7 = du930 v4
du930 :: T166 -> MAlonzo.Code.Algebra.Structures.T914
du930 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1362
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name932
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence"
d932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Core.T402
d932 v0 v1 v2 v3 v4 v5 v6 v7 = du932 v4
du932 :: T166 -> MAlonzo.Code.Relation.Binary.Core.T402
du932 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))
name934
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring"
d934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T752
d934 v0 v1 v2 v3 v4 v5 v6 v7 = du934 v4
du934 :: T166 -> MAlonzo.Code.Algebra.Structures.T752
du934 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    coe
      (MAlonzo.Code.Algebra.Structures.du860
         (coe v1) (coe v3)
         (coe (MAlonzo.Code.Algebra.Structures.du1174 (coe v7))))
name936
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T1092
d936 v0 v1 v2 v3 v4 v5 v6 v7 = du936 v4
du936 :: T166 -> MAlonzo.Code.Algebra.Structures.T1092
du936 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1298
         (coe v1) (coe v2) (coe v3) (coe v4) (coe (d62 (coe v5))))
name938
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T1002
d938 v0 v1 v2 v3 v4 v5 v6 v7 = du938 v4
du938 :: T166 -> MAlonzo.Code.Algebra.Structures.T1002
du938 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.d1106
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name940
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T826
d940 v0 v1 v2 v3 v4 v5 v6 v7 = du940 v4
du940 :: T166 -> MAlonzo.Code.Algebra.Structures.T826
du940 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1174
         (coe
            (MAlonzo.Code.Algebra.Structures.du1298
               (coe v1) (coe v2) (coe v3) (coe v4) (coe v6))))
name942 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T1856
d942 v0 v1 v2 v3 v4 v5 v6 v7 = du942 v4
du942 :: T166 -> MAlonzo.Code.Algebra.T1856
du942 v0 = coe (du314 (coe v0))
name944 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.refl"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d944 v0 v1 v2 v3 v4 v5 v6 v7 = du944 v4
du944 :: T166 -> AgdaAny -> AgdaAny
du944 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name946 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d946 v0 v1 v2 v3 v4 v5 v6 v7 = du946 v4
du946 ::
  T166 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du946 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    let v11 = MAlonzo.Code.Algebra.Structures.d126 (coe v10) in
    coe
      (\ v12 v13 v14 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Algebra.Structures.d92 (coe v11))) v12)
name948 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.T1550
d948 v0 v1 v2 v3 v4 v5 v6 v7 = du948 v4
du948 :: T166 -> MAlonzo.Code.Algebra.T1550
du948 v0 = coe (MAlonzo.Code.Algebra.du1816 (coe (du296 (coe v0))))
name950 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.T128
d950 v0 v1 v2 v3 v4 v5 v6 v7 = du950 v4
du950 :: T166 -> MAlonzo.Code.Relation.Binary.T128
du950 v0
  = let v1 = d192 (coe v0) in
    let v2 = d194 (coe v0) in
    let v3 = d198 (coe v0) in
    let v4 = d200 (coe v0) in
    let v5 = d202 (coe v0) in
    let v6 = d62 (coe v5) in
    let v7
          = MAlonzo.Code.Algebra.Structures.du1298
              (coe v1) (coe v2) (coe v3) (coe v4) (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d1106 (coe v7) in
    let v9 = MAlonzo.Code.Algebra.Structures.d1018 (coe v8) in
    let v10 = MAlonzo.Code.Algebra.Structures.d326 (coe v9) in
    coe
      (MAlonzo.Code.Algebra.Structures.du106
         (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v10))))
name952 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.sym"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 v3 v4 v5 v6 v7 = du952 v4
du952 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name954 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.trans"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 v3 v4 v5 v6 v7 = du954 v4
du954 ::
  T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0
  = let v1 = d202 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Algebra.Structures.d92
               (coe
                  (MAlonzo.Code.Algebra.Structures.d126
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d326
                           (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v2))))))))))
name956 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zero"
d956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 ->
  T326 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d956 v0 v1 v2 v3 v4 v5 v6 v7 = du956 v4
du956 :: T166 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du956 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1296
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name958 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d958 v0 v1 v2 v3 v4 v5 v6 v7 = du958 v4
du958 :: T166 -> AgdaAny -> AgdaAny
du958 v0
  = let v1 = d194 (coe v0) in
    let v2 = d198 (coe v0) in
    let v3 = d202 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Structures.du1294
         (coe v1) (coe v2) (coe (d62 (coe v3))))
name960 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  T166 -> T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0 v1 v2 v3 v4 v5 v6 v7 = du960 v4
du960 :: T166 -> AgdaAny -> AgdaAny
du960 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d1216
         (coe (d62 (coe (d202 (coe v0))))))
name964 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-homo"
d964 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d964 v0 v1 v2 = du964 v0
du964 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny
du964 v0 = coe (d654 (coe v0))
name966 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-homo"
d966 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d966 v0 v1 v2 = du966 v0
du966 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny
du966 v0 = coe (d652 (coe v0))
name968 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿homo"
d968 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d968 v0 v1 v2 = du968 v0
du968 :: T326 -> AgdaAny -> AgdaAny
du968 v0 = coe (d656 (coe v0))
name970 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.0-homo"
d970 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny
d970 v0 v1 v2 = du970 v0
du970 :: T326 -> AgdaAny
du970 v0 = coe (d658 (coe v0))
name972 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.1-homo"
d972 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny
d972 v0 v1 v2 = du972 v0
du972 :: T326 -> AgdaAny
du972 v0 = coe (d660 (coe v0))
name974 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.⟦_⟧"
d974 :: T326 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d974 v0 v1 v2 = du974 v0
du974 :: T326 -> AgdaAny -> AgdaAny
du974 v0 = coe (d650 (coe v0))
name980
  = "Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeRing"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T2066 -> T166
d980 v0 v1 v2 = du980 v2
du980 :: MAlonzo.Code.Algebra.T2066 -> T166
du980 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 -> C1165 v3 v4 v5 v6 v7 v8) erased
      erased (MAlonzo.Code.Algebra.d2092 (coe v0))
      (MAlonzo.Code.Algebra.d2094 (coe v0))
      (MAlonzo.Code.Algebra.d2096 (coe v0))
      (MAlonzo.Code.Algebra.d2098 (coe v0))
      (MAlonzo.Code.Algebra.d2100 (coe v0))
      (C23
         (coe
            (MAlonzo.Code.Algebra.Structures.du1620
               (coe (MAlonzo.Code.Algebra.d2092 (coe v0)))
               (coe (MAlonzo.Code.Algebra.d2094 (coe v0)))
               (coe (MAlonzo.Code.Algebra.d2096 (coe v0)))
               (coe (MAlonzo.Code.Algebra.d2098 (coe v0)))
               (coe (MAlonzo.Code.Algebra.d2102 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Structures.d488
               (coe
                  (MAlonzo.Code.Algebra.Structures.d562
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d1392
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d1518
                                 (coe (MAlonzo.Code.Algebra.d2102 (coe v0)))))))))))
         (coe
            (MAlonzo.Code.Algebra.Properties.Ring.du242
               (coe (MAlonzo.Code.Algebra.du2210 (coe v0)))))
         (coe
            (MAlonzo.Code.Algebra.Properties.AbelianGroup.du172
               (coe
                  (MAlonzo.Code.Algebra.du2022
                     (coe (MAlonzo.Code.Algebra.du2210 (coe v0))))))))
name1234
  = "Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeSemiring"
d1234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1698 -> T166
d1234 v0 v1 v2 = du1234 v2
du1234 :: MAlonzo.Code.Algebra.T1698 -> T166
du1234 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 -> C1165 v3 v4 v5 v6 v7 v8) erased
      erased (MAlonzo.Code.Algebra.d1722 (coe v0))
      (MAlonzo.Code.Algebra.d1724 (coe v0)) (\ v1 -> v1)
      (MAlonzo.Code.Algebra.d1726 (coe v0))
      (MAlonzo.Code.Algebra.d1728 (coe v0))
      (C23
         (coe (MAlonzo.Code.Algebra.d1730 (coe v0)))
         (coe (\ v1 v2 v3 -> v3))
         (coe
            (\ v1 v2 ->
               let v3 = MAlonzo.Code.Algebra.d1730 (coe v0) in
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d92
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d126
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d326
                                (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v3))))))))
                 (coe MAlonzo.Code.Algebra.d1724 v0 v1 v2)))
         (coe
            (\ v1 v2 ->
               let v3 = MAlonzo.Code.Algebra.d1730 (coe v0) in
               coe
                 MAlonzo.Code.Relation.Binary.Core.d414
                 (MAlonzo.Code.Algebra.Structures.d92
                    (coe
                       (MAlonzo.Code.Algebra.Structures.d126
                          (coe
                             (MAlonzo.Code.Algebra.Structures.d326
                                (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v3))))))))
                 (coe MAlonzo.Code.Algebra.d1722 v0 v1 v2))))
