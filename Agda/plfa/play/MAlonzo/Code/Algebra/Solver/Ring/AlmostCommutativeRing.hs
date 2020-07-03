{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Properties.AbelianGroup
import qualified MAlonzo.Code.Algebra.Properties.Ring
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name26
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing"
d26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T26
  = C587 MAlonzo.Code.Algebra.Structures.T1276
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
name62
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.isCommutativeSemiring"
d62 :: T26 -> MAlonzo.Code.Algebra.Structures.T1276
d62 v0
  = case coe v0 of
      C587 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name64
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿cong"
d64 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0
  = case coe v0 of
      C587 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name70
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿*-distribˡ"
d70 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
d70 v0
  = case coe v0 of
      C587 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name76
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing.-‿+-comm"
d76 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
d76 v0
  = case coe v0 of
      C587 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name80
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc"
d80 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d80 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))))
name82
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-comm"
d82 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0
  = coe MAlonzo.Code.Algebra.Structures.d1292 (coe d62 (coe v0))
name84
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong"
d84 ::
  T26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d84 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))))
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
d86 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du86 v9
du86 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du86 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
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
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du88 v9
du88 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du88 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d324 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v5))
name90
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity"
d90 :: T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d90 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))
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
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du92 v9
du92 :: T26 -> AgdaAny -> AgdaAny
du92 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
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
d94 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du94 v9
du94 :: T26 -> AgdaAny -> AgdaAny
du94 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1096 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v4))
name96
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeMonoid"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T362
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du96 v9
du96 :: T26 -> MAlonzo.Code.Algebra.Structures.T362
du96 v0
  = coe MAlonzo.Code.Algebra.Structures.du1378 (coe d62 (coe v0))
name98
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isCommutativeSemigroup"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T192
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du98 v9
du98 :: T26 -> MAlonzo.Code.Algebra.Structures.T192
du98 v0
  = coe MAlonzo.Code.Algebra.Structures.du1376 (coe d62 (coe v0))
name100
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma"
d100 :: T26 -> MAlonzo.Code.Algebra.Structures.T80
d100 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))))
name102
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.*-isMonoid"
d102 :: T26 -> MAlonzo.Code.Algebra.Structures.T314
d102 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))
name104
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup"
d104 :: T26 -> MAlonzo.Code.Algebra.Structures.T116
d104 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))
name106
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.assoc"
d106 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))))
name108
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.comm"
d108 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))
name110
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-cong"
d110 ::
  T26 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d110 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))))))
name112
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congʳ"
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
d112 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du112 v9
du112 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du112 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name114
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.∙-congˡ"
d114 ::
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
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du114 v9
du114 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du114 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name116
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identity"
d116 :: T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d116 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))))
name118
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityʳ"
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
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name120
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.identityˡ"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du120 v9
du120 :: T26 -> AgdaAny -> AgdaAny
du120 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name122
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.+-isCommutativeMonoid"
d122 :: T26 -> MAlonzo.Code.Algebra.Structures.T362
d122 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))
name124
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemigroup"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T192
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du124 v9
du124 :: T26 -> MAlonzo.Code.Algebra.Structures.T192
du124 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v3))
name126
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMagma"
d126 :: T26 -> MAlonzo.Code.Algebra.Structures.T80
d126 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))))
name128
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isMonoid"
d128 :: T26 -> MAlonzo.Code.Algebra.Structures.T314
d128 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))
name130
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemigroup"
d130 :: T26 -> MAlonzo.Code.Algebra.Structures.T116
d130 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))))
name132
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distrib"
d132 :: T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d132 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))
name134
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribʳ"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d134 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du134 v9
du134 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du134 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v3))
name136
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.distribˡ"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du136 v9
du136 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du136 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v3))
name138
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isCommutativeSemiringWithoutOne"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T988
d138 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du138 v9
du138 :: T26 -> MAlonzo.Code.Algebra.Structures.T988
du138 v0
  = coe MAlonzo.Code.Algebra.Structures.du1374 (coe d62 (coe v0))
name140
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isEquivalence"
d140 :: T26 -> MAlonzo.Code.Relation.Binary.Structures.T26
d140 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))))))))
name142
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isNearSemiring"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T822
d142 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du142 v9
du142 :: T26 -> MAlonzo.Code.Algebra.Structures.T822
du142 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v2))
name144
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isPartialEquivalence"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> MAlonzo.Code.Relation.Binary.Structures.T16
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du144 v9
du144 :: T26 -> MAlonzo.Code.Relation.Binary.Structures.T16
du144 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7))
name146
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiring"
d146 :: T26 -> MAlonzo.Code.Algebra.Structures.T1172
d146 v0
  = coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0))
name148
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d148 :: T26 -> MAlonzo.Code.Algebra.Structures.T1078
d148 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1186
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))
name150
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.isSemiringWithoutOne"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> MAlonzo.Code.Algebra.Structures.T898
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du150 v9
du150 :: T26 -> MAlonzo.Code.Algebra.Structures.T898
du150 v0
  = let v1 = d62 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe v1))
name152
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.refl"
d152 :: T26 -> AgdaAny -> AgdaAny
d152 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))))))
name154
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.reflexive"
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
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d154 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du154 v9
du154 ::
  T26 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du154 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d124 (coe v6) in
    \ v8 v9 v10 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v7)) v8
name156
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.setoid"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T26 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d156 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du156 v9
du156 :: T26 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du156 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1186 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1094 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d372 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name158
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.sym"
d158 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))))))
name160
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.trans"
d160 ::
  T26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d160 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))))))))
name162
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zero"
d162 :: T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d162 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1188
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe v0)))
name164
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroʳ"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d164 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du164 v9
du164 :: T26 -> AgdaAny -> AgdaAny
du164 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v3))
name166
  = "Algebra.Solver.Ring.AlmostCommutativeRing.IsAlmostCommutativeRing._.zeroˡ"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T26 -> AgdaAny -> AgdaAny
d166 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du166 v9
du166 :: T26 -> AgdaAny -> AgdaAny
du166 v0
  = let v1 = d62 (coe v0) in
    let v2 = MAlonzo.Code.Algebra.Structures.d1290 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v2) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v3))
name172
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing"
d172 a0 a1 = ()
data T172
  = C3177 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny T26
