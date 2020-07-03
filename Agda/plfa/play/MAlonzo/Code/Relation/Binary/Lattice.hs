{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Lattice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name12 = "Relation.Binary.Lattice.Supremum"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d12 = erased
name30 = "Relation.Binary.Lattice.Infimum"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d30 = erased
name40 = "Relation.Binary.Lattice.Exponential"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d40 = erased
name68 = "Relation.Binary.Lattice.IsJoinSemilattice"
d68 a0 a1 a2 a3 a4 a5 a6 = ()
data T68
  = C1431 MAlonzo.Code.Relation.Binary.Structures.T118
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name88 = "Relation.Binary.Lattice.IsJoinSemilattice.isPartialOrder"
d88 :: T68 -> MAlonzo.Code.Relation.Binary.Structures.T118
d88 v0
  = case coe v0 of
      C1431 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Relation.Binary.Lattice.IsJoinSemilattice.supremum"
d90 ::
  T68 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d90 v0
  = case coe v0 of
      C1431 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name96 = "Relation.Binary.Lattice.IsJoinSemilattice.x≤x∨y"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 -> AgdaAny -> AgdaAny -> AgdaAny
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du96 v7 v8 v9
du96 :: T68 -> AgdaAny -> AgdaAny -> AgdaAny
du96 v0 v1 v2
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v0 v1 v2)
name108 = "Relation.Binary.Lattice.IsJoinSemilattice.y≤x∨y"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du108 v7 v8 v9
du108 :: T68 -> AgdaAny -> AgdaAny -> AgdaAny
du108 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v0 v1 v2))
name122 = "Relation.Binary.Lattice.IsJoinSemilattice.∨-least"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du122 v7 v8 v9 v10
du122 ::
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du122 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v0 v1 v2)) v3
name134 = "Relation.Binary.Lattice.IsJoinSemilattice._.antisym"
d134 :: T68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d134 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128 (coe d88 (coe v0))
name136
  = "Relation.Binary.Lattice.IsJoinSemilattice._.isEquivalence"
d136 :: T68 -> MAlonzo.Code.Relation.Binary.Structures.T26
d136 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d88 (coe v0)))
name138 = "Relation.Binary.Lattice.IsJoinSemilattice._.isPreorder"
d138 :: T68 -> MAlonzo.Code.Relation.Binary.Structures.T70
d138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126 (coe d88 (coe v0))
name140 = "Relation.Binary.Lattice.IsJoinSemilattice._.refl"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T68 -> AgdaAny -> AgdaAny
d140 v0 v1 v2 v3 v4 v5 v6 v7 = du140 v7
du140 :: T68 -> AgdaAny -> AgdaAny
du140 v0
  = let v1 = d88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name142 = "Relation.Binary.Lattice.IsJoinSemilattice._.reflexive"
d142 :: T68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d88 (coe v0)))
name144 = "Relation.Binary.Lattice.IsJoinSemilattice._.trans"
d144 ::
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d88 (coe v0)))
name146 = "Relation.Binary.Lattice.IsJoinSemilattice._.∼-resp-≈"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d146 v0 v1 v2 v3 v4 v5 v6 v7 = du146 v7
du146 :: T68 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du146 v0
  = let v1 = d88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name148 = "Relation.Binary.Lattice.IsJoinSemilattice._.∼-respʳ-≈"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d148 v0 v1 v2 v3 v4 v5 v6 v7 = du148 v7
du148 ::
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du148 v0
  = let v1 = d88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name150 = "Relation.Binary.Lattice.IsJoinSemilattice._.∼-respˡ-≈"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d150 v0 v1 v2 v3 v4 v5 v6 v7 = du150 v7
du150 ::
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du150 v0
  = let v1 = d88 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name154
  = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.isPartialEquivalence"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 -> MAlonzo.Code.Relation.Binary.Structures.T16
d154 v0 v1 v2 v3 v4 v5 v6 v7 = du154 v7
du154 :: T68 -> MAlonzo.Code.Relation.Binary.Structures.T16
du154 v0
  = let v1 = d88 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2))
name156 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.refl"
d156 :: T68 -> AgdaAny -> AgdaAny
d156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d88 (coe v0))))
name158
  = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.reflexive"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T68 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d158 v0 v1 v2 v3 v4 v5 v6 v7 = du158 v7
du158 ::
  T68 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du158 v0
  = let v1 = d88 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2)) v3
name160 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.sym"
d160 :: T68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d160 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d88 (coe v0))))
name162 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.trans"
d162 ::
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d88 (coe v0))))
name170 = "Relation.Binary.Lattice.JoinSemilattice"
d170 a0 a1 a2 = ()
data T170 = C4533 (AgdaAny -> AgdaAny -> AgdaAny) T68
name188 = "Relation.Binary.Lattice.JoinSemilattice.Carrier"
d188 :: T170 -> ()
d188 = erased
name190 = "Relation.Binary.Lattice.JoinSemilattice._≈_"
d190 :: T170 -> AgdaAny -> AgdaAny -> ()
d190 = erased
name192 = "Relation.Binary.Lattice.JoinSemilattice._≤_"
d192 :: T170 -> AgdaAny -> AgdaAny -> ()
d192 = erased
name194 = "Relation.Binary.Lattice.JoinSemilattice._∨_"
d194 :: T170 -> AgdaAny -> AgdaAny -> AgdaAny
d194 v0
  = case coe v0 of
      C4533 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name196
  = "Relation.Binary.Lattice.JoinSemilattice.isJoinSemilattice"
d196 :: T170 -> T68
d196 v0
  = case coe v0 of
      C4533 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name200 = "Relation.Binary.Lattice.JoinSemilattice._.antisym"
d200 :: T170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d88 (coe d196 (coe v0)))
name202 = "Relation.Binary.Lattice.JoinSemilattice._.isEquivalence"
d202 :: T170 -> MAlonzo.Code.Relation.Binary.Structures.T26
d202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d196 (coe v0))))
name204
  = "Relation.Binary.Lattice.JoinSemilattice._.isPartialOrder"
d204 :: T170 -> MAlonzo.Code.Relation.Binary.Structures.T118
d204 v0 = coe d88 (coe d196 (coe v0))
name206 = "Relation.Binary.Lattice.JoinSemilattice._.isPreorder"
d206 :: T170 -> MAlonzo.Code.Relation.Binary.Structures.T70
d206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d88 (coe d196 (coe v0)))
name208 = "Relation.Binary.Lattice.JoinSemilattice._.refl"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T170 -> AgdaAny -> AgdaAny
d208 v0 v1 v2 v3 = du208 v3
du208 :: T170 -> AgdaAny -> AgdaAny
du208 v0
  = let v1 = d196 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name210 = "Relation.Binary.Lattice.JoinSemilattice._.reflexive"
d210 :: T170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d210 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d196 (coe v0))))
name212 = "Relation.Binary.Lattice.JoinSemilattice._.supremum"
d212 ::
  T170 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d212 v0 = coe d90 (coe d196 (coe v0))
name214 = "Relation.Binary.Lattice.JoinSemilattice._.trans"
d214 ::
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d214 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d196 (coe v0))))
name216 = "Relation.Binary.Lattice.JoinSemilattice._.x≤x∨y"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0 v1 v2 v3 = du216 v3
du216 :: T170 -> AgdaAny -> AgdaAny -> AgdaAny
du216 v0
  = let v1 = d196 (coe v0) in
    coe
      (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v1 v2 v3))
name218 = "Relation.Binary.Lattice.JoinSemilattice._.y≤x∨y"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0 v1 v2 v3 = du218 v3
du218 :: T170 -> AgdaAny -> AgdaAny -> AgdaAny
du218 v0
  = let v1 = d196 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)))
name220 = "Relation.Binary.Lattice.JoinSemilattice._.∨-least"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0 v1 v2 v3 = du220 v3
du220 ::
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du220 v0
  = let v1 = d196 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)) v4)
name222 = "Relation.Binary.Lattice.JoinSemilattice._.∼-resp-≈"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d222 v0 v1 v2 v3 = du222 v3
du222 :: T170 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du222 v0
  = let v1 = d196 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name224 = "Relation.Binary.Lattice.JoinSemilattice._.∼-respʳ-≈"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 v1 v2 v3 = du224 v3
du224 ::
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du224 v0
  = let v1 = d196 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name226 = "Relation.Binary.Lattice.JoinSemilattice._.∼-respˡ-≈"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0 v1 v2 v3 = du226 v3
du226 ::
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du226 v0
  = let v1 = d196 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name230
  = "Relation.Binary.Lattice.JoinSemilattice._.Eq.isPartialEquivalence"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 -> MAlonzo.Code.Relation.Binary.Structures.T16
d230 v0 v1 v2 v3 = du230 v3
du230 :: T170 -> MAlonzo.Code.Relation.Binary.Structures.T16
du230 v0
  = let v1 = d196 (coe v0) in
    let v2 = d88 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))
name232 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.refl"
d232 :: T170 -> AgdaAny -> AgdaAny
d232 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d196 (coe v0)))))
name234 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.reflexive"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d234 v0 v1 v2 v3 = du234 v3
du234 ::
  T170 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du234 v0
  = let v1 = d196 (coe v0) in
    let v2 = d88 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3)) v4
name236 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.sym"
d236 :: T170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d236 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d196 (coe v0)))))
name238 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.trans"
d238 ::
  T170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d196 (coe v0)))))
name240 = "Relation.Binary.Lattice.JoinSemilattice.poset"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d240 v0 v1 v2 v3 = du240 v3
du240 :: T170 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du240 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (d88 (coe d196 (coe v0)))
name244 = "Relation.Binary.Lattice.JoinSemilattice._.preorder"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T170 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d244 v0 v1 v2 v3 = du244 v3
du244 :: T170 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du244 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du240 (coe v0))
name262 = "Relation.Binary.Lattice.IsBoundedJoinSemilattice"
d262 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T262 = C5849 T68 (AgdaAny -> AgdaAny)
name284
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice.isJoinSemilattice"
d284 :: T262 -> T68
d284 v0
  = case coe v0 of
      C5849 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name286
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice.minimum"
d286 :: T262 -> AgdaAny -> AgdaAny
d286 v0
  = case coe v0 of
      C5849 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name290
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.antisym"
d290 :: T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d88 (coe d284 (coe v0)))
name292
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isEquivalence"
d292 :: T262 -> MAlonzo.Code.Relation.Binary.Structures.T26
d292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d284 (coe v0))))
name294
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPartialOrder"
d294 :: T262 -> MAlonzo.Code.Relation.Binary.Structures.T118
d294 v0 = coe d88 (coe d284 (coe v0))
name296
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPreorder"
d296 :: T262 -> MAlonzo.Code.Relation.Binary.Structures.T70
d296 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d88 (coe d284 (coe v0)))
name298 = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.refl"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T262 -> AgdaAny -> AgdaAny
d298 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du298 v8
du298 :: T262 -> AgdaAny -> AgdaAny
du298 v0
  = let v1 = d284 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name300
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.reflexive"
d300 :: T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d284 (coe v0))))
name302
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.supremum"
d302 ::
  T262 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d302 v0 = coe d90 (coe d284 (coe v0))
name304
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.trans"
d304 ::
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d284 (coe v0))))
name306
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.x≤x∨y"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T262 -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du306 v8
du306 :: T262 -> AgdaAny -> AgdaAny -> AgdaAny
du306 v0
  = let v1 = d284 (coe v0) in
    coe
      (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v1 v2 v3))
name308
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.y≤x∨y"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T262 -> AgdaAny -> AgdaAny -> AgdaAny
d308 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du308 v8
du308 :: T262 -> AgdaAny -> AgdaAny -> AgdaAny
du308 v0
  = let v1 = d284 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)))
name310
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∨-least"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d310 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du310 v8
du310 ::
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du310 v0
  = let v1 = d284 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)) v4)
name312
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-resp-≈"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d312 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du312 v8
du312 :: T262 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du312 v0
  = let v1 = d284 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name314
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-respʳ-≈"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d314 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du314 v8
du314 ::
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du314 v0
  = let v1 = d284 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name316
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-respˡ-≈"
d316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d316 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du316 v8
du316 ::
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du316 v0
  = let v1 = d284 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name320
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.isPartialEquivalence"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T262 -> MAlonzo.Code.Relation.Binary.Structures.T16
d320 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du320 v8
du320 :: T262 -> MAlonzo.Code.Relation.Binary.Structures.T16
du320 v0
  = let v1 = d284 (coe v0) in
    let v2 = d88 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))
name322
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.refl"
d322 :: T262 -> AgdaAny -> AgdaAny
d322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d284 (coe v0)))))
name324
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.reflexive"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d324 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du324 v8
du324 ::
  T262 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du324 v0
  = let v1 = d284 (coe v0) in
    let v2 = d88 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3)) v4
name326
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.sym"
d326 :: T262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d326 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d284 (coe v0)))))
name328
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.trans"
d328 ::
  T262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d328 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d284 (coe v0)))))
name336 = "Relation.Binary.Lattice.BoundedJoinSemilattice"
d336 a0 a1 a2 = ()
data T336 = C7353 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny T262
name356 = "Relation.Binary.Lattice.BoundedJoinSemilattice.Carrier"
d356 :: T336 -> ()
d356 = erased
name358 = "Relation.Binary.Lattice.BoundedJoinSemilattice._≈_"
d358 :: T336 -> AgdaAny -> AgdaAny -> ()
d358 = erased
name360 = "Relation.Binary.Lattice.BoundedJoinSemilattice._≤_"
d360 :: T336 -> AgdaAny -> AgdaAny -> ()
d360 = erased
name362 = "Relation.Binary.Lattice.BoundedJoinSemilattice._∨_"
d362 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny
d362 v0
  = case coe v0 of
      C7353 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name364 = "Relation.Binary.Lattice.BoundedJoinSemilattice.⊥"
d364 :: T336 -> AgdaAny
d364 v0
  = case coe v0 of
      C7353 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name366
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.isBoundedJoinSemilattice"
d366 :: T336 -> T262
d366 v0
  = case coe v0 of
      C7353 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name370
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.antisym"
d370 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d88 (coe d284 (coe d366 (coe v0))))
name372
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isEquivalence"
d372 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T26
d372 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d284 (coe d366 (coe v0)))))
name374
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isJoinSemilattice"
d374 :: T336 -> T68
d374 v0 = coe d284 (coe d366 (coe v0))
name376
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isPartialOrder"
d376 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T118
d376 v0 = coe d88 (coe d284 (coe d366 (coe v0)))
name378
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isPreorder"
d378 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T70
d378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d88 (coe d284 (coe d366 (coe v0))))
name380
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.minimum"
d380 :: T336 -> AgdaAny -> AgdaAny
d380 v0 = coe d286 (coe d366 (coe v0))
name382 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.refl"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> AgdaAny -> AgdaAny
d382 v0 v1 v2 v3 = du382 v3
du382 :: T336 -> AgdaAny -> AgdaAny
du382 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name384
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.reflexive"
d384 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d284 (coe d366 (coe v0)))))
name386
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.supremum"
d386 ::
  T336 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d386 v0 = coe d90 (coe d284 (coe d366 (coe v0)))
