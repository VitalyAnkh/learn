{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Consequences
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Nullary

name16 = "Relation.Binary.Structures.IsPartialEquivalence"
d16 a0 a1 a2 a3 = ()
data T16
  = C169 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name22 = "Relation.Binary.Structures.IsPartialEquivalence.sym"
d22 :: T16 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d22 v0
  = case coe v0 of
      C169 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name24 = "Relation.Binary.Structures.IsPartialEquivalence.trans"
d24 ::
  T16 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d24 v0
  = case coe v0 of
      C169 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name26 = "Relation.Binary.Structures.IsEquivalence"
d26 a0 a1 a2 a3 = ()
data T26
  = C483 (AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name34 = "Relation.Binary.Structures.IsEquivalence.refl"
d34 :: T26 -> AgdaAny -> AgdaAny
d34 v0
  = case coe v0 of
      C483 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name36 = "Relation.Binary.Structures.IsEquivalence.sym"
d36 :: T26 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d36 v0
  = case coe v0 of
      C483 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name38 = "Relation.Binary.Structures.IsEquivalence.trans"
d38 ::
  T26 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d38 v0
  = case coe v0 of
      C483 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Relation.Binary.Structures.IsEquivalence.reflexive"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T26 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d40 v0 v1 v2 v3 v4 v5 v6 v7 = du40 v4 v5
du40 :: T26 -> AgdaAny -> AgdaAny
du40 v0 v1 = coe d34 v0 v1
name42
  = "Relation.Binary.Structures.IsEquivalence.isPartialEquivalence"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> T26 -> T16
d42 v0 v1 v2 v3 v4 = du42 v4
du42 :: T26 -> T16
du42 v0 = coe C169 (coe d36 (coe v0)) (coe d38 (coe v0))
name44 = "Relation.Binary.Structures.IsDecEquivalence"
d44 a0 a1 a2 a3 = ()
data T44
  = C1529 T26
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32)
name50
  = "Relation.Binary.Structures.IsDecEquivalence.isEquivalence"
d50 :: T44 -> T26
d50 v0
  = case coe v0 of
      C1529 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name52 = "Relation.Binary.Structures.IsDecEquivalence._≟_"
d52 ::
  T44 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d52 v0
  = case coe v0 of
      C1529 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name56
  = "Relation.Binary.Structures.IsDecEquivalence._.isPartialEquivalence"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> T44 -> T16
d56 v0 v1 v2 v3 v4 = du56 v4
du56 :: T44 -> T16
du56 v0 = coe du42 (coe d50 (coe v0))
name58 = "Relation.Binary.Structures.IsDecEquivalence._.refl"
d58 :: T44 -> AgdaAny -> AgdaAny
d58 v0 = coe d34 (coe d50 (coe v0))
name60 = "Relation.Binary.Structures.IsDecEquivalence._.reflexive"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  T44 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d60 v0 v1 v2 v3 v4 = du60 v4
du60 ::
  T44 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du60 v0 v1 v2 v3 = coe du40 (coe d50 (coe v0)) v1
name62 = "Relation.Binary.Structures.IsDecEquivalence._.sym"
d62 :: T44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d62 v0 = coe d36 (coe d50 (coe v0))
name64 = "Relation.Binary.Structures.IsDecEquivalence._.trans"
d64 ::
  T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d64 v0 = coe d38 (coe d50 (coe v0))
name70 = "Relation.Binary.Structures.IsPreorder"
d70 a0 a1 a2 a3 a4 a5 = ()
data T70
  = C2113 T26 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name80 = "Relation.Binary.Structures.IsPreorder.isEquivalence"
d80 :: T70 -> T26
d80 v0
  = case coe v0 of
      C2113 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Relation.Binary.Structures.IsPreorder.reflexive"
d82 :: T70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0
  = case coe v0 of
      C2113 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Relation.Binary.Structures.IsPreorder.trans"
d84 ::
  T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d84 v0
  = case coe v0 of
      C2113 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name88
  = "Relation.Binary.Structures.IsPreorder.Eq.isPartialEquivalence"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T70 -> T16
d88 v0 v1 v2 v3 v4 v5 v6 = du88 v6
du88 :: T70 -> T16
du88 v0 = coe du42 (coe d80 (coe v0))
name90 = "Relation.Binary.Structures.IsPreorder.Eq.refl"
d90 :: T70 -> AgdaAny -> AgdaAny
d90 v0 = coe d34 (coe d80 (coe v0))
name92 = "Relation.Binary.Structures.IsPreorder.Eq.reflexive"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T70 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d92 v0 v1 v2 v3 v4 v5 v6 = du92 v6
du92 ::
  T70 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du92 v0 v1 v2 v3 = coe du40 (coe d80 (coe v0)) v1
name94 = "Relation.Binary.Structures.IsPreorder.Eq.sym"
d94 :: T70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d94 v0 = coe d36 (coe d80 (coe v0))
name96 = "Relation.Binary.Structures.IsPreorder.Eq.trans"
d96 ::
  T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d96 v0 = coe d38 (coe d80 (coe v0))
name98 = "Relation.Binary.Structures.IsPreorder.refl"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T70 -> AgdaAny -> AgdaAny
d98 v0 v1 v2 v3 v4 v5 v6 v7 = du98 v6 v7
du98 :: T70 -> AgdaAny -> AgdaAny
du98 v0 v1 = coe d82 v0 v1 v1 (coe d34 (d80 (coe v0)) v1)
name100 = "Relation.Binary.Structures.IsPreorder.∼-respˡ-≈"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du100 v6 v7 v8 v9 v10 v11
du100 ::
  T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du100 v0 v1 v2 v3 v4 v5
  = coe
      d84 v0 v3 v2 v1
      (coe d82 v0 v3 v2 (coe d36 (d80 (coe v0)) v2 v3 v4)) v5
name106 = "Relation.Binary.Structures.IsPreorder.∼-respʳ-≈"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du106 v6 v7 v8 v9 v10 v11
du106 ::
  T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du106 v0 v1 v2 v3 v4 v5
  = coe d84 v0 v1 v2 v3 v5 (coe d82 v0 v2 v3 v4)
name112 = "Relation.Binary.Structures.IsPreorder.∼-resp-≈"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T70 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d112 v0 v1 v2 v3 v4 v5 v6 = du112 v6
du112 :: T70 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du112 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du106 (coe v0))
      (coe du100 (coe v0))