name194
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.Carrier"
d194 :: T172 -> ()
d194 = erased
name196
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._≈_"
d196 :: T172 -> AgdaAny -> AgdaAny -> ()
d196 = erased
name198
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._+_"
d198 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d198 v0
  = case coe v0 of
      C3177 v3 v4 v5 v6 v7 v8 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name200
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._*_"
d200 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0
  = case coe v0 of
      C3177 v3 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name202
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.-_"
d202 :: T172 -> AgdaAny -> AgdaAny
d202 v0
  = case coe v0 of
      C3177 v3 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name204
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.0#"
d204 :: T172 -> AgdaAny
d204 v0
  = case coe v0 of
      C3177 v3 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name206
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.1#"
d206 :: T172 -> AgdaAny
d206 v0
  = case coe v0 of
      C3177 v3 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name208
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.isAlmostCommutativeRing"
d208 :: T172 -> T26
d208 v0
  = case coe v0 of
      C3177 v3 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name212
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.assoc"
d212 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name214
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-comm"
d214 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d214 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1292 (coe d62 (coe d208 (coe v0)))
name216
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong"
d216 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name218
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0 v1 v2 = du218 v2
du218 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du218 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name220
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0 v1 v2 = du220 v2
du220 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du220 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name222
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identity"
d222 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d222 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name224
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d224 v0 v1 v2 = du224 v2
du224 :: T172 -> AgdaAny -> AgdaAny
du224 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name226
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d226 v0 v1 v2 = du226 v2
du226 :: T172 -> AgdaAny -> AgdaAny
du226 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name228
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeMonoid"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T362
d228 v0 v1 v2 = du228 v2
du228 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
du228 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1378 (coe d62 (coe v1))
name230
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isCommutativeSemigroup"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T192
d230 v0 v1 v2 = du230 v2
du230 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du230 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1376 (coe d62 (coe v1))
name232
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma"
d232 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
d232 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name234
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-isMonoid"
d234 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
d234 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name236
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup"
d236 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
d236 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name238
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.assoc"
d238 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d238 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name240
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.comm"
d240 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d240 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name242
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-cong"
d242 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d242 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name244
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congʳ"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d244 v0 v1 v2 = du244 v2
du244 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du244 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name246
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.∙-congˡ"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0 v1 v2 = du246 v2
du246 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du246 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name248
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identity"
d248 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d248 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name250
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityʳ"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d250 v0 v1 v2 = du250 v2
du250 :: T172 -> AgdaAny -> AgdaAny
du250 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name252
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.identityˡ"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d252 v0 v1 v2 = du252 v2
du252 :: T172 -> AgdaAny -> AgdaAny
du252 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name254
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-isCommutativeMonoid"
d254 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
d254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name256
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemigroup"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T192
d256 v0 v1 v2 = du256 v2
du256 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du256 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v4))
name258
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMagma"
d258 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
d258 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name260
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isMonoid"
d260 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
d260 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name262
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemigroup"
d262 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
d262 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name264
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿*-distribˡ"
d264 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d264 v0 = coe d70 (coe d208 (coe v0))
name266
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿+-comm"
d266 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d266 v0 = coe d76 (coe d208 (coe v0))
name268
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.-‿cong"
d268 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d268 v0 = coe d64 (coe d208 (coe v0))
name270
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distrib"
d270 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d270 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name272
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribʳ"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d272 v0 v1 v2 = du272 v2
du272 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du272 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name274
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.distribˡ"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d274 v0 v1 v2 = du274 v2
du274 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du274 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name276
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiring"
d276 :: T172 -> MAlonzo.Code.Algebra.Structures.T1276
d276 v0 = coe d62 (coe d208 (coe v0))
name278
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isCommutativeSemiringWithoutOne"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T988
d278 v0 v1 v2 = du278 v2
du278 :: T172 -> MAlonzo.Code.Algebra.Structures.T988
du278 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1374 (coe d62 (coe v1))
name280
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isEquivalence"
d280 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T26
d280 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name282
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isNearSemiring"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T822
d282 v0 v1 v2 = du282 v2
du282 :: T172 -> MAlonzo.Code.Algebra.Structures.T822
du282 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3))
name284
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isPartialEquivalence"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
d284 v0 v1 v2 = du284 v2
du284 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
du284 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8))
name286
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiring"
d286 :: T172 -> MAlonzo.Code.Algebra.Structures.T1172
d286 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe d208 (coe v0)))
name288
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutAnnihilatingZero"
d288 :: T172 -> MAlonzo.Code.Algebra.Structures.T1078
d288 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1186
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name290
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.isSemiringWithoutOne"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T898
d290 v0 v1 v2 = du290 v2
du290 :: T172 -> MAlonzo.Code.Algebra.Structures.T898
du290 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe v2))
name292
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.refl"
d292 :: T172 -> AgdaAny -> AgdaAny
d292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name294
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.reflexive"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d294 v0 v1 v2 = du294 v2
du294 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du294 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8)) v9
name296
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.setoid"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d296 v0 v1 v2 = du296 v2
du296 :: T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du296 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name298
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.sym"
d298 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d298 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name300
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.trans"
d300 ::
  T172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name302
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zero"
d302 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d302 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1188
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name304
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroʳ"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d304 v0 v1 v2 = du304 v2
du304 :: T172 -> AgdaAny -> AgdaAny
du304 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name306
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.zeroˡ"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d306 v0 v1 v2 = du306 v2
du306 :: T172 -> AgdaAny -> AgdaAny
du306 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name308
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.commutativeSemiring"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1828
d308 v0 v1 v2 = du308 v2
du308 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1828
du308 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C20509 (d198 (coe v0)) (d200 (coe v0))
      (d204 (coe v0)) (d206 (coe v0)) (d62 (coe d208 (coe v0)))
name312
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeMonoid"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T496
d312 v0 v1 v2 = du312 v2
du312 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du312 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1990 (coe du308 (coe v0))
name314
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-commutativeSemigroup"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T202
d314 v0 v1 v2 = du314 v2
du314 :: T172 -> MAlonzo.Code.Algebra.Bundles.T202
du314 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1988 (coe du308 (coe v0))
name316
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.magma"
d316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T30
d316 v0 v1 v2 = du316 v2
du316 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du316 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v4))
name318
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.*-monoid"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T422
d318 v0 v1 v2 = du318 v2
du318 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du318 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1658
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name320
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T80
d320 v0 v1 v2 = du320 v2
du320 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du320 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3))
name322
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.+-commutativeMonoid"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T496
d322 v0 v1 v2 = du322 v2
du322 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du322 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1642
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name324
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.magma"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T30
d324 v0 v1 v2 = du324 v2
du324 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du324 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v5))
name326
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.monoid"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T422
d326 v0 v1 v2 = du326 v2
du326 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du326 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du562
      (coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3))
name328
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semigroup"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T80
d328 v0 v1 v2 = du328 v2
du328 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du328 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4))
name330
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing._.semiring"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1674
d330 v0 v1 v2 = du330 v2
du330 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1674
du330 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe du308 (coe v0))
name332
  = "Algebra.Solver.Ring.AlmostCommutativeRing.AlmostCommutativeRing.rawRing"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1998
d332 v0 v1 v2 = du332 v2
du332 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1998
du332 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C22533 (d198 (coe v0)) (d200 (coe v0))
      (d202 (coe v0)) (d204 (coe v0)) (d206 (coe v0))
name346
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_"
d346 a0 a1 a2 a3 a4 a5 = ()
data T346
  = C5387 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
          AgdaAny
name362 = "Algebra.Solver.Ring.AlmostCommutativeRing.F._*_"
d362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny
d362 v0 v1 v2 v3 v4 v5 = du362 v4
du362 ::
  MAlonzo.Code.Algebra.Bundles.T1998 -> AgdaAny -> AgdaAny -> AgdaAny
du362 v0 = coe MAlonzo.Code.Algebra.Bundles.d2024 (coe v0)
name364 = "Algebra.Solver.Ring.AlmostCommutativeRing.F._+_"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny
d364 v0 v1 v2 v3 v4 v5 = du364 v4
du364 ::
  MAlonzo.Code.Algebra.Bundles.T1998 -> AgdaAny -> AgdaAny -> AgdaAny