name388 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.trans"
d388 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d388 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d88 (coe d284 (coe d366 (coe v0)))))
name390 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.x≤x∨y"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> AgdaAny -> AgdaAny -> AgdaAny
d390 v0 v1 v2 v3 = du390 v3
du390 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny
du390 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name392 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.y≤x∨y"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> AgdaAny -> AgdaAny -> AgdaAny
d392 v0 v1 v2 v3 = du392 v3
du392 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny
du392 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)))
name394
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∨-least"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d394 v0 v1 v2 v3 = du394 v3
du394 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du394 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name396
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-resp-≈"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d396 v0 v1 v2 v3 = du396 v3
du396 :: T336 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du396 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name398
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-respʳ-≈"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d398 v0 v1 v2 v3 = du398 v3
du398 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du398 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name400
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-respˡ-≈"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d400 v0 v1 v2 v3 = du400 v3
du400 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du400 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name404
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.isPartialEquivalence"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
d404 v0 v1 v2 v3 = du404 v3
du404 :: T336 -> MAlonzo.Code.Relation.Binary.Structures.T16
du404 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    let v3 = d88 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4))
name406
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.refl"
d406 :: T336 -> AgdaAny -> AgdaAny
d406 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d284 (coe d366 (coe v0))))))
name408
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.reflexive"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d408 v0 v1 v2 v3 = du408 v3
du408 ::
  T336 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du408 v0
  = let v1 = d366 (coe v0) in
    let v2 = d284 (coe v1) in
    let v3 = d88 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4)) v5
name410 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.sym"
d410 :: T336 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d410 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d284 (coe d366 (coe v0))))))
name412
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.trans"
d412 ::
  T336 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d412 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d88 (coe d284 (coe d366 (coe v0))))))
name414
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.joinSemilattice"
d414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T170
d414 v0 v1 v2 v3 = du414 v3
du414 :: T336 -> T170
du414 v0 = coe C4533 (d362 (coe v0)) (d284 (coe d366 (coe v0)))
name416
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.joinSemiLattice"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T336 -> T170
d416 v0 v1 v2 v3 = du416 v3
du416 :: T336 -> T170
du416 v0 = coe du414 (coe v0)
name420 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.poset"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d420 v0 v1 v2 v3 = du420 v3
du420 :: T336 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du420 v0 = coe du240 (coe du414 (coe v0))
name422
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.preorder"
d422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T336 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d422 v0 v1 v2 v3 = du422 v3
du422 :: T336 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du422 v0
  = let v1 = coe du414 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du240 (coe v1))
name438 = "Relation.Binary.Lattice.IsMeetSemilattice"
d438 a0 a1 a2 a3 a4 a5 a6 = ()
data T438
  = C8813 MAlonzo.Code.Relation.Binary.Structures.T118
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name458
  = "Relation.Binary.Lattice.IsMeetSemilattice.isPartialOrder"
d458 :: T438 -> MAlonzo.Code.Relation.Binary.Structures.T118
d458 v0
  = case coe v0 of
      C8813 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name460 = "Relation.Binary.Lattice.IsMeetSemilattice.infimum"
d460 ::
  T438 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d460 v0
  = case coe v0 of
      C8813 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name466 = "Relation.Binary.Lattice.IsMeetSemilattice.x∧y≤x"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 -> AgdaAny -> AgdaAny -> AgdaAny
d466 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du466 v7 v8 v9
du466 :: T438 -> AgdaAny -> AgdaAny -> AgdaAny
du466 v0 v1 v2
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v0 v1 v2)
name478 = "Relation.Binary.Lattice.IsMeetSemilattice.x∧y≤y"
d478 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 -> AgdaAny -> AgdaAny -> AgdaAny
d478 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du478 v7 v8 v9
du478 :: T438 -> AgdaAny -> AgdaAny -> AgdaAny
du478 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v0 v1 v2))
name492 = "Relation.Binary.Lattice.IsMeetSemilattice.∧-greatest"
d492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d492 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du492 v7 v8 v9 v10
du492 ::
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du492 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v0 v2 v3)) v1
name504 = "Relation.Binary.Lattice.IsMeetSemilattice._.antisym"
d504 :: T438 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d504 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128 (coe d458 (coe v0))
name506
  = "Relation.Binary.Lattice.IsMeetSemilattice._.isEquivalence"
d506 :: T438 -> MAlonzo.Code.Relation.Binary.Structures.T26
d506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d458 (coe v0)))
name508 = "Relation.Binary.Lattice.IsMeetSemilattice._.isPreorder"
d508 :: T438 -> MAlonzo.Code.Relation.Binary.Structures.T70
d508 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126 (coe d458 (coe v0))
name510 = "Relation.Binary.Lattice.IsMeetSemilattice._.refl"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T438 -> AgdaAny -> AgdaAny
d510 v0 v1 v2 v3 v4 v5 v6 v7 = du510 v7
du510 :: T438 -> AgdaAny -> AgdaAny
du510 v0
  = let v1 = d458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name512 = "Relation.Binary.Lattice.IsMeetSemilattice._.reflexive"
d512 :: T438 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d458 (coe v0)))
name514 = "Relation.Binary.Lattice.IsMeetSemilattice._.trans"
d514 ::
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d514 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d458 (coe v0)))
name516 = "Relation.Binary.Lattice.IsMeetSemilattice._.∼-resp-≈"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d516 v0 v1 v2 v3 v4 v5 v6 v7 = du516 v7
du516 :: T438 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du516 v0
  = let v1 = d458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name518 = "Relation.Binary.Lattice.IsMeetSemilattice._.∼-respʳ-≈"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d518 v0 v1 v2 v3 v4 v5 v6 v7 = du518 v7
du518 ::
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du518 v0
  = let v1 = d458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name520 = "Relation.Binary.Lattice.IsMeetSemilattice._.∼-respˡ-≈"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d520 v0 v1 v2 v3 v4 v5 v6 v7 = du520 v7
du520 ::
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du520 v0
  = let v1 = d458 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name524
  = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.isPartialEquivalence"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 -> MAlonzo.Code.Relation.Binary.Structures.T16
d524 v0 v1 v2 v3 v4 v5 v6 v7 = du524 v7
du524 :: T438 -> MAlonzo.Code.Relation.Binary.Structures.T16
du524 v0
  = let v1 = d458 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2))
name526 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.refl"
d526 :: T438 -> AgdaAny -> AgdaAny
d526 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d458 (coe v0))))
name528
  = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.reflexive"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d528 v0 v1 v2 v3 v4 v5 v6 v7 = du528 v7
du528 ::
  T438 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du528 v0
  = let v1 = d458 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2)) v3
name530 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.sym"
d530 :: T438 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d530 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d458 (coe v0))))
name532 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.trans"
d532 ::
  T438 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d532 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d458 (coe v0))))
name540 = "Relation.Binary.Lattice.MeetSemilattice"
d540 a0 a1 a2 = ()
data T540 = C11915 (AgdaAny -> AgdaAny -> AgdaAny) T438
name558 = "Relation.Binary.Lattice.MeetSemilattice.Carrier"
d558 :: T540 -> ()
d558 = erased
name560 = "Relation.Binary.Lattice.MeetSemilattice._≈_"
d560 :: T540 -> AgdaAny -> AgdaAny -> ()
d560 = erased
name562 = "Relation.Binary.Lattice.MeetSemilattice._≤_"
d562 :: T540 -> AgdaAny -> AgdaAny -> ()
d562 = erased
name564 = "Relation.Binary.Lattice.MeetSemilattice._∧_"
d564 :: T540 -> AgdaAny -> AgdaAny -> AgdaAny
d564 v0
  = case coe v0 of
      C11915 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name566
  = "Relation.Binary.Lattice.MeetSemilattice.isMeetSemilattice"
d566 :: T540 -> T438
d566 v0
  = case coe v0 of
      C11915 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name570 = "Relation.Binary.Lattice.MeetSemilattice._.antisym"
d570 :: T540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d570 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d458 (coe d566 (coe v0)))
name572 = "Relation.Binary.Lattice.MeetSemilattice._.infimum"
d572 ::
  T540 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d572 v0 = coe d460 (coe d566 (coe v0))
name574 = "Relation.Binary.Lattice.MeetSemilattice._.isEquivalence"
d574 :: T540 -> MAlonzo.Code.Relation.Binary.Structures.T26
d574 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d566 (coe v0))))
name576
  = "Relation.Binary.Lattice.MeetSemilattice._.isPartialOrder"
d576 :: T540 -> MAlonzo.Code.Relation.Binary.Structures.T118
d576 v0 = coe d458 (coe d566 (coe v0))
name578 = "Relation.Binary.Lattice.MeetSemilattice._.isPreorder"
d578 :: T540 -> MAlonzo.Code.Relation.Binary.Structures.T70
d578 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d458 (coe d566 (coe v0)))
name580 = "Relation.Binary.Lattice.MeetSemilattice._.refl"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T540 -> AgdaAny -> AgdaAny
d580 v0 v1 v2 v3 = du580 v3
du580 :: T540 -> AgdaAny -> AgdaAny
du580 v0
  = let v1 = d566 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name582 = "Relation.Binary.Lattice.MeetSemilattice._.reflexive"
d582 :: T540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d582 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d566 (coe v0))))
name584 = "Relation.Binary.Lattice.MeetSemilattice._.trans"
d584 ::
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d584 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d566 (coe v0))))
name586 = "Relation.Binary.Lattice.MeetSemilattice._.x∧y≤x"
d586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 -> AgdaAny -> AgdaAny -> AgdaAny
d586 v0 v1 v2 v3 = du586 v3
du586 :: T540 -> AgdaAny -> AgdaAny -> AgdaAny
du586 v0
  = let v1 = d566 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v1 v2 v3))
name588 = "Relation.Binary.Lattice.MeetSemilattice._.x∧y≤y"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 -> AgdaAny -> AgdaAny -> AgdaAny
d588 v0 v1 v2 v3 = du588 v3
du588 :: T540 -> AgdaAny -> AgdaAny -> AgdaAny
du588 v0
  = let v1 = d566 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v1 v2 v3)))
name590 = "Relation.Binary.Lattice.MeetSemilattice._.∧-greatest"
d590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d590 v0 v1 v2 v3 = du590 v3
du590 ::
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du590 v0
  = let v1 = d566 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v1 v3 v4)) v2)
name592 = "Relation.Binary.Lattice.MeetSemilattice._.∼-resp-≈"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d592 v0 v1 v2 v3 = du592 v3
du592 :: T540 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du592 v0
  = let v1 = d566 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name594 = "Relation.Binary.Lattice.MeetSemilattice._.∼-respʳ-≈"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d594 v0 v1 v2 v3 = du594 v3
du594 ::
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du594 v0
  = let v1 = d566 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name596 = "Relation.Binary.Lattice.MeetSemilattice._.∼-respˡ-≈"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d596 v0 v1 v2 v3 = du596 v3
du596 ::
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du596 v0
  = let v1 = d566 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name600
  = "Relation.Binary.Lattice.MeetSemilattice._.Eq.isPartialEquivalence"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 -> MAlonzo.Code.Relation.Binary.Structures.T16
d600 v0 v1 v2 v3 = du600 v3
du600 :: T540 -> MAlonzo.Code.Relation.Binary.Structures.T16
du600 v0
  = let v1 = d566 (coe v0) in
    let v2 = d458 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))
name602 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.refl"
d602 :: T540 -> AgdaAny -> AgdaAny
d602 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d566 (coe v0)))))
name604 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.reflexive"
d604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d604 v0 v1 v2 v3 = du604 v3
du604 ::
  T540 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du604 v0
  = let v1 = d566 (coe v0) in
    let v2 = d458 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3)) v4
name606 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.sym"
d606 :: T540 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d566 (coe v0)))))
name608 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.trans"
d608 ::
  T540 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d608 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d566 (coe v0)))))
name610 = "Relation.Binary.Lattice.MeetSemilattice.poset"
d610 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d610 v0 v1 v2 v3 = du610 v3
du610 :: T540 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du610 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (d458 (coe d566 (coe v0)))
name614 = "Relation.Binary.Lattice.MeetSemilattice._.preorder"
d614 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T540 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d614 v0 v1 v2 v3 = du614 v3
du614 :: T540 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du614 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du610 (coe v0))
name632 = "Relation.Binary.Lattice.IsBoundedMeetSemilattice"
d632 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T632 = C13231 T438 (AgdaAny -> AgdaAny)
name654
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice.isMeetSemilattice"
d654 :: T632 -> T438
d654 v0
  = case coe v0 of
      C13231 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name656
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice.maximum"
d656 :: T632 -> AgdaAny -> AgdaAny
d656 v0
  = case coe v0 of
      C13231 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name660
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.antisym"
d660 :: T632 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d660 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d458 (coe d654 (coe v0)))
name662
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.infimum"
d662 ::
  T632 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d662 v0 = coe d460 (coe d654 (coe v0))
name664
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isEquivalence"
d664 :: T632 -> MAlonzo.Code.Relation.Binary.Structures.T26
d664 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d654 (coe v0))))
name666
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPartialOrder"
d666 :: T632 -> MAlonzo.Code.Relation.Binary.Structures.T118
d666 v0 = coe d458 (coe d654 (coe v0))
name668
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPreorder"
d668 :: T632 -> MAlonzo.Code.Relation.Binary.Structures.T70
d668 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d458 (coe d654 (coe v0)))
name670 = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.refl"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T632 -> AgdaAny -> AgdaAny
d670 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du670 v8
du670 :: T632 -> AgdaAny -> AgdaAny
du670 v0
  = let v1 = d654 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name672
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.reflexive"
d672 :: T632 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d672 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d654 (coe v0))))
name674
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.trans"
d674 ::
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d674 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d654 (coe v0))))
name676
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.x∧y≤x"
d676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T632 -> AgdaAny -> AgdaAny -> AgdaAny
d676 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du676 v8
du676 :: T632 -> AgdaAny -> AgdaAny -> AgdaAny
du676 v0
  = let v1 = d654 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v1 v2 v3))
name678
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.x∧y≤y"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T632 -> AgdaAny -> AgdaAny -> AgdaAny
d678 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du678 v8
du678 :: T632 -> AgdaAny -> AgdaAny -> AgdaAny
du678 v0
  = let v1 = d654 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v1 v2 v3)))
name680
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∧-greatest"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d680 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du680 v8
du680 ::
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du680 v0
  = let v1 = d654 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v1 v3 v4)) v2)
name682
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-resp-≈"
d682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T632 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d682 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du682 v8
du682 :: T632 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du682 v0
  = let v1 = d654 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name684
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-respʳ-≈"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d684 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du684 v8
du684 ::
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du684 v0
  = let v1 = d654 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name686
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-respˡ-≈"
d686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d686 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du686 v8
du686 ::
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du686 v0
  = let v1 = d654 (coe v0) in
    let v2 = d458 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name690
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.isPartialEquivalence"
d690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T632 -> MAlonzo.Code.Relation.Binary.Structures.T16
d690 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du690 v8
du690 :: T632 -> MAlonzo.Code.Relation.Binary.Structures.T16
du690 v0
  = let v1 = d654 (coe v0) in
    let v2 = d458 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))
name692
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.refl"
d692 :: T632 -> AgdaAny -> AgdaAny
d692 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d654 (coe v0)))))
name694
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.reflexive"
d694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T632 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d694 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du694 v8
du694 ::
  T632 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du694 v0
  = let v1 = d654 (coe v0) in
    let v2 = d458 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3)) v4
name696
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.sym"
d696 :: T632 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d696 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d654 (coe v0)))))
name698
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.trans"
d698 ::
  T632 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d698 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d654 (coe v0)))))