name118 = "Relation.Binary.Structures.IsPartialOrder"
d118 a0 a1 a2 a3 a4 a5 = ()
data T118
  = C4865 T70 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name126 = "Relation.Binary.Structures.IsPartialOrder.isPreorder"
d126 :: T118 -> T70
d126 v0
  = case coe v0 of
      C4865 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name128 = "Relation.Binary.Structures.IsPartialOrder.antisym"
d128 :: T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d128 v0
  = case coe v0 of
      C4865 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name132
  = "Relation.Binary.Structures.IsPartialOrder._.isEquivalence"
d132 :: T118 -> T26
d132 v0 = coe d80 (coe d126 (coe v0))
name134 = "Relation.Binary.Structures.IsPartialOrder._.refl"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T118 -> AgdaAny -> AgdaAny
d134 v0 v1 v2 v3 v4 v5 v6 = du134 v6
du134 :: T118 -> AgdaAny -> AgdaAny
du134 v0 = coe du98 (coe d126 (coe v0))
name136 = "Relation.Binary.Structures.IsPartialOrder._.reflexive"
d136 :: T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d136 v0 = coe d82 (coe d126 (coe v0))
name138 = "Relation.Binary.Structures.IsPartialOrder._.trans"
d138 ::
  T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d138 v0 = coe d84 (coe d126 (coe v0))
name140 = "Relation.Binary.Structures.IsPartialOrder._.∼-resp-≈"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T118 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d140 v0 v1 v2 v3 v4 v5 v6 = du140 v6
du140 :: T118 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du140 v0 = coe du112 (coe d126 (coe v0))
name142 = "Relation.Binary.Structures.IsPartialOrder._.∼-respʳ-≈"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0 v1 v2 v3 v4 v5 v6 = du142 v6
du142 ::
  T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du142 v0 = coe du106 (coe d126 (coe v0))
name144 = "Relation.Binary.Structures.IsPartialOrder._.∼-respˡ-≈"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0 v1 v2 v3 v4 v5 v6 = du144 v6
du144 ::
  T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du144 v0 = coe du100 (coe d126 (coe v0))
name148
  = "Relation.Binary.Structures.IsPartialOrder._.Eq.isPartialEquivalence"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T118 -> T16
d148 v0 v1 v2 v3 v4 v5 v6 = du148 v6
du148 :: T118 -> T16
du148 v0 = let v1 = d126 (coe v0) in coe du42 (coe d80 (coe v1))
name150 = "Relation.Binary.Structures.IsPartialOrder._.Eq.refl"
d150 :: T118 -> AgdaAny -> AgdaAny
d150 v0 = coe d34 (coe d80 (coe d126 (coe v0)))
name152
  = "Relation.Binary.Structures.IsPartialOrder._.Eq.reflexive"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T118 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d152 v0 v1 v2 v3 v4 v5 v6 = du152 v6
du152 ::
  T118 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du152 v0
  = let v1 = d126 (coe v0) in
    \ v2 v3 v4 -> coe du40 (coe d80 (coe v1)) v2
name154 = "Relation.Binary.Structures.IsPartialOrder._.Eq.sym"
d154 :: T118 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d154 v0 = coe d36 (coe d80 (coe d126 (coe v0)))
name156 = "Relation.Binary.Structures.IsPartialOrder._.Eq.trans"
d156 ::
  T118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d156 v0 = coe d38 (coe d80 (coe d126 (coe v0)))