du364 v0 = coe MAlonzo.Code.Algebra.Bundles.d2022 (coe v0)
name372 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.-_"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny -> AgdaAny
d372 v0 v1 v2 v3 v4 v5 = du372 v4
du372 :: MAlonzo.Code.Algebra.Bundles.T1998 -> AgdaAny -> AgdaAny
du372 v0 = coe MAlonzo.Code.Algebra.Bundles.d2026 (coe v0)
name374 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.0#"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny
d374 v0 v1 v2 v3 v4 v5 = du374 v4
du374 :: MAlonzo.Code.Algebra.Bundles.T1998 -> AgdaAny
du374 v0 = coe MAlonzo.Code.Algebra.Bundles.d2028 (coe v0)
name376 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.1#"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny
d376 v0 v1 v2 v3 v4 v5 = du376 v4
du376 :: MAlonzo.Code.Algebra.Bundles.T1998 -> AgdaAny
du376 v0 = coe MAlonzo.Code.Algebra.Bundles.d2030 (coe v0)
name378 = "Algebra.Solver.Ring.AlmostCommutativeRing.F.Carrier"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> ()
d378 = erased
name382 = "Algebra.Solver.Ring.AlmostCommutativeRing.T._*_"
d382 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d382 v0 = coe d200 (coe v0)
name384 = "Algebra.Solver.Ring.AlmostCommutativeRing.T._+_"
d384 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d384 v0 = coe d198 (coe v0)
name386 = "Algebra.Solver.Ring.AlmostCommutativeRing.T._≈_"
d386 :: T172 -> AgdaAny -> AgdaAny -> ()
d386 = erased
name388 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.assoc"
d388 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d388 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name390 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-comm"
d390 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d390 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1292 (coe d62 (coe d208 (coe v0)))
name392
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-commutativeMonoid"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T496
d392 v0 v1 v2 v3 v4 v5 = du392 v5
du392 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du392 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1990 (coe du308 (coe v0))
name394
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-commutativeSemigroup"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T202
d394 v0 v1 v2 v3 v4 v5 = du394 v5
du394 :: T172 -> MAlonzo.Code.Algebra.Bundles.T202
du394 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1988 (coe du308 (coe v0))
name396 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-cong"
d396 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d396 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name398 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d398 v0 v1 v2 v3 v4 v5 = du398 v5
du398 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du398 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name400 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d400 v0 v1 v2 v3 v4 v5 = du400 v5
du400 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du400 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name402 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identity"
d402 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d402 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name404 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny -> AgdaAny
d404 v0 v1 v2 v3 v4 v5 = du404 v5
du404 :: T172 -> AgdaAny -> AgdaAny
du404 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name406 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny -> AgdaAny
d406 v0 v1 v2 v3 v4 v5 = du406 v5
du406 :: T172 -> AgdaAny -> AgdaAny
du406 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name408
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isCommutativeMonoid"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T362
d408 v0 v1 v2 v3 v4 v5 = du408 v5
du408 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
du408 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1378 (coe d62 (coe v1))
name410
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isCommutativeSemigroup"
d410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T192
d410 v0 v1 v2 v3 v4 v5 = du410 v5
du410 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du410 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1376 (coe d62 (coe v1))
name412 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isMagma"
d412 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
d412 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name414 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-isMonoid"
d414 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
d414 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name416 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemigroup"
d416 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
d416 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name418 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.magma"
d418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T30
d418 v0 v1 v2 v3 v4 v5 = du418 v5
du418 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du418 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v4))
name420 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.*-monoid"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T422
d420 v0 v1 v2 v3 v4 v5 = du420 v5
du420 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du420 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1658
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name422 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup"
d422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T80
d422 v0 v1 v2 v3 v4 v5 = du422 v5
du422 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du422 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3))
name424 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.assoc"
d424 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d424 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name426 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.comm"
d426 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d426 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name428
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.+-commutativeMonoid"
d428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T496
d428 v0 v1 v2 v3 v4 v5 = du428 v5
du428 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du428 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1642
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name430 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-cong"
d430 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d430 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name432 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congʳ"
d432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d432 v0 v1 v2 v3 v4 v5 = du432 v5
du432 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du432 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name434 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.∙-congˡ"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d434 v0 v1 v2 v3 v4 v5 = du434 v5
du434 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du434 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name436 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identity"
d436 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d436 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name438 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityʳ"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny -> AgdaAny
d438 v0 v1 v2 v3 v4 v5 = du438 v5
du438 :: T172 -> AgdaAny -> AgdaAny
du438 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name440 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.identityˡ"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny -> AgdaAny
d440 v0 v1 v2 v3 v4 v5 = du440 v5
du440 :: T172 -> AgdaAny -> AgdaAny
du440 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name442
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.+-isCommutativeMonoid"
d442 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
d442 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name444
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemigroup"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T192
d444 v0 v1 v2 v3 v4 v5 = du444 v5
du444 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du444 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v4))
name446 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isMagma"
d446 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
d446 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name448 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isMonoid"
d448 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
d448 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name450 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemigroup"
d450 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
d450 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name452 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.magma"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T30
d452 v0 v1 v2 v3 v4 v5 = du452 v5
du452 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du452 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v5))
name454 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.monoid"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T422
d454 v0 v1 v2 v3 v4 v5 = du454 v5
du454 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du454 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du562
      (coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3))
name456 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.semigroup"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T80
d456 v0 v1 v2 v3 v4 v5 = du456 v5
du456 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du456 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4))
name458 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-_"
d458 :: T172 -> AgdaAny -> AgdaAny
d458 v0 = coe d202 (coe v0)
name460
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿*-distribˡ"
d460 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d460 v0 = coe d70 (coe d208 (coe v0))
name462 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿+-comm"
d462 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d462 v0 = coe d76 (coe d208 (coe v0))
name464 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.-‿cong"
d464 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d464 v0 = coe d64 (coe d208 (coe v0))
name466 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.0#"
d466 :: T172 -> AgdaAny
d466 v0 = coe d204 (coe v0)
name468 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.1#"
d468 :: T172 -> AgdaAny
d468 v0 = coe d206 (coe v0)
name470 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.Carrier"
d470 :: T172 -> ()
d470 = erased
name472
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.commutativeSemiring"
d472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1828
d472 v0 v1 v2 v3 v4 v5 = du472 v5
du472 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1828
du472 v0 = coe du308 (coe v0)
name474 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.distrib"
d474 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d474 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name476 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.distribʳ"
d476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d476 v0 v1 v2 v3 v4 v5 = du476 v5
du476 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du476 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name478 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.distribˡ"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d478 v0 v1 v2 v3 v4 v5 = du478 v5
du478 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du478 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name480
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isAlmostCommutativeRing"
d480 :: T172 -> T26
d480 v0 = coe d208 (coe v0)
name482
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiring"
d482 :: T172 -> MAlonzo.Code.Algebra.Structures.T1276
d482 v0 = coe d62 (coe d208 (coe v0))
name484
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isCommutativeSemiringWithoutOne"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T988
d484 v0 v1 v2 v3 v4 v5 = du484 v5
du484 :: T172 -> MAlonzo.Code.Algebra.Structures.T988
du484 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1374 (coe d62 (coe v1))
name486
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isEquivalence"
d486 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T26
d486 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name488
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isNearSemiring"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T822
d488 v0 v1 v2 v3 v4 v5 = du488 v5
du488 :: T172 -> MAlonzo.Code.Algebra.Structures.T822
du488 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3))
name490
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isPartialEquivalence"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
d490 v0 v1 v2 v3 v4 v5 = du490 v5
du490 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
du490 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8))
name492 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiring"
d492 :: T172 -> MAlonzo.Code.Algebra.Structures.T1172
d492 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe d208 (coe v0)))
name494
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutAnnihilatingZero"
d494 :: T172 -> MAlonzo.Code.Algebra.Structures.T1078
d494 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1186
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name496
  = "Algebra.Solver.Ring.AlmostCommutativeRing.T.isSemiringWithoutOne"
d496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T898
d496 v0 v1 v2 v3 v4 v5 = du496 v5
du496 :: T172 -> MAlonzo.Code.Algebra.Structures.T898
du496 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe v2))
name498 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.rawRing"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1998
d498 v0 v1 v2 v3 v4 v5 = du498 v5
du498 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1998
du498 v0 = coe du332 (coe v0)
name500 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.refl"
d500 :: T172 -> AgdaAny -> AgdaAny
d500 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name502 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.reflexive"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d502 v0 v1 v2 v3 v4 v5 = du502 v5
du502 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du502 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8)) v9
name504 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.semiring"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1674
d504 v0 v1 v2 v3 v4 v5 = du504 v5
du504 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1674
du504 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe du308 (coe v0))
name506 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.setoid"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d506 v0 v1 v2 v3 v4 v5 = du506 v5
du506 :: T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du506 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name508 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.sym"
d508 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d508 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name510 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.trans"
d510 ::
  T172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d510 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name512 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.zero"