name706 = "Relation.Binary.Lattice.BoundedMeetSemilattice"
d706 a0 a1 a2 = ()
data T706 = C14735 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny T632
name726 = "Relation.Binary.Lattice.BoundedMeetSemilattice.Carrier"
d726 :: T706 -> ()
d726 = erased
name728 = "Relation.Binary.Lattice.BoundedMeetSemilattice._≈_"
d728 :: T706 -> AgdaAny -> AgdaAny -> ()
d728 = erased
name730 = "Relation.Binary.Lattice.BoundedMeetSemilattice._≤_"
d730 :: T706 -> AgdaAny -> AgdaAny -> ()
d730 = erased
name732 = "Relation.Binary.Lattice.BoundedMeetSemilattice._∧_"
d732 :: T706 -> AgdaAny -> AgdaAny -> AgdaAny
d732 v0
  = case coe v0 of
      C14735 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name734 = "Relation.Binary.Lattice.BoundedMeetSemilattice.⊤"
d734 :: T706 -> AgdaAny
d734 v0
  = case coe v0 of
      C14735 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name736
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.isBoundedMeetSemilattice"
d736 :: T706 -> T632
d736 v0
  = case coe v0 of
      C14735 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name740
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.antisym"
d740 :: T706 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d740 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d458 (coe d654 (coe d736 (coe v0))))
name742
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.infimum"
d742 ::
  T706 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d742 v0 = coe d460 (coe d654 (coe d736 (coe v0)))
name744
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isEquivalence"
d744 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T26
d744 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d654 (coe d736 (coe v0)))))
name746
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isMeetSemilattice"
d746 :: T706 -> T438
d746 v0 = coe d654 (coe d736 (coe v0))
name748
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isPartialOrder"
d748 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T118
d748 v0 = coe d458 (coe d654 (coe d736 (coe v0)))
name750
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isPreorder"
d750 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T70
d750 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d458 (coe d654 (coe d736 (coe v0))))
name752
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.maximum"
d752 :: T706 -> AgdaAny -> AgdaAny
d752 v0 = coe d656 (coe d736 (coe v0))
name754 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.refl"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> AgdaAny -> AgdaAny
d754 v0 v1 v2 v3 = du754 v3
du754 :: T706 -> AgdaAny -> AgdaAny
du754 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    let v3 = d458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name756
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.reflexive"
d756 :: T706 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d756 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d654 (coe d736 (coe v0)))))
name758 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.trans"
d758 ::
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d758 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d458 (coe d654 (coe d736 (coe v0)))))
name760 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.x∧y≤x"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> AgdaAny -> AgdaAny -> AgdaAny
d760 v0 v1 v2 v3 = du760 v3
du760 :: T706 -> AgdaAny -> AgdaAny -> AgdaAny
du760 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v2 v3 v4))
name762 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.x∧y≤y"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> AgdaAny -> AgdaAny -> AgdaAny
d762 v0 v1 v2 v3 = du762 v3
du762 :: T706 -> AgdaAny -> AgdaAny -> AgdaAny
du762 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v3 v4)))
name764
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∧-greatest"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d764 v0 v1 v2 v3 = du764 v3
du764 ::
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du764 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v4 v5)) v3)
name766
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-resp-≈"
d766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d766 v0 v1 v2 v3 = du766 v3
du766 :: T706 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du766 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    let v3 = d458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name768
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-respʳ-≈"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d768 v0 v1 v2 v3 = du768 v3
du768 ::
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du768 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    let v3 = d458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name770
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-respˡ-≈"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d770 v0 v1 v2 v3 = du770 v3
du770 ::
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du770 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    let v3 = d458 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name774
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.isPartialEquivalence"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Structures.T16
d774 v0 v1 v2 v3 = du774 v3
du774 :: T706 -> MAlonzo.Code.Relation.Binary.Structures.T16
du774 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    let v3 = d458 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4))
name776
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.refl"
d776 :: T706 -> AgdaAny -> AgdaAny
d776 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d654 (coe d736 (coe v0))))))
name778
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.reflexive"
d778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d778 v0 v1 v2 v3 = du778 v3
du778 ::
  T706 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du778 v0
  = let v1 = d736 (coe v0) in
    let v2 = d654 (coe v1) in
    let v3 = d458 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4)) v5
name780 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.sym"
d780 :: T706 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d780 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d654 (coe d736 (coe v0))))))
name782
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.trans"
d782 ::
  T706 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d782 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d458 (coe d654 (coe d736 (coe v0))))))
name784
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.meetSemilattice"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> T540
d784 v0 v1 v2 v3 = du784 v3
du784 :: T706 -> T540
du784 v0 = coe C11915 (d732 (coe v0)) (d654 (coe d736 (coe v0)))
name786
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.meetSemiLattice"
d786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T706 -> T540
d786 v0 v1 v2 v3 = du786 v3
du786 :: T706 -> T540
du786 v0 = coe du784 (coe v0)
name790 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.poset"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d790 v0 v1 v2 v3 = du790 v3
du790 :: T706 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du790 v0 = coe du610 (coe du784 (coe v0))
name792
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.preorder"
d792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T706 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d792 v0 v1 v2 v3 = du792 v3
du792 :: T706 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du792 v0
  = let v1 = coe du784 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du610 (coe v1))
name810 = "Relation.Binary.Lattice.IsLattice"
d810 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T810
  = C16385 MAlonzo.Code.Relation.Binary.Structures.T118
           (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
           (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name834 = "Relation.Binary.Lattice.IsLattice.isPartialOrder"
d834 :: T810 -> MAlonzo.Code.Relation.Binary.Structures.T118
d834 v0
  = case coe v0 of
      C16385 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name836 = "Relation.Binary.Lattice.IsLattice.supremum"
d836 ::
  T810 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d836 v0
  = case coe v0 of
      C16385 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name838 = "Relation.Binary.Lattice.IsLattice.infimum"
d838 ::
  T810 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d838 v0
  = case coe v0 of
      C16385 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name840 = "Relation.Binary.Lattice.IsLattice.isJoinSemilattice"
d840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T810 -> T68
d840 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du840 v8
du840 :: T810 -> T68
du840 v0 = coe C1431 (coe d834 (coe v0)) (coe d836 (coe v0))
name842 = "Relation.Binary.Lattice.IsLattice.isMeetSemilattice"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T810 -> T438
d842 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du842 v8
du842 :: T810 -> T438
du842 v0 = coe C8813 (coe d834 (coe v0)) (coe d838 (coe v0))
name846 = "Relation.Binary.Lattice.IsLattice._.x≤x∨y"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du846 v8
du846 :: T810 -> AgdaAny -> AgdaAny -> AgdaAny
du846 v0
  = let v1 = coe du840 (coe v0) in
    coe
      (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v1 v2 v3))
name848 = "Relation.Binary.Lattice.IsLattice._.y≤x∨y"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 -> AgdaAny -> AgdaAny -> AgdaAny
d848 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du848 v8
du848 :: T810 -> AgdaAny -> AgdaAny -> AgdaAny
du848 v0
  = let v1 = coe du840 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)))
name850 = "Relation.Binary.Lattice.IsLattice._.∨-least"
d850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du850 v8
du850 ::
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du850 v0
  = let v1 = coe du840 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)) v4)
name854 = "Relation.Binary.Lattice.IsLattice._.x∧y≤x"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du854 v8
du854 :: T810 -> AgdaAny -> AgdaAny -> AgdaAny
du854 v0
  = let v1 = coe du842 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v1 v2 v3))
name856 = "Relation.Binary.Lattice.IsLattice._.x∧y≤y"
d856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du856 v8
du856 :: T810 -> AgdaAny -> AgdaAny -> AgdaAny
du856 v0
  = let v1 = coe du842 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v1 v2 v3)))
name858 = "Relation.Binary.Lattice.IsLattice._.∧-greatest"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d858 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du858 v8
du858 ::
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du858 v0
  = let v1 = coe du842 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v1 v3 v4)) v2)
name862 = "Relation.Binary.Lattice.IsLattice._.antisym"
d862 :: T810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d862 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128 (coe d834 (coe v0))
name864 = "Relation.Binary.Lattice.IsLattice._.isEquivalence"
d864 :: T810 -> MAlonzo.Code.Relation.Binary.Structures.T26
d864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d834 (coe v0)))
name866 = "Relation.Binary.Lattice.IsLattice._.isPreorder"
d866 :: T810 -> MAlonzo.Code.Relation.Binary.Structures.T70
d866 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126 (coe d834 (coe v0))
name868 = "Relation.Binary.Lattice.IsLattice._.refl"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T810 -> AgdaAny -> AgdaAny
d868 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du868 v8
du868 :: T810 -> AgdaAny -> AgdaAny
du868 v0
  = let v1 = d834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name870 = "Relation.Binary.Lattice.IsLattice._.reflexive"
d870 :: T810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d834 (coe v0)))
name872 = "Relation.Binary.Lattice.IsLattice._.trans"
d872 ::
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d872 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126 (coe d834 (coe v0)))
name874 = "Relation.Binary.Lattice.IsLattice._.∼-resp-≈"
d874 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d874 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du874 v8
du874 :: T810 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du874 v0
  = let v1 = d834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name876 = "Relation.Binary.Lattice.IsLattice._.∼-respʳ-≈"
d876 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d876 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du876 v8
du876 ::
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du876 v0
  = let v1 = d834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name878 = "Relation.Binary.Lattice.IsLattice._.∼-respˡ-≈"
d878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d878 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du878 v8
du878 ::
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du878 v0
  = let v1 = d834 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1))
name882
  = "Relation.Binary.Lattice.IsLattice._.Eq.isPartialEquivalence"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 -> MAlonzo.Code.Relation.Binary.Structures.T16
d882 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du882 v8
du882 :: T810 -> MAlonzo.Code.Relation.Binary.Structures.T16
du882 v0
  = let v1 = d834 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2))
name884 = "Relation.Binary.Lattice.IsLattice._.Eq.refl"
d884 :: T810 -> AgdaAny -> AgdaAny
d884 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d834 (coe v0))))
name886 = "Relation.Binary.Lattice.IsLattice._.Eq.reflexive"
d886 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T810 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d886 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du886 v8
du886 ::
  T810 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du886 v0
  = let v1 = d834 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1) in
    \ v3 v4 v5 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v2)) v3
name888 = "Relation.Binary.Lattice.IsLattice._.Eq.sym"
d888 :: T810 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d888 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d834 (coe v0))))
name890 = "Relation.Binary.Lattice.IsLattice._.Eq.trans"
d890 ::
  T810 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d890 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126 (coe d834 (coe v0))))
name898 = "Relation.Binary.Lattice.Lattice"
d898 a0 a1 a2 = ()
data T898
  = C19233 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) T810
name918 = "Relation.Binary.Lattice.Lattice.Carrier"
d918 :: T898 -> ()
d918 = erased
name920 = "Relation.Binary.Lattice.Lattice._≈_"
d920 :: T898 -> AgdaAny -> AgdaAny -> ()
d920 = erased
name922 = "Relation.Binary.Lattice.Lattice._≤_"
d922 :: T898 -> AgdaAny -> AgdaAny -> ()
d922 = erased
name924 = "Relation.Binary.Lattice.Lattice._∨_"
d924 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny
d924 v0
  = case coe v0 of
      C19233 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name926 = "Relation.Binary.Lattice.Lattice._∧_"
d926 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny
d926 v0
  = case coe v0 of
      C19233 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name928 = "Relation.Binary.Lattice.Lattice.isLattice"
d928 :: T898 -> T810
d928 v0
  = case coe v0 of
      C19233 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name932 = "Relation.Binary.Lattice.Lattice._.antisym"
d932 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d932 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d928 (coe v0)))
name934 = "Relation.Binary.Lattice.Lattice._.infimum"
d934 ::
  T898 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d934 v0 = coe d838 (coe d928 (coe v0))
name936 = "Relation.Binary.Lattice.Lattice._.isEquivalence"
d936 :: T898 -> MAlonzo.Code.Relation.Binary.Structures.T26
d936 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d928 (coe v0))))
name938 = "Relation.Binary.Lattice.Lattice._.isJoinSemilattice"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T898 -> T68
d938 v0 v1 v2 v3 = du938 v3
du938 :: T898 -> T68
du938 v0 = coe du840 (coe d928 (coe v0))
name940 = "Relation.Binary.Lattice.Lattice._.isMeetSemilattice"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T898 -> T438
d940 v0 v1 v2 v3 = du940 v3
du940 :: T898 -> T438
du940 v0 = coe du842 (coe d928 (coe v0))
name942 = "Relation.Binary.Lattice.Lattice._.isPartialOrder"
d942 :: T898 -> MAlonzo.Code.Relation.Binary.Structures.T118
d942 v0 = coe d834 (coe d928 (coe v0))
name944 = "Relation.Binary.Lattice.Lattice._.isPreorder"
d944 :: T898 -> MAlonzo.Code.Relation.Binary.Structures.T70
d944 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d928 (coe v0)))
name946 = "Relation.Binary.Lattice.Lattice._.refl"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T898 -> AgdaAny -> AgdaAny
d946 v0 v1 v2 v3 = du946 v3
du946 :: T898 -> AgdaAny -> AgdaAny
du946 v0
  = let v1 = d928 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name948 = "Relation.Binary.Lattice.Lattice._.reflexive"
d948 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d948 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d928 (coe v0))))
name950 = "Relation.Binary.Lattice.Lattice._.supremum"
d950 ::
  T898 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d950 v0 = coe d836 (coe d928 (coe v0))
name952 = "Relation.Binary.Lattice.Lattice._.trans"
d952 ::
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d928 (coe v0))))
name954 = "Relation.Binary.Lattice.Lattice._.x∧y≤x"
d954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny
d954 v0 v1 v2 v3 = du954 v3
du954 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny
du954 v0
  = let v1 = d928 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v2 v3 v4))
name956 = "Relation.Binary.Lattice.Lattice._.x∧y≤y"
d956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny
d956 v0 v1 v2 v3 = du956 v3
du956 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny
du956 v0
  = let v1 = d928 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v3 v4)))
name958 = "Relation.Binary.Lattice.Lattice._.x≤x∨y"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny
d958 v0 v1 v2 v3 = du958 v3
du958 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny
du958 v0
  = let v1 = d928 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name960 = "Relation.Binary.Lattice.Lattice._.y≤x∨y"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0 v1 v2 v3 = du960 v3
du960 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny
du960 v0
  = let v1 = d928 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)))
name962 = "Relation.Binary.Lattice.Lattice._.∧-greatest"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d962 v0 v1 v2 v3 = du962 v3
du962 ::
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du962 v0
  = let v1 = d928 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v4 v5)) v3)
name964 = "Relation.Binary.Lattice.Lattice._.∨-least"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d964 v0 v1 v2 v3 = du964 v3
du964 ::
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du964 v0
  = let v1 = d928 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name966 = "Relation.Binary.Lattice.Lattice._.∼-resp-≈"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d966 v0 v1 v2 v3 = du966 v3
du966 :: T898 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du966 v0
  = let v1 = d928 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name968 = "Relation.Binary.Lattice.Lattice._.∼-respʳ-≈"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d968 v0 v1 v2 v3 = du968 v3
du968 ::
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du968 v0
  = let v1 = d928 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name970 = "Relation.Binary.Lattice.Lattice._.∼-respˡ-≈"