name162 = "Relation.Binary.Structures.IsDecPartialOrder"
d162 a0 a1 a2 a3 a4 a5 = ()
data T162
  = C5875 T118
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32)
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32)
name172
  = "Relation.Binary.Structures.IsDecPartialOrder.isPartialOrder"
d172 :: T162 -> T118
d172 v0
  = case coe v0 of
      C5875 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name174 = "Relation.Binary.Structures.IsDecPartialOrder._≟_"
d174 ::
  T162 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d174 v0
  = case coe v0 of
      C5875 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name176 = "Relation.Binary.Structures.IsDecPartialOrder._≤?_"
d176 ::
  T162 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d176 v0
  = case coe v0 of
      C5875 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name180 = "Relation.Binary.Structures.IsDecPartialOrder._.antisym"
d180 :: T162 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0 = coe d128 (coe d172 (coe v0))
name182
  = "Relation.Binary.Structures.IsDecPartialOrder._.isEquivalence"
d182 :: T162 -> T26
d182 v0 = coe d80 (coe d126 (coe d172 (coe v0)))
name184
  = "Relation.Binary.Structures.IsDecPartialOrder._.isPreorder"
d184 :: T162 -> T70
d184 v0 = coe d126 (coe d172 (coe v0))
name186 = "Relation.Binary.Structures.IsDecPartialOrder._.refl"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T162 -> AgdaAny -> AgdaAny
d186 v0 v1 v2 v3 v4 v5 v6 = du186 v6
du186 :: T162 -> AgdaAny -> AgdaAny
du186 v0 = let v1 = d172 (coe v0) in coe du98 (coe d126 (coe v1))
name188
  = "Relation.Binary.Structures.IsDecPartialOrder._.reflexive"
d188 :: T162 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d188 v0 = coe d82 (coe d126 (coe d172 (coe v0)))
name190 = "Relation.Binary.Structures.IsDecPartialOrder._.trans"
d190 ::
  T162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d190 v0 = coe d84 (coe d126 (coe d172 (coe v0)))
name192 = "Relation.Binary.Structures.IsDecPartialOrder._.∼-resp-≈"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T162 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d192 v0 v1 v2 v3 v4 v5 v6 = du192 v6
du192 :: T162 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du192 v0 = let v1 = d172 (coe v0) in coe du112 (coe d126 (coe v1))
name194
  = "Relation.Binary.Structures.IsDecPartialOrder._.∼-respʳ-≈"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d194 v0 v1 v2 v3 v4 v5 v6 = du194 v6
du194 ::
  T162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du194 v0 = let v1 = d172 (coe v0) in coe du106 (coe d126 (coe v1))
name196
  = "Relation.Binary.Structures.IsDecPartialOrder._.∼-respˡ-≈"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d196 v0 v1 v2 v3 v4 v5 v6 = du196 v6
du196 ::
  T162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du196 v0 = let v1 = d172 (coe v0) in coe du100 (coe d126 (coe v1))
name200
  = "Relation.Binary.Structures.IsDecPartialOrder.Eq.isDecEquivalence"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T162 -> T44
d200 v0 v1 v2 v3 v4 v5 v6 = du200 v6
du200 :: T162 -> T44
du200 v0
  = coe
      C1529 (coe d80 (coe d126 (coe d172 (coe v0)))) (coe d174 (coe v0))
name204 = "Relation.Binary.Structures.IsDecPartialOrder.Eq._._≟_"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T162 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d204 v0 v1 v2 v3 v4 v5 v6 = du204 v6
du204 ::
  T162 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du204 v0 = coe d174 (coe v0)
name206
  = "Relation.Binary.Structures.IsDecPartialOrder.Eq._.isEquivalence"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T162 -> T26
d206 v0 v1 v2 v3 v4 v5 v6 = du206 v6
du206 :: T162 -> T26
du206 v0 = coe d80 (coe d126 (coe d172 (coe v0)))
name208
  = "Relation.Binary.Structures.IsDecPartialOrder.Eq._.isPartialEquivalence"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T162 -> T16
d208 v0 v1 v2 v3 v4 v5 v6 = du208 v6
du208 :: T162 -> T16
du208 v0
  = let v1 = coe du200 (coe v0) in coe du42 (coe d50 (coe v1))
name210 = "Relation.Binary.Structures.IsDecPartialOrder.Eq._.refl"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T162 -> AgdaAny -> AgdaAny
d210 v0 v1 v2 v3 v4 v5 v6 = du210 v6
du210 :: T162 -> AgdaAny -> AgdaAny
du210 v0 = coe d34 (coe d80 (coe d126 (coe d172 (coe v0))))
name212
  = "Relation.Binary.Structures.IsDecPartialOrder.Eq._.reflexive"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T162 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d212 v0 v1 v2 v3 v4 v5 v6 = du212 v6
du212 ::
  T162 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du212 v0
  = let v1 = coe du200 (coe v0) in
    \ v2 v3 v4 -> coe du40 (coe d50 (coe v1)) v2