d512 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d512 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1188
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name514 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroʳ"
d514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny -> AgdaAny
d514 v0 v1 v2 v3 v4 v5 = du514 v5
du514 :: T172 -> AgdaAny -> AgdaAny
du514 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name516 = "Algebra.Solver.Ring.AlmostCommutativeRing.T.zeroˡ"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> AgdaAny -> AgdaAny
d516 v0 v1 v2 v3 v4 v5 = du516 v5
du516 :: T172 -> AgdaAny -> AgdaAny
du516 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name520
  = "Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₀"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d520 = erased
name522
  = "Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₁"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d522 = erased
name524
  = "Algebra.Solver.Ring.AlmostCommutativeRing._.Homomorphic₂"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d524 = erased
name526 = "Algebra.Solver.Ring.AlmostCommutativeRing._.Morphism"
d526 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> ()
d526 = erased
name562
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._*_"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d562 v0 v1 v2 v3 v4 v5 v6 = du562 v5
du562 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du562 v0 = coe d200 (coe v0)
name564
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._+_"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d564 v0 v1 v2 v3 v4 v5 v6 = du564 v5
du564 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du564 v0 = coe d198 (coe v0)
name566
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T._≈_"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> ()
d566 = erased
name568
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d568 v0 v1 v2 v3 v4 v5 v6 = du568 v5
du568 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du568 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name570
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-comm"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d570 v0 v1 v2 v3 v4 v5 v6 = du570 v5
du570 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du570 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1292 (coe d62 (coe d208 (coe v0)))
name572
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-commutativeMonoid"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T496
d572 v0 v1 v2 v3 v4 v5 v6 = du572 v5
du572 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du572 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1990 (coe du308 (coe v0))
name574
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-commutativeSemigroup"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T202
d574 v0 v1 v2 v3 v4 v5 v6 = du574 v5
du574 :: T172 -> MAlonzo.Code.Algebra.Bundles.T202
du574 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1988 (coe du308 (coe v0))
name576
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d576 v0 v1 v2 v3 v4 v5 v6 = du576 v5
du576 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du576 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name578
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ"
d578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d578 v0 v1 v2 v3 v4 v5 v6 = du578 v5
du578 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du578 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name580
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d580 v0 v1 v2 v3 v4 v5 v6 = du580 v5
du580 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du580 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name582
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d582 v0 v1 v2 v3 v4 v5 v6 = du582 v5
du582 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du582 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name584
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ"
d584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d584 v0 v1 v2 v3 v4 v5 v6 = du584 v5
du584 :: T172 -> AgdaAny -> AgdaAny
du584 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name586
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ"
d586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d586 v0 v1 v2 v3 v4 v5 v6 = du586 v5
du586 :: T172 -> AgdaAny -> AgdaAny
du586 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name588
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeMonoid"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T362
d588 v0 v1 v2 v3 v4 v5 v6 = du588 v5
du588 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
du588 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1378 (coe d62 (coe v1))
name590
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isCommutativeSemigroup"
d590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T192
d590 v0 v1 v2 v3 v4 v5 v6 = du590 v5
du590 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du590 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1376 (coe d62 (coe v1))
name592
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T80
d592 v0 v1 v2 v3 v4 v5 v6 = du592 v5
du592 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
du592 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name594
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-isMonoid"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T314
d594 v0 v1 v2 v3 v4 v5 v6 = du594 v5
du594 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
du594 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name596
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T116
d596 v0 v1 v2 v3 v4 v5 v6 = du596 v5
du596 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
du596 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name598
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.magma"
d598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T30
d598 v0 v1 v2 v3 v4 v5 v6 = du598 v5
du598 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du598 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v4))
name600
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.*-monoid"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T422
d600 v0 v1 v2 v3 v4 v5 v6 = du600 v5
du600 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du600 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1658
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name602
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup"
d602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T80
d602 v0 v1 v2 v3 v4 v5 v6 = du602 v5
du602 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du602 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3))
name604
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.assoc"
d604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d604 v0 v1 v2 v3 v4 v5 v6 = du604 v5
du604 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du604 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name606
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.comm"
d606 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d606 v0 v1 v2 v3 v4 v5 v6 = du606 v5
du606 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du606 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name608
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-commutativeMonoid"
d608 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T496
d608 v0 v1 v2 v3 v4 v5 v6 = du608 v5
du608 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du608 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1642
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name610
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-cong"
d610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d610 v0 v1 v2 v3 v4 v5 v6 = du610 v5
du610 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du610 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name612
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congʳ"
d612 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d612 v0 v1 v2 v3 v4 v5 v6 = du612 v5
du612 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du612 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name614
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.∙-congˡ"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d614 v0 v1 v2 v3 v4 v5 v6 = du614 v5
du614 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du614 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name616
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identity"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d616 v0 v1 v2 v3 v4 v5 v6 = du616 v5
du616 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du616 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name618
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityʳ"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d618 v0 v1 v2 v3 v4 v5 v6 = du618 v5
du618 :: T172 -> AgdaAny -> AgdaAny
du618 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name620
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.identityˡ"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d620 v0 v1 v2 v3 v4 v5 v6 = du620 v5
du620 :: T172 -> AgdaAny -> AgdaAny
du620 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name622
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.+-isCommutativeMonoid"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T362
d622 v0 v1 v2 v3 v4 v5 v6 = du622 v5
du622 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
du622 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name624
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemigroup"
d624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T192
d624 v0 v1 v2 v3 v4 v5 v6 = du624 v5
du624 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du624 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v4))
name626
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMagma"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T80
d626 v0 v1 v2 v3 v4 v5 v6 = du626 v5
du626 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
du626 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name628
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isMonoid"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T314
d628 v0 v1 v2 v3 v4 v5 v6 = du628 v5
du628 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
du628 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name630
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemigroup"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T116
d630 v0 v1 v2 v3 v4 v5 v6 = du630 v5
du630 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
du630 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name632
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.magma"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T30
d632 v0 v1 v2 v3 v4 v5 v6 = du632 v5
du632 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du632 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v5))
name634
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.monoid"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T422
d634 v0 v1 v2 v3 v4 v5 v6 = du634 v5
du634 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du634 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du562
      (coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3))