d970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d970 v0 v1 v2 v3 = du970 v3
du970 ::
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du970 v0
  = let v1 = d928 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name974
  = "Relation.Binary.Lattice.Lattice._.Eq.isPartialEquivalence"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> MAlonzo.Code.Relation.Binary.Structures.T16
d974 v0 v1 v2 v3 = du974 v3
du974 :: T898 -> MAlonzo.Code.Relation.Binary.Structures.T16
du974 v0
  = let v1 = d928 (coe v0) in
    let v2 = d834 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))
name976 = "Relation.Binary.Lattice.Lattice._.Eq.refl"
d976 :: T898 -> AgdaAny -> AgdaAny
d976 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d928 (coe v0)))))
name978 = "Relation.Binary.Lattice.Lattice._.Eq.reflexive"
d978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d978 v0 v1 v2 v3 = du978 v3
du978 ::
  T898 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du978 v0
  = let v1 = d928 (coe v0) in
    let v2 = d834 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3)) v4
name980 = "Relation.Binary.Lattice.Lattice._.Eq.sym"
d980 :: T898 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d980 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d928 (coe v0)))))
name982 = "Relation.Binary.Lattice.Lattice._.Eq.trans"
d982 ::
  T898 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d982 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d928 (coe v0)))))
name984 = "Relation.Binary.Lattice.Lattice.setoid"
d984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d984 v0 v1 v2 v3 = du984 v3
du984 :: T898 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du984 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d928 (coe v0)))))
name986 = "Relation.Binary.Lattice.Lattice.joinSemilattice"
d986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T898 -> T170
d986 v0 v1 v2 v3 = du986 v3
du986 :: T898 -> T170
du986 v0
  = coe C4533 (d924 (coe v0)) (coe du840 (coe d928 (coe v0)))
name988 = "Relation.Binary.Lattice.Lattice.meetSemilattice"
d988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T898 -> T540
d988 v0 v1 v2 v3 = du988 v3
du988 :: T898 -> T540
du988 v0
  = coe C11915 (d926 (coe v0)) (coe du842 (coe d928 (coe v0)))
name992 = "Relation.Binary.Lattice.Lattice._.poset"
d992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d992 v0 v1 v2 v3 = du992 v3
du992 :: T898 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du992 v0 = coe du240 (coe du986 (coe v0))
name994 = "Relation.Binary.Lattice.Lattice._.preorder"
d994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T898 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d994 v0 v1 v2 v3 = du994 v3
du994 :: T898 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du994 v0
  = let v1 = coe du986 (coe v0) in
    coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du240 (coe v1))
name1012 = "Relation.Binary.Lattice.IsDistributiveLattice"
d1012 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T1012 = C21173 T810 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name1034
  = "Relation.Binary.Lattice.IsDistributiveLattice.isLattice"
d1034 :: T1012 -> T810
d1034 v0
  = case coe v0 of
      C21173 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1036
  = "Relation.Binary.Lattice.IsDistributiveLattice.∧-distribˡ-∨"
d1036 :: T1012 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0
  = case coe v0 of
      C21173 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1040
  = "Relation.Binary.Lattice.IsDistributiveLattice._.antisym"
d1040 ::
  T1012 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1040 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1034 (coe v0)))
name1042
  = "Relation.Binary.Lattice.IsDistributiveLattice._.infimum"
d1042 ::
  T1012 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1042 v0 = coe d838 (coe d1034 (coe v0))
name1044
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isEquivalence"
d1044 :: T1012 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1044 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1034 (coe v0))))
name1046
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isJoinSemilattice"
d1046 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T1012 -> T68
d1046 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1046 v8
du1046 :: T1012 -> T68
du1046 v0 = coe du840 (coe d1034 (coe v0))
name1048
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isMeetSemilattice"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T1012 -> T438
d1048 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1048 v8
du1048 :: T1012 -> T438
du1048 v0 = coe du842 (coe d1034 (coe v0))
name1050
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isPartialOrder"
d1050 :: T1012 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1050 v0 = coe d834 (coe d1034 (coe v0))
name1052
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isPreorder"
d1052 :: T1012 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1052 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1034 (coe v0)))
name1054 = "Relation.Binary.Lattice.IsDistributiveLattice._.refl"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T1012 -> AgdaAny -> AgdaAny
d1054 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1054 v8
du1054 :: T1012 -> AgdaAny -> AgdaAny
du1054 v0
  = let v1 = d1034 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1056
  = "Relation.Binary.Lattice.IsDistributiveLattice._.reflexive"
d1056 :: T1012 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1056 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1034 (coe v0))))
name1058
  = "Relation.Binary.Lattice.IsDistributiveLattice._.supremum"
d1058 ::
  T1012 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1058 v0 = coe d836 (coe d1034 (coe v0))
name1060 = "Relation.Binary.Lattice.IsDistributiveLattice._.trans"
d1060 ::
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1060 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1034 (coe v0))))
name1062 = "Relation.Binary.Lattice.IsDistributiveLattice._.x∧y≤x"
d1062 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 -> AgdaAny -> AgdaAny -> AgdaAny
d1062 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1062 v8
du1062 :: T1012 -> AgdaAny -> AgdaAny -> AgdaAny
du1062 v0
  = let v1 = d1034 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v2 v3 v4))
name1064 = "Relation.Binary.Lattice.IsDistributiveLattice._.x∧y≤y"
d1064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 -> AgdaAny -> AgdaAny -> AgdaAny
d1064 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1064 v8
du1064 :: T1012 -> AgdaAny -> AgdaAny -> AgdaAny
du1064 v0
  = let v1 = d1034 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v3 v4)))
name1066 = "Relation.Binary.Lattice.IsDistributiveLattice._.x≤x∨y"
d1066 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 -> AgdaAny -> AgdaAny -> AgdaAny
d1066 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1066 v8
du1066 :: T1012 -> AgdaAny -> AgdaAny -> AgdaAny
du1066 v0
  = let v1 = d1034 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name1068 = "Relation.Binary.Lattice.IsDistributiveLattice._.y≤x∨y"
d1068 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 -> AgdaAny -> AgdaAny -> AgdaAny
d1068 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1068 v8
du1068 :: T1012 -> AgdaAny -> AgdaAny -> AgdaAny
du1068 v0
  = let v1 = d1034 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)))
name1070
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∧-greatest"
d1070 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1070 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1070 v8
du1070 ::
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1070 v0
  = let v1 = d1034 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v4 v5)) v3)
name1072
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∨-least"
d1072 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1072 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1072 v8
du1072 ::
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1072 v0
  = let v1 = d1034 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name1074
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∼-resp-≈"
d1074 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1074 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1074 v8
du1074 :: T1012 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1074 v0
  = let v1 = d1034 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1076
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∼-respʳ-≈"
d1076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1076 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1076 v8
du1076 ::
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1076 v0
  = let v1 = d1034 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1078
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∼-respˡ-≈"
d1078 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1078 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1078 v8
du1078 ::
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1078 v0
  = let v1 = d1034 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1082
  = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.isPartialEquivalence"
d1082 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1082 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1082 v8
du1082 :: T1012 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1082 v0
  = let v1 = d1034 (coe v0) in
    let v2 = d834 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))
name1084
  = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.refl"
d1084 :: T1012 -> AgdaAny -> AgdaAny
d1084 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1034 (coe v0)))))
name1086
  = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.reflexive"
d1086 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T1012 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1086 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1086 v8
du1086 ::
  T1012 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1086 v0
  = let v1 = d1034 (coe v0) in
    let v2 = d834 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3)) v4
name1088 = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.sym"
d1088 :: T1012 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1088 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1034 (coe v0)))))
name1090
  = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.trans"
d1090 ::
  T1012 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1090 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1034 (coe v0)))))
name1098 = "Relation.Binary.Lattice.DistributiveLattice"
d1098 a0 a1 a2 = ()
data T1098
  = C23051 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) T1012
name1118 = "Relation.Binary.Lattice.DistributiveLattice.Carrier"
d1118 :: T1098 -> ()
d1118 = erased
name1120 = "Relation.Binary.Lattice.DistributiveLattice._≈_"
d1120 :: T1098 -> AgdaAny -> AgdaAny -> ()
d1120 = erased
name1122 = "Relation.Binary.Lattice.DistributiveLattice._≤_"
d1122 :: T1098 -> AgdaAny -> AgdaAny -> ()
d1122 = erased
name1124 = "Relation.Binary.Lattice.DistributiveLattice._∨_"
d1124 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny
d1124 v0
  = case coe v0 of
      C23051 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1126 = "Relation.Binary.Lattice.DistributiveLattice._∧_"
d1126 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny
d1126 v0
  = case coe v0 of
      C23051 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1128
  = "Relation.Binary.Lattice.DistributiveLattice.isDistributiveLattice"
d1128 :: T1098 -> T1012
d1128 v0
  = case coe v0 of
      C23051 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1132
  = "Relation.Binary.Lattice.DistributiveLattice._.∧-distribˡ-∨"
d1132 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1132 v0 = coe d1036 (coe d1128 (coe v0))
name1136
  = "Relation.Binary.Lattice.DistributiveLattice._.isLattice"
d1136 :: T1098 -> T810
d1136 v0 = coe d1034 (coe d1128 (coe v0))
name1138 = "Relation.Binary.Lattice.DistributiveLattice.lattice"
d1138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> T898
d1138 v0 v1 v2 v3 = du1138 v3
du1138 :: T1098 -> T898
du1138 v0
  = coe
      C19233 (d1124 (coe v0)) (d1126 (coe v0))
      (d1034 (coe d1128 (coe v0)))
name1142 = "Relation.Binary.Lattice.DistributiveLattice._.antisym"
d1142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1142 v0 v1 v2 v3 = du1142 v3
du1142 ::
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1142 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1034 (coe d1128 (coe v0))))
name1144 = "Relation.Binary.Lattice.DistributiveLattice._.infimum"
d1144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1144 v0 v1 v2 v3 = du1144 v3
du1144 ::
  T1098 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1144 v0 = coe d838 (coe d1034 (coe d1128 (coe v0)))
name1146
  = "Relation.Binary.Lattice.DistributiveLattice._.isEquivalence"
d1146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1146 v0 v1 v2 v3 = du1146 v3
du1146 :: T1098 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1146 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1034 (coe d1128 (coe v0)))))
name1148
  = "Relation.Binary.Lattice.DistributiveLattice._.isJoinSemilattice"
d1148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> T68
d1148 v0 v1 v2 v3 = du1148 v3
du1148 :: T1098 -> T68
du1148 v0
  = let v1 = coe du1138 (coe v0) in coe du840 (coe d928 (coe v1))
name1150
  = "Relation.Binary.Lattice.DistributiveLattice._.isLattice"
d1150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> T810
d1150 v0 v1 v2 v3 = du1150 v3
du1150 :: T1098 -> T810
du1150 v0 = coe d1034 (coe d1128 (coe v0))
name1152
  = "Relation.Binary.Lattice.DistributiveLattice._.isMeetSemilattice"
d1152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> T438
d1152 v0 v1 v2 v3 = du1152 v3
du1152 :: T1098 -> T438
du1152 v0
  = let v1 = coe du1138 (coe v0) in coe du842 (coe d928 (coe v1))
name1154
  = "Relation.Binary.Lattice.DistributiveLattice._.isPartialOrder"
d1154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1154 v0 v1 v2 v3 = du1154 v3
du1154 :: T1098 -> MAlonzo.Code.Relation.Binary.Structures.T118
du1154 v0 = coe d834 (coe d1034 (coe d1128 (coe v0)))
name1156
  = "Relation.Binary.Lattice.DistributiveLattice._.isPreorder"
d1156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1156 v0 v1 v2 v3 = du1156 v3
du1156 :: T1098 -> MAlonzo.Code.Relation.Binary.Structures.T70
du1156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1034 (coe d1128 (coe v0))))
name1158
  = "Relation.Binary.Lattice.DistributiveLattice._.joinSemilattice"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> T170
d1158 v0 v1 v2 v3 = du1158 v3
du1158 :: T1098 -> T170
du1158 v0 = coe du986 (coe du1138 (coe v0))
name1160
  = "Relation.Binary.Lattice.DistributiveLattice._.meetSemilattice"
d1160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> T540
d1160 v0 v1 v2 v3 = du1160 v3
du1160 :: T1098 -> T540
du1160 v0 = coe du988 (coe du1138 (coe v0))
name1162 = "Relation.Binary.Lattice.DistributiveLattice._.poset"
d1162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d1162 v0 v1 v2 v3 = du1162 v3
du1162 :: T1098 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du1162 v0
  = let v1 = coe du1138 (coe v0) in coe du240 (coe du986 (coe v1))
name1164 = "Relation.Binary.Lattice.DistributiveLattice._.preorder"
d1164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d1164 v0 v1 v2 v3 = du1164 v3
du1164 :: T1098 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du1164 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = coe du986 (coe v1) in
    coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du240 (coe v2))
name1166 = "Relation.Binary.Lattice.DistributiveLattice._.refl"
d1166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> AgdaAny -> AgdaAny
d1166 v0 v1 v2 v3 = du1166 v3
du1166 :: T1098 -> AgdaAny -> AgdaAny
du1166 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1168
  = "Relation.Binary.Lattice.DistributiveLattice._.reflexive"
d1168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1168 v0 v1 v2 v3 = du1168 v3
du1168 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1034 (coe d1128 (coe v0)))))
name1170 = "Relation.Binary.Lattice.DistributiveLattice._.setoid"
d1170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1170 v0 v1 v2 v3 = du1170 v3
du1170 :: T1098 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1170 v0 = coe du984 (coe du1138 (coe v0))
name1172 = "Relation.Binary.Lattice.DistributiveLattice._.supremum"
d1172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1172 v0 v1 v2 v3 = du1172 v3
du1172 ::
  T1098 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1172 v0 = coe d836 (coe d1034 (coe d1128 (coe v0)))
name1174 = "Relation.Binary.Lattice.DistributiveLattice._.trans"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1174 v0 v1 v2 v3 = du1174 v3
du1174 ::
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1034 (coe d1128 (coe v0)))))
name1176 = "Relation.Binary.Lattice.DistributiveLattice._.x∧y≤x"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny
d1176 v0 v1 v2 v3 = du1176 v3
du1176 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny
du1176 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v3 v4 v5))
name1178 = "Relation.Binary.Lattice.DistributiveLattice._.x∧y≤y"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny
d1178 v0 v1 v2 v3 = du1178 v3
du1178 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny
du1178 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v3 v4 v5)))
name1180 = "Relation.Binary.Lattice.DistributiveLattice._.x≤x∨y"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 v3 = du1180 v3
du1180 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny
du1180 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v3 v4 v5))
name1182 = "Relation.Binary.Lattice.DistributiveLattice._.y≤x∨y"
d1182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny
d1182 v0 v1 v2 v3 = du1182 v3
du1182 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny
du1182 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)))
name1184
  = "Relation.Binary.Lattice.DistributiveLattice._.∧-greatest"
d1184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1184 v0 v1 v2 v3 = du1184 v3
du1184 ::
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1184 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v3 v5 v6)) v4)
name1186 = "Relation.Binary.Lattice.DistributiveLattice._.∨-least"
d1186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1186 v0 v1 v2 v3 = du1186 v3
du1186 ::
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1186 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)) v6)
name1188 = "Relation.Binary.Lattice.DistributiveLattice._.∼-resp-≈"
d1188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1188 v0 v1 v2 v3 = du1188 v3
du1188 :: T1098 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1188 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1190
  = "Relation.Binary.Lattice.DistributiveLattice._.∼-respʳ-≈"