name214 = "Relation.Binary.Structures.IsDecPartialOrder.Eq._.sym"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T162 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d214 v0 v1 v2 v3 v4 v5 v6 = du214 v6
du214 :: T162 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du214 v0 = coe d36 (coe d80 (coe d126 (coe d172 (coe v0))))
name216 = "Relation.Binary.Structures.IsDecPartialOrder.Eq._.trans"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 v6 = du216 v6
du216 ::
  T162 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du216 v0 = coe d38 (coe d80 (coe d126 (coe d172 (coe v0))))
name222 = "Relation.Binary.Structures.IsStrictPartialOrder"
d222 a0 a1 a2 a3 a4 a5 = ()
data T222
  = C7193 T26
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name234
  = "Relation.Binary.Structures.IsStrictPartialOrder.isEquivalence"
d234 :: T222 -> T26
d234 v0
  = case coe v0 of
      C7193 v1 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name236 = "Relation.Binary.Structures.IsStrictPartialOrder.irrefl"
d236 ::
  T222 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d236 = erased
name238 = "Relation.Binary.Structures.IsStrictPartialOrder.trans"
d238 ::
  T222 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d238 v0
  = case coe v0 of
      C7193 v1 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name240
  = "Relation.Binary.Structures.IsStrictPartialOrder.<-resp-≈"
d240 :: T222 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d240 v0
  = case coe v0 of
      C7193 v1 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name244
  = "Relation.Binary.Structures.IsStrictPartialOrder.Eq.isPartialEquivalence"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T222 -> T16
d244 v0 v1 v2 v3 v4 v5 v6 = du244 v6
du244 :: T222 -> T16
du244 v0 = coe du42 (coe d234 (coe v0))
name246 = "Relation.Binary.Structures.IsStrictPartialOrder.Eq.refl"
d246 :: T222 -> AgdaAny -> AgdaAny
d246 v0 = coe d34 (coe d234 (coe v0))
name248
  = "Relation.Binary.Structures.IsStrictPartialOrder.Eq.reflexive"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T222 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d248 v0 v1 v2 v3 v4 v5 v6 = du248 v6
du248 ::
  T222 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du248 v0 v1 v2 v3 = coe du40 (coe d234 (coe v0)) v1
name250 = "Relation.Binary.Structures.IsStrictPartialOrder.Eq.sym"
d250 :: T222 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d250 v0 = coe d36 (coe d234 (coe v0))
name252
  = "Relation.Binary.Structures.IsStrictPartialOrder.Eq.trans"
d252 ::
  T222 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d252 v0 = coe d38 (coe d234 (coe v0))
name254 = "Relation.Binary.Structures.IsStrictPartialOrder.asym"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T222 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d254 = erased
name260
  = "Relation.Binary.Structures.IsStrictPartialOrder.<-respʳ-≈"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T222 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d260 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du260 v6 v7 v8 v9
du260 ::
  T222 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du260 v0 v1 v2 v3
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d240 (coe v0)) v1 v2 v3
name262
  = "Relation.Binary.Structures.IsStrictPartialOrder.<-respˡ-≈"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T222 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d262 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du262 v6 v7 v8 v9
du262 ::
  T222 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du262 v0 v1 v2 v3
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (d240 (coe v0)) v1 v2 v3
name264
  = "Relation.Binary.Structures.IsStrictPartialOrder.asymmetric"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T222 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d264 = erased
name270 = "Relation.Binary.Structures.IsDecStrictPartialOrder"
d270 a0 a1 a2 a3 a4 a5 = ()
data T270
  = C10525 T222
           (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32)
           (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32)
name280
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.isStrictPartialOrder"
d280 :: T270 -> T222
d280 v0
  = case coe v0 of
      C10525 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name282 = "Relation.Binary.Structures.IsDecStrictPartialOrder._≟_"
d282 ::
  T270 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d282 v0
  = case coe v0 of
      C10525 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Relation.Binary.Structures.IsDecStrictPartialOrder._<?_"
d284 ::
  T270 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d284 v0
  = case coe v0 of
      C10525 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name288
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-resp-≈"
d288 :: T270 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d288 v0 = coe d240 (coe d280 (coe v0))
name290
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-respʳ-≈"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0 v1 v2 v3 v4 v5 v6 = du290 v6
du290 ::
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du290 v0
  = let v1 = d280 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d240 (coe v1)) v2 v3 v4)
name292
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.<-respˡ-≈"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d292 v0 v1 v2 v3 v4 v5 v6 = du292 v6
du292 ::
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du292 v0
  = let v1 = d280 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (d240 (coe v1)) v2 v3 v4)
name294
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.asym"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d294 = erased
name296
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.asymmetric"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d296 = erased
name298
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.irrefl"
d298 ::
  T270 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d298 = erased