name636
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semigroup"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T80
d636 v0 v1 v2 v3 v4 v5 v6 = du636 v5
du636 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du636 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4))
name638
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-_"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d638 v0 v1 v2 v3 v4 v5 v6 = du638 v5
du638 :: T172 -> AgdaAny -> AgdaAny
du638 v0 = coe d202 (coe v0)
name640
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿*-distribˡ"
d640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d640 v0 v1 v2 v3 v4 v5 v6 = du640 v5
du640 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du640 v0 = coe d70 (coe d208 (coe v0))
name642
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿+-comm"
d642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d642 v0 v1 v2 v3 v4 v5 v6 = du642 v5
du642 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du642 v0 = coe d76 (coe d208 (coe v0))
name644
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.-‿cong"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0 v1 v2 v3 v4 v5 v6 = du644 v5
du644 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du644 v0 = coe d64 (coe d208 (coe v0))
name646
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.0#"
d646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> T346 -> AgdaAny
d646 v0 v1 v2 v3 v4 v5 v6 = du646 v5
du646 :: T172 -> AgdaAny
du646 v0 = coe d204 (coe v0)
name648
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.1#"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> T346 -> AgdaAny
d648 v0 v1 v2 v3 v4 v5 v6 = du648 v5
du648 :: T172 -> AgdaAny
du648 v0 = coe d206 (coe v0)
name650
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.Carrier"
d650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> T346 -> ()
d650 = erased
name652
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.commutativeSemiring"
d652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T1828
d652 v0 v1 v2 v3 v4 v5 v6 = du652 v5
du652 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1828
du652 v0 = coe du308 (coe v0)
name654
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distrib"
d654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d654 v0 v1 v2 v3 v4 v5 v6 = du654 v5
du654 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du654 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name656
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribʳ"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d656 v0 v1 v2 v3 v4 v5 v6 = du656 v5
du656 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du656 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name658
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.distribˡ"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d658 v0 v1 v2 v3 v4 v5 v6 = du658 v5
du658 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du658 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name660
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isAlmostCommutativeRing"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> T172 -> T346 -> T26
d660 v0 v1 v2 v3 v4 v5 v6 = du660 v5
du660 :: T172 -> T26
du660 v0 = coe d208 (coe v0)
name662
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiring"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T1276
d662 v0 v1 v2 v3 v4 v5 v6 = du662 v5
du662 :: T172 -> MAlonzo.Code.Algebra.Structures.T1276
du662 v0 = coe d62 (coe d208 (coe v0))
name664
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isCommutativeSemiringWithoutOne"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T988
d664 v0 v1 v2 v3 v4 v5 v6 = du664 v5
du664 :: T172 -> MAlonzo.Code.Algebra.Structures.T988
du664 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1374 (coe d62 (coe v1))
name666
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isEquivalence"
d666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Relation.Binary.Structures.T26
d666 v0 v1 v2 v3 v4 v5 v6 = du666 v5
du666 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T26
du666 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name668
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isNearSemiring"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T822
d668 v0 v1 v2 v3 v4 v5 v6 = du668 v5
du668 :: T172 -> MAlonzo.Code.Algebra.Structures.T822
du668 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3))
name670
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isPartialEquivalence"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Relation.Binary.Structures.T16
d670 v0 v1 v2 v3 v4 v5 v6 = du670 v5
du670 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
du670 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8))
name672
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiring"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T1172
d672 v0 v1 v2 v3 v4 v5 v6 = du672 v5
du672 :: T172 -> MAlonzo.Code.Algebra.Structures.T1172
du672 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe d208 (coe v0)))
name674
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutAnnihilatingZero"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T1078
d674 v0 v1 v2 v3 v4 v5 v6 = du674 v5
du674 :: T172 -> MAlonzo.Code.Algebra.Structures.T1078
du674 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1186
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name676
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.isSemiringWithoutOne"
d676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Structures.T898
d676 v0 v1 v2 v3 v4 v5 v6 = du676 v5
du676 :: T172 -> MAlonzo.Code.Algebra.Structures.T898
du676 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe v2))
name678
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.rawRing"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T1998
d678 v0 v1 v2 v3 v4 v5 v6 = du678 v5
du678 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1998
du678 v0 = coe du332 (coe v0)
name680
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.refl"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d680 v0 v1 v2 v3 v4 v5 v6 = du680 v5
du680 :: T172 -> AgdaAny -> AgdaAny
du680 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name682
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.reflexive"
d682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d682 v0 v1 v2 v3 v4 v5 v6 = du682 v5
du682 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du682 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8)) v9
name684
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.semiring"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Algebra.Bundles.T1674
d684 v0 v1 v2 v3 v4 v5 v6 = du684 v5
du684 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1674
du684 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe du308 (coe v0))
name686
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.setoid"
d686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d686 v0 v1 v2 v3 v4 v5 v6 = du686 v5
du686 :: T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du686 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name688
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.sym"
d688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d688 v0 v1 v2 v3 v4 v5 v6 = du688 v5
du688 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du688 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name690
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.trans"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d690 v0 v1 v2 v3 v4 v5 v6 = du690 v5
du690 ::
  T172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du690 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name692
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zero"
d692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d692 v0 v1 v2 v3 v4 v5 v6 = du692 v5
du692 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du692 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1188
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name694
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroʳ"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d694 v0 v1 v2 v3 v4 v5 v6 = du694 v5
du694 :: T172 -> AgdaAny -> AgdaAny
du694 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name696
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.T.zeroˡ"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny
d696 v0 v1 v2 v3 v4 v5 v6 = du696 v5
du696 :: T172 -> AgdaAny -> AgdaAny
du696 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name708
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.⟦_⟧"
d708 :: T346 -> AgdaAny -> AgdaAny
d708 v0
  = case coe v0 of
      C5387 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name710
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.+-homo"
d710 :: T346 -> AgdaAny -> AgdaAny -> AgdaAny
d710 v0
  = case coe v0 of
      C5387 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name712
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.*-homo"
d712 :: T346 -> AgdaAny -> AgdaAny -> AgdaAny
d712 v0
  = case coe v0 of
      C5387 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name714
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.-‿homo"
d714 :: T346 -> AgdaAny -> AgdaAny
d714 v0
  = case coe v0 of
      C5387 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name716
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.0-homo"
d716 :: T346 -> AgdaAny
d716 v0
  = case coe v0 of
      C5387 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name718
  = "Algebra.Solver.Ring.AlmostCommutativeRing._-Raw-AlmostCommutative⟶_.1-homo"
d718 :: T346 -> AgdaAny
d718 v0
  = case coe v0 of
      C5387 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name726
  = "Algebra.Solver.Ring.AlmostCommutativeRing.-raw-almostCommutative⟶"
d726 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> T346
d726 v0 v1 v2 = du726 v2
du726 :: T172 -> T346
du726 v0
  = coe
      C5387 (coe (\ v1 -> v1))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d88
                 (coe
                    MAlonzo.Code.Algebra.Structures.d124
                    (coe
                       MAlonzo.Code.Algebra.Structures.d324
                       (coe
                          MAlonzo.Code.Algebra.Structures.d372
                          (coe
                             MAlonzo.Code.Algebra.Structures.d1094
                             (coe
                                MAlonzo.Code.Algebra.Structures.d1186
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1290
                                   (coe d62 (coe d208 (coe v0))))))))))
              (let v3 = coe du332 (coe v0) in
               coe MAlonzo.Code.Algebra.Bundles.d2022 v3 v1 v2)))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d88
                 (coe
                    MAlonzo.Code.Algebra.Structures.d124
                    (coe
                       MAlonzo.Code.Algebra.Structures.d324
                       (coe
                          MAlonzo.Code.Algebra.Structures.d372
                          (coe
                             MAlonzo.Code.Algebra.Structures.d1094
                             (coe
                                MAlonzo.Code.Algebra.Structures.d1186
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1290
                                   (coe d62 (coe d208 (coe v0))))))))))
              (let v3 = coe du332 (coe v0) in
               coe MAlonzo.Code.Algebra.Bundles.d2024 v3 v1 v2)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d34
              (MAlonzo.Code.Algebra.Structures.d88
                 (coe
                    MAlonzo.Code.Algebra.Structures.d124
                    (coe
                       MAlonzo.Code.Algebra.Structures.d324
                       (coe
                          MAlonzo.Code.Algebra.Structures.d372
                          (coe
                             MAlonzo.Code.Algebra.Structures.d1094
                             (coe
                                MAlonzo.Code.Algebra.Structures.d1186
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1290
                                   (coe d62 (coe d208 (coe v0))))))))))
              (let v2 = coe du332 (coe v0) in
               coe MAlonzo.Code.Algebra.Bundles.d2026 v2 v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34
         (MAlonzo.Code.Algebra.Structures.d88
            (coe
               MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d324
                  (coe
                     MAlonzo.Code.Algebra.Structures.d372
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1094
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1186
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1290
                              (coe d62 (coe d208 (coe v0))))))))))
         (let v1 = coe du332 (coe v0) in
          MAlonzo.Code.Algebra.Bundles.d2028 (coe v1)))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d34
         (MAlonzo.Code.Algebra.Structures.d88
            (coe
               MAlonzo.Code.Algebra.Structures.d124
               (coe
                  MAlonzo.Code.Algebra.Structures.d324
                  (coe
                     MAlonzo.Code.Algebra.Structures.d372
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1094
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1186
                           (coe
                              MAlonzo.Code.Algebra.Structures.d1290
                              (coe d62 (coe d208 (coe v0))))))))))
         (let v1 = coe du332 (coe v0) in
          MAlonzo.Code.Algebra.Bundles.d2030 (coe v1)))