d1190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1190 v0 v1 v2 v3 = du1190 v3
du1190 ::
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1190 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1192
  = "Relation.Binary.Lattice.DistributiveLattice._.∼-respˡ-≈"
d1192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1192 v0 v1 v2 v3 = du1192 v3
du1192 ::
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1192 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1196
  = "Relation.Binary.Lattice.DistributiveLattice._.Eq.isPartialEquivalence"
d1196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1196 v0 v1 v2 v3 = du1196 v3
du1196 :: T1098 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1196 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = d834 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4))
name1198 = "Relation.Binary.Lattice.DistributiveLattice._.Eq.refl"
d1198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1098 -> AgdaAny -> AgdaAny
d1198 v0 v1 v2 v3 = du1198 v3
du1198 :: T1098 -> AgdaAny -> AgdaAny
du1198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1034 (coe d1128 (coe v0))))))
name1200
  = "Relation.Binary.Lattice.DistributiveLattice._.Eq.reflexive"
d1200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1200 v0 v1 v2 v3 = du1200 v3
du1200 ::
  T1098 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1200 v0
  = let v1 = coe du1138 (coe v0) in
    let v2 = d928 (coe v1) in
    let v3 = d834 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4)) v5
name1202 = "Relation.Binary.Lattice.DistributiveLattice._.Eq.sym"
d1202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1202 v0 v1 v2 v3 = du1202 v3
du1202 :: T1098 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1034 (coe d1128 (coe v0))))))
name1204 = "Relation.Binary.Lattice.DistributiveLattice._.Eq.trans"
d1204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1204 v0 v1 v2 v3 = du1204 v3
du1204 ::
  T1098 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1204 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1034 (coe d1128 (coe v0))))))
name1226 = "Relation.Binary.Lattice.IsBoundedLattice"
d1226 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T1226 = C25155 T810 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name1254 = "Relation.Binary.Lattice.IsBoundedLattice.isLattice"
d1254 :: T1226 -> T810
d1254 v0
  = case coe v0 of
      C25155 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1256 = "Relation.Binary.Lattice.IsBoundedLattice.maximum"
d1256 :: T1226 -> AgdaAny -> AgdaAny
d1256 v0
  = case coe v0 of
      C25155 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1258 = "Relation.Binary.Lattice.IsBoundedLattice.minimum"
d1258 :: T1226 -> AgdaAny -> AgdaAny
d1258 v0
  = case coe v0 of
      C25155 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1262 = "Relation.Binary.Lattice.IsBoundedLattice._.antisym"
d1262 ::
  T1226 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1262 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1254 (coe v0)))
name1264 = "Relation.Binary.Lattice.IsBoundedLattice._.infimum"
d1264 ::
  T1226 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1264 v0 = coe d838 (coe d1254 (coe v0))
name1266
  = "Relation.Binary.Lattice.IsBoundedLattice._.isEquivalence"
d1266 :: T1226 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1266 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe v0))))
name1268
  = "Relation.Binary.Lattice.IsBoundedLattice._.isJoinSemilattice"
d1268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> T68
d1268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1268 v10
du1268 :: T1226 -> T68
du1268 v0 = coe du840 (coe d1254 (coe v0))
name1270
  = "Relation.Binary.Lattice.IsBoundedLattice._.isMeetSemilattice"
d1270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> T438
d1270 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1270 v10
du1270 :: T1226 -> T438
du1270 v0 = coe du842 (coe d1254 (coe v0))
name1272
  = "Relation.Binary.Lattice.IsBoundedLattice._.isPartialOrder"
d1272 :: T1226 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1272 v0 = coe d834 (coe d1254 (coe v0))
name1274 = "Relation.Binary.Lattice.IsBoundedLattice._.isPreorder"
d1274 :: T1226 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1274 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1254 (coe v0)))
name1276 = "Relation.Binary.Lattice.IsBoundedLattice._.refl"
d1276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> AgdaAny -> AgdaAny
d1276 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1276 v10
du1276 :: T1226 -> AgdaAny -> AgdaAny
du1276 v0
  = let v1 = d1254 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1278 = "Relation.Binary.Lattice.IsBoundedLattice._.reflexive"
d1278 :: T1226 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe v0))))
name1280 = "Relation.Binary.Lattice.IsBoundedLattice._.supremum"
d1280 ::
  T1226 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1280 v0 = coe d836 (coe d1254 (coe v0))
name1282 = "Relation.Binary.Lattice.IsBoundedLattice._.trans"
d1282 ::
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1282 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe v0))))
name1284 = "Relation.Binary.Lattice.IsBoundedLattice._.x∧y≤x"
d1284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> AgdaAny -> AgdaAny -> AgdaAny
d1284 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1284 v10
du1284 :: T1226 -> AgdaAny -> AgdaAny -> AgdaAny
du1284 v0
  = let v1 = d1254 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v2 v3 v4))
name1286 = "Relation.Binary.Lattice.IsBoundedLattice._.x∧y≤y"
d1286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> AgdaAny -> AgdaAny -> AgdaAny
d1286 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1286 v10
du1286 :: T1226 -> AgdaAny -> AgdaAny -> AgdaAny
du1286 v0
  = let v1 = d1254 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v3 v4)))
name1288 = "Relation.Binary.Lattice.IsBoundedLattice._.x≤x∨y"
d1288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> AgdaAny -> AgdaAny -> AgdaAny
d1288 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1288 v10
du1288 :: T1226 -> AgdaAny -> AgdaAny -> AgdaAny
du1288 v0
  = let v1 = d1254 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name1290 = "Relation.Binary.Lattice.IsBoundedLattice._.y≤x∨y"
d1290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> AgdaAny -> AgdaAny -> AgdaAny
d1290 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1290 v10
du1290 :: T1226 -> AgdaAny -> AgdaAny -> AgdaAny
du1290 v0
  = let v1 = d1254 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)))
name1292 = "Relation.Binary.Lattice.IsBoundedLattice._.∧-greatest"
d1292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1292 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1292 v10
du1292 ::
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1292 v0
  = let v1 = d1254 (coe v0) in
    let v2 = coe du842 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v2 v4 v5)) v3)
name1294 = "Relation.Binary.Lattice.IsBoundedLattice._.∨-least"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1294 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1294 v10
du1294 ::
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1294 v0
  = let v1 = d1254 (coe v0) in
    let v2 = coe du840 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name1296 = "Relation.Binary.Lattice.IsBoundedLattice._.∼-resp-≈"
d1296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1296 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1296 v10
du1296 :: T1226 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1296 v0
  = let v1 = d1254 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1298 = "Relation.Binary.Lattice.IsBoundedLattice._.∼-respʳ-≈"
d1298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1298 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1298 v10
du1298 ::
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1298 v0
  = let v1 = d1254 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1300 = "Relation.Binary.Lattice.IsBoundedLattice._.∼-respˡ-≈"
d1300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1300 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1300 v10
du1300 ::
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1300 v0
  = let v1 = d1254 (coe v0) in
    let v2 = d834 (coe v1) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2))
name1304
  = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.isPartialEquivalence"
d1304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1226 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1304 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1304 v10
du1304 :: T1226 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1304 v0
  = let v1 = d1254 (coe v0) in
    let v2 = d834 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3))
name1306 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.refl"
d1306 :: T1226 -> AgdaAny -> AgdaAny
d1306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe v0)))))
name1308
  = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.reflexive"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1226 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1308 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1308 v10
du1308 ::
  T1226 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1308 v0
  = let v1 = d1254 (coe v0) in
    let v2 = d834 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v2) in
    \ v4 v5 v6 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v3)) v4
name1310 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.sym"
d1310 :: T1226 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe v0)))))
name1312 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.trans"
d1312 ::
  T1226 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1312 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe v0)))))
name1314
  = "Relation.Binary.Lattice.IsBoundedLattice.isBoundedJoinSemilattice"
d1314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> T262
d1314 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1314 v10
du1314 :: T1226 -> T262
du1314 v0
  = coe C5849 (coe du840 (coe d1254 (coe v0))) (coe d1258 (coe v0))
name1316
  = "Relation.Binary.Lattice.IsBoundedLattice.isBoundedMeetSemilattice"
d1316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1226 -> T632
d1316 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1316 v10
du1316 :: T1226 -> T632
du1316 v0
  = coe C13231 (coe du842 (coe d1254 (coe v0))) (coe d1256 (coe v0))
name1324 = "Relation.Binary.Lattice.BoundedLattice"
d1324 a0 a1 a2 = ()
data T1324
  = C28175 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny T1226
name1348 = "Relation.Binary.Lattice.BoundedLattice.Carrier"
d1348 :: T1324 -> ()
d1348 = erased
name1350 = "Relation.Binary.Lattice.BoundedLattice._≈_"
d1350 :: T1324 -> AgdaAny -> AgdaAny -> ()
d1350 = erased
name1352 = "Relation.Binary.Lattice.BoundedLattice._≤_"
d1352 :: T1324 -> AgdaAny -> AgdaAny -> ()
d1352 = erased
name1354 = "Relation.Binary.Lattice.BoundedLattice._∨_"
d1354 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny
d1354 v0
  = case coe v0 of
      C28175 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1356 = "Relation.Binary.Lattice.BoundedLattice._∧_"
d1356 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny
d1356 v0
  = case coe v0 of
      C28175 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1358 = "Relation.Binary.Lattice.BoundedLattice.⊤"
d1358 :: T1324 -> AgdaAny
d1358 v0
  = case coe v0 of
      C28175 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1360 = "Relation.Binary.Lattice.BoundedLattice.⊥"
d1360 :: T1324 -> AgdaAny
d1360 v0
  = case coe v0 of
      C28175 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1362
  = "Relation.Binary.Lattice.BoundedLattice.isBoundedLattice"
d1362 :: T1324 -> T1226
d1362 v0
  = case coe v0 of
      C28175 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1366 = "Relation.Binary.Lattice.BoundedLattice._.antisym"
d1366 ::
  T1324 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1366 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1254 (coe d1362 (coe v0))))
name1368 = "Relation.Binary.Lattice.BoundedLattice._.infimum"
d1368 ::
  T1324 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1368 v0 = coe d838 (coe d1254 (coe d1362 (coe v0)))
name1370
  = "Relation.Binary.Lattice.BoundedLattice._.isBoundedJoinSemilattice"
d1370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T262
d1370 v0 v1 v2 v3 = du1370 v3
du1370 :: T1324 -> T262
du1370 v0 = coe du1314 (coe d1362 (coe v0))
name1372
  = "Relation.Binary.Lattice.BoundedLattice._.isBoundedMeetSemilattice"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T632
d1372 v0 v1 v2 v3 = du1372 v3
du1372 :: T1324 -> T632
du1372 v0 = coe du1316 (coe d1362 (coe v0))
name1374 = "Relation.Binary.Lattice.BoundedLattice._.isEquivalence"
d1374 :: T1324 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1374 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1362 (coe v0)))))
name1376
  = "Relation.Binary.Lattice.BoundedLattice._.isJoinSemilattice"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T68
d1376 v0 v1 v2 v3 = du1376 v3
du1376 :: T1324 -> T68
du1376 v0
  = let v1 = d1362 (coe v0) in coe du840 (coe d1254 (coe v1))
name1378 = "Relation.Binary.Lattice.BoundedLattice._.isLattice"
d1378 :: T1324 -> T810
d1378 v0 = coe d1254 (coe d1362 (coe v0))
name1380
  = "Relation.Binary.Lattice.BoundedLattice._.isMeetSemilattice"
d1380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T438
d1380 v0 v1 v2 v3 = du1380 v3
du1380 :: T1324 -> T438
du1380 v0
  = let v1 = d1362 (coe v0) in coe du842 (coe d1254 (coe v1))
name1382
  = "Relation.Binary.Lattice.BoundedLattice._.isPartialOrder"
d1382 :: T1324 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1382 v0 = coe d834 (coe d1254 (coe d1362 (coe v0)))
name1384 = "Relation.Binary.Lattice.BoundedLattice._.isPreorder"
d1384 :: T1324 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1254 (coe d1362 (coe v0))))
name1386 = "Relation.Binary.Lattice.BoundedLattice._.maximum"
d1386 :: T1324 -> AgdaAny -> AgdaAny
d1386 v0 = coe d1256 (coe d1362 (coe v0))
name1388 = "Relation.Binary.Lattice.BoundedLattice._.minimum"
d1388 :: T1324 -> AgdaAny -> AgdaAny
d1388 v0 = coe d1258 (coe d1362 (coe v0))
name1390 = "Relation.Binary.Lattice.BoundedLattice._.refl"
d1390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> AgdaAny -> AgdaAny
d1390 v0 v1 v2 v3 = du1390 v3
du1390 :: T1324 -> AgdaAny -> AgdaAny
du1390 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1392 = "Relation.Binary.Lattice.BoundedLattice._.reflexive"
d1392 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1392 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1362 (coe v0)))))
name1394 = "Relation.Binary.Lattice.BoundedLattice._.supremum"
d1394 ::
  T1324 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1394 v0 = coe d836 (coe d1254 (coe d1362 (coe v0)))
name1396 = "Relation.Binary.Lattice.BoundedLattice._.trans"
d1396 ::
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1362 (coe v0)))))
name1398 = "Relation.Binary.Lattice.BoundedLattice._.x∧y≤x"
d1398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> AgdaAny -> AgdaAny -> AgdaAny
d1398 v0 v1 v2 v3 = du1398 v3
du1398 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny
du1398 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v3 v4 v5))
name1400 = "Relation.Binary.Lattice.BoundedLattice._.x∧y≤y"
d1400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> AgdaAny -> AgdaAny -> AgdaAny
d1400 v0 v1 v2 v3 = du1400 v3
du1400 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny
du1400 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v3 v4 v5)))
name1402 = "Relation.Binary.Lattice.BoundedLattice._.x≤x∨y"
d1402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> AgdaAny -> AgdaAny -> AgdaAny
d1402 v0 v1 v2 v3 = du1402 v3
du1402 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny
du1402 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v3 v4 v5))
name1404 = "Relation.Binary.Lattice.BoundedLattice._.y≤x∨y"
d1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> AgdaAny -> AgdaAny -> AgdaAny
d1404 v0 v1 v2 v3 = du1404 v3
du1404 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny
du1404 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)))
name1406 = "Relation.Binary.Lattice.BoundedLattice._.∧-greatest"
d1406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1406 v0 v1 v2 v3 = du1406 v3
du1406 ::
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1406 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v3 v5 v6)) v4)
name1408 = "Relation.Binary.Lattice.BoundedLattice._.∨-least"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1408 v0 v1 v2 v3 = du1408 v3
du1408 ::
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1408 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)) v6)
name1410 = "Relation.Binary.Lattice.BoundedLattice._.∼-resp-≈"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1410 v0 v1 v2 v3 = du1410 v3
du1410 :: T1324 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1410 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1412 = "Relation.Binary.Lattice.BoundedLattice._.∼-respʳ-≈"
d1412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1412 v0 v1 v2 v3 = du1412 v3
du1412 ::
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1412 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1414 = "Relation.Binary.Lattice.BoundedLattice._.∼-respˡ-≈"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1414 v0 v1 v2 v3 = du1414 v3
du1414 ::
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1414 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1418
  = "Relation.Binary.Lattice.BoundedLattice._.Eq.isPartialEquivalence"