name300
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.isEquivalence"
d300 :: T270 -> T26
d300 v0 = coe d234 (coe d280 (coe v0))
name302
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.trans"
d302 ::
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0 = coe d238 (coe d280 (coe v0))
name306
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.isPartialEquivalence"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T270 -> T16
d306 v0 v1 v2 v3 v4 v5 v6 = du306 v6
du306 :: T270 -> T16
du306 v0 = let v1 = d280 (coe v0) in coe du42 (coe d234 (coe v1))
name308
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.refl"
d308 :: T270 -> AgdaAny -> AgdaAny
d308 v0 = coe d34 (coe d234 (coe d280 (coe v0)))
name310
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.reflexive"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d310 v0 v1 v2 v3 v4 v5 v6 = du310 v6
du310 ::
  T270 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du310 v0
  = let v1 = d280 (coe v0) in
    \ v2 v3 v4 -> coe du40 (coe d234 (coe v1)) v2
name312
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.sym"
d312 :: T270 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0 = coe d36 (coe d234 (coe d280 (coe v0)))
name314
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.SPO.Eq.trans"
d314 ::
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d314 v0 = coe d38 (coe d234 (coe d280 (coe v0)))
name318
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq.isDecEquivalence"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T270 -> T44
d318 v0 v1 v2 v3 v4 v5 v6 = du318 v6
du318 :: T270 -> T44
du318 v0
  = coe C1529 (coe d234 (coe d280 (coe v0))) (coe d282 (coe v0))
name322
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._._≟_"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d322 v0 v1 v2 v3 v4 v5 v6 = du322 v6
du322 ::
  T270 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du322 v0 = coe d282 (coe v0)
name324
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.isEquivalence"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T270 -> T26
d324 v0 v1 v2 v3 v4 v5 v6 = du324 v6
du324 :: T270 -> T26
du324 v0 = coe d234 (coe d280 (coe v0))
name326
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.isPartialEquivalence"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T270 -> T16
d326 v0 v1 v2 v3 v4 v5 v6 = du326 v6
du326 :: T270 -> T16
du326 v0
  = let v1 = coe du318 (coe v0) in coe du42 (coe d50 (coe v1))
name328
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.refl"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T270 -> AgdaAny -> AgdaAny
d328 v0 v1 v2 v3 v4 v5 v6 = du328 v6
du328 :: T270 -> AgdaAny -> AgdaAny
du328 v0 = coe d34 (coe d234 (coe d280 (coe v0)))
name330
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.reflexive"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d330 v0 v1 v2 v3 v4 v5 v6 = du330 v6
du330 ::
  T270 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du330 v0
  = let v1 = coe du318 (coe v0) in
    \ v2 v3 v4 -> coe du40 (coe d50 (coe v1)) v2
name332
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.sym"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d332 v0 v1 v2 v3 v4 v5 v6 = du332 v6
du332 :: T270 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du332 v0 = coe d36 (coe d234 (coe d280 (coe v0)))
name334
  = "Relation.Binary.Structures.IsDecStrictPartialOrder.Eq._.trans"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d334 v0 v1 v2 v3 v4 v5 v6 = du334 v6
du334 ::
  T270 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du334 v0 = coe d38 (coe d234 (coe d280 (coe v0)))
name340 = "Relation.Binary.Structures.IsTotalOrder"
d340 a0 a1 a2 a3 a4 a5 = ()
data T340
  = C11665 T118
           (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30)
name348 = "Relation.Binary.Structures.IsTotalOrder.isPartialOrder"
d348 :: T340 -> T118
d348 v0
  = case coe v0 of
      C11665 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name350 = "Relation.Binary.Structures.IsTotalOrder.total"
d350 ::
  T340 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d350 v0
  = case coe v0 of
      C11665 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name354 = "Relation.Binary.Structures.IsTotalOrder._.antisym"
d354 :: T340 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d354 v0 = coe d128 (coe d348 (coe v0))
name356 = "Relation.Binary.Structures.IsTotalOrder._.isEquivalence"
d356 :: T340 -> T26
d356 v0 = coe d80 (coe d126 (coe d348 (coe v0)))
name358 = "Relation.Binary.Structures.IsTotalOrder._.isPreorder"
d358 :: T340 -> T70
d358 v0 = coe d126 (coe d348 (coe v0))
name360 = "Relation.Binary.Structures.IsTotalOrder._.refl"
d360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T340 -> AgdaAny -> AgdaAny
d360 v0 v1 v2 v3 v4 v5 v6 = du360 v6
du360 :: T340 -> AgdaAny -> AgdaAny
du360 v0 = let v1 = d348 (coe v0) in coe du98 (coe d126 (coe v1))
name362 = "Relation.Binary.Structures.IsTotalOrder._.reflexive"
d362 :: T340 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d362 v0 = coe d82 (coe d126 (coe d348 (coe v0)))
name364 = "Relation.Binary.Structures.IsTotalOrder._.trans"
d364 ::
  T340 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d364 v0 = coe d84 (coe d126 (coe d348 (coe v0)))