name736 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._*_"
d736 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d736 v0 = coe d200 (coe v0)
name738 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._+_"
d738 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d738 v0 = coe d198 (coe v0)
name740 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_"
d740 :: T172 -> AgdaAny -> AgdaAny -> ()
d740 = erased
name742 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d742 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d742 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name744 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-comm"
d744 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d744 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1292 (coe d62 (coe d208 (coe v0)))
name746
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T496
d746 v0 v1 v2 = du746 v2
du746 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du746 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1990 (coe du308 (coe v0))
name748
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeSemigroup"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T202
d748 v0 v1 v2 = du748 v2
du748 :: T172 -> MAlonzo.Code.Algebra.Bundles.T202
du748 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1988 (coe du308 (coe v0))
name750 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d750 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d750 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name752 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d752 v0 v1 v2 = du752 v2
du752 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du752 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name754 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d754 v0 v1 v2 = du754 v2
du754 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du754 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name756 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d756 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d756 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name758 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d758 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d758 v0 v1 v2 = du758 v2
du758 :: T172 -> AgdaAny -> AgdaAny
du758 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name760 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d760 v0 v1 v2 = du760 v2
du760 :: T172 -> AgdaAny -> AgdaAny
du760 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name762
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T362
d762 v0 v1 v2 = du762 v2
du762 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
du762 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1378 (coe d62 (coe v1))
name764
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeSemigroup"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T192
d764 v0 v1 v2 = du764 v2
du764 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du764 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1376 (coe d62 (coe v1))
name766 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d766 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
d766 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name768
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid"
d768 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
d768 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name770
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d770 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
d770 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name772 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.magma"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T30
d772 v0 v1 v2 = du772 v2
du772 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du772 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v4))
name774 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T422
d774 v0 v1 v2 = du774 v2
du774 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du774 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1658
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name776 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T80
d776 v0 v1 v2 = du776 v2
du776 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du776 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3))
name778 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d778 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d778 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name780 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.comm"
d780 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d780 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name782
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T496
d782 v0 v1 v2 = du782 v2
du782 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du782 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1642
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name784 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d784 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d784 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name786 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d786 v0 v1 v2 = du786 v2
du786 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du786 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name788 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d788 v0 v1 v2 = du788 v2
du788 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du788 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name790 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d790 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d790 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name792 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d792 v0 v1 v2 = du792 v2
du792 :: T172 -> AgdaAny -> AgdaAny
du792 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name794 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d794 v0 v1 v2 = du794 v2
du794 :: T172 -> AgdaAny -> AgdaAny
du794 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name796
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid"
d796 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
d796 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name798
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemigroup"
d798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T192
d798 v0 v1 v2 = du798 v2
du798 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du798 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v4))
name800 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d800 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
d800 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name802 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid"
d802 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
d802 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name804
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d804 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
d804 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name806 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.magma"
d806 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T30
d806 v0 v1 v2 = du806 v2
du806 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du806 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v5))
name808 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T422
d808 v0 v1 v2 = du808 v2
du808 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du808 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du562
      (coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3))
name810 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T80
d810 v0 v1 v2 = du810 v2
du810 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du810 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4))
name812 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-_"
d812 :: T172 -> AgdaAny -> AgdaAny
d812 v0 = coe d202 (coe v0)
name814
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ"
d814 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d814 v0 = coe d70 (coe d208 (coe v0))
name816 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm"
d816 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
d816 v0 = coe d76 (coe d208 (coe v0))
name818 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong"
d818 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d818 v0 = coe d64 (coe d208 (coe v0))
name820 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.0#"
d820 :: T172 -> AgdaAny
d820 v0 = coe d204 (coe v0)
name822 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.1#"
d822 :: T172 -> AgdaAny
d822 v0 = coe d206 (coe v0)
name824 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier"
d824 :: T172 -> ()
d824 = erased
name826
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring"
d826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1828
d826 v0 v1 v2 = du826 v2
du826 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1828
du826 v0 = coe du308 (coe v0)
name828 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib"
d828 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d828 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name830 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d830 v0 v1 v2 = du830 v2
du830 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du830 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name832 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d832 v0 v1 v2 = du832 v2
du832 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du832 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name834
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing"
d834 :: T172 -> T26
d834 v0 = coe d208 (coe v0)
name836
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring"
d836 :: T172 -> MAlonzo.Code.Algebra.Structures.T1276
d836 v0 = coe d62 (coe d208 (coe v0))
name838
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T988
d838 v0 v1 v2 = du838 v2
du838 :: T172 -> MAlonzo.Code.Algebra.Structures.T988
du838 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1374 (coe d62 (coe v1))
name840
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence"
d840 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T26
d840 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name842
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T822
d842 v0 v1 v2 = du842 v2
du842 :: T172 -> MAlonzo.Code.Algebra.Structures.T822
du842 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3))
name844
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isPartialEquivalence"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
d844 v0 v1 v2 = du844 v2
du844 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
du844 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8))
name846
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring"
d846 :: T172 -> MAlonzo.Code.Algebra.Structures.T1172
d846 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe d208 (coe v0)))
name848
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero"
d848 :: T172 -> MAlonzo.Code.Algebra.Structures.T1078
d848 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1186
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name850
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne"
d850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Structures.T898
d850 v0 v1 v2 = du850 v2
du850 :: T172 -> MAlonzo.Code.Algebra.Structures.T898
du850 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe v2))
name852 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1998
d852 v0 v1 v2 = du852 v2
du852 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1998
du852 v0 = coe du332 (coe v0)
name854 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.refl"
d854 :: T172 -> AgdaAny -> AgdaAny
d854 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name856 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d856 v0 v1 v2 = du856 v2
du856 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du856 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8)) v9
name858 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Algebra.Bundles.T1674
d858 v0 v1 v2 = du858 v2
du858 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1674
du858 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe du308 (coe v0))
name860 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d860 v0 v1 v2 = du860 v2
du860 :: T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du860 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name862 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.sym"
d862 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d862 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name864 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.trans"
d864 ::
  T172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name866 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zero"
d866 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d866 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1188
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name868 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d868 v0 v1 v2 = du868 v2
du868 :: T172 -> AgdaAny -> AgdaAny
du868 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name870 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T172 -> AgdaAny -> AgdaAny
d870 v0 v1 v2 = du870 v2
du870 :: T172 -> AgdaAny -> AgdaAny
du870 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name894
  = "Algebra.Solver.Ring.AlmostCommutativeRing.Induced-equivalence"