d1418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1418 v0 v1 v2 v3 = du1418 v3
du1418 :: T1324 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1418 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4))
name1420 = "Relation.Binary.Lattice.BoundedLattice._.Eq.refl"
d1420 :: T1324 -> AgdaAny -> AgdaAny
d1420 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1362 (coe v0))))))
name1422 = "Relation.Binary.Lattice.BoundedLattice._.Eq.reflexive"
d1422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1422 v0 v1 v2 v3 = du1422 v3
du1422 ::
  T1324 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1422 v0
  = let v1 = d1362 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4)) v5
name1424 = "Relation.Binary.Lattice.BoundedLattice._.Eq.sym"
d1424 :: T1324 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1424 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1362 (coe v0))))))
name1426 = "Relation.Binary.Lattice.BoundedLattice._.Eq.trans"
d1426 ::
  T1324 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1426 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1362 (coe v0))))))
name1428
  = "Relation.Binary.Lattice.BoundedLattice.boundedJoinSemilattice"
d1428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T336
d1428 v0 v1 v2 v3 = du1428 v3
du1428 :: T1324 -> T336
du1428 v0
  = coe
      C7353 (d1354 (coe v0)) (d1360 (coe v0))
      (coe du1314 (coe d1362 (coe v0)))
name1430
  = "Relation.Binary.Lattice.BoundedLattice.boundedMeetSemilattice"
d1430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T706
d1430 v0 v1 v2 v3 = du1430 v3
du1430 :: T1324 -> T706
du1430 v0
  = coe
      C14735 (d1356 (coe v0)) (d1358 (coe v0))
      (coe du1316 (coe d1362 (coe v0)))
name1432 = "Relation.Binary.Lattice.BoundedLattice.lattice"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T898
d1432 v0 v1 v2 v3 = du1432 v3
du1432 :: T1324 -> T898
du1432 v0
  = coe
      C19233 (d1354 (coe v0)) (d1356 (coe v0))
      (d1254 (coe d1362 (coe v0)))
name1436
  = "Relation.Binary.Lattice.BoundedLattice._.joinSemilattice"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T170
d1436 v0 v1 v2 v3 = du1436 v3
du1436 :: T1324 -> T170
du1436 v0 = coe du986 (coe du1432 (coe v0))
name1438
  = "Relation.Binary.Lattice.BoundedLattice._.meetSemilattice"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1324 -> T540
d1438 v0 v1 v2 v3 = du1438 v3
du1438 :: T1324 -> T540
du1438 v0 = coe du988 (coe du1432 (coe v0))
name1440 = "Relation.Binary.Lattice.BoundedLattice._.poset"
d1440 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d1440 v0 v1 v2 v3 = du1440 v3
du1440 :: T1324 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du1440 v0
  = let v1 = coe du1432 (coe v0) in coe du240 (coe du986 (coe v1))
name1442 = "Relation.Binary.Lattice.BoundedLattice._.preorder"
d1442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d1442 v0 v1 v2 v3 = du1442 v3
du1442 :: T1324 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du1442 v0
  = let v1 = coe du1432 (coe v0) in
    let v2 = coe du986 (coe v1) in
    coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du240 (coe v2))
name1444 = "Relation.Binary.Lattice.BoundedLattice._.setoid"
d1444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1324 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1444 v0 v1 v2 v3 = du1444 v3
du1444 :: T1324 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1444 v0 = coe du984 (coe du1432 (coe v0))
name1468 = "Relation.Binary.Lattice.IsHeytingAlgebra"
d1468 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T1468
  = C30635 T1226
           (AgdaAny ->
            AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name1496
  = "Relation.Binary.Lattice.IsHeytingAlgebra.isBoundedLattice"
d1496 :: T1468 -> T1226
d1496 v0
  = case coe v0 of
      C30635 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1498 = "Relation.Binary.Lattice.IsHeytingAlgebra.exponential"
d1498 ::
  T1468 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1498 v0
  = case coe v0 of
      C30635 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1506 = "Relation.Binary.Lattice.IsHeytingAlgebra.transpose-⇨"
d1506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1506 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du1506 v11 v12 v13 v14
du1506 ::
  T1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1506 v0 v1 v2 v3
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1498 v0 v1 v2 v3)
name1522 = "Relation.Binary.Lattice.IsHeytingAlgebra.transpose-∧"
d1522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1522 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du1522 v11 v12 v13 v14
du1522 ::
  T1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1522 v0 v1 v2 v3
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1498 v0 v1 v2 v3)
name1534 = "Relation.Binary.Lattice.IsHeytingAlgebra._.antisym"
d1534 ::
  T1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1534 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1254 (coe d1496 (coe v0))))
name1536 = "Relation.Binary.Lattice.IsHeytingAlgebra._.infimum"
d1536 ::
  T1468 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1536 v0 = coe d838 (coe d1254 (coe d1496 (coe v0)))
name1538
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isBoundedJoinSemilattice"
d1538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> T262
d1538 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1538 v11
du1538 :: T1468 -> T262
du1538 v0 = coe du1314 (coe d1496 (coe v0))
name1540
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isBoundedMeetSemilattice"
d1540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> T632
d1540 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1540 v11
du1540 :: T1468 -> T632
du1540 v0 = coe du1316 (coe d1496 (coe v0))
name1542
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isEquivalence"
d1542 :: T1468 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1542 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe v0)))))
name1544
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isJoinSemilattice"
d1544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> T68
d1544 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1544 v11
du1544 :: T1468 -> T68
du1544 v0
  = let v1 = d1496 (coe v0) in coe du840 (coe d1254 (coe v1))
name1546 = "Relation.Binary.Lattice.IsHeytingAlgebra._.isLattice"
d1546 :: T1468 -> T810
d1546 v0 = coe d1254 (coe d1496 (coe v0))
name1548
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isMeetSemilattice"
d1548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> T438
d1548 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1548 v11
du1548 :: T1468 -> T438
du1548 v0
  = let v1 = d1496 (coe v0) in coe du842 (coe d1254 (coe v1))
name1550
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isPartialOrder"
d1550 :: T1468 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1550 v0 = coe d834 (coe d1254 (coe d1496 (coe v0)))
name1552 = "Relation.Binary.Lattice.IsHeytingAlgebra._.isPreorder"
d1552 :: T1468 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1552 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1254 (coe d1496 (coe v0))))
name1554 = "Relation.Binary.Lattice.IsHeytingAlgebra._.maximum"
d1554 :: T1468 -> AgdaAny -> AgdaAny
d1554 v0 = coe d1256 (coe d1496 (coe v0))
name1556 = "Relation.Binary.Lattice.IsHeytingAlgebra._.minimum"
d1556 :: T1468 -> AgdaAny -> AgdaAny
d1556 v0 = coe d1258 (coe d1496 (coe v0))
name1558 = "Relation.Binary.Lattice.IsHeytingAlgebra._.refl"
d1558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> AgdaAny -> AgdaAny
d1558 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1558 v11
du1558 :: T1468 -> AgdaAny -> AgdaAny
du1558 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1560 = "Relation.Binary.Lattice.IsHeytingAlgebra._.reflexive"
d1560 :: T1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1560 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe v0)))))
name1562 = "Relation.Binary.Lattice.IsHeytingAlgebra._.supremum"
d1562 ::
  T1468 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1562 v0 = coe d836 (coe d1254 (coe d1496 (coe v0)))
name1564 = "Relation.Binary.Lattice.IsHeytingAlgebra._.trans"
d1564 ::
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe v0)))))
name1566 = "Relation.Binary.Lattice.IsHeytingAlgebra._.x∧y≤x"
d1566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> AgdaAny -> AgdaAny -> AgdaAny
d1566 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1566 v11
du1566 :: T1468 -> AgdaAny -> AgdaAny -> AgdaAny
du1566 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v3 v4 v5))
name1568 = "Relation.Binary.Lattice.IsHeytingAlgebra._.x∧y≤y"
d1568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> AgdaAny -> AgdaAny -> AgdaAny
d1568 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1568 v11
du1568 :: T1468 -> AgdaAny -> AgdaAny -> AgdaAny
du1568 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v3 v4 v5)))
name1570 = "Relation.Binary.Lattice.IsHeytingAlgebra._.x≤x∨y"
d1570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> AgdaAny -> AgdaAny -> AgdaAny
d1570 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1570 v11
du1570 :: T1468 -> AgdaAny -> AgdaAny -> AgdaAny
du1570 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v3 v4 v5))
name1572 = "Relation.Binary.Lattice.IsHeytingAlgebra._.y≤x∨y"
d1572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> AgdaAny -> AgdaAny -> AgdaAny
d1572 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1572 v11
du1572 :: T1468 -> AgdaAny -> AgdaAny -> AgdaAny
du1572 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)))
name1574 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∧-greatest"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1574 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1574 v11
du1574 ::
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1574 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du842 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v3 v5 v6)) v4)
name1576 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∨-least"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1576 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1576 v11
du1576 ::
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1576 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = coe du840 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)) v6)
name1578 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∼-resp-≈"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1468 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1578 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1578 v11
du1578 :: T1468 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1578 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1580 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∼-respʳ-≈"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1580 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1580 v11
du1580 ::
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1580 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1582 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∼-respˡ-≈"
d1582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1582 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1582 v11
du1582 ::
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1582 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3))
name1586
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.isPartialEquivalence"
d1586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1468 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1586 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1586 v11
du1586 :: T1468 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1586 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4))
name1588 = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.refl"
d1588 :: T1468 -> AgdaAny -> AgdaAny
d1588 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe v0))))))
name1590
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.reflexive"
d1590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1468 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1590 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1590 v11
du1590 ::
  T1468 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1590 v0
  = let v1 = d1496 (coe v0) in
    let v2 = d1254 (coe v1) in
    let v3 = d834 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v3) in
    \ v5 v6 v7 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v4)) v5
name1592 = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.sym"
d1592 :: T1468 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1592 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe v0))))))
name1594 = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.trans"
d1594 ::
  T1468 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1594 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe v0))))))
name1602 = "Relation.Binary.Lattice.HeytingAlgebra"
d1602 a0 a1 a2 = ()
data T1602
  = C35019 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
           AgdaAny AgdaAny T1468
name1628 = "Relation.Binary.Lattice.HeytingAlgebra.Carrier"
d1628 :: T1602 -> ()
d1628 = erased
name1630 = "Relation.Binary.Lattice.HeytingAlgebra._≈_"
d1630 :: T1602 -> AgdaAny -> AgdaAny -> ()
d1630 = erased
name1632 = "Relation.Binary.Lattice.HeytingAlgebra._≤_"
d1632 :: T1602 -> AgdaAny -> AgdaAny -> ()
d1632 = erased
name1634 = "Relation.Binary.Lattice.HeytingAlgebra._∨_"
d1634 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny
d1634 v0
  = case coe v0 of
      C35019 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1636 = "Relation.Binary.Lattice.HeytingAlgebra._∧_"
d1636 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny
d1636 v0
  = case coe v0 of
      C35019 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1638 = "Relation.Binary.Lattice.HeytingAlgebra._⇨_"
d1638 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny
d1638 v0
  = case coe v0 of
      C35019 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1640 = "Relation.Binary.Lattice.HeytingAlgebra.⊤"
d1640 :: T1602 -> AgdaAny
d1640 v0
  = case coe v0 of
      C35019 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1642 = "Relation.Binary.Lattice.HeytingAlgebra.⊥"
d1642 :: T1602 -> AgdaAny
d1642 v0
  = case coe v0 of
      C35019 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1644
  = "Relation.Binary.Lattice.HeytingAlgebra.isHeytingAlgebra"
d1644 :: T1602 -> T1468
d1644 v0
  = case coe v0 of
      C35019 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
name1646 = "Relation.Binary.Lattice.HeytingAlgebra.boundedLattice"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T1324
d1646 v0 v1 v2 v3 = du1646 v3
du1646 :: T1602 -> T1324
du1646 v0
  = coe
      C28175 (d1634 (coe v0)) (d1636 (coe v0)) (d1640 (coe v0))
      (d1642 (coe v0)) (d1496 (coe d1644 (coe v0)))
name1650 = "Relation.Binary.Lattice.HeytingAlgebra._.exponential"
d1650 ::
  T1602 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1650 v0 = coe d1498 (coe d1644 (coe v0))
name1652 = "Relation.Binary.Lattice.HeytingAlgebra._.transpose-⇨"
d1652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1652 v0 v1 v2 v3 = du1652 v3
du1652 ::
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1652 v0
  = let v1 = d1644 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1498 v1 v2 v3 v4))
name1654 = "Relation.Binary.Lattice.HeytingAlgebra._.transpose-∧"
d1654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1654 v0 v1 v2 v3 = du1654 v3
du1654 ::
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1654 v0
  = let v1 = d1644 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1498 v1 v2 v3 v4))
name1658 = "Relation.Binary.Lattice.HeytingAlgebra._.antisym"
d1658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1658 v0 v1 v2 v3 = du1658 v3
du1658 ::
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1658 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0)))))
name1660
  = "Relation.Binary.Lattice.HeytingAlgebra._.boundedJoinSemilattice"
d1660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T336
d1660 v0 v1 v2 v3 = du1660 v3
du1660 :: T1602 -> T336
du1660 v0 = coe du1428 (coe du1646 (coe v0))
name1662
  = "Relation.Binary.Lattice.HeytingAlgebra._.boundedMeetSemilattice"
d1662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T706
d1662 v0 v1 v2 v3 = du1662 v3
du1662 :: T1602 -> T706
du1662 v0 = coe du1430 (coe du1646 (coe v0))
name1664 = "Relation.Binary.Lattice.HeytingAlgebra._.infimum"
d1664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1664 v0 v1 v2 v3 = du1664 v3
du1664 ::
  T1602 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1664 v0 = coe d838 (coe d1254 (coe d1496 (coe d1644 (coe v0))))
name1666
  = "Relation.Binary.Lattice.HeytingAlgebra._.isBoundedJoinSemilattice"
d1666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T262
d1666 v0 v1 v2 v3 = du1666 v3
du1666 :: T1602 -> T262
du1666 v0
  = let v1 = coe du1646 (coe v0) in coe du1314 (coe d1362 (coe v1))
name1668
  = "Relation.Binary.Lattice.HeytingAlgebra._.isBoundedLattice"
d1668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T1226
d1668 v0 v1 v2 v3 = du1668 v3
du1668 :: T1602 -> T1226
du1668 v0 = coe d1496 (coe d1644 (coe v0))
name1670
  = "Relation.Binary.Lattice.HeytingAlgebra._.isBoundedMeetSemilattice"
d1670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T632
d1670 v0 v1 v2 v3 = du1670 v3
du1670 :: T1602 -> T632
du1670 v0
  = let v1 = coe du1646 (coe v0) in coe du1316 (coe d1362 (coe v1))
name1672 = "Relation.Binary.Lattice.HeytingAlgebra._.isEquivalence"
d1672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1672 v0 v1 v2 v3 = du1672 v3
du1672 :: T1602 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1672 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0))))))
name1674
  = "Relation.Binary.Lattice.HeytingAlgebra._.isJoinSemilattice"