name366 = "Relation.Binary.Structures.IsTotalOrder._.∼-resp-≈"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T340 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d366 v0 v1 v2 v3 v4 v5 v6 = du366 v6
du366 :: T340 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du366 v0 = let v1 = d348 (coe v0) in coe du112 (coe d126 (coe v1))
name368 = "Relation.Binary.Structures.IsTotalOrder._.∼-respʳ-≈"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T340 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d368 v0 v1 v2 v3 v4 v5 v6 = du368 v6
du368 ::
  T340 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du368 v0 = let v1 = d348 (coe v0) in coe du106 (coe d126 (coe v1))
name370 = "Relation.Binary.Structures.IsTotalOrder._.∼-respˡ-≈"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T340 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d370 v0 v1 v2 v3 v4 v5 v6 = du370 v6
du370 ::
  T340 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du370 v0 = let v1 = d348 (coe v0) in coe du100 (coe d126 (coe v1))
name374
  = "Relation.Binary.Structures.IsTotalOrder._.Eq.isPartialEquivalence"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T340 -> T16
d374 v0 v1 v2 v3 v4 v5 v6 = du374 v6
du374 :: T340 -> T16
du374 v0
  = let v1 = d348 (coe v0) in
    let v2 = d126 (coe v1) in coe du42 (coe d80 (coe v2))
name376 = "Relation.Binary.Structures.IsTotalOrder._.Eq.refl"
d376 :: T340 -> AgdaAny -> AgdaAny
d376 v0 = coe d34 (coe d80 (coe d126 (coe d348 (coe v0))))
name378 = "Relation.Binary.Structures.IsTotalOrder._.Eq.reflexive"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T340 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d378 v0 v1 v2 v3 v4 v5 v6 = du378 v6
du378 ::
  T340 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du378 v0
  = let v1 = d348 (coe v0) in
    let v2 = d126 (coe v1) in
    \ v3 v4 v5 -> coe du40 (coe d80 (coe v2)) v3
name380 = "Relation.Binary.Structures.IsTotalOrder._.Eq.sym"
d380 :: T340 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d380 v0 = coe d36 (coe d80 (coe d126 (coe d348 (coe v0))))
name382 = "Relation.Binary.Structures.IsTotalOrder._.Eq.trans"
d382 ::
  T340 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d382 v0 = coe d38 (coe d80 (coe d126 (coe d348 (coe v0))))
name388 = "Relation.Binary.Structures.IsDecTotalOrder"
d388 a0 a1 a2 a3 a4 a5 = ()
data T388
  = C12739 T340
           (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32)
           (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32)
name398 = "Relation.Binary.Structures.IsDecTotalOrder.isTotalOrder"
d398 :: T388 -> T340
d398 v0
  = case coe v0 of
      C12739 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name400 = "Relation.Binary.Structures.IsDecTotalOrder._≟_"
d400 ::
  T388 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d400 v0
  = case coe v0 of
      C12739 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name402 = "Relation.Binary.Structures.IsDecTotalOrder._≤?_"
d402 ::
  T388 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d402 v0
  = case coe v0 of
      C12739 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name406 = "Relation.Binary.Structures.IsDecTotalOrder._.antisym"
d406 :: T388 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d406 v0 = coe d128 (coe d348 (coe d398 (coe v0)))
name408
  = "Relation.Binary.Structures.IsDecTotalOrder._.isEquivalence"
d408 :: T388 -> T26
d408 v0 = coe d80 (coe d126 (coe d348 (coe d398 (coe v0))))
name410
  = "Relation.Binary.Structures.IsDecTotalOrder._.isPartialOrder"
d410 :: T388 -> T118
d410 v0 = coe d348 (coe d398 (coe v0))
name412 = "Relation.Binary.Structures.IsDecTotalOrder._.isPreorder"
d412 :: T388 -> T70
d412 v0 = coe d126 (coe d348 (coe d398 (coe v0)))
name414 = "Relation.Binary.Structures.IsDecTotalOrder._.refl"
d414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T388 -> AgdaAny -> AgdaAny
d414 v0 v1 v2 v3 v4 v5 v6 = du414 v6
du414 :: T388 -> AgdaAny -> AgdaAny
du414 v0
  = let v1 = d398 (coe v0) in
    let v2 = d348 (coe v1) in coe du98 (coe d126 (coe v2))
name416 = "Relation.Binary.Structures.IsDecTotalOrder._.reflexive"
d416 :: T388 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d416 v0 = coe d82 (coe d126 (coe d348 (coe d398 (coe v0))))
name418 = "Relation.Binary.Structures.IsDecTotalOrder._.total"
d418 ::
  T388 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d418 v0 = coe d350 (coe d398 (coe v0))
name420 = "Relation.Binary.Structures.IsDecTotalOrder._.trans"
d420 ::
  T388 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d420 v0 = coe d84 (coe d126 (coe d348 (coe d398 (coe v0))))