d894 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> ()
d894 = erased
name910 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._*_"
d910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d910 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du910 v5
du910 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du910 v0 = coe d200 (coe v0)
name912 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._+_"
d912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d912 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du912 v5
du912 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du912 v0 = coe d198 (coe v0)
name914 = "Algebra.Solver.Ring.AlmostCommutativeRing._._._≈_"
d914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d914 = erased
name916 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d916 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du916 v5
du916 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du916 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name918 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-comm"
d918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d918 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du918 v5
du918 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du918 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1292 (coe d62 (coe d208 (coe v0)))
name920
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeMonoid"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T496
d920 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du920 v5
du920 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du920 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1990 (coe du308 (coe v0))
name922
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-commutativeSemigroup"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T202
d922 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du922 v5
du922 :: T172 -> MAlonzo.Code.Algebra.Bundles.T202
du922 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1988 (coe du308 (coe v0))
name924 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d924 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du924 v5
du924 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du924 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d1096
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name926 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d926 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du926 v5
du926 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du926 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name928 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d928 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du928 v5
du928 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du928 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d324 (coe v5) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v6))
name930 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d930 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du930 v5
du930 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du930 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name932 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d932 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du932 v5
du932 :: T172 -> AgdaAny -> AgdaAny
du932 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name934 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d934 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du934 v5
du934 :: T172 -> AgdaAny -> AgdaAny
du934 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1096 (coe v4) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v5))
name936
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeMonoid"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T362
d936 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du936 v5
du936 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
du936 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1378 (coe d62 (coe v1))
name938
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isCommutativeSemigroup"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T192
d938 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du938 v5
du938 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du938 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1376 (coe d62 (coe v1))
name940 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T80
d940 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du940 v5
du940 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
du940 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d1096
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name942
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-isMonoid"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T314
d942 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du942 v5
du942 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
du942 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1096
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name944
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T116
d944 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du944 v5
du944 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
du944 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d1096
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name946 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.magma"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T30
d946 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du946 v5
du946 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du946 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v4))
name948 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-monoid"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T422
d948 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du948 v5
du948 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du948 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1658
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name950 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T80
d950 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du950 v5
du950 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du950 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du1658 (coe v3))
name952 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.assoc"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du952 v5
du952 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d126
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name954 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.comm"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du954 v5
du954 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d374
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name956
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-commutativeMonoid"
d956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T496
d956 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du956 v5
du956 :: T172 -> MAlonzo.Code.Algebra.Bundles.T496
du956 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1642
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2))
name958 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-cong"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d958 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du958 v5
du958 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du958 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d90
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name960 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congʳ"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du960 v5
du960 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du960 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du110
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name962 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.∙-congˡ"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d962 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du962 v5
du962 ::
  T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du962 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du106
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name964 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identity"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d964 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du964 v5
du964 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du964 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d326
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name966 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityʳ"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d966 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du966 v5
du966 :: T172 -> AgdaAny -> AgdaAny
du966 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name968 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.identityˡ"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d968 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du968 v5
du968 :: T172 -> AgdaAny -> AgdaAny
du968 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d326 (coe v6))
name970
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-isCommutativeMonoid"
d970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T362
d970 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du970 v5
du970 :: T172 -> MAlonzo.Code.Algebra.Structures.T362
du970 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1094
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name972
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemigroup"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T192
d972 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du972 v5
du972 :: T172 -> MAlonzo.Code.Algebra.Structures.T192
du972 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Structures.du410
      (coe MAlonzo.Code.Algebra.Structures.d1094 (coe v4))
name974 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMagma"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T80
d974 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du974 v5
du974 :: T172 -> MAlonzo.Code.Algebra.Structures.T80
du974 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d124
      (coe
         MAlonzo.Code.Algebra.Structures.d324
         (coe
            MAlonzo.Code.Algebra.Structures.d372
            (coe
               MAlonzo.Code.Algebra.Structures.d1094
               (coe
                  MAlonzo.Code.Algebra.Structures.d1186
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1290
                     (coe d62 (coe d208 (coe v0))))))))
name976 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isMonoid"
d976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T314
d976 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du976 v5
du976 :: T172 -> MAlonzo.Code.Algebra.Structures.T314
du976 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d372
      (coe
         MAlonzo.Code.Algebra.Structures.d1094
         (coe
            MAlonzo.Code.Algebra.Structures.d1186
            (coe
               MAlonzo.Code.Algebra.Structures.d1290
               (coe d62 (coe d208 (coe v0))))))
name978
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemigroup"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T116
d978 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du978 v5
du978 :: T172 -> MAlonzo.Code.Algebra.Structures.T116
du978 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d324
      (coe
         MAlonzo.Code.Algebra.Structures.d372
         (coe
            MAlonzo.Code.Algebra.Structures.d1094
            (coe
               MAlonzo.Code.Algebra.Structures.d1186
               (coe
                  MAlonzo.Code.Algebra.Structures.d1290
                  (coe d62 (coe d208 (coe v0)))))))
name980 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.magma"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T30
d980 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du980 v5
du980 :: T172 -> MAlonzo.Code.Algebra.Bundles.T30
du980 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    let v5 = coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4) in
    coe
      MAlonzo.Code.Algebra.Bundles.du128
      (coe MAlonzo.Code.Algebra.Bundles.du482 (coe v5))
name982 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.monoid"
d982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T422
d982 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du982 v5
du982 :: T172 -> MAlonzo.Code.Algebra.Bundles.T422
du982 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Bundles.du562
      (coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3))
name984 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semigroup"
d984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T80
d984 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du984 v5
du984 :: T172 -> MAlonzo.Code.Algebra.Bundles.T80
du984 v0
  = let v1 = coe du308 (coe v0) in
    let v2 = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe v1) in
    let v3 = coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Bundles.du1642 (coe v3) in
    coe
      MAlonzo.Code.Algebra.Bundles.du482
      (coe MAlonzo.Code.Algebra.Bundles.du562 (coe v4))
name986 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-_"
d986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d986 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du986 v5
du986 :: T172 -> AgdaAny -> AgdaAny
du986 v0 = coe d202 (coe v0)
name988
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿*-distribˡ"
d988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d988 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du988 v5
du988 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du988 v0 = coe d70 (coe d208 (coe v0))
name990 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿+-comm"
d990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d990 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du990 v5
du990 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny
du990 v0 = coe d76 (coe d208 (coe v0))
name992 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿cong"
d992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d992 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du992 v5
du992 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du992 v0 = coe d64 (coe d208 (coe v0))
name994 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.0#"
d994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d994 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du994 v5
du994 :: T172 -> AgdaAny
du994 v0 = coe d204 (coe v0)
name996 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.1#"
d996 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d996 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du996 v5
du996 :: T172 -> AgdaAny
du996 v0 = coe d206 (coe v0)
name998 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.Carrier"
d998 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> ()
d998 = erased
name1000
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.commutativeSemiring"
d1000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T1828
d1000 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1000 v5
du1000 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1828
du1000 v0 = coe du308 (coe v0)
name1002 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distrib"
d1002 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1002 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1002 v5
du1002 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1002 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1098
      (coe
         MAlonzo.Code.Algebra.Structures.d1186
         (coe
            MAlonzo.Code.Algebra.Structures.d1290
            (coe d62 (coe d208 (coe v0)))))
name1004 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribʳ"
d1004 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1004 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1004 v5
du1004 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1004 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name1006 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.distribˡ"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1006 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1006 v5
du1006 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1006 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d1098 (coe v4))
name1008
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isAlmostCommutativeRing"
d1008 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> T26
d1008 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1008 v5
du1008 :: T172 -> T26
du1008 v0 = coe d208 (coe v0)
name1010
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiring"
d1010 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T1276
d1010 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1010 v5
du1010 :: T172 -> MAlonzo.Code.Algebra.Structures.T1276
du1010 v0 = coe d62 (coe d208 (coe v0))
name1012
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isCommutativeSemiringWithoutOne"
d1012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T988
d1012 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1012 v5
du1012 :: T172 -> MAlonzo.Code.Algebra.Structures.T988
du1012 v0
  = let v1 = d208 (coe v0) in
    coe MAlonzo.Code.Algebra.Structures.du1374 (coe d62 (coe v1))
name1014
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isEquivalence"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Structures.T26
d1014 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1014 v5
du1014 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1014 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d88
      (coe
         MAlonzo.Code.Algebra.Structures.d124
         (coe
            MAlonzo.Code.Algebra.Structures.d324
            (coe
               MAlonzo.Code.Algebra.Structures.d372
               (coe
                  MAlonzo.Code.Algebra.Structures.d1094
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1186
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1290
                        (coe d62 (coe d208 (coe v0)))))))))
name1016
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isNearSemiring"
d1016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T822
d1016 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1016 v5
du1016 :: T172 -> MAlonzo.Code.Algebra.Structures.T822
du1016 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    coe
      MAlonzo.Code.Algebra.Structures.du934
      (coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3))