d1674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T68
d1674 v0 v1 v2 v3 = du1674 v3
du1674 :: T1602 -> T68
du1674 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in coe du840 (coe d1254 (coe v2))
name1676 = "Relation.Binary.Lattice.HeytingAlgebra._.isLattice"
d1676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T810
d1676 v0 v1 v2 v3 = du1676 v3
du1676 :: T1602 -> T810
du1676 v0 = coe d1254 (coe d1496 (coe d1644 (coe v0)))
name1678
  = "Relation.Binary.Lattice.HeytingAlgebra._.isMeetSemilattice"
d1678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T438
d1678 v0 v1 v2 v3 = du1678 v3
du1678 :: T1602 -> T438
du1678 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in coe du842 (coe d1254 (coe v2))
name1680
  = "Relation.Binary.Lattice.HeytingAlgebra._.isPartialOrder"
d1680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1680 v0 v1 v2 v3 = du1680 v3
du1680 :: T1602 -> MAlonzo.Code.Relation.Binary.Structures.T118
du1680 v0 = coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0))))
name1682 = "Relation.Binary.Lattice.HeytingAlgebra._.isPreorder"
d1682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1682 v0 v1 v2 v3 = du1682 v3
du1682 :: T1602 -> MAlonzo.Code.Relation.Binary.Structures.T70
du1682 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0)))))
name1684
  = "Relation.Binary.Lattice.HeytingAlgebra._.joinSemilattice"
d1684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T170
d1684 v0 v1 v2 v3 = du1684 v3
du1684 :: T1602 -> T170
du1684 v0
  = let v1 = coe du1646 (coe v0) in coe du986 (coe du1432 (coe v1))
name1686 = "Relation.Binary.Lattice.HeytingAlgebra._.lattice"
d1686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T898
d1686 v0 v1 v2 v3 = du1686 v3
du1686 :: T1602 -> T898
du1686 v0 = coe du1432 (coe du1646 (coe v0))
name1688 = "Relation.Binary.Lattice.HeytingAlgebra._.maximum"
d1688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> AgdaAny -> AgdaAny
d1688 v0 v1 v2 v3 = du1688 v3
du1688 :: T1602 -> AgdaAny -> AgdaAny
du1688 v0 = coe d1256 (coe d1496 (coe d1644 (coe v0)))
name1690
  = "Relation.Binary.Lattice.HeytingAlgebra._.meetSemilattice"
d1690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> T540
d1690 v0 v1 v2 v3 = du1690 v3
du1690 :: T1602 -> T540
du1690 v0
  = let v1 = coe du1646 (coe v0) in coe du988 (coe du1432 (coe v1))
name1692 = "Relation.Binary.Lattice.HeytingAlgebra._.minimum"
d1692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> AgdaAny -> AgdaAny
d1692 v0 v1 v2 v3 = du1692 v3
du1692 :: T1602 -> AgdaAny -> AgdaAny
du1692 v0 = coe d1258 (coe d1496 (coe d1644 (coe v0)))
name1694 = "Relation.Binary.Lattice.HeytingAlgebra._.poset"
d1694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d1694 v0 v1 v2 v3 = du1694 v3
du1694 :: T1602 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du1694 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = coe du1432 (coe v1) in coe du240 (coe du986 (coe v2))
name1696 = "Relation.Binary.Lattice.HeytingAlgebra._.preorder"
d1696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d1696 v0 v1 v2 v3 = du1696 v3
du1696 :: T1602 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du1696 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = coe du1432 (coe v1) in
    let v3 = coe du986 (coe v2) in
    coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du240 (coe v3))
name1698 = "Relation.Binary.Lattice.HeytingAlgebra._.refl"
d1698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> AgdaAny -> AgdaAny
d1698 v0 v1 v2 v3 = du1698 v3
du1698 :: T1602 -> AgdaAny -> AgdaAny
du1698 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1700 = "Relation.Binary.Lattice.HeytingAlgebra._.reflexive"
d1700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1700 v0 v1 v2 v3 = du1700 v3
du1700 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1700 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0))))))
name1702 = "Relation.Binary.Lattice.HeytingAlgebra._.setoid"
d1702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1702 v0 v1 v2 v3 = du1702 v3
du1702 :: T1602 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1702 v0
  = let v1 = coe du1646 (coe v0) in coe du984 (coe du1432 (coe v1))
name1704 = "Relation.Binary.Lattice.HeytingAlgebra._.supremum"
d1704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1704 v0 v1 v2 v3 = du1704 v3
du1704 ::
  T1602 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1704 v0 = coe d836 (coe d1254 (coe d1496 (coe d1644 (coe v0))))
name1706 = "Relation.Binary.Lattice.HeytingAlgebra._.trans"
d1706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1706 v0 v1 v2 v3 = du1706 v3
du1706 ::
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0))))))
name1708 = "Relation.Binary.Lattice.HeytingAlgebra._.x∧y≤x"
d1708 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny
d1708 v0 v1 v2 v3 = du1708 v3
du1708 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny
du1708 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du842 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v4 v5 v6))
name1710 = "Relation.Binary.Lattice.HeytingAlgebra._.x∧y≤y"
d1710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny
d1710 v0 v1 v2 v3 = du1710 v3
du1710 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny
du1710 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du842 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v4 v5 v6)))
name1712 = "Relation.Binary.Lattice.HeytingAlgebra._.x≤x∨y"
d1712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny
d1712 v0 v1 v2 v3 = du1712 v3
du1712 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny
du1712 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du840 (coe v3) in
    coe
      (\ v5 v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v4 v5 v6))
name1714 = "Relation.Binary.Lattice.HeytingAlgebra._.y≤x∨y"
d1714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny
d1714 v0 v1 v2 v3 = du1714 v3
du1714 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny
du1714 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du840 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6)))
name1716 = "Relation.Binary.Lattice.HeytingAlgebra._.∧-greatest"
d1716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1716 v0 v1 v2 v3 = du1716 v3
du1716 ::
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1716 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du842 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v4 v6 v7)) v5)
name1718 = "Relation.Binary.Lattice.HeytingAlgebra._.∨-least"
d1718 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1718 v0 v1 v2 v3 = du1718 v3
du1718 ::
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1718 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du840 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6)) v7)
name1720 = "Relation.Binary.Lattice.HeytingAlgebra._.∼-resp-≈"
d1720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1720 v0 v1 v2 v3 = du1720 v3
du1720 :: T1602 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1720 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1722 = "Relation.Binary.Lattice.HeytingAlgebra._.∼-respʳ-≈"
d1722 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1722 v0 v1 v2 v3 = du1722 v3
du1722 ::
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1722 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1724 = "Relation.Binary.Lattice.HeytingAlgebra._.∼-respˡ-≈"
d1724 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1724 v0 v1 v2 v3 = du1724 v3
du1724 ::
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1724 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1728
  = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.isPartialEquivalence"
d1728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1728 v0 v1 v2 v3 = du1728 v3
du1728 :: T1602 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1728 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    let v5 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v5))
name1730 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.refl"
d1730 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1602 -> AgdaAny -> AgdaAny
d1730 v0 v1 v2 v3 = du1730 v3
du1730 :: T1602 -> AgdaAny -> AgdaAny
du1730 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0)))))))
name1732 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.reflexive"
d1732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1732 v0 v1 v2 v3 = du1732 v3
du1732 ::
  T1602 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1732 v0
  = let v1 = coe du1646 (coe v0) in
    let v2 = d1362 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    let v5 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v5)) v6
name1734 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.sym"
d1734 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1734 v0 v1 v2 v3 = du1734 v3
du1734 :: T1602 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1734 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0)))))))
name1736 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.trans"
d1736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1736 v0 v1 v2 v3 = du1736 v3
du1736 ::
  T1602 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1736 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v0)))))))
name1760 = "Relation.Binary.Lattice.IsBooleanAlgebra"
d1760 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
newtype T1760 = C37491 T1468
name1792 = "Relation.Binary.Lattice.IsBooleanAlgebra._⇨_"
d1792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1760 -> AgdaAny -> AgdaAny -> AgdaAny
d1792 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du1792 v6 v8 v12 v13
du1792 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1792 v0 v1 v2 v3 = coe v0 (coe v1 v2) v3
name1798
  = "Relation.Binary.Lattice.IsBooleanAlgebra.isHeytingAlgebra"
d1798 :: T1760 -> T1468
d1798 v0
  = case coe v0 of
      C37491 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1802 = "Relation.Binary.Lattice.IsBooleanAlgebra._.antisym"
d1802 ::
  T1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1802 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0)))))
name1804 = "Relation.Binary.Lattice.IsBooleanAlgebra._.exponential"
d1804 ::
  T1760 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1804 v0 = coe d1498 (coe d1798 (coe v0))
name1806 = "Relation.Binary.Lattice.IsBooleanAlgebra._.infimum"
d1806 ::
  T1760 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1806 v0 = coe d838 (coe d1254 (coe d1496 (coe d1798 (coe v0))))
name1808
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedJoinSemilattice"
d1808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1760 -> T262
d1808 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1808 v11
du1808 :: T1760 -> T262
du1808 v0
  = let v1 = d1798 (coe v0) in coe du1314 (coe d1496 (coe v1))
name1810
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedLattice"
d1810 :: T1760 -> T1226
d1810 v0 = coe d1496 (coe d1798 (coe v0))
name1812
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedMeetSemilattice"
d1812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1760 -> T632
d1812 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1812 v11
du1812 :: T1760 -> T632
du1812 v0
  = let v1 = d1798 (coe v0) in coe du1316 (coe d1496 (coe v1))
name1814
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isEquivalence"
d1814 :: T1760 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1814 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0))))))
name1816
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isJoinSemilattice"
d1816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1760 -> T68
d1816 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1816 v11
du1816 :: T1760 -> T68
du1816 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in coe du840 (coe d1254 (coe v2))
name1818 = "Relation.Binary.Lattice.IsBooleanAlgebra._.isLattice"
d1818 :: T1760 -> T810
d1818 v0 = coe d1254 (coe d1496 (coe d1798 (coe v0)))
name1820
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isMeetSemilattice"
d1820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1760 -> T438
d1820 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1820 v11
du1820 :: T1760 -> T438
du1820 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in coe du842 (coe d1254 (coe v2))
name1822
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isPartialOrder"
d1822 :: T1760 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1822 v0 = coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0))))
name1824 = "Relation.Binary.Lattice.IsBooleanAlgebra._.isPreorder"
d1824 :: T1760 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1824 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0)))))
name1826 = "Relation.Binary.Lattice.IsBooleanAlgebra._.maximum"
d1826 :: T1760 -> AgdaAny -> AgdaAny
d1826 v0 = coe d1256 (coe d1496 (coe d1798 (coe v0)))
name1828 = "Relation.Binary.Lattice.IsBooleanAlgebra._.minimum"
d1828 :: T1760 -> AgdaAny -> AgdaAny
d1828 v0 = coe d1258 (coe d1496 (coe d1798 (coe v0)))
name1830 = "Relation.Binary.Lattice.IsBooleanAlgebra._.refl"
d1830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1760 -> AgdaAny -> AgdaAny
d1830 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1830 v11
du1830 :: T1760 -> AgdaAny -> AgdaAny
du1830 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1832 = "Relation.Binary.Lattice.IsBooleanAlgebra._.reflexive"
d1832 :: T1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1832 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0))))))
name1834 = "Relation.Binary.Lattice.IsBooleanAlgebra._.supremum"
d1834 ::
  T1760 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1834 v0 = coe d836 (coe d1254 (coe d1496 (coe d1798 (coe v0))))
name1836 = "Relation.Binary.Lattice.IsBooleanAlgebra._.trans"
d1836 ::
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0))))))
name1838 = "Relation.Binary.Lattice.IsBooleanAlgebra._.transpose-⇨"
d1838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1838 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1838 v11
du1838 ::
  T1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1838 v0
  = let v1 = d1798 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1498 v1 v2 v3 v4))
name1840 = "Relation.Binary.Lattice.IsBooleanAlgebra._.transpose-∧"
d1840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1840 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1840 v11
du1840 ::
  T1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1840 v0
  = let v1 = d1798 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1498 v1 v2 v3 v4))
name1842 = "Relation.Binary.Lattice.IsBooleanAlgebra._.x∧y≤x"
d1842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1760 -> AgdaAny -> AgdaAny -> AgdaAny
d1842 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1842 v11
du1842 :: T1760 -> AgdaAny -> AgdaAny -> AgdaAny
du1842 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du842 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v4 v5 v6))
name1844 = "Relation.Binary.Lattice.IsBooleanAlgebra._.x∧y≤y"
d1844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1760 -> AgdaAny -> AgdaAny -> AgdaAny
d1844 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1844 v11
du1844 :: T1760 -> AgdaAny -> AgdaAny -> AgdaAny
du1844 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du842 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v4 v5 v6)))
name1846 = "Relation.Binary.Lattice.IsBooleanAlgebra._.x≤x∨y"
d1846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1760 -> AgdaAny -> AgdaAny -> AgdaAny
d1846 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1846 v11
du1846 :: T1760 -> AgdaAny -> AgdaAny -> AgdaAny
du1846 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du840 (coe v3) in
    coe
      (\ v5 v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v4 v5 v6))
name1848 = "Relation.Binary.Lattice.IsBooleanAlgebra._.y≤x∨y"
d1848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1760 -> AgdaAny -> AgdaAny -> AgdaAny
d1848 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1848 v11
du1848 :: T1760 -> AgdaAny -> AgdaAny -> AgdaAny
du1848 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du840 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6)))
name1850 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∧-greatest"
d1850 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1850 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1850 v11
du1850 ::
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1850 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du842 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v4 v6 v7)) v5)
name1852 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∨-least"
d1852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1852 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1852 v11
du1852 ::
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1852 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = coe du840 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6)) v7)
name1854 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∼-resp-≈"
d1854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1760 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1854 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1854 v11
du1854 :: T1760 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1854 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1856 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∼-respʳ-≈"
d1856 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1856 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1856 v11
du1856 ::
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1856 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1858 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∼-respˡ-≈"
d1858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1858 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1858 v11
du1858 ::
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1858 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4))
name1862
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.isPartialEquivalence"
d1862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T1760 -> MAlonzo.Code.Relation.Binary.Structures.T16
d1862 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1862 v11
du1862 :: T1760 -> MAlonzo.Code.Relation.Binary.Structures.T16
du1862 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    let v5 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v5))
name1864 = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.refl"
d1864 :: T1760 -> AgdaAny -> AgdaAny
d1864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0)))))))
name1866
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.reflexive"
d1866 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T1760 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1866 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1866 v11
du1866 ::
  T1760 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1866 v0
  = let v1 = d1798 (coe v0) in
    let v2 = d1496 (coe v1) in
    let v3 = d1254 (coe v2) in
    let v4 = d834 (coe v3) in
    let v5 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v4) in
    \ v6 v7 v8 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v5)) v6
name1868 = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.sym"
d1868 :: T1760 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1868 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0)))))))
name1870 = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.trans"
d1870 ::
  T1760 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1798 (coe v0)))))))
name1878 = "Relation.Binary.Lattice.BooleanAlgebra"
d1878 a0 a1 a2 = ()
data T1878
  = C40887 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny T1760