name422 = "Relation.Binary.Structures.IsDecTotalOrder._.∼-resp-≈"
d422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T388 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d422 v0 v1 v2 v3 v4 v5 v6 = du422 v6
du422 :: T388 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du422 v0
  = let v1 = d398 (coe v0) in
    let v2 = d348 (coe v1) in coe du112 (coe d126 (coe v2))
name424 = "Relation.Binary.Structures.IsDecTotalOrder._.∼-respʳ-≈"
d424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T388 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d424 v0 v1 v2 v3 v4 v5 v6 = du424 v6
du424 ::
  T388 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du424 v0
  = let v1 = d398 (coe v0) in
    let v2 = d348 (coe v1) in coe du106 (coe d126 (coe v2))
name426 = "Relation.Binary.Structures.IsDecTotalOrder._.∼-respˡ-≈"
d426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T388 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d426 v0 v1 v2 v3 v4 v5 v6 = du426 v6
du426 ::
  T388 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du426 v0
  = let v1 = d398 (coe v0) in
    let v2 = d348 (coe v1) in coe du100 (coe d126 (coe v2))
name428
  = "Relation.Binary.Structures.IsDecTotalOrder.isDecPartialOrder"
d428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T388 -> T162
d428 v0 v1 v2 v3 v4 v5 v6 = du428 v6
du428 :: T388 -> T162
du428 v0
  = coe
      C5875 (coe d348 (coe d398 (coe v0))) (coe d400 (coe v0))
      (coe d402 (coe v0))
name432
  = "Relation.Binary.Structures.IsDecTotalOrder.Eq.isDecEquivalence"
d432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T388 -> T44
d432 v0 v1 v2 v3 v4 v5 v6 = du432 v6
du432 :: T388 -> T44
du432 v0
  = coe
      C1529 (coe d80 (coe d126 (coe d348 (coe d398 (coe v0)))))
      (coe d400 (coe v0))
name436 = "Relation.Binary.Structures.IsDecTotalOrder.Eq._._≟_"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T388 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d436 v0 v1 v2 v3 v4 v5 v6 = du436 v6
du436 ::
  T388 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du436 v0 = coe d400 (coe v0)
name438
  = "Relation.Binary.Structures.IsDecTotalOrder.Eq._.isEquivalence"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T388 -> T26
d438 v0 v1 v2 v3 v4 v5 v6 = du438 v6
du438 :: T388 -> T26
du438 v0 = coe d80 (coe d126 (coe d348 (coe d398 (coe v0))))
name440
  = "Relation.Binary.Structures.IsDecTotalOrder.Eq._.isPartialEquivalence"
d440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T388 -> T16
d440 v0 v1 v2 v3 v4 v5 v6 = du440 v6
du440 :: T388 -> T16
du440 v0
  = let v1 = coe du432 (coe v0) in coe du42 (coe d50 (coe v1))
name442 = "Relation.Binary.Structures.IsDecTotalOrder.Eq._.refl"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T388 -> AgdaAny -> AgdaAny
d442 v0 v1 v2 v3 v4 v5 v6 = du442 v6
du442 :: T388 -> AgdaAny -> AgdaAny
du442 v0
  = coe d34 (coe d80 (coe d126 (coe d348 (coe d398 (coe v0)))))
name444
  = "Relation.Binary.Structures.IsDecTotalOrder.Eq._.reflexive"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T388 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d444 v0 v1 v2 v3 v4 v5 v6 = du444 v6
du444 ::
  T388 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du444 v0
  = let v1 = coe du432 (coe v0) in
    \ v2 v3 v4 -> coe du40 (coe d50 (coe v1)) v2
name446 = "Relation.Binary.Structures.IsDecTotalOrder.Eq._.sym"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T388 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d446 v0 v1 v2 v3 v4 v5 v6 = du446 v6
du446 :: T388 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du446 v0
  = coe d36 (coe d80 (coe d126 (coe d348 (coe d398 (coe v0)))))
name448 = "Relation.Binary.Structures.IsDecTotalOrder.Eq._.trans"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T388 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d448 v0 v1 v2 v3 v4 v5 v6 = du448 v6
du448 ::
  T388 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du448 v0
  = coe d38 (coe d80 (coe d126 (coe d348 (coe d398 (coe v0)))))
name454 = "Relation.Binary.Structures.IsStrictTotalOrder"
d454 a0 a1 a2 a3 a4 a5 = ()
data T454
  = C14057 T26
           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny ->
            AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136)
name464
  = "Relation.Binary.Structures.IsStrictTotalOrder.isEquivalence"
d464 :: T454 -> T26
d464 v0
  = case coe v0 of
      C14057 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name466 = "Relation.Binary.Structures.IsStrictTotalOrder.trans"
d466 ::
  T454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d466 v0
  = case coe v0 of
      C14057 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name468 = "Relation.Binary.Structures.IsStrictTotalOrder.compare"
d468 ::
  T454 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T136
d468 v0
  = case coe v0 of
      C14057 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name470 = "Relation.Binary.Structures.IsStrictTotalOrder._≟_"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d470 v0 v1 v2 v3 v4 v5 v6 = du470 v6