name1018
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isPartialEquivalence"
d1018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Structures.T16
d1018 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1018 v5
du1018 :: T172 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1018 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8))
name1020
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiring"
d1020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T1172
d1020 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1020 v5
du1020 :: T172 -> MAlonzo.Code.Algebra.Structures.T1172
du1020 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1290 (coe d62 (coe d208 (coe v0)))
name1022
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutAnnihilatingZero"
d1022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T1078
d1022 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1022 v5
du1022 :: T172 -> MAlonzo.Code.Algebra.Structures.T1078
du1022 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1186
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name1024
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.isSemiringWithoutOne"
d1024 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Structures.T898
d1024 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1024 v5
du1024 :: T172 -> MAlonzo.Code.Algebra.Structures.T898
du1024 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    coe
      MAlonzo.Code.Algebra.Structures.du1258
      (coe MAlonzo.Code.Algebra.Structures.d1290 (coe v2))
name1026 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.rawRing"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T1998
d1026 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1026 v5
du1026 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1998
du1026 v0 = coe du332 (coe v0)
name1028 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.refl"
d1028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1028 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1028 v5
du1028 :: T172 -> AgdaAny -> AgdaAny
du1028 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name1030
  = "Algebra.Solver.Ring.AlmostCommutativeRing._._.reflexive"
d1030 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1030 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1030 v5
du1030 ::
  T172 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1030 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    let v8 = MAlonzo.Code.Algebra.Structures.d124 (coe v7) in
    \ v9 v10 v11 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Algebra.Structures.d88 (coe v8)) v9
name1032 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.semiring"
d1032 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Algebra.Bundles.T1674
d1032 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1032 v5
du1032 :: T172 -> MAlonzo.Code.Algebra.Bundles.T1674
du1032 v0
  = coe MAlonzo.Code.Algebra.Bundles.du1952 (coe du308 (coe v0))
name1034 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.setoid"
d1034 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1034 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1034 v5
du1034 :: T172 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1034 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = MAlonzo.Code.Algebra.Structures.d1186 (coe v3) in
    let v5 = MAlonzo.Code.Algebra.Structures.d1094 (coe v4) in
    let v6 = MAlonzo.Code.Algebra.Structures.d372 (coe v5) in
    let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
    coe
      MAlonzo.Code.Algebra.Structures.du104
      (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))
name1036 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.sym"
d1036 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1036 v5
du1036 :: T172 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1036 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name1038 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.trans"
d1038 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1038 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1038 v5
du1038 ::
  T172 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1038 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Algebra.Structures.d88
         (coe
            MAlonzo.Code.Algebra.Structures.d124
            (coe
               MAlonzo.Code.Algebra.Structures.d324
               (coe
                  MAlonzo.Code.Algebra.Structures.d372
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1094
                     (coe
                        MAlonzo.Code.Algebra.Structures.d1186
                        (coe
                           MAlonzo.Code.Algebra.Structures.d1290
                           (coe d62 (coe d208 (coe v0))))))))))
name1040 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zero"
d1040 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 ->
  T346 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1040 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1040 v5
du1040 :: T172 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1040 v0
  = coe
      MAlonzo.Code.Algebra.Structures.d1188
      (coe
         MAlonzo.Code.Algebra.Structures.d1290
         (coe d62 (coe d208 (coe v0))))
name1042 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroʳ"
d1042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1042 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1042 v5
du1042 :: T172 -> AgdaAny -> AgdaAny
du1042 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name1044 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.zeroˡ"
d1044 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1044 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1044 v5
du1044 :: T172 -> AgdaAny -> AgdaAny
du1044 v0
  = let v1 = d208 (coe v0) in
    let v2 = d62 (coe v1) in
    let v3 = MAlonzo.Code.Algebra.Structures.d1290 (coe v2) in
    let v4 = coe MAlonzo.Code.Algebra.Structures.du1258 (coe v3) in
    coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Algebra.Structures.d920 (coe v4))
name1048 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.*-homo"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1048 v6
du1048 :: T346 -> AgdaAny -> AgdaAny -> AgdaAny
du1048 v0 = coe d712 (coe v0)
name1050 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.+-homo"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1050 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1050 v6
du1050 :: T346 -> AgdaAny -> AgdaAny -> AgdaAny
du1050 v0 = coe d710 (coe v0)
name1052 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.-‿homo"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1052 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1052 v6
du1052 :: T346 -> AgdaAny -> AgdaAny
du1052 v0 = coe d714 (coe v0)
name1054 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.0-homo"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d1054 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1054 v6
du1054 :: T346 -> AgdaAny
du1054 v0 = coe d716 (coe v0)
name1056 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.1-homo"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny
d1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1056 v6
du1056 :: T346 -> AgdaAny
du1056 v0 = coe d718 (coe v0)
name1058 = "Algebra.Solver.Ring.AlmostCommutativeRing._._.⟦_⟧"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  T172 -> T346 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1058 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1058 v6
du1058 :: T346 -> AgdaAny -> AgdaAny
du1058 v0 = coe d708 (coe v0)
name1064
  = "Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeRing"
d1064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2224 -> T172
d1064 v0 v1 v2 = du1064 v2
du1064 :: MAlonzo.Code.Algebra.Bundles.T2224 -> T172
du1064 v0
  = coe
      C3177 (MAlonzo.Code.Algebra.Bundles.d2250 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2252 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2254 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2256 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d2258 (coe v0))
      (coe
         C587
         (coe
            MAlonzo.Code.Algebra.Structures.du1646
            (coe MAlonzo.Code.Algebra.Bundles.d2260 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Structures.d546
            (coe
               MAlonzo.Code.Algebra.Structures.d622
               (coe
                  MAlonzo.Code.Algebra.Structures.d1410
                  (coe
                     MAlonzo.Code.Algebra.Structures.d1540
                     (coe MAlonzo.Code.Algebra.Bundles.d2260 (coe v0))))))
         (coe
            MAlonzo.Code.Algebra.Properties.Ring.du254
            (coe MAlonzo.Code.Algebra.Bundles.du2372 (coe v0)))
         (coe
            MAlonzo.Code.Algebra.Properties.AbelianGroup.du174
            (coe
               MAlonzo.Code.Algebra.Bundles.du2178
               (coe MAlonzo.Code.Algebra.Bundles.du2372 (coe v0)))))
name1334
  = "Algebra.Solver.Ring.AlmostCommutativeRing.fromCommutativeSemiring"
d1334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1828 -> T172
d1334 v0 v1 v2 = du1334 v2
du1334 :: MAlonzo.Code.Algebra.Bundles.T1828 -> T172
du1334 v0
  = coe
      C3177 (MAlonzo.Code.Algebra.Bundles.d1852 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1854 (coe v0)) (\ v1 -> v1)
      (MAlonzo.Code.Algebra.Bundles.d1856 (coe v0))
      (MAlonzo.Code.Algebra.Bundles.d1858 (coe v0))
      (coe
         C587 (coe MAlonzo.Code.Algebra.Bundles.d1860 (coe v0))
         (coe (\ v1 v2 v3 -> v3))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d88
                    (coe
                       MAlonzo.Code.Algebra.Structures.d124
                       (coe
                          MAlonzo.Code.Algebra.Structures.d324
                          (coe
                             MAlonzo.Code.Algebra.Structures.d372
                             (coe
                                MAlonzo.Code.Algebra.Structures.d1094
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1186
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1290
                                      (coe MAlonzo.Code.Algebra.Bundles.d1860 (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d1854 v0 v1 v2)))
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d34
                 (MAlonzo.Code.Algebra.Structures.d88
                    (coe
                       MAlonzo.Code.Algebra.Structures.d124
                       (coe
                          MAlonzo.Code.Algebra.Structures.d324
                          (coe
                             MAlonzo.Code.Algebra.Structures.d372
                             (coe
                                MAlonzo.Code.Algebra.Structures.d1094
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1186
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d1290
                                      (coe MAlonzo.Code.Algebra.Bundles.d1860 (coe v0)))))))))
                 (coe MAlonzo.Code.Algebra.Bundles.d1852 v0 v1 v2))))