name1904 = "Relation.Binary.Lattice.BooleanAlgebra.Carrier"
d1904 :: T1878 -> ()
d1904 = erased
name1906 = "Relation.Binary.Lattice.BooleanAlgebra._≈_"
d1906 :: T1878 -> AgdaAny -> AgdaAny -> ()
d1906 = erased
name1908 = "Relation.Binary.Lattice.BooleanAlgebra._≤_"
d1908 :: T1878 -> AgdaAny -> AgdaAny -> ()
d1908 = erased
name1910 = "Relation.Binary.Lattice.BooleanAlgebra._∨_"
d1910 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny
d1910 v0
  = case coe v0 of
      C40887 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1912 = "Relation.Binary.Lattice.BooleanAlgebra._∧_"
d1912 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny
d1912 v0
  = case coe v0 of
      C40887 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1914 = "Relation.Binary.Lattice.BooleanAlgebra.¬_"
d1914 :: T1878 -> AgdaAny -> AgdaAny
d1914 v0
  = case coe v0 of
      C40887 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1916 = "Relation.Binary.Lattice.BooleanAlgebra.⊤"
d1916 :: T1878 -> AgdaAny
d1916 v0
  = case coe v0 of
      C40887 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1918 = "Relation.Binary.Lattice.BooleanAlgebra.⊥"
d1918 :: T1878 -> AgdaAny
d1918 v0
  = case coe v0 of
      C40887 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1920
  = "Relation.Binary.Lattice.BooleanAlgebra.isBooleanAlgebra"
d1920 :: T1878 -> T1760
d1920 v0
  = case coe v0 of
      C40887 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
name1924
  = "Relation.Binary.Lattice.BooleanAlgebra._.isHeytingAlgebra"
d1924 :: T1878 -> T1468
d1924 v0 = coe d1798 (coe d1920 (coe v0))
name1926 = "Relation.Binary.Lattice.BooleanAlgebra.heytingAlgebra"
d1926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T1602
d1926 v0 v1 v2 v3 = du1926 v3
du1926 :: T1878 -> T1602
du1926 v0
  = coe
      C35019 (d1910 (coe v0)) (d1912 (coe v0))
      (\ v1 -> coe d1910 v0 (coe d1914 v0 v1)) (d1916 (coe v0))
      (d1918 (coe v0)) (d1798 (coe d1920 (coe v0)))
name1930 = "Relation.Binary.Lattice.BooleanAlgebra._._⇨_"
d1930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny
d1930 v0 v1 v2 v3 v4 = du1930 v3 v4
du1930 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny
du1930 v0 v1 = coe d1910 v0 (coe d1914 v0 v1)
name1932 = "Relation.Binary.Lattice.BooleanAlgebra._.antisym"
d1932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1932 v0 v1 v2 v3 = du1932 v3
du1932 ::
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1932 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1)))))
name1934
  = "Relation.Binary.Lattice.BooleanAlgebra._.boundedJoinSemilattice"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T336
d1934 v0 v1 v2 v3 = du1934 v3
du1934 :: T1878 -> T336
du1934 v0
  = let v1 = coe du1926 (coe v0) in coe du1428 (coe du1646 (coe v1))
name1936
  = "Relation.Binary.Lattice.BooleanAlgebra._.boundedLattice"
d1936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T1324
d1936 v0 v1 v2 v3 = du1936 v3
du1936 :: T1878 -> T1324
du1936 v0 = coe du1646 (coe du1926 (coe v0))
name1938
  = "Relation.Binary.Lattice.BooleanAlgebra._.boundedMeetSemilattice"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T706
d1938 v0 v1 v2 v3 = du1938 v3
du1938 :: T1878 -> T706
du1938 v0
  = let v1 = coe du1926 (coe v0) in coe du1430 (coe du1646 (coe v1))
name1940 = "Relation.Binary.Lattice.BooleanAlgebra._.exponential"
d1940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1940 v0 v1 v2 v3 = du1940 v3
du1940 ::
  T1878 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1940 v0 = coe d1498 (coe d1798 (coe d1920 (coe v0)))
name1942 = "Relation.Binary.Lattice.BooleanAlgebra._.infimum"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1942 v0 v1 v2 v3 = du1942 v3
du1942 ::
  T1878 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1942 v0
  = let v1 = coe du1926 (coe v0) in
    coe d838 (coe d1254 (coe d1496 (coe d1644 (coe v1))))
name1944
  = "Relation.Binary.Lattice.BooleanAlgebra._.isBoundedJoinSemilattice"
d1944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T262
d1944 v0 v1 v2 v3 = du1944 v3
du1944 :: T1878 -> T262
du1944 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in coe du1314 (coe d1362 (coe v2))
name1946
  = "Relation.Binary.Lattice.BooleanAlgebra._.isBoundedLattice"
d1946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T1226
d1946 v0 v1 v2 v3 = du1946 v3
du1946 :: T1878 -> T1226
du1946 v0
  = let v1 = coe du1926 (coe v0) in coe d1496 (coe d1644 (coe v1))
name1948
  = "Relation.Binary.Lattice.BooleanAlgebra._.isBoundedMeetSemilattice"
d1948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T632
d1948 v0 v1 v2 v3 = du1948 v3
du1948 :: T1878 -> T632
du1948 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in coe du1316 (coe d1362 (coe v2))
name1950 = "Relation.Binary.Lattice.BooleanAlgebra._.isEquivalence"
d1950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Relation.Binary.Structures.T26
d1950 v0 v1 v2 v3 = du1950 v3
du1950 :: T1878 -> MAlonzo.Code.Relation.Binary.Structures.T26
du1950 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1))))))
name1952
  = "Relation.Binary.Lattice.BooleanAlgebra._.isHeytingAlgebra"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T1468
d1952 v0 v1 v2 v3 = du1952 v3
du1952 :: T1878 -> T1468
du1952 v0 = coe d1798 (coe d1920 (coe v0))
name1954
  = "Relation.Binary.Lattice.BooleanAlgebra._.isJoinSemilattice"
d1954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T68
d1954 v0 v1 v2 v3 = du1954 v3
du1954 :: T1878 -> T68
du1954 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in coe du840 (coe d1254 (coe v3))
name1956 = "Relation.Binary.Lattice.BooleanAlgebra._.isLattice"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T810
d1956 v0 v1 v2 v3 = du1956 v3
du1956 :: T1878 -> T810
du1956 v0
  = let v1 = coe du1926 (coe v0) in
    coe d1254 (coe d1496 (coe d1644 (coe v1)))
name1958
  = "Relation.Binary.Lattice.BooleanAlgebra._.isMeetSemilattice"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T438
d1958 v0 v1 v2 v3 = du1958 v3
du1958 :: T1878 -> T438
du1958 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in coe du842 (coe d1254 (coe v3))
name1960
  = "Relation.Binary.Lattice.BooleanAlgebra._.isPartialOrder"
d1960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Relation.Binary.Structures.T118
d1960 v0 v1 v2 v3 = du1960 v3
du1960 :: T1878 -> MAlonzo.Code.Relation.Binary.Structures.T118
du1960 v0
  = let v1 = coe du1926 (coe v0) in
    coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1))))
name1962 = "Relation.Binary.Lattice.BooleanAlgebra._.isPreorder"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Relation.Binary.Structures.T70
d1962 v0 v1 v2 v3 = du1962 v3
du1962 :: T1878 -> MAlonzo.Code.Relation.Binary.Structures.T70
du1962 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d126
      (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1)))))
name1964
  = "Relation.Binary.Lattice.BooleanAlgebra._.joinSemilattice"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T170
d1964 v0 v1 v2 v3 = du1964 v3
du1964 :: T1878 -> T170
du1964 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in coe du986 (coe du1432 (coe v2))
name1966 = "Relation.Binary.Lattice.BooleanAlgebra._.lattice"
d1966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T898
d1966 v0 v1 v2 v3 = du1966 v3
du1966 :: T1878 -> T898
du1966 v0
  = let v1 = coe du1926 (coe v0) in coe du1432 (coe du1646 (coe v1))
name1968 = "Relation.Binary.Lattice.BooleanAlgebra._.maximum"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> AgdaAny -> AgdaAny
d1968 v0 v1 v2 v3 = du1968 v3
du1968 :: T1878 -> AgdaAny -> AgdaAny
du1968 v0
  = let v1 = coe du1926 (coe v0) in
    coe d1256 (coe d1496 (coe d1644 (coe v1)))
name1970
  = "Relation.Binary.Lattice.BooleanAlgebra._.meetSemilattice"
d1970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> T540
d1970 v0 v1 v2 v3 = du1970 v3
du1970 :: T1878 -> T540
du1970 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in coe du988 (coe du1432 (coe v2))
name1972 = "Relation.Binary.Lattice.BooleanAlgebra._.minimum"
d1972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> AgdaAny -> AgdaAny
d1972 v0 v1 v2 v3 = du1972 v3
du1972 :: T1878 -> AgdaAny -> AgdaAny
du1972 v0
  = let v1 = coe du1926 (coe v0) in
    coe d1258 (coe d1496 (coe d1644 (coe v1)))
name1974 = "Relation.Binary.Lattice.BooleanAlgebra._.poset"
d1974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Relation.Binary.Bundles.T204
d1974 v0 v1 v2 v3 = du1974 v3
du1974 :: T1878 -> MAlonzo.Code.Relation.Binary.Bundles.T204
du1974 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = coe du1432 (coe v2) in coe du240 (coe du986 (coe v3))
name1976 = "Relation.Binary.Lattice.BooleanAlgebra._.preorder"
d1976 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Relation.Binary.Bundles.T132
d1976 v0 v1 v2 v3 = du1976 v3
du1976 :: T1878 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du1976 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = coe du1432 (coe v2) in
    let v4 = coe du986 (coe v3) in
    coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe du240 (coe v4))
name1978 = "Relation.Binary.Lattice.BooleanAlgebra._.refl"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> AgdaAny -> AgdaAny
d1978 v0 v1 v2 v3 = du1978 v3
du1978 :: T1878 -> AgdaAny -> AgdaAny
du1978 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = d834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du98
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
name1980 = "Relation.Binary.Lattice.BooleanAlgebra._.reflexive"
d1980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1980 v0 v1 v2 v3 = du1980 v3
du1980 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1980 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1))))))
name1982 = "Relation.Binary.Lattice.BooleanAlgebra._.setoid"
d1982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Relation.Binary.Bundles.T44
d1982 v0 v1 v2 v3 = du1982 v3
du1982 :: T1878 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du1982 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in coe du984 (coe du1432 (coe v2))
name1984 = "Relation.Binary.Lattice.BooleanAlgebra._.supremum"
d1984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1984 v0 v1 v2 v3 = du1984 v3
du1984 ::
  T1878 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1984 v0
  = let v1 = coe du1926 (coe v0) in
    coe d836 (coe d1254 (coe d1496 (coe d1644 (coe v1))))
name1986 = "Relation.Binary.Lattice.BooleanAlgebra._.trans"
d1986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1986 v0 v1 v2 v3 = du1986 v3
du1986 ::
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1986 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d126
         (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1))))))
name1988 = "Relation.Binary.Lattice.BooleanAlgebra._.transpose-⇨"
d1988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1988 v0 v1 v2 v3 = du1988 v3
du1988 ::
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1988 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = d1644 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1498 v2 v3 v4 v5))
name1990 = "Relation.Binary.Lattice.BooleanAlgebra._.transpose-∧"
d1990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1990 v0 v1 v2 v3 = du1990 v3
du1990 ::
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1990 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = d1644 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1498 v2 v3 v4 v5))
name1992 = "Relation.Binary.Lattice.BooleanAlgebra._.x∧y≤x"
d1992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny
d1992 v0 v1 v2 v3 = du1992 v3
du1992 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny
du1992 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = coe du842 (coe v4) in
    coe
      (\ v6 v7 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d460 v5 v6 v7))
name1994 = "Relation.Binary.Lattice.BooleanAlgebra._.x∧y≤y"
d1994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny
d1994 v0 v1 v2 v3 = du1994 v3
du1994 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny
du1994 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = coe du842 (coe v4) in
    coe
      (\ v6 v7 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v5 v6 v7)))
name1996 = "Relation.Binary.Lattice.BooleanAlgebra._.x≤x∨y"
d1996 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny
d1996 v0 v1 v2 v3 = du1996 v3
du1996 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny
du1996 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = coe du840 (coe v4) in
    coe
      (\ v6 v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v5 v6 v7))
name1998 = "Relation.Binary.Lattice.BooleanAlgebra._.y≤x∨y"
d1998 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny
d1998 v0 v1 v2 v3 = du1998 v3
du1998 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny
du1998 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = coe du840 (coe v4) in
    coe
      (\ v6 v7 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v5 v6 v7)))
name2000 = "Relation.Binary.Lattice.BooleanAlgebra._.∧-greatest"
d2000 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2000 v0 v1 v2 v3 = du2000 v3
du2000 ::
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2000 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = coe du842 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d460 v5 v7 v8)) v6)
name2002 = "Relation.Binary.Lattice.BooleanAlgebra._.∨-least"
d2002 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2002 v0 v1 v2 v3 = du2002 v3
du2002 ::
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2002 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = coe du840 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v5 v6 v7)) v8)
name2004 = "Relation.Binary.Lattice.BooleanAlgebra._.∼-resp-≈"
d2004 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d2004 v0 v1 v2 v3 = du2004 v3
du2004 :: T1878 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du2004 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = d834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du112
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
name2006 = "Relation.Binary.Lattice.BooleanAlgebra._.∼-respʳ-≈"
d2006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2006 v0 v1 v2 v3 = du2006 v3
du2006 ::
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2006 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = d834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du106
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
name2008 = "Relation.Binary.Lattice.BooleanAlgebra._.∼-respˡ-≈"
d2008 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2008 v0 v1 v2 v3 = du2008 v3
du2008 ::
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2008 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = d834 (coe v4) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du100
      (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
name2012
  = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.isPartialEquivalence"
d2012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> MAlonzo.Code.Relation.Binary.Structures.T16
d2012 v0 v1 v2 v3 = du2012 v3
du2012 :: T1878 -> MAlonzo.Code.Relation.Binary.Structures.T16
du2012 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = d834 (coe v4) in
    let v6 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.du42
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v6))
name2014 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.refl"
d2014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1878 -> AgdaAny -> AgdaAny
d2014 v0 v1 v2 v3 = du2014 v3
du2014 :: T1878 -> AgdaAny -> AgdaAny
du2014 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1)))))))
name2016 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.reflexive"
d2016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d2016 v0 v1 v2 v3 = du2016 v3
du2016 ::
  T1878 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du2016 v0
  = let v1 = coe du1926 (coe v0) in
    let v2 = coe du1646 (coe v1) in
    let v3 = d1362 (coe v2) in
    let v4 = d1254 (coe v3) in
    let v5 = d834 (coe v4) in
    let v6 = MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5) in
    \ v7 v8 v9 ->
      coe
        MAlonzo.Code.Relation.Binary.Structures.du40
        (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v6)) v7
name2018 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.sym"
d2018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2018 v0 v1 v2 v3 = du2018 v3
du2018 :: T1878 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2018 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d36
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1)))))))
name2020 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.trans"
d2020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d2020 v0 v1 v2 v3 = du2020 v3
du2020 ::
  T1878 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du2020 v0
  = let v1 = coe du1926 (coe v0) in
    coe
      MAlonzo.Code.Relation.Binary.Structures.d38
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe d834 (coe d1254 (coe d1496 (coe d1644 (coe v1)))))))