du470 ::
  T454 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du470 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du372 (coe d468 (coe v0))
name472 = "Relation.Binary.Structures.IsStrictTotalOrder._<?_"
d472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d472 v0 v1 v2 v3 v4 v5 v6 = du472 v6
du472 ::
  T454 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du472 v0
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du408 (coe d468 (coe v0))
name474
  = "Relation.Binary.Structures.IsStrictTotalOrder.isDecEquivalence"
d474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T454 -> T44
d474 v0 v1 v2 v3 v4 v5 v6 = du474 v6
du474 :: T454 -> T44
du474 v0 = coe C1529 (coe d464 (coe v0)) (coe du470 (coe v0))
name478 = "Relation.Binary.Structures.IsStrictTotalOrder.Eq._≟_"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d478 v0 v1 v2 v3 v4 v5 v6 = du478 v6
du478 ::
  T454 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du478 v0 = coe du470 (coe v0)
name480
  = "Relation.Binary.Structures.IsStrictTotalOrder.Eq.isEquivalence"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T454 -> T26
d480 v0 v1 v2 v3 v4 v5 v6 = du480 v6
du480 :: T454 -> T26
du480 v0 = coe d464 (coe v0)
name482
  = "Relation.Binary.Structures.IsStrictTotalOrder.Eq.isPartialEquivalence"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T454 -> T16
d482 v0 v1 v2 v3 v4 v5 v6 = du482 v6
du482 :: T454 -> T16
du482 v0
  = let v1 = coe du474 (coe v0) in coe du42 (coe d50 (coe v1))
name484 = "Relation.Binary.Structures.IsStrictTotalOrder.Eq.refl"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T454 -> AgdaAny -> AgdaAny
d484 v0 v1 v2 v3 v4 v5 v6 = du484 v6
du484 :: T454 -> AgdaAny -> AgdaAny
du484 v0 = coe d34 (coe d464 (coe v0))
name486
  = "Relation.Binary.Structures.IsStrictTotalOrder.Eq.reflexive"
d486 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d486 v0 v1 v2 v3 v4 v5 v6 = du486 v6
du486 ::
  T454 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du486 v0
  = let v1 = coe du474 (coe v0) in
    \ v2 v3 v4 -> coe du40 (coe d50 (coe v1)) v2
name488 = "Relation.Binary.Structures.IsStrictTotalOrder.Eq.sym"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d488 v0 v1 v2 v3 v4 v5 v6 = du488 v6
du488 :: T454 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du488 v0 = coe d36 (coe d464 (coe v0))
name490 = "Relation.Binary.Structures.IsStrictTotalOrder.Eq.trans"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d490 v0 v1 v2 v3 v4 v5 v6 = du490 v6
du490 ::
  T454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du490 v0 = coe d38 (coe d464 (coe v0))
name492
  = "Relation.Binary.Structures.IsStrictTotalOrder.isStrictPartialOrder"
d492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T454 -> T222
d492 v0 v1 v2 v3 v4 v5 v6 = du492 v4 v6
du492 :: MAlonzo.Code.Agda.Primitive.T4 -> T454 -> T222
du492 v0 v1
  = coe
      C7193 (d464 (coe v1)) (d466 (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Consequences.du596 (coe v0)
         (coe d468 (coe v1)))
name494
  = "Relation.Binary.Structures.IsStrictTotalOrder.isDecStrictPartialOrder"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> T454 -> T270
d494 v0 v1 v2 v3 v4 v5 v6 = du494 v4 v6
du494 :: MAlonzo.Code.Agda.Primitive.T4 -> T454 -> T270
du494 v0 v1
  = coe
      C10525 (coe du492 (coe v0) (coe v1)) (coe du470 (coe v1))
      (coe du472 (coe v1))
name498
  = "Relation.Binary.Structures.IsStrictTotalOrder._.<-resp-≈"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d498 v0 v1 v2 v3 v4 v5 v6 = du498 v4 v6
du498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T454 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du498 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Consequences.du596 (coe v0)
      (coe d468 (coe v1))
name500
  = "Relation.Binary.Structures.IsStrictTotalOrder._.<-respʳ-≈"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d500 v0 v1 v2 v3 v4 v5 v6 = du500 v4 v6
du500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du500 v0 v1
  = let v2 = coe du492 (coe v0) (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d240 (coe v2)) v3 v4 v5)
name502
  = "Relation.Binary.Structures.IsStrictTotalOrder._.<-respˡ-≈"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d502 v0 v1 v2 v3 v4 v5 v6 = du502 v4 v6
du502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T454 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du502 v0 v1
  = let v2 = coe du492 (coe v0) (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (d240 (coe v2)) v3 v4 v5)
name504 = "Relation.Binary.Structures.IsStrictTotalOrder._.asym"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d504 = erased
name506 = "Relation.Binary.Structures.IsStrictTotalOrder._.irrefl"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  T454 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d506 = erased
