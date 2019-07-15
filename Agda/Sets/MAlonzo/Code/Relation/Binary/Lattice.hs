{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

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
  = C243 MAlonzo.Code.Relation.Binary.T256
         (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name88 = "Relation.Binary.Lattice.IsJoinSemilattice.isPartialOrder"
d88 :: T68 -> MAlonzo.Code.Relation.Binary.T256
d88 v0
  = case coe v0 of
      C243 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Relation.Binary.Lattice.IsJoinSemilattice.supremum"
d90 ::
  T68 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d90 v0
  = case coe v0 of
      C243 v1 v2 -> coe v2
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
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v0 v1 v2))
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
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v0 v1 v2))))
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
  = coe (MAlonzo.Code.Relation.Binary.d276 (coe (d88 (coe v0))))
name136
  = "Relation.Binary.Lattice.IsJoinSemilattice._.isEquivalence"
d136 :: T68 -> MAlonzo.Code.Relation.Binary.Core.T402
d136 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d88 (coe v0))))))
name138 = "Relation.Binary.Lattice.IsJoinSemilattice._.isPreorder"
d138 :: T68 -> MAlonzo.Code.Relation.Binary.T16
d138 v0
  = coe (MAlonzo.Code.Relation.Binary.d274 (coe (d88 (coe v0))))
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
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name142 = "Relation.Binary.Lattice.IsJoinSemilattice._.reflexive"
d142 :: T68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d88 (coe v0))))))
name144 = "Relation.Binary.Lattice.IsJoinSemilattice._.trans"
d144 ::
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d144 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d88 (coe v0))))))
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
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
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
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
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
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name154 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.refl"
d154 :: T68 -> AgdaAny -> AgdaAny
d154 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d88 (coe v0))))))))
name156
  = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.reflexive"
d156 ::
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
d156 v0 v1 v2 v3 v4 v5 v6 v7 = du156 v7
du156 ::
  T68 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du156 v0
  = let v1 = d88 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.d274 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v2))) v3)
name158 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.sym"
d158 :: T68 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d158 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d88 (coe v0))))))))
name160 = "Relation.Binary.Lattice.IsJoinSemilattice._.Eq.trans"
d160 ::
  T68 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d160 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d88 (coe v0))))))))
name168 = "Relation.Binary.Lattice.JoinSemilattice"
d168 a0 a1 a2 = ()
data T168 = C2209 (AgdaAny -> AgdaAny -> AgdaAny) T68
name186 = "Relation.Binary.Lattice.JoinSemilattice.Carrier"
d186 :: T168 -> ()
d186 = erased
name188 = "Relation.Binary.Lattice.JoinSemilattice._≈_"
d188 :: T168 -> AgdaAny -> AgdaAny -> ()
d188 = erased
name190 = "Relation.Binary.Lattice.JoinSemilattice._≤_"
d190 :: T168 -> AgdaAny -> AgdaAny -> ()
d190 = erased
name192 = "Relation.Binary.Lattice.JoinSemilattice._∨_"
d192 :: T168 -> AgdaAny -> AgdaAny -> AgdaAny
d192 v0
  = case coe v0 of
      C2209 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name194
  = "Relation.Binary.Lattice.JoinSemilattice.isJoinSemilattice"
d194 :: T168 -> T68
d194 v0
  = case coe v0 of
      C2209 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name198 = "Relation.Binary.Lattice.JoinSemilattice._.antisym"
d198 :: T168 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d198 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d88 (coe (d194 (coe v0))))))
name200 = "Relation.Binary.Lattice.JoinSemilattice._.isEquivalence"
d200 :: T168 -> MAlonzo.Code.Relation.Binary.Core.T402
d200 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d194 (coe v0))))))))
name202
  = "Relation.Binary.Lattice.JoinSemilattice._.isPartialOrder"
d202 :: T168 -> MAlonzo.Code.Relation.Binary.T256
d202 v0 = coe (d88 (coe (d194 (coe v0))))
name204 = "Relation.Binary.Lattice.JoinSemilattice._.isPreorder"
d204 :: T168 -> MAlonzo.Code.Relation.Binary.T16
d204 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d88 (coe (d194 (coe v0))))))
name206 = "Relation.Binary.Lattice.JoinSemilattice._.refl"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T168 -> AgdaAny -> AgdaAny
d206 v0 v1 v2 v3 = du206 v3
du206 :: T168 -> AgdaAny -> AgdaAny
du206 v0
  = let v1 = d194 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name208 = "Relation.Binary.Lattice.JoinSemilattice._.reflexive"
d208 :: T168 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d208 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d194 (coe v0))))))))
name210 = "Relation.Binary.Lattice.JoinSemilattice._.supremum"
d210 ::
  T168 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d210 v0 = coe (d90 (coe (d194 (coe v0))))
name212 = "Relation.Binary.Lattice.JoinSemilattice._.trans"
d212 ::
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d194 (coe v0))))))))
name214 = "Relation.Binary.Lattice.JoinSemilattice._.x≤x∨y"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 -> AgdaAny -> AgdaAny -> AgdaAny
d214 v0 v1 v2 v3 = du214 v3
du214 :: T168 -> AgdaAny -> AgdaAny -> AgdaAny
du214 v0
  = let v1 = d194 (coe v0) in
    coe
      (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v1 v2 v3))
name216 = "Relation.Binary.Lattice.JoinSemilattice._.y≤x∨y"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0 v1 v2 v3 = du216 v3
du216 :: T168 -> AgdaAny -> AgdaAny -> AgdaAny
du216 v0
  = let v1 = d194 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3))))
name218 = "Relation.Binary.Lattice.JoinSemilattice._.∨-least"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0 v1 v2 v3 = du218 v3
du218 ::
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du218 v0
  = let v1 = d194 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)) v4)
name220 = "Relation.Binary.Lattice.JoinSemilattice._.∼-resp-≈"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d220 v0 v1 v2 v3 = du220 v3
du220 :: T168 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du220 v0
  = let v1 = d194 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name222 = "Relation.Binary.Lattice.JoinSemilattice._.∼-respʳ-≈"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d222 v0 v1 v2 v3 = du222 v3
du222 ::
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du222 v0
  = let v1 = d194 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name224 = "Relation.Binary.Lattice.JoinSemilattice._.∼-respˡ-≈"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 v1 v2 v3 = du224 v3
du224 ::
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du224 v0
  = let v1 = d194 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name228 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.refl"
d228 :: T168 -> AgdaAny -> AgdaAny
d228 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d194 (coe v0))))))))))
name230 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.reflexive"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d230 v0 v1 v2 v3 = du230 v3
du230 ::
  T168 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du230 v0
  = let v1 = d194 (coe v0) in
    let v2 = d88 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v3))) v4)
name232 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.sym"
d232 :: T168 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d232 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d194 (coe v0))))))))))
name234 = "Relation.Binary.Lattice.JoinSemilattice._.Eq.trans"
d234 ::
  T168 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d234 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d194 (coe v0))))))))))
name236 = "Relation.Binary.Lattice.JoinSemilattice.poset"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 -> MAlonzo.Code.Relation.Binary.T310
d236 v0 v1 v2 v3 = du236 v3
du236 :: T168 -> MAlonzo.Code.Relation.Binary.T310
du236 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1973 v4) erased
      erased erased (d88 (coe (d194 (coe v0))))
name240 = "Relation.Binary.Lattice.JoinSemilattice._.preorder"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T168 -> MAlonzo.Code.Relation.Binary.T74
d240 v0 v1 v2 v3 = du240 v3
du240 :: T168 -> MAlonzo.Code.Relation.Binary.T74
du240 v0
  = coe (MAlonzo.Code.Relation.Binary.du364 (coe (du236 (coe v0))))
name258 = "Relation.Binary.Lattice.IsBoundedJoinSemilattice"
d258 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T258 = C2657 T68 (AgdaAny -> AgdaAny)
name280
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice.isJoinSemilattice"
d280 :: T258 -> T68
d280 v0
  = case coe v0 of
      C2657 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name282
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice.minimum"
d282 :: T258 -> AgdaAny -> AgdaAny
d282 v0
  = case coe v0 of
      C2657 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name286
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.antisym"
d286 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d286 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d88 (coe (d280 (coe v0))))))
name288
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isEquivalence"
d288 :: T258 -> MAlonzo.Code.Relation.Binary.Core.T402
d288 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d280 (coe v0))))))))
name290
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPartialOrder"
d290 :: T258 -> MAlonzo.Code.Relation.Binary.T256
d290 v0 = coe (d88 (coe (d280 (coe v0))))
name292
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.isPreorder"
d292 :: T258 -> MAlonzo.Code.Relation.Binary.T16
d292 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d88 (coe (d280 (coe v0))))))
name294 = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.refl"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T258 -> AgdaAny -> AgdaAny
d294 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du294 v8
du294 :: T258 -> AgdaAny -> AgdaAny
du294 v0
  = let v1 = d280 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name296
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.reflexive"
d296 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d296 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d280 (coe v0))))))))
name298
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.supremum"
d298 ::
  T258 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d298 v0 = coe (d90 (coe (d280 (coe v0))))
name300
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.trans"
d300 ::
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d300 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d280 (coe v0))))))))
name302
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.x≤x∨y"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T258 -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du302 v8
du302 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny
du302 v0
  = let v1 = d280 (coe v0) in
    coe
      (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v1 v2 v3))
name304
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.y≤x∨y"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T258 -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du304 v8
du304 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny
du304 v0
  = let v1 = d280 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3))))
name306
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∨-least"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du306 v8
du306 ::
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du306 v0
  = let v1 = d280 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)) v4)
name308
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-resp-≈"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T258 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d308 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du308 v8
du308 :: T258 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du308 v0
  = let v1 = d280 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name310
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-respʳ-≈"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d310 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du310 v8
du310 ::
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du310 v0
  = let v1 = d280 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name312
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.∼-respˡ-≈"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d312 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du312 v8
du312 ::
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du312 v0
  = let v1 = d280 (coe v0) in
    let v2 = d88 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name316
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.refl"
d316 :: T258 -> AgdaAny -> AgdaAny
d316 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d280 (coe v0))))))))))
name318
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.reflexive"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T258 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d318 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du318 v8
du318 ::
  T258 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du318 v0
  = let v1 = d280 (coe v0) in
    let v2 = d88 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v3))) v4)
name320
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.sym"
d320 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d320 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d280 (coe v0))))))))))
name322
  = "Relation.Binary.Lattice.IsBoundedJoinSemilattice._.Eq.trans"
d322 ::
  T258 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d322 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d280 (coe v0))))))))))
name330 = "Relation.Binary.Lattice.BoundedJoinSemilattice"
d330 a0 a1 a2 = ()
data T330 = C3359 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny T258
name350 = "Relation.Binary.Lattice.BoundedJoinSemilattice.Carrier"
d350 :: T330 -> ()
d350 = erased
name352 = "Relation.Binary.Lattice.BoundedJoinSemilattice._≈_"
d352 :: T330 -> AgdaAny -> AgdaAny -> ()
d352 = erased
name354 = "Relation.Binary.Lattice.BoundedJoinSemilattice._≤_"
d354 :: T330 -> AgdaAny -> AgdaAny -> ()
d354 = erased
name356 = "Relation.Binary.Lattice.BoundedJoinSemilattice._∨_"
d356 :: T330 -> AgdaAny -> AgdaAny -> AgdaAny
d356 v0
  = case coe v0 of
      C3359 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name358 = "Relation.Binary.Lattice.BoundedJoinSemilattice.⊥"
d358 :: T330 -> AgdaAny
d358 v0
  = case coe v0 of
      C3359 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name360
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.isBoundedJoinSemilattice"
d360 :: T330 -> T258
d360 v0
  = case coe v0 of
      C3359 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name364
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.antisym"
d364 :: T330 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d364 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))
name366
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isEquivalence"
d366 :: T330 -> MAlonzo.Code.Relation.Binary.Core.T402
d366 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))))
name368
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isJoinSemilattice"
d368 :: T330 -> T68
d368 v0 = coe (d280 (coe (d360 (coe v0))))
name370
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isPartialOrder"
d370 :: T330 -> MAlonzo.Code.Relation.Binary.T256
d370 v0 = coe (d88 (coe (d280 (coe (d360 (coe v0))))))
name372
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.isPreorder"
d372 :: T330 -> MAlonzo.Code.Relation.Binary.T16
d372 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))
name374
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.minimum"
d374 :: T330 -> AgdaAny -> AgdaAny
d374 v0 = coe (d282 (coe (d360 (coe v0))))
name376 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.refl"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T330 -> AgdaAny -> AgdaAny
d376 v0 v1 v2 v3 = du376 v3
du376 :: T330 -> AgdaAny -> AgdaAny
du376 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name378
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.reflexive"
d378 :: T330 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d378 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))))
name380
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.supremum"
d380 ::
  T330 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d380 v0 = coe (d90 (coe (d280 (coe (d360 (coe v0))))))
name382 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.trans"
d382 ::
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d382 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))))
name384 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.x≤x∨y"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 -> AgdaAny -> AgdaAny -> AgdaAny
d384 v0 v1 v2 v3 = du384 v3
du384 :: T330 -> AgdaAny -> AgdaAny -> AgdaAny
du384 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name386 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.y≤x∨y"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 -> AgdaAny -> AgdaAny -> AgdaAny
d386 v0 v1 v2 v3 = du386 v3
du386 :: T330 -> AgdaAny -> AgdaAny -> AgdaAny
du386 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4))))
name388
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∨-least"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d388 v0 v1 v2 v3 = du388 v3
du388 ::
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du388 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name390
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-resp-≈"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d390 v0 v1 v2 v3 = du390 v3
du390 :: T330 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du390 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name392
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-respʳ-≈"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d392 v0 v1 v2 v3 = du392 v3
du392 ::
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du392 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name394
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.∼-respˡ-≈"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d394 v0 v1 v2 v3 = du394 v3
du394 ::
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du394 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    let v3 = d88 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name398
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.refl"
d398 :: T330 -> AgdaAny -> AgdaAny
d398 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))))))
name400
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.reflexive"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d400 v0 v1 v2 v3 = du400 v3
du400 ::
  T330 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du400 v0
  = let v1 = d360 (coe v0) in
    let v2 = d280 (coe v1) in
    let v3 = d88 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.d274 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v4))) v5)
name402 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.sym"
d402 :: T330 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d402 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))))))
name404
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.Eq.trans"
d404 ::
  T330 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d404 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d88 (coe (d280 (coe (d360 (coe v0))))))))))))
name406
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.joinSemilattice"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T330 -> T168
d406 v0 v1 v2 v3 = du406 v3
du406 :: T330 -> T168
du406 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2209 v4 v5) erased erased erased
      (d356 (coe v0)) (d280 (coe (d360 (coe v0))))
name408
  = "Relation.Binary.Lattice.BoundedJoinSemilattice.joinSemiLattice"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T330 -> T168
d408 v0 v1 v2 v3 = du408 v3
du408 :: T330 -> T168
du408 v0 = coe (du406 (coe v0))
name412 = "Relation.Binary.Lattice.BoundedJoinSemilattice._.poset"
d412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 -> MAlonzo.Code.Relation.Binary.T310
d412 v0 v1 v2 v3 = du412 v3
du412 :: T330 -> MAlonzo.Code.Relation.Binary.T310
du412 v0 = coe (du236 (coe (du406 (coe v0))))
name414
  = "Relation.Binary.Lattice.BoundedJoinSemilattice._.preorder"
d414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T330 -> MAlonzo.Code.Relation.Binary.T74
d414 v0 v1 v2 v3 = du414 v3
du414 :: T330 -> MAlonzo.Code.Relation.Binary.T74
du414 v0
  = let v1 = du406 (coe v0) in
    coe (MAlonzo.Code.Relation.Binary.du364 (coe (du236 (coe v1))))
name430 = "Relation.Binary.Lattice.IsMeetSemilattice"
d430 a0 a1 a2 a3 a4 a5 a6 = ()
data T430
  = C3869 MAlonzo.Code.Relation.Binary.T256
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name450
  = "Relation.Binary.Lattice.IsMeetSemilattice.isPartialOrder"
d450 :: T430 -> MAlonzo.Code.Relation.Binary.T256
d450 v0
  = case coe v0 of
      C3869 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name452 = "Relation.Binary.Lattice.IsMeetSemilattice.infimum"
d452 ::
  T430 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d452 v0
  = case coe v0 of
      C3869 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name458 = "Relation.Binary.Lattice.IsMeetSemilattice.x∧y≤x"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T430 -> AgdaAny -> AgdaAny -> AgdaAny
d458 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du458 v7 v8 v9
du458 :: T430 -> AgdaAny -> AgdaAny -> AgdaAny
du458 v0 v1 v2
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v0 v1 v2))
name470 = "Relation.Binary.Lattice.IsMeetSemilattice.x∧y≤y"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T430 -> AgdaAny -> AgdaAny -> AgdaAny
d470 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du470 v7 v8 v9
du470 :: T430 -> AgdaAny -> AgdaAny -> AgdaAny
du470 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v0 v1 v2))))
name484 = "Relation.Binary.Lattice.IsMeetSemilattice.∧-greatest"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d484 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du484 v7 v8 v9 v10
du484 ::
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du484 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30
      (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v0 v2 v3)) v1
name496 = "Relation.Binary.Lattice.IsMeetSemilattice._.antisym"
d496 :: T430 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d496 v0
  = coe (MAlonzo.Code.Relation.Binary.d276 (coe (d450 (coe v0))))
name498
  = "Relation.Binary.Lattice.IsMeetSemilattice._.isEquivalence"
d498 :: T430 -> MAlonzo.Code.Relation.Binary.Core.T402
d498 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d450 (coe v0))))))
name500 = "Relation.Binary.Lattice.IsMeetSemilattice._.isPreorder"
d500 :: T430 -> MAlonzo.Code.Relation.Binary.T16
d500 v0
  = coe (MAlonzo.Code.Relation.Binary.d274 (coe (d450 (coe v0))))
name502 = "Relation.Binary.Lattice.IsMeetSemilattice._.refl"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T430 -> AgdaAny -> AgdaAny
d502 v0 v1 v2 v3 v4 v5 v6 v7 = du502 v7
du502 :: T430 -> AgdaAny -> AgdaAny
du502 v0
  = let v1 = d450 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name504 = "Relation.Binary.Lattice.IsMeetSemilattice._.reflexive"
d504 :: T430 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d504 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d450 (coe v0))))))
name506 = "Relation.Binary.Lattice.IsMeetSemilattice._.trans"
d506 ::
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d506 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d450 (coe v0))))))
name508 = "Relation.Binary.Lattice.IsMeetSemilattice._.∼-resp-≈"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T430 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d508 v0 v1 v2 v3 v4 v5 v6 v7 = du508 v7
du508 :: T430 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du508 v0
  = let v1 = d450 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name510 = "Relation.Binary.Lattice.IsMeetSemilattice._.∼-respʳ-≈"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d510 v0 v1 v2 v3 v4 v5 v6 v7 = du510 v7
du510 ::
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du510 v0
  = let v1 = d450 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name512 = "Relation.Binary.Lattice.IsMeetSemilattice._.∼-respˡ-≈"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d512 v0 v1 v2 v3 v4 v5 v6 v7 = du512 v7
du512 ::
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du512 v0
  = let v1 = d450 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name516 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.refl"
d516 :: T430 -> AgdaAny -> AgdaAny
d516 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d450 (coe v0))))))))
name518
  = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.reflexive"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T430 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d518 v0 v1 v2 v3 v4 v5 v6 v7 = du518 v7
du518 ::
  T430 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du518 v0
  = let v1 = d450 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.d274 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v2))) v3)
name520 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.sym"
d520 :: T430 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d520 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d450 (coe v0))))))))
name522 = "Relation.Binary.Lattice.IsMeetSemilattice._.Eq.trans"
d522 ::
  T430 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d522 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d450 (coe v0))))))))
name530 = "Relation.Binary.Lattice.MeetSemilattice"
d530 a0 a1 a2 = ()
data T530 = C5835 (AgdaAny -> AgdaAny -> AgdaAny) T430
name548 = "Relation.Binary.Lattice.MeetSemilattice.Carrier"
d548 :: T530 -> ()
d548 = erased
name550 = "Relation.Binary.Lattice.MeetSemilattice._≈_"
d550 :: T530 -> AgdaAny -> AgdaAny -> ()
d550 = erased
name552 = "Relation.Binary.Lattice.MeetSemilattice._≤_"
d552 :: T530 -> AgdaAny -> AgdaAny -> ()
d552 = erased
name554 = "Relation.Binary.Lattice.MeetSemilattice._∧_"
d554 :: T530 -> AgdaAny -> AgdaAny -> AgdaAny
d554 v0
  = case coe v0 of
      C5835 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name556
  = "Relation.Binary.Lattice.MeetSemilattice.isMeetSemilattice"
d556 :: T530 -> T430
d556 v0
  = case coe v0 of
      C5835 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name560 = "Relation.Binary.Lattice.MeetSemilattice._.antisym"
d560 :: T530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d560 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d450 (coe (d556 (coe v0))))))
name562 = "Relation.Binary.Lattice.MeetSemilattice._.infimum"
d562 ::
  T530 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d562 v0 = coe (d452 (coe (d556 (coe v0))))
name564 = "Relation.Binary.Lattice.MeetSemilattice._.isEquivalence"
d564 :: T530 -> MAlonzo.Code.Relation.Binary.Core.T402
d564 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d556 (coe v0))))))))
name566
  = "Relation.Binary.Lattice.MeetSemilattice._.isPartialOrder"
d566 :: T530 -> MAlonzo.Code.Relation.Binary.T256
d566 v0 = coe (d450 (coe (d556 (coe v0))))
name568 = "Relation.Binary.Lattice.MeetSemilattice._.isPreorder"
d568 :: T530 -> MAlonzo.Code.Relation.Binary.T16
d568 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d450 (coe (d556 (coe v0))))))
name570 = "Relation.Binary.Lattice.MeetSemilattice._.refl"
d570 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T530 -> AgdaAny -> AgdaAny
d570 v0 v1 v2 v3 = du570 v3
du570 :: T530 -> AgdaAny -> AgdaAny
du570 v0
  = let v1 = d556 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name572 = "Relation.Binary.Lattice.MeetSemilattice._.reflexive"
d572 :: T530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d572 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d556 (coe v0))))))))
name574 = "Relation.Binary.Lattice.MeetSemilattice._.trans"
d574 ::
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d574 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d556 (coe v0))))))))
name576 = "Relation.Binary.Lattice.MeetSemilattice._.x∧y≤x"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 -> AgdaAny -> AgdaAny -> AgdaAny
d576 v0 v1 v2 v3 = du576 v3
du576 :: T530 -> AgdaAny -> AgdaAny -> AgdaAny
du576 v0
  = let v1 = d556 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v1 v2 v3))
name578 = "Relation.Binary.Lattice.MeetSemilattice._.x∧y≤y"
d578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 -> AgdaAny -> AgdaAny -> AgdaAny
d578 v0 v1 v2 v3 = du578 v3
du578 :: T530 -> AgdaAny -> AgdaAny -> AgdaAny
du578 v0
  = let v1 = d556 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v1 v2 v3))))
name580 = "Relation.Binary.Lattice.MeetSemilattice._.∧-greatest"
d580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d580 v0 v1 v2 v3 = du580 v3
du580 ::
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du580 v0
  = let v1 = d556 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v1 v3 v4)) v2)
name582 = "Relation.Binary.Lattice.MeetSemilattice._.∼-resp-≈"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d582 v0 v1 v2 v3 = du582 v3
du582 :: T530 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du582 v0
  = let v1 = d556 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name584 = "Relation.Binary.Lattice.MeetSemilattice._.∼-respʳ-≈"
d584 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d584 v0 v1 v2 v3 = du584 v3
du584 ::
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du584 v0
  = let v1 = d556 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name586 = "Relation.Binary.Lattice.MeetSemilattice._.∼-respˡ-≈"
d586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d586 v0 v1 v2 v3 = du586 v3
du586 ::
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du586 v0
  = let v1 = d556 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name590 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.refl"
d590 :: T530 -> AgdaAny -> AgdaAny
d590 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d556 (coe v0))))))))))
name592 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.reflexive"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d592 v0 v1 v2 v3 = du592 v3
du592 ::
  T530 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du592 v0
  = let v1 = d556 (coe v0) in
    let v2 = d450 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v3))) v4)
name594 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.sym"
d594 :: T530 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d594 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d556 (coe v0))))))))))
name596 = "Relation.Binary.Lattice.MeetSemilattice._.Eq.trans"
d596 ::
  T530 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d596 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d556 (coe v0))))))))))
name598 = "Relation.Binary.Lattice.MeetSemilattice.poset"
d598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 -> MAlonzo.Code.Relation.Binary.T310
d598 v0 v1 v2 v3 = du598 v3
du598 :: T530 -> MAlonzo.Code.Relation.Binary.T310
du598 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1973 v4) erased
      erased erased (d450 (coe (d556 (coe v0))))
name602 = "Relation.Binary.Lattice.MeetSemilattice._.preorder"
d602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T530 -> MAlonzo.Code.Relation.Binary.T74
d602 v0 v1 v2 v3 = du602 v3
du602 :: T530 -> MAlonzo.Code.Relation.Binary.T74
du602 v0
  = coe (MAlonzo.Code.Relation.Binary.du364 (coe (du598 (coe v0))))
name620 = "Relation.Binary.Lattice.IsBoundedMeetSemilattice"
d620 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T620 = C6283 T430 (AgdaAny -> AgdaAny)
name642
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice.isMeetSemilattice"
d642 :: T620 -> T430
d642 v0
  = case coe v0 of
      C6283 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name644
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice.maximum"
d644 :: T620 -> AgdaAny -> AgdaAny
d644 v0
  = case coe v0 of
      C6283 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name648
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.antisym"
d648 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d648 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d450 (coe (d642 (coe v0))))))
name650
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.infimum"
d650 ::
  T620 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d650 v0 = coe (d452 (coe (d642 (coe v0))))
name652
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isEquivalence"
d652 :: T620 -> MAlonzo.Code.Relation.Binary.Core.T402
d652 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d642 (coe v0))))))))
name654
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPartialOrder"
d654 :: T620 -> MAlonzo.Code.Relation.Binary.T256
d654 v0 = coe (d450 (coe (d642 (coe v0))))
name656
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.isPreorder"
d656 :: T620 -> MAlonzo.Code.Relation.Binary.T16
d656 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d450 (coe (d642 (coe v0))))))
name658 = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.refl"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T620 -> AgdaAny -> AgdaAny
d658 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du658 v8
du658 :: T620 -> AgdaAny -> AgdaAny
du658 v0
  = let v1 = d642 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name660
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.reflexive"
d660 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d660 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d642 (coe v0))))))))
name662
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.trans"
d662 ::
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d662 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d642 (coe v0))))))))
name664
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.x∧y≤x"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T620 -> AgdaAny -> AgdaAny -> AgdaAny
d664 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du664 v8
du664 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny
du664 v0
  = let v1 = d642 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v1 v2 v3))
name666
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.x∧y≤y"
d666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T620 -> AgdaAny -> AgdaAny -> AgdaAny
d666 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du666 v8
du666 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny
du666 v0
  = let v1 = d642 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v1 v2 v3))))
name668
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∧-greatest"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d668 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du668 v8
du668 ::
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du668 v0
  = let v1 = d642 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v1 v3 v4)) v2)
name670
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-resp-≈"
d670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T620 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d670 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du670 v8
du670 :: T620 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du670 v0
  = let v1 = d642 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name672
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-respʳ-≈"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d672 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du672 v8
du672 ::
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du672 v0
  = let v1 = d642 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name674
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.∼-respˡ-≈"
d674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d674 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du674 v8
du674 ::
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du674 v0
  = let v1 = d642 (coe v0) in
    let v2 = d450 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name678
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.refl"
d678 :: T620 -> AgdaAny -> AgdaAny
d678 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d642 (coe v0))))))))))
name680
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.reflexive"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T620 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d680 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du680 v8
du680 ::
  T620 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du680 v0
  = let v1 = d642 (coe v0) in
    let v2 = d450 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v3))) v4)
name682
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.sym"
d682 :: T620 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d682 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d642 (coe v0))))))))))
name684
  = "Relation.Binary.Lattice.IsBoundedMeetSemilattice._.Eq.trans"
d684 ::
  T620 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d684 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d642 (coe v0))))))))))
name692 = "Relation.Binary.Lattice.BoundedMeetSemilattice"
d692 a0 a1 a2 = ()
data T692 = C6985 (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny T620
name712 = "Relation.Binary.Lattice.BoundedMeetSemilattice.Carrier"
d712 :: T692 -> ()
d712 = erased
name714 = "Relation.Binary.Lattice.BoundedMeetSemilattice._≈_"
d714 :: T692 -> AgdaAny -> AgdaAny -> ()
d714 = erased
name716 = "Relation.Binary.Lattice.BoundedMeetSemilattice._≤_"
d716 :: T692 -> AgdaAny -> AgdaAny -> ()
d716 = erased
name718 = "Relation.Binary.Lattice.BoundedMeetSemilattice._∧_"
d718 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny
d718 v0
  = case coe v0 of
      C6985 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name720 = "Relation.Binary.Lattice.BoundedMeetSemilattice.⊤"
d720 :: T692 -> AgdaAny
d720 v0
  = case coe v0 of
      C6985 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name722
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.isBoundedMeetSemilattice"
d722 :: T692 -> T620
d722 v0
  = case coe v0 of
      C6985 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name726
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.antisym"
d726 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d726 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))
name728
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.infimum"
d728 ::
  T692 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d728 v0 = coe (d452 (coe (d642 (coe (d722 (coe v0))))))
name730
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isEquivalence"
d730 :: T692 -> MAlonzo.Code.Relation.Binary.Core.T402
d730 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))))
name732
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isMeetSemilattice"
d732 :: T692 -> T430
d732 v0 = coe (d642 (coe (d722 (coe v0))))
name734
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isPartialOrder"
d734 :: T692 -> MAlonzo.Code.Relation.Binary.T256
d734 v0 = coe (d450 (coe (d642 (coe (d722 (coe v0))))))
name736
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.isPreorder"
d736 :: T692 -> MAlonzo.Code.Relation.Binary.T16
d736 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))
name738
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.maximum"
d738 :: T692 -> AgdaAny -> AgdaAny
d738 v0 = coe (d644 (coe (d722 (coe v0))))
name740 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.refl"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T692 -> AgdaAny -> AgdaAny
d740 v0 v1 v2 v3 = du740 v3
du740 :: T692 -> AgdaAny -> AgdaAny
du740 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    let v3 = d450 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name742
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.reflexive"
d742 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d742 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))))
name744 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.trans"
d744 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d744 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))))
name746 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.x∧y≤x"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny
d746 v0 v1 v2 v3 = du746 v3
du746 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny
du746 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v2 v3 v4))
name748 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.x∧y≤y"
d748 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 -> AgdaAny -> AgdaAny -> AgdaAny
d748 v0 v1 v2 v3 = du748 v3
du748 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny
du748 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v3 v4))))
name750
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∧-greatest"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d750 v0 v1 v2 v3 = du750 v3
du750 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du750 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v4 v5)) v3)
name752
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-resp-≈"
d752 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d752 v0 v1 v2 v3 = du752 v3
du752 :: T692 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du752 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    let v3 = d450 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name754
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-respʳ-≈"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d754 v0 v1 v2 v3 = du754 v3
du754 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du754 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    let v3 = d450 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name756
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.∼-respˡ-≈"
d756 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d756 v0 v1 v2 v3 = du756 v3
du756 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du756 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    let v3 = d450 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name760
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.refl"
d760 :: T692 -> AgdaAny -> AgdaAny
d760 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))))))
name762
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.reflexive"
d762 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d762 v0 v1 v2 v3 = du762 v3
du762 ::
  T692 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du762 v0
  = let v1 = d722 (coe v0) in
    let v2 = d642 (coe v1) in
    let v3 = d450 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.d274 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v4))) v5)
name764 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.sym"
d764 :: T692 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d764 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))))))
name766
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.Eq.trans"
d766 ::
  T692 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d766 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d450 (coe (d642 (coe (d722 (coe v0))))))))))))
name768
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.meetSemilattice"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T692 -> T530
d768 v0 v1 v2 v3 = du768 v3
du768 :: T692 -> T530
du768 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C5835 v4 v5) erased erased erased
      (d718 (coe v0)) (d642 (coe (d722 (coe v0))))
name770
  = "Relation.Binary.Lattice.BoundedMeetSemilattice.meetSemiLattice"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T692 -> T530
d770 v0 v1 v2 v3 = du770 v3
du770 :: T692 -> T530
du770 v0 = coe (du768 (coe v0))
name774 = "Relation.Binary.Lattice.BoundedMeetSemilattice._.poset"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 -> MAlonzo.Code.Relation.Binary.T310
d774 v0 v1 v2 v3 = du774 v3
du774 :: T692 -> MAlonzo.Code.Relation.Binary.T310
du774 v0 = coe (du598 (coe (du768 (coe v0))))
name776
  = "Relation.Binary.Lattice.BoundedMeetSemilattice._.preorder"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T692 -> MAlonzo.Code.Relation.Binary.T74
d776 v0 v1 v2 v3 = du776 v3
du776 :: T692 -> MAlonzo.Code.Relation.Binary.T74
du776 v0
  = let v1 = du768 (coe v0) in
    coe (MAlonzo.Code.Relation.Binary.du364 (coe (du598 (coe v1))))
name794 = "Relation.Binary.Lattice.IsLattice"
d794 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T794
  = C7499 MAlonzo.Code.Relation.Binary.T256
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
          (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name818 = "Relation.Binary.Lattice.IsLattice.isPartialOrder"
d818 :: T794 -> MAlonzo.Code.Relation.Binary.T256
d818 v0
  = case coe v0 of
      C7499 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name820 = "Relation.Binary.Lattice.IsLattice.supremum"
d820 ::
  T794 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d820 v0
  = case coe v0 of
      C7499 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name822 = "Relation.Binary.Lattice.IsLattice.infimum"
d822 ::
  T794 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d822 v0
  = case coe v0 of
      C7499 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name824 = "Relation.Binary.Lattice.IsLattice.isJoinSemilattice"
d824 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T794 -> T68
d824 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du824 v8
du824 :: T794 -> T68
du824 v0 = coe (C243 (coe (d818 (coe v0))) (coe (d820 (coe v0))))
name826 = "Relation.Binary.Lattice.IsLattice.isMeetSemilattice"
d826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T794 -> T430
d826 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du826 v8
du826 :: T794 -> T430
du826 v0 = coe (C3869 (coe (d818 (coe v0))) (coe (d822 (coe v0))))
name830 = "Relation.Binary.Lattice.IsLattice._.x≤x∨y"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 -> AgdaAny -> AgdaAny -> AgdaAny
d830 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du830 v8
du830 :: T794 -> AgdaAny -> AgdaAny -> AgdaAny
du830 v0
  = let v1 = du824 (coe v0) in
    coe
      (\ v2 v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v1 v2 v3))
name832 = "Relation.Binary.Lattice.IsLattice._.y≤x∨y"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 -> AgdaAny -> AgdaAny -> AgdaAny
d832 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du832 v8
du832 :: T794 -> AgdaAny -> AgdaAny -> AgdaAny
du832 v0
  = let v1 = du824 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3))))
name834 = "Relation.Binary.Lattice.IsLattice._.∨-least"
d834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d834 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du834 v8
du834 ::
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du834 v0
  = let v1 = du824 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v1 v2 v3)) v4)
name838 = "Relation.Binary.Lattice.IsLattice._.x∧y≤x"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 -> AgdaAny -> AgdaAny -> AgdaAny
d838 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du838 v8
du838 :: T794 -> AgdaAny -> AgdaAny -> AgdaAny
du838 v0
  = let v1 = du826 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v1 v2 v3))
name840 = "Relation.Binary.Lattice.IsLattice._.x∧y≤y"
d840 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 -> AgdaAny -> AgdaAny -> AgdaAny
d840 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du840 v8
du840 :: T794 -> AgdaAny -> AgdaAny -> AgdaAny
du840 v0
  = let v1 = du826 (coe v0) in
    coe
      (\ v2 v3 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v1 v2 v3))))
name842 = "Relation.Binary.Lattice.IsLattice._.∧-greatest"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d842 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du842 v8
du842 ::
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du842 v0
  = let v1 = du826 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v1 v3 v4)) v2)
name846 = "Relation.Binary.Lattice.IsLattice._.antisym"
d846 :: T794 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0
  = coe (MAlonzo.Code.Relation.Binary.d276 (coe (d818 (coe v0))))
name848 = "Relation.Binary.Lattice.IsLattice._.isEquivalence"
d848 :: T794 -> MAlonzo.Code.Relation.Binary.Core.T402
d848 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d818 (coe v0))))))
name850 = "Relation.Binary.Lattice.IsLattice._.isPreorder"
d850 :: T794 -> MAlonzo.Code.Relation.Binary.T16
d850 v0
  = coe (MAlonzo.Code.Relation.Binary.d274 (coe (d818 (coe v0))))
name852 = "Relation.Binary.Lattice.IsLattice._.refl"
d852 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T794 -> AgdaAny -> AgdaAny
d852 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du852 v8
du852 :: T794 -> AgdaAny -> AgdaAny
du852 v0
  = let v1 = d818 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name854 = "Relation.Binary.Lattice.IsLattice._.reflexive"
d854 :: T794 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d818 (coe v0))))))
name856 = "Relation.Binary.Lattice.IsLattice._.trans"
d856 ::
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d818 (coe v0))))))
name858 = "Relation.Binary.Lattice.IsLattice._.∼-resp-≈"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d858 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du858 v8
du858 :: T794 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du858 v0
  = let v1 = d818 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name860 = "Relation.Binary.Lattice.IsLattice._.∼-respʳ-≈"
d860 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d860 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du860 v8
du860 ::
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du860 v0
  = let v1 = d818 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name862 = "Relation.Binary.Lattice.IsLattice._.∼-respˡ-≈"
d862 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d862 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du862 v8
du862 ::
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du862 v0
  = let v1 = d818 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v1))))
name866 = "Relation.Binary.Lattice.IsLattice._.Eq.refl"
d866 :: T794 -> AgdaAny -> AgdaAny
d866 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d818 (coe v0))))))))
name868 = "Relation.Binary.Lattice.IsLattice._.Eq.reflexive"
d868 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T794 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d868 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du868 v8
du868 ::
  T794 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du868 v0
  = let v1 = d818 (coe v0) in
    let v2 = MAlonzo.Code.Relation.Binary.d274 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v2))) v3)
name870 = "Relation.Binary.Lattice.IsLattice._.Eq.sym"
d870 :: T794 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d870 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d818 (coe v0))))))))
name872 = "Relation.Binary.Lattice.IsLattice._.Eq.trans"
d872 ::
  T794 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d872 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe (MAlonzo.Code.Relation.Binary.d274 (coe (d818 (coe v0))))))))
name880 = "Relation.Binary.Lattice.Lattice"
d880 a0 a1 a2 = ()
data T880
  = C8571 (AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny) T794
name900 = "Relation.Binary.Lattice.Lattice.Carrier"
d900 :: T880 -> ()
d900 = erased
name902 = "Relation.Binary.Lattice.Lattice._≈_"
d902 :: T880 -> AgdaAny -> AgdaAny -> ()
d902 = erased
name904 = "Relation.Binary.Lattice.Lattice._≤_"
d904 :: T880 -> AgdaAny -> AgdaAny -> ()
d904 = erased
name906 = "Relation.Binary.Lattice.Lattice._∨_"
d906 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny
d906 v0
  = case coe v0 of
      C8571 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name908 = "Relation.Binary.Lattice.Lattice._∧_"
d908 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny
d908 v0
  = case coe v0 of
      C8571 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name910 = "Relation.Binary.Lattice.Lattice.isLattice"
d910 :: T880 -> T794
d910 v0
  = case coe v0 of
      C8571 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name914 = "Relation.Binary.Lattice.Lattice._.antisym"
d914 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d914 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d910 (coe v0))))))
name916 = "Relation.Binary.Lattice.Lattice._.infimum"
d916 ::
  T880 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d916 v0 = coe (d822 (coe (d910 (coe v0))))
name918 = "Relation.Binary.Lattice.Lattice._.isEquivalence"
d918 :: T880 -> MAlonzo.Code.Relation.Binary.Core.T402
d918 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d910 (coe v0))))))))
name920 = "Relation.Binary.Lattice.Lattice._.isJoinSemilattice"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T880 -> T68
d920 v0 v1 v2 v3 = du920 v3
du920 :: T880 -> T68
du920 v0 = coe (du824 (coe (d910 (coe v0))))
name922 = "Relation.Binary.Lattice.Lattice._.isMeetSemilattice"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T880 -> T430
d922 v0 v1 v2 v3 = du922 v3
du922 :: T880 -> T430
du922 v0 = coe (du826 (coe (d910 (coe v0))))
name924 = "Relation.Binary.Lattice.Lattice._.isPartialOrder"
d924 :: T880 -> MAlonzo.Code.Relation.Binary.T256
d924 v0 = coe (d818 (coe (d910 (coe v0))))
name926 = "Relation.Binary.Lattice.Lattice._.isPreorder"
d926 :: T880 -> MAlonzo.Code.Relation.Binary.T16
d926 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d910 (coe v0))))))
name928 = "Relation.Binary.Lattice.Lattice._.refl"
d928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T880 -> AgdaAny -> AgdaAny
d928 v0 v1 v2 v3 = du928 v3
du928 :: T880 -> AgdaAny -> AgdaAny
du928 v0
  = let v1 = d910 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name930 = "Relation.Binary.Lattice.Lattice._.reflexive"
d930 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d930 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d910 (coe v0))))))))
name932 = "Relation.Binary.Lattice.Lattice._.supremum"
d932 ::
  T880 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d932 v0 = coe (d820 (coe (d910 (coe v0))))
name934 = "Relation.Binary.Lattice.Lattice._.trans"
d934 ::
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d934 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d910 (coe v0))))))))
name936 = "Relation.Binary.Lattice.Lattice._.x∧y≤x"
d936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> AgdaAny -> AgdaAny -> AgdaAny
d936 v0 v1 v2 v3 = du936 v3
du936 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny
du936 v0
  = let v1 = d910 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v2 v3 v4))
name938 = "Relation.Binary.Lattice.Lattice._.x∧y≤y"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> AgdaAny -> AgdaAny -> AgdaAny
d938 v0 v1 v2 v3 = du938 v3
du938 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny
du938 v0
  = let v1 = d910 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v3 v4))))
name940 = "Relation.Binary.Lattice.Lattice._.x≤x∨y"
d940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> AgdaAny -> AgdaAny -> AgdaAny
d940 v0 v1 v2 v3 = du940 v3
du940 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny
du940 v0
  = let v1 = d910 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name942 = "Relation.Binary.Lattice.Lattice._.y≤x∨y"
d942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> AgdaAny -> AgdaAny -> AgdaAny
d942 v0 v1 v2 v3 = du942 v3
du942 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny
du942 v0
  = let v1 = d910 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4))))
name944 = "Relation.Binary.Lattice.Lattice._.∧-greatest"
d944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d944 v0 v1 v2 v3 = du944 v3
du944 ::
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du944 v0
  = let v1 = d910 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v4 v5)) v3)
name946 = "Relation.Binary.Lattice.Lattice._.∨-least"
d946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d946 v0 v1 v2 v3 = du946 v3
du946 ::
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du946 v0
  = let v1 = d910 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name948 = "Relation.Binary.Lattice.Lattice._.∼-resp-≈"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d948 v0 v1 v2 v3 = du948 v3
du948 :: T880 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du948 v0
  = let v1 = d910 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name950 = "Relation.Binary.Lattice.Lattice._.∼-respʳ-≈"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d950 v0 v1 v2 v3 = du950 v3
du950 ::
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du950 v0
  = let v1 = d910 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name952 = "Relation.Binary.Lattice.Lattice._.∼-respˡ-≈"
d952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d952 v0 v1 v2 v3 = du952 v3
du952 ::
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du952 v0
  = let v1 = d910 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name956 = "Relation.Binary.Lattice.Lattice._.Eq.refl"
d956 :: T880 -> AgdaAny -> AgdaAny
d956 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d910 (coe v0))))))))))
name958 = "Relation.Binary.Lattice.Lattice._.Eq.reflexive"
d958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d958 v0 v1 v2 v3 = du958 v3
du958 ::
  T880 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du958 v0
  = let v1 = d910 (coe v0) in
    let v2 = d818 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v3))) v4)
name960 = "Relation.Binary.Lattice.Lattice._.Eq.sym"
d960 :: T880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d960 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d910 (coe v0))))))))))
name962 = "Relation.Binary.Lattice.Lattice._.Eq.trans"
d962 ::
  T880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d962 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d910 (coe v0))))))))))
name964 = "Relation.Binary.Lattice.Lattice.setoid"
d964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> MAlonzo.Code.Relation.Binary.T128
d964 v0 v1 v2 v3 = du964 v3
du964 :: T880 -> MAlonzo.Code.Relation.Binary.T128
du964 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d910 (coe v0))))))))
name966 = "Relation.Binary.Lattice.Lattice.joinSemilattice"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T880 -> T168
d966 v0 v1 v2 v3 = du966 v3
du966 :: T880 -> T168
du966 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C2209 v4 v5) erased erased erased
      (d906 (coe v0)) (du824 (coe (d910 (coe v0))))
name968 = "Relation.Binary.Lattice.Lattice.meetSemilattice"
d968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T880 -> T530
d968 v0 v1 v2 v3 = du968 v3
du968 :: T880 -> T530
du968 v0
  = coe
      (\ v1 v2 v3 v4 v5 -> C5835 v4 v5) erased erased erased
      (d908 (coe v0)) (du826 (coe (d910 (coe v0))))
name972 = "Relation.Binary.Lattice.Lattice._.poset"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> MAlonzo.Code.Relation.Binary.T310
d972 v0 v1 v2 v3 = du972 v3
du972 :: T880 -> MAlonzo.Code.Relation.Binary.T310
du972 v0 = coe (du236 (coe (du966 (coe v0))))
name974 = "Relation.Binary.Lattice.Lattice._.preorder"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T880 -> MAlonzo.Code.Relation.Binary.T74
d974 v0 v1 v2 v3 = du974 v3
du974 :: T880 -> MAlonzo.Code.Relation.Binary.T74
du974 v0
  = let v1 = du966 (coe v0) in
    coe (MAlonzo.Code.Relation.Binary.du364 (coe (du236 (coe v1))))
name992 = "Relation.Binary.Lattice.IsDistributiveLattice"
d992 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T992 = C9263 T794 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name1014
  = "Relation.Binary.Lattice.IsDistributiveLattice.isLattice"
d1014 :: T992 -> T794
d1014 v0
  = case coe v0 of
      C9263 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1016
  = "Relation.Binary.Lattice.IsDistributiveLattice.∧-distribˡ-∨"
d1016 :: T992 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1016 v0
  = case coe v0 of
      C9263 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1020
  = "Relation.Binary.Lattice.IsDistributiveLattice._.antisym"
d1020 ::
  T992 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1020 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1014 (coe v0))))))
name1022
  = "Relation.Binary.Lattice.IsDistributiveLattice._.infimum"
d1022 ::
  T992 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1022 v0 = coe (d822 (coe (d1014 (coe v0))))
name1024
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isEquivalence"
d1024 :: T992 -> MAlonzo.Code.Relation.Binary.Core.T402
d1024 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1014 (coe v0))))))))
name1026
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isJoinSemilattice"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T992 -> T68
d1026 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1026 v8
du1026 :: T992 -> T68
du1026 v0 = coe (du824 (coe (d1014 (coe v0))))
name1028
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isMeetSemilattice"
d1028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T992 -> T430
d1028 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1028 v8
du1028 :: T992 -> T430
du1028 v0 = coe (du826 (coe (d1014 (coe v0))))
name1030
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isPartialOrder"
d1030 :: T992 -> MAlonzo.Code.Relation.Binary.T256
d1030 v0 = coe (d818 (coe (d1014 (coe v0))))
name1032
  = "Relation.Binary.Lattice.IsDistributiveLattice._.isPreorder"
d1032 :: T992 -> MAlonzo.Code.Relation.Binary.T16
d1032 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1014 (coe v0))))))
name1034 = "Relation.Binary.Lattice.IsDistributiveLattice._.refl"
d1034 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T992 -> AgdaAny -> AgdaAny
d1034 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1034 v8
du1034 :: T992 -> AgdaAny -> AgdaAny
du1034 v0
  = let v1 = d1014 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1036
  = "Relation.Binary.Lattice.IsDistributiveLattice._.reflexive"
d1036 :: T992 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1036 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1014 (coe v0))))))))
name1038
  = "Relation.Binary.Lattice.IsDistributiveLattice._.supremum"
d1038 ::
  T992 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1038 v0 = coe (d820 (coe (d1014 (coe v0))))
name1040 = "Relation.Binary.Lattice.IsDistributiveLattice._.trans"
d1040 ::
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1040 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1014 (coe v0))))))))
name1042 = "Relation.Binary.Lattice.IsDistributiveLattice._.x∧y≤x"
d1042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 -> AgdaAny -> AgdaAny -> AgdaAny
d1042 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1042 v8
du1042 :: T992 -> AgdaAny -> AgdaAny -> AgdaAny
du1042 v0
  = let v1 = d1014 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v2 v3 v4))
name1044 = "Relation.Binary.Lattice.IsDistributiveLattice._.x∧y≤y"
d1044 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 -> AgdaAny -> AgdaAny -> AgdaAny
d1044 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1044 v8
du1044 :: T992 -> AgdaAny -> AgdaAny -> AgdaAny
du1044 v0
  = let v1 = d1014 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v3 v4))))
name1046 = "Relation.Binary.Lattice.IsDistributiveLattice._.x≤x∨y"
d1046 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 -> AgdaAny -> AgdaAny -> AgdaAny
d1046 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1046 v8
du1046 :: T992 -> AgdaAny -> AgdaAny -> AgdaAny
du1046 v0
  = let v1 = d1014 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name1048 = "Relation.Binary.Lattice.IsDistributiveLattice._.y≤x∨y"
d1048 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 -> AgdaAny -> AgdaAny -> AgdaAny
d1048 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1048 v8
du1048 :: T992 -> AgdaAny -> AgdaAny -> AgdaAny
du1048 v0
  = let v1 = d1014 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4))))
name1050
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∧-greatest"
d1050 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1050 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1050 v8
du1050 ::
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1050 v0
  = let v1 = d1014 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v4 v5)) v3)
name1052
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∨-least"
d1052 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1052 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1052 v8
du1052 ::
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1052 v0
  = let v1 = d1014 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name1054
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∼-resp-≈"
d1054 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1054 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1054 v8
du1054 :: T992 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1054 v0
  = let v1 = d1014 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1056
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∼-respʳ-≈"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1056 v8
du1056 ::
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1056 v0
  = let v1 = d1014 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1058
  = "Relation.Binary.Lattice.IsDistributiveLattice._.∼-respˡ-≈"
d1058 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1058 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1058 v8
du1058 ::
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1058 v0
  = let v1 = d1014 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1062
  = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.refl"
d1062 :: T992 -> AgdaAny -> AgdaAny
d1062 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1014 (coe v0))))))))))
name1064
  = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.reflexive"
d1064 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T992 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1064 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1064 v8
du1064 ::
  T992 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1064 v0
  = let v1 = d1014 (coe v0) in
    let v2 = d818 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v3))) v4)
name1066 = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.sym"
d1066 :: T992 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1066 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1014 (coe v0))))))))))
name1068
  = "Relation.Binary.Lattice.IsDistributiveLattice._.Eq.trans"
d1068 ::
  T992 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1068 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1014 (coe v0))))))))))
name1076 = "Relation.Binary.Lattice.DistributiveLattice"
d1076 a0 a1 a2 = ()
data T1076
  = C10171 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) T992
name1096 = "Relation.Binary.Lattice.DistributiveLattice.Carrier"
d1096 :: T1076 -> ()
d1096 = erased
name1098 = "Relation.Binary.Lattice.DistributiveLattice._≈_"
d1098 :: T1076 -> AgdaAny -> AgdaAny -> ()
d1098 = erased
name1100 = "Relation.Binary.Lattice.DistributiveLattice._≤_"
d1100 :: T1076 -> AgdaAny -> AgdaAny -> ()
d1100 = erased
name1102 = "Relation.Binary.Lattice.DistributiveLattice._∨_"
d1102 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny
d1102 v0
  = case coe v0 of
      C10171 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1104 = "Relation.Binary.Lattice.DistributiveLattice._∧_"
d1104 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0
  = case coe v0 of
      C10171 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1106
  = "Relation.Binary.Lattice.DistributiveLattice.isDistributiveLattice"
d1106 :: T1076 -> T992
d1106 v0
  = case coe v0 of
      C10171 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1110
  = "Relation.Binary.Lattice.DistributiveLattice._.∧-distribˡ-∨"
d1110 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1110 v0 = coe (d1016 (coe (d1106 (coe v0))))
name1114
  = "Relation.Binary.Lattice.DistributiveLattice._.isLattice"
d1114 :: T1076 -> T794
d1114 v0 = coe (d1014 (coe (d1106 (coe v0))))
name1116 = "Relation.Binary.Lattice.DistributiveLattice.lattice"
d1116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> T880
d1116 v0 v1 v2 v3 = du1116 v3
du1116 :: T1076 -> T880
du1116 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C8571 v4 v5 v6) erased erased erased
      (d1102 (coe v0)) (d1104 (coe v0)) (d1014 (coe (d1106 (coe v0))))
name1120 = "Relation.Binary.Lattice.DistributiveLattice._.antisym"
d1120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1120 v0 v1 v2 v3 = du1120 v3
du1120 ::
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1120 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))
name1122 = "Relation.Binary.Lattice.DistributiveLattice._.infimum"
d1122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1122 v0 v1 v2 v3 = du1122 v3
du1122 ::
  T1076 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1122 v0 = coe (d822 (coe (d1014 (coe (d1106 (coe v0))))))
name1124
  = "Relation.Binary.Lattice.DistributiveLattice._.isEquivalence"
d1124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> MAlonzo.Code.Relation.Binary.Core.T402
d1124 v0 v1 v2 v3 = du1124 v3
du1124 :: T1076 -> MAlonzo.Code.Relation.Binary.Core.T402
du1124 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))))
name1126
  = "Relation.Binary.Lattice.DistributiveLattice._.isJoinSemilattice"
d1126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> T68
d1126 v0 v1 v2 v3 = du1126 v3
du1126 :: T1076 -> T68
du1126 v0
  = let v1 = du1116 (coe v0) in coe (du824 (coe (d910 (coe v1))))
name1128
  = "Relation.Binary.Lattice.DistributiveLattice._.isLattice"
d1128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> T794
d1128 v0 v1 v2 v3 = du1128 v3
du1128 :: T1076 -> T794
du1128 v0 = coe (d1014 (coe (d1106 (coe v0))))
name1130
  = "Relation.Binary.Lattice.DistributiveLattice._.isMeetSemilattice"
d1130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> T430
d1130 v0 v1 v2 v3 = du1130 v3
du1130 :: T1076 -> T430
du1130 v0
  = let v1 = du1116 (coe v0) in coe (du826 (coe (d910 (coe v1))))
name1132
  = "Relation.Binary.Lattice.DistributiveLattice._.isPartialOrder"
d1132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> MAlonzo.Code.Relation.Binary.T256
d1132 v0 v1 v2 v3 = du1132 v3
du1132 :: T1076 -> MAlonzo.Code.Relation.Binary.T256
du1132 v0 = coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))
name1134
  = "Relation.Binary.Lattice.DistributiveLattice._.isPreorder"
d1134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> MAlonzo.Code.Relation.Binary.T16
d1134 v0 v1 v2 v3 = du1134 v3
du1134 :: T1076 -> MAlonzo.Code.Relation.Binary.T16
du1134 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))
name1136
  = "Relation.Binary.Lattice.DistributiveLattice._.joinSemilattice"
d1136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> T168
d1136 v0 v1 v2 v3 = du1136 v3
du1136 :: T1076 -> T168
du1136 v0 = coe (du966 (coe (du1116 (coe v0))))
name1138
  = "Relation.Binary.Lattice.DistributiveLattice._.meetSemilattice"
d1138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> T530
d1138 v0 v1 v2 v3 = du1138 v3
du1138 :: T1076 -> T530
du1138 v0 = coe (du968 (coe (du1116 (coe v0))))
name1140 = "Relation.Binary.Lattice.DistributiveLattice._.poset"
d1140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> MAlonzo.Code.Relation.Binary.T310
d1140 v0 v1 v2 v3 = du1140 v3
du1140 :: T1076 -> MAlonzo.Code.Relation.Binary.T310
du1140 v0
  = let v1 = du1116 (coe v0) in coe (du236 (coe (du966 (coe v1))))
name1142 = "Relation.Binary.Lattice.DistributiveLattice._.preorder"
d1142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> MAlonzo.Code.Relation.Binary.T74
d1142 v0 v1 v2 v3 = du1142 v3
du1142 :: T1076 -> MAlonzo.Code.Relation.Binary.T74
du1142 v0
  = let v1 = du1116 (coe v0) in
    let v2 = du966 (coe v1) in
    coe (MAlonzo.Code.Relation.Binary.du364 (coe (du236 (coe v2))))
name1144 = "Relation.Binary.Lattice.DistributiveLattice._.refl"
d1144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> AgdaAny -> AgdaAny
d1144 v0 v1 v2 v3 = du1144 v3
du1144 :: T1076 -> AgdaAny -> AgdaAny
du1144 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1146
  = "Relation.Binary.Lattice.DistributiveLattice._.reflexive"
d1146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1146 v0 v1 v2 v3 = du1146 v3
du1146 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1146 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))))
name1148 = "Relation.Binary.Lattice.DistributiveLattice._.setoid"
d1148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> MAlonzo.Code.Relation.Binary.T128
d1148 v0 v1 v2 v3 = du1148 v3
du1148 :: T1076 -> MAlonzo.Code.Relation.Binary.T128
du1148 v0 = coe (du964 (coe (du1116 (coe v0))))
name1150 = "Relation.Binary.Lattice.DistributiveLattice._.supremum"
d1150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1150 v0 v1 v2 v3 = du1150 v3
du1150 ::
  T1076 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1150 v0 = coe (d820 (coe (d1014 (coe (d1106 (coe v0))))))
name1152 = "Relation.Binary.Lattice.DistributiveLattice._.trans"
d1152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1152 v0 v1 v2 v3 = du1152 v3
du1152 ::
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1152 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))))
name1154 = "Relation.Binary.Lattice.DistributiveLattice._.x∧y≤x"
d1154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny
d1154 v0 v1 v2 v3 = du1154 v3
du1154 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny
du1154 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v3 v4 v5))
name1156 = "Relation.Binary.Lattice.DistributiveLattice._.x∧y≤y"
d1156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny
d1156 v0 v1 v2 v3 = du1156 v3
du1156 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny
du1156 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v3 v4 v5))))
name1158 = "Relation.Binary.Lattice.DistributiveLattice._.x≤x∨y"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny
d1158 v0 v1 v2 v3 = du1158 v3
du1158 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny
du1158 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v3 v4 v5))
name1160 = "Relation.Binary.Lattice.DistributiveLattice._.y≤x∨y"
d1160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny
d1160 v0 v1 v2 v3 = du1160 v3
du1160 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny
du1160 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5))))
name1162
  = "Relation.Binary.Lattice.DistributiveLattice._.∧-greatest"
d1162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1162 v0 v1 v2 v3 = du1162 v3
du1162 ::
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1162 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v3 v5 v6)) v4)
name1164 = "Relation.Binary.Lattice.DistributiveLattice._.∨-least"
d1164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1164 v0 v1 v2 v3 = du1164 v3
du1164 ::
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1164 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)) v6)
name1166 = "Relation.Binary.Lattice.DistributiveLattice._.∼-resp-≈"
d1166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1166 v0 v1 v2 v3 = du1166 v3
du1166 :: T1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1166 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1168
  = "Relation.Binary.Lattice.DistributiveLattice._.∼-respʳ-≈"
d1168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1168 v0 v1 v2 v3 = du1168 v3
du1168 ::
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1168 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1170
  = "Relation.Binary.Lattice.DistributiveLattice._.∼-respˡ-≈"
d1170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1170 v0 v1 v2 v3 = du1170 v3
du1170 ::
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1170 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1174 = "Relation.Binary.Lattice.DistributiveLattice._.Eq.refl"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1076 -> AgdaAny -> AgdaAny
d1174 v0 v1 v2 v3 = du1174 v3
du1174 :: T1076 -> AgdaAny -> AgdaAny
du1174 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))))))
name1176
  = "Relation.Binary.Lattice.DistributiveLattice._.Eq.reflexive"
d1176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1176 v0 v1 v2 v3 = du1176 v3
du1176 ::
  T1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1176 v0
  = let v1 = du1116 (coe v0) in
    let v2 = d910 (coe v1) in
    let v3 = d818 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.d274 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v4))) v5)
name1178 = "Relation.Binary.Lattice.DistributiveLattice._.Eq.sym"
d1178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1178 v0 v1 v2 v3 = du1178 v3
du1178 :: T1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1178 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))))))
name1180 = "Relation.Binary.Lattice.DistributiveLattice._.Eq.trans"
d1180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1180 v0 v1 v2 v3 = du1180 v3
du1180 ::
  T1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1180 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1014 (coe (d1106 (coe v0))))))))))))
name1202 = "Relation.Binary.Lattice.IsBoundedLattice"
d1202 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T1202 = C10749 T794 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name1230 = "Relation.Binary.Lattice.IsBoundedLattice.isLattice"
d1230 :: T1202 -> T794
d1230 v0
  = case coe v0 of
      C10749 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1232 = "Relation.Binary.Lattice.IsBoundedLattice.maximum"
d1232 :: T1202 -> AgdaAny -> AgdaAny
d1232 v0
  = case coe v0 of
      C10749 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1234 = "Relation.Binary.Lattice.IsBoundedLattice.minimum"
d1234 :: T1202 -> AgdaAny -> AgdaAny
d1234 v0
  = case coe v0 of
      C10749 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name1238 = "Relation.Binary.Lattice.IsBoundedLattice._.antisym"
d1238 ::
  T1202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1238 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1230 (coe v0))))))
name1240 = "Relation.Binary.Lattice.IsBoundedLattice._.infimum"
d1240 ::
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1240 v0 = coe (d822 (coe (d1230 (coe v0))))
name1242
  = "Relation.Binary.Lattice.IsBoundedLattice._.isEquivalence"
d1242 :: T1202 -> MAlonzo.Code.Relation.Binary.Core.T402
d1242 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe v0))))))))
name1244
  = "Relation.Binary.Lattice.IsBoundedLattice._.isJoinSemilattice"
d1244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> T68
d1244 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1244 v10
du1244 :: T1202 -> T68
du1244 v0 = coe (du824 (coe (d1230 (coe v0))))
name1246
  = "Relation.Binary.Lattice.IsBoundedLattice._.isMeetSemilattice"
d1246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> T430
d1246 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1246 v10
du1246 :: T1202 -> T430
du1246 v0 = coe (du826 (coe (d1230 (coe v0))))
name1248
  = "Relation.Binary.Lattice.IsBoundedLattice._.isPartialOrder"
d1248 :: T1202 -> MAlonzo.Code.Relation.Binary.T256
d1248 v0 = coe (d818 (coe (d1230 (coe v0))))
name1250 = "Relation.Binary.Lattice.IsBoundedLattice._.isPreorder"
d1250 :: T1202 -> MAlonzo.Code.Relation.Binary.T16
d1250 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1230 (coe v0))))))
name1252 = "Relation.Binary.Lattice.IsBoundedLattice._.refl"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> AgdaAny -> AgdaAny
d1252 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1252 v10
du1252 :: T1202 -> AgdaAny -> AgdaAny
du1252 v0
  = let v1 = d1230 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1254 = "Relation.Binary.Lattice.IsBoundedLattice._.reflexive"
d1254 :: T1202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1254 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe v0))))))))
name1256 = "Relation.Binary.Lattice.IsBoundedLattice._.supremum"
d1256 ::
  T1202 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1256 v0 = coe (d820 (coe (d1230 (coe v0))))
name1258 = "Relation.Binary.Lattice.IsBoundedLattice._.trans"
d1258 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1258 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe v0))))))))
name1260 = "Relation.Binary.Lattice.IsBoundedLattice._.x∧y≤x"
d1260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> AgdaAny -> AgdaAny -> AgdaAny
d1260 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1260 v10
du1260 :: T1202 -> AgdaAny -> AgdaAny -> AgdaAny
du1260 v0
  = let v1 = d1230 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v2 v3 v4))
name1262 = "Relation.Binary.Lattice.IsBoundedLattice._.x∧y≤y"
d1262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> AgdaAny -> AgdaAny -> AgdaAny
d1262 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1262 v10
du1262 :: T1202 -> AgdaAny -> AgdaAny -> AgdaAny
du1262 v0
  = let v1 = d1230 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v3 v4))))
name1264 = "Relation.Binary.Lattice.IsBoundedLattice._.x≤x∨y"
d1264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> AgdaAny -> AgdaAny -> AgdaAny
d1264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1264 v10
du1264 :: T1202 -> AgdaAny -> AgdaAny -> AgdaAny
du1264 v0
  = let v1 = d1230 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v2 v3 v4))
name1266 = "Relation.Binary.Lattice.IsBoundedLattice._.y≤x∨y"
d1266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> AgdaAny -> AgdaAny -> AgdaAny
d1266 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1266 v10
du1266 :: T1202 -> AgdaAny -> AgdaAny -> AgdaAny
du1266 v0
  = let v1 = d1230 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4))))
name1268 = "Relation.Binary.Lattice.IsBoundedLattice._.∧-greatest"
d1268 ::
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
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1268 v10
du1268 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1268 v0
  = let v1 = d1230 (coe v0) in
    let v2 = du826 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v2 v4 v5)) v3)
name1270 = "Relation.Binary.Lattice.IsBoundedLattice._.∨-least"
d1270 ::
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
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1270 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1270 v10
du1270 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1270 v0
  = let v1 = d1230 (coe v0) in
    let v2 = du824 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v2 v3 v4)) v5)
name1272 = "Relation.Binary.Lattice.IsBoundedLattice._.∼-resp-≈"
d1272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1272 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1272 v10
du1272 :: T1202 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1272 v0
  = let v1 = d1230 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1274 = "Relation.Binary.Lattice.IsBoundedLattice._.∼-respʳ-≈"
d1274 ::
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
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1274 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1274 v10
du1274 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1274 v0
  = let v1 = d1230 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1276 = "Relation.Binary.Lattice.IsBoundedLattice._.∼-respˡ-≈"
d1276 ::
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
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1276 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1276 v10
du1276 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1276 v0
  = let v1 = d1230 (coe v0) in
    let v2 = d818 (coe v1) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v2))))
name1280 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.refl"
d1280 :: T1202 -> AgdaAny -> AgdaAny
d1280 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe v0))))))))))
name1282
  = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.reflexive"
d1282 ::
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
  T1202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1282 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1282 v10
du1282 ::
  T1202 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1282 v0
  = let v1 = d1230 (coe v0) in
    let v2 = d818 (coe v1) in
    let v3 = MAlonzo.Code.Relation.Binary.d274 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v3))) v4)
name1284 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.sym"
d1284 :: T1202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1284 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe v0))))))))))
name1286 = "Relation.Binary.Lattice.IsBoundedLattice._.Eq.trans"
d1286 ::
  T1202 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1286 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe v0))))))))))
name1288
  = "Relation.Binary.Lattice.IsBoundedLattice.isBoundedJoinSemilattice"
d1288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> T258
d1288 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1288 v10
du1288 :: T1202 -> T258
du1288 v0
  = coe
      (C2657 (coe (du824 (coe (d1230 (coe v0))))) (coe (d1234 (coe v0))))
name1290
  = "Relation.Binary.Lattice.IsBoundedLattice.isBoundedMeetSemilattice"
d1290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1202 -> T620
d1290 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du1290 v10
du1290 :: T1202 -> T620
du1290 v0
  = coe
      (C6283 (coe (du826 (coe (d1230 (coe v0))))) (coe (d1232 (coe v0))))
name1298 = "Relation.Binary.Lattice.BoundedLattice"
d1298 a0 a1 a2 = ()
data T1298
  = C12215 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) AgdaAny AgdaAny T1202
name1322 = "Relation.Binary.Lattice.BoundedLattice.Carrier"
d1322 :: T1298 -> ()
d1322 = erased
name1324 = "Relation.Binary.Lattice.BoundedLattice._≈_"
d1324 :: T1298 -> AgdaAny -> AgdaAny -> ()
d1324 = erased
name1326 = "Relation.Binary.Lattice.BoundedLattice._≤_"
d1326 :: T1298 -> AgdaAny -> AgdaAny -> ()
d1326 = erased
name1328 = "Relation.Binary.Lattice.BoundedLattice._∨_"
d1328 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny
d1328 v0
  = case coe v0 of
      C12215 v4 v5 v6 v7 v8 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1330 = "Relation.Binary.Lattice.BoundedLattice._∧_"
d1330 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny
d1330 v0
  = case coe v0 of
      C12215 v4 v5 v6 v7 v8 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1332 = "Relation.Binary.Lattice.BoundedLattice.⊤"
d1332 :: T1298 -> AgdaAny
d1332 v0
  = case coe v0 of
      C12215 v4 v5 v6 v7 v8 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1334 = "Relation.Binary.Lattice.BoundedLattice.⊥"
d1334 :: T1298 -> AgdaAny
d1334 v0
  = case coe v0 of
      C12215 v4 v5 v6 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1336
  = "Relation.Binary.Lattice.BoundedLattice.isBoundedLattice"
d1336 :: T1298 -> T1202
d1336 v0
  = case coe v0 of
      C12215 v4 v5 v6 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1340 = "Relation.Binary.Lattice.BoundedLattice._.antisym"
d1340 ::
  T1298 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1340 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))
name1342 = "Relation.Binary.Lattice.BoundedLattice._.infimum"
d1342 ::
  T1298 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1342 v0 = coe (d822 (coe (d1230 (coe (d1336 (coe v0))))))
name1344
  = "Relation.Binary.Lattice.BoundedLattice._.isBoundedJoinSemilattice"
d1344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T258
d1344 v0 v1 v2 v3 = du1344 v3
du1344 :: T1298 -> T258
du1344 v0 = coe (du1288 (coe (d1336 (coe v0))))
name1346
  = "Relation.Binary.Lattice.BoundedLattice._.isBoundedMeetSemilattice"
d1346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T620
d1346 v0 v1 v2 v3 = du1346 v3
du1346 :: T1298 -> T620
du1346 v0 = coe (du1290 (coe (d1336 (coe v0))))
name1348 = "Relation.Binary.Lattice.BoundedLattice._.isEquivalence"
d1348 :: T1298 -> MAlonzo.Code.Relation.Binary.Core.T402
d1348 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))))
name1350
  = "Relation.Binary.Lattice.BoundedLattice._.isJoinSemilattice"
d1350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T68
d1350 v0 v1 v2 v3 = du1350 v3
du1350 :: T1298 -> T68
du1350 v0
  = let v1 = d1336 (coe v0) in coe (du824 (coe (d1230 (coe v1))))
name1352 = "Relation.Binary.Lattice.BoundedLattice._.isLattice"
d1352 :: T1298 -> T794
d1352 v0 = coe (d1230 (coe (d1336 (coe v0))))
name1354
  = "Relation.Binary.Lattice.BoundedLattice._.isMeetSemilattice"
d1354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T430
d1354 v0 v1 v2 v3 = du1354 v3
du1354 :: T1298 -> T430
du1354 v0
  = let v1 = d1336 (coe v0) in coe (du826 (coe (d1230 (coe v1))))
name1356
  = "Relation.Binary.Lattice.BoundedLattice._.isPartialOrder"
d1356 :: T1298 -> MAlonzo.Code.Relation.Binary.T256
d1356 v0 = coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))
name1358 = "Relation.Binary.Lattice.BoundedLattice._.isPreorder"
d1358 :: T1298 -> MAlonzo.Code.Relation.Binary.T16
d1358 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))
name1360 = "Relation.Binary.Lattice.BoundedLattice._.maximum"
d1360 :: T1298 -> AgdaAny -> AgdaAny
d1360 v0 = coe (d1232 (coe (d1336 (coe v0))))
name1362 = "Relation.Binary.Lattice.BoundedLattice._.minimum"
d1362 :: T1298 -> AgdaAny -> AgdaAny
d1362 v0 = coe (d1234 (coe (d1336 (coe v0))))
name1364 = "Relation.Binary.Lattice.BoundedLattice._.refl"
d1364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> AgdaAny -> AgdaAny
d1364 v0 v1 v2 v3 = du1364 v3
du1364 :: T1298 -> AgdaAny -> AgdaAny
du1364 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1366 = "Relation.Binary.Lattice.BoundedLattice._.reflexive"
d1366 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1366 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))))
name1368 = "Relation.Binary.Lattice.BoundedLattice._.supremum"
d1368 ::
  T1298 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1368 v0 = coe (d820 (coe (d1230 (coe (d1336 (coe v0))))))
name1370 = "Relation.Binary.Lattice.BoundedLattice._.trans"
d1370 ::
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1370 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))))
name1372 = "Relation.Binary.Lattice.BoundedLattice._.x∧y≤x"
d1372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> AgdaAny -> AgdaAny -> AgdaAny
d1372 v0 v1 v2 v3 = du1372 v3
du1372 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny
du1372 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v3 v4 v5))
name1374 = "Relation.Binary.Lattice.BoundedLattice._.x∧y≤y"
d1374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> AgdaAny -> AgdaAny -> AgdaAny
d1374 v0 v1 v2 v3 = du1374 v3
du1374 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny
du1374 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v3 v4 v5))))
name1376 = "Relation.Binary.Lattice.BoundedLattice._.x≤x∨y"
d1376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> AgdaAny -> AgdaAny -> AgdaAny
d1376 v0 v1 v2 v3 = du1376 v3
du1376 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny
du1376 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v3 v4 v5))
name1378 = "Relation.Binary.Lattice.BoundedLattice._.y≤x∨y"
d1378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> AgdaAny -> AgdaAny -> AgdaAny
d1378 v0 v1 v2 v3 = du1378 v3
du1378 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny
du1378 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5))))
name1380 = "Relation.Binary.Lattice.BoundedLattice._.∧-greatest"
d1380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1380 v0 v1 v2 v3 = du1380 v3
du1380 ::
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1380 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v3 v5 v6)) v4)
name1382 = "Relation.Binary.Lattice.BoundedLattice._.∨-least"
d1382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1382 v0 v1 v2 v3 = du1382 v3
du1382 ::
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1382 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)) v6)
name1384 = "Relation.Binary.Lattice.BoundedLattice._.∼-resp-≈"
d1384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1384 v0 v1 v2 v3 = du1384 v3
du1384 :: T1298 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1384 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1386 = "Relation.Binary.Lattice.BoundedLattice._.∼-respʳ-≈"
d1386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1386 v0 v1 v2 v3 = du1386 v3
du1386 ::
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1386 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1388 = "Relation.Binary.Lattice.BoundedLattice._.∼-respˡ-≈"
d1388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1388 v0 v1 v2 v3 = du1388 v3
du1388 ::
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1388 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1392 = "Relation.Binary.Lattice.BoundedLattice._.Eq.refl"
d1392 :: T1298 -> AgdaAny -> AgdaAny
d1392 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))))))
name1394 = "Relation.Binary.Lattice.BoundedLattice._.Eq.reflexive"
d1394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1394 v0 v1 v2 v3 = du1394 v3
du1394 ::
  T1298 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1394 v0
  = let v1 = d1336 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.d274 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v4))) v5)
name1396 = "Relation.Binary.Lattice.BoundedLattice._.Eq.sym"
d1396 :: T1298 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1396 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))))))
name1398 = "Relation.Binary.Lattice.BoundedLattice._.Eq.trans"
d1398 ::
  T1298 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1398 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe (d1336 (coe v0))))))))))))
name1400
  = "Relation.Binary.Lattice.BoundedLattice.boundedJoinSemilattice"
d1400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T330
d1400 v0 v1 v2 v3 = du1400 v3
du1400 :: T1298 -> T330
du1400 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C3359 v4 v5 v6) erased erased erased
      (d1328 (coe v0)) (d1334 (coe v0)) (du1288 (coe (d1336 (coe v0))))
name1402
  = "Relation.Binary.Lattice.BoundedLattice.boundedMeetSemilattice"
d1402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T692
d1402 v0 v1 v2 v3 = du1402 v3
du1402 :: T1298 -> T692
du1402 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C6985 v4 v5 v6) erased erased erased
      (d1330 (coe v0)) (d1332 (coe v0)) (du1290 (coe (d1336 (coe v0))))
name1404 = "Relation.Binary.Lattice.BoundedLattice.lattice"
d1404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T880
d1404 v0 v1 v2 v3 = du1404 v3
du1404 :: T1298 -> T880
du1404 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 -> C8571 v4 v5 v6) erased erased erased
      (d1328 (coe v0)) (d1330 (coe v0)) (d1230 (coe (d1336 (coe v0))))
name1408
  = "Relation.Binary.Lattice.BoundedLattice._.joinSemilattice"
d1408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T168
d1408 v0 v1 v2 v3 = du1408 v3
du1408 :: T1298 -> T168
du1408 v0 = coe (du966 (coe (du1404 (coe v0))))
name1410
  = "Relation.Binary.Lattice.BoundedLattice._.meetSemilattice"
d1410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1298 -> T530
d1410 v0 v1 v2 v3 = du1410 v3
du1410 :: T1298 -> T530
du1410 v0 = coe (du968 (coe (du1404 (coe v0))))
name1412 = "Relation.Binary.Lattice.BoundedLattice._.poset"
d1412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> MAlonzo.Code.Relation.Binary.T310
d1412 v0 v1 v2 v3 = du1412 v3
du1412 :: T1298 -> MAlonzo.Code.Relation.Binary.T310
du1412 v0
  = let v1 = du1404 (coe v0) in coe (du236 (coe (du966 (coe v1))))
name1414 = "Relation.Binary.Lattice.BoundedLattice._.preorder"
d1414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> MAlonzo.Code.Relation.Binary.T74
d1414 v0 v1 v2 v3 = du1414 v3
du1414 :: T1298 -> MAlonzo.Code.Relation.Binary.T74
du1414 v0
  = let v1 = du1404 (coe v0) in
    let v2 = du966 (coe v1) in
    coe (MAlonzo.Code.Relation.Binary.du364 (coe (du236 (coe v2))))
name1416 = "Relation.Binary.Lattice.BoundedLattice._.setoid"
d1416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1298 -> MAlonzo.Code.Relation.Binary.T128
d1416 v0 v1 v2 v3 = du1416 v3
du1416 :: T1298 -> MAlonzo.Code.Relation.Binary.T128
du1416 v0 = coe (du964 (coe (du1404 (coe v0))))
name1440 = "Relation.Binary.Lattice.IsHeytingAlgebra"
d1440 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
data T1440
  = C13025 T1202
           (AgdaAny ->
            AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name1468
  = "Relation.Binary.Lattice.IsHeytingAlgebra.isBoundedLattice"
d1468 :: T1440 -> T1202
d1468 v0
  = case coe v0 of
      C13025 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1470 = "Relation.Binary.Lattice.IsHeytingAlgebra.exponential"
d1470 ::
  T1440 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1470 v0
  = case coe v0 of
      C13025 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1478 = "Relation.Binary.Lattice.IsHeytingAlgebra.transpose-⇨"
d1478 ::
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
  T1440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1478 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du1478 v11 v12 v13 v14
du1478 ::
  T1440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1478 v0 v1 v2 v3
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1470 v0 v1 v2 v3))
name1494 = "Relation.Binary.Lattice.IsHeytingAlgebra.transpose-∧"
d1494 ::
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
  T1440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1494 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du1494 v11 v12 v13 v14
du1494 ::
  T1440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1494 v0 v1 v2 v3
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1470 v0 v1 v2 v3))
name1506 = "Relation.Binary.Lattice.IsHeytingAlgebra._.antisym"
d1506 ::
  T1440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1506 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))
name1508 = "Relation.Binary.Lattice.IsHeytingAlgebra._.infimum"
d1508 ::
  T1440 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1508 v0 = coe (d822 (coe (d1230 (coe (d1468 (coe v0))))))
name1510
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isBoundedJoinSemilattice"
d1510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1440 -> T258
d1510 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1510 v11
du1510 :: T1440 -> T258
du1510 v0 = coe (du1288 (coe (d1468 (coe v0))))
name1512
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isBoundedMeetSemilattice"
d1512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1440 -> T620
d1512 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1512 v11
du1512 :: T1440 -> T620
du1512 v0 = coe (du1290 (coe (d1468 (coe v0))))
name1514
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isEquivalence"
d1514 :: T1440 -> MAlonzo.Code.Relation.Binary.Core.T402
d1514 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))))
name1516
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isJoinSemilattice"
d1516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1440 -> T68
d1516 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1516 v11
du1516 :: T1440 -> T68
du1516 v0
  = let v1 = d1468 (coe v0) in coe (du824 (coe (d1230 (coe v1))))
name1518 = "Relation.Binary.Lattice.IsHeytingAlgebra._.isLattice"
d1518 :: T1440 -> T794
d1518 v0 = coe (d1230 (coe (d1468 (coe v0))))
name1520
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isMeetSemilattice"
d1520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1440 -> T430
d1520 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1520 v11
du1520 :: T1440 -> T430
du1520 v0
  = let v1 = d1468 (coe v0) in coe (du826 (coe (d1230 (coe v1))))
name1522
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.isPartialOrder"
d1522 :: T1440 -> MAlonzo.Code.Relation.Binary.T256
d1522 v0 = coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))
name1524 = "Relation.Binary.Lattice.IsHeytingAlgebra._.isPreorder"
d1524 :: T1440 -> MAlonzo.Code.Relation.Binary.T16
d1524 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))
name1526 = "Relation.Binary.Lattice.IsHeytingAlgebra._.maximum"
d1526 :: T1440 -> AgdaAny -> AgdaAny
d1526 v0 = coe (d1232 (coe (d1468 (coe v0))))
name1528 = "Relation.Binary.Lattice.IsHeytingAlgebra._.minimum"
d1528 :: T1440 -> AgdaAny -> AgdaAny
d1528 v0 = coe (d1234 (coe (d1468 (coe v0))))
name1530 = "Relation.Binary.Lattice.IsHeytingAlgebra._.refl"
d1530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1440 -> AgdaAny -> AgdaAny
d1530 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1530 v11
du1530 :: T1440 -> AgdaAny -> AgdaAny
du1530 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1532 = "Relation.Binary.Lattice.IsHeytingAlgebra._.reflexive"
d1532 :: T1440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1532 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))))
name1534 = "Relation.Binary.Lattice.IsHeytingAlgebra._.supremum"
d1534 ::
  T1440 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1534 v0 = coe (d820 (coe (d1230 (coe (d1468 (coe v0))))))
name1536 = "Relation.Binary.Lattice.IsHeytingAlgebra._.trans"
d1536 ::
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1536 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))))
name1538 = "Relation.Binary.Lattice.IsHeytingAlgebra._.x∧y≤x"
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
  AgdaAny -> AgdaAny -> T1440 -> AgdaAny -> AgdaAny -> AgdaAny
d1538 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1538 v11
du1538 :: T1440 -> AgdaAny -> AgdaAny -> AgdaAny
du1538 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v3 v4 v5))
name1540 = "Relation.Binary.Lattice.IsHeytingAlgebra._.x∧y≤y"
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
  AgdaAny -> AgdaAny -> T1440 -> AgdaAny -> AgdaAny -> AgdaAny
d1540 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1540 v11
du1540 :: T1440 -> AgdaAny -> AgdaAny -> AgdaAny
du1540 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v3 v4 v5))))
name1542 = "Relation.Binary.Lattice.IsHeytingAlgebra._.x≤x∨y"
d1542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1440 -> AgdaAny -> AgdaAny -> AgdaAny
d1542 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1542 v11
du1542 :: T1440 -> AgdaAny -> AgdaAny -> AgdaAny
du1542 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v3 v4 v5))
name1544 = "Relation.Binary.Lattice.IsHeytingAlgebra._.y≤x∨y"
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
  AgdaAny -> AgdaAny -> T1440 -> AgdaAny -> AgdaAny -> AgdaAny
d1544 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1544 v11
du1544 :: T1440 -> AgdaAny -> AgdaAny -> AgdaAny
du1544 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5))))
name1546 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∧-greatest"
d1546 ::
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
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1546 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1546 v11
du1546 ::
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1546 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du826 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v3 v5 v6)) v4)
name1548 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∨-least"
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
  AgdaAny ->
  AgdaAny ->
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1548 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1548 v11
du1548 ::
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1548 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = du824 (coe v2) in
    coe
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v3 v4 v5)) v6)
name1550 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∼-resp-≈"
d1550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1440 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1550 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1550 v11
du1550 :: T1440 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1550 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1552 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∼-respʳ-≈"
d1552 ::
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
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1552 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1552 v11
du1552 ::
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1552 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1554 = "Relation.Binary.Lattice.IsHeytingAlgebra._.∼-respˡ-≈"
d1554 ::
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
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1554 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1554 v11
du1554 ::
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1554 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v3))))
name1558 = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.refl"
d1558 :: T1440 -> AgdaAny -> AgdaAny
d1558 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))))))
name1560
  = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.reflexive"
d1560 ::
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
  T1440 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1560 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1560 v11
du1560 ::
  T1440 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1560 v0
  = let v1 = d1468 (coe v0) in
    let v2 = d1230 (coe v1) in
    let v3 = d818 (coe v2) in
    let v4 = MAlonzo.Code.Relation.Binary.d274 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v4))) v5)
name1562 = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.sym"
d1562 :: T1440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1562 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))))))
name1564 = "Relation.Binary.Lattice.IsHeytingAlgebra._.Eq.trans"
d1564 ::
  T1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1564 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe (d818 (coe (d1230 (coe (d1468 (coe v0))))))))))))
name1572 = "Relation.Binary.Lattice.HeytingAlgebra"
d1572 a0 a1 a2 = ()
data T1572
  = C15479 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny -> AgdaAny)
           AgdaAny AgdaAny T1440
name1598 = "Relation.Binary.Lattice.HeytingAlgebra.Carrier"
d1598 :: T1572 -> ()
d1598 = erased
name1600 = "Relation.Binary.Lattice.HeytingAlgebra._≈_"
d1600 :: T1572 -> AgdaAny -> AgdaAny -> ()
d1600 = erased
name1602 = "Relation.Binary.Lattice.HeytingAlgebra._≤_"
d1602 :: T1572 -> AgdaAny -> AgdaAny -> ()
d1602 = erased
name1604 = "Relation.Binary.Lattice.HeytingAlgebra._∨_"
d1604 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny
d1604 v0
  = case coe v0 of
      C15479 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1606 = "Relation.Binary.Lattice.HeytingAlgebra._∧_"
d1606 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny
d1606 v0
  = case coe v0 of
      C15479 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1608 = "Relation.Binary.Lattice.HeytingAlgebra._⇨_"
d1608 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny
d1608 v0
  = case coe v0 of
      C15479 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1610 = "Relation.Binary.Lattice.HeytingAlgebra.⊤"
d1610 :: T1572 -> AgdaAny
d1610 v0
  = case coe v0 of
      C15479 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1612 = "Relation.Binary.Lattice.HeytingAlgebra.⊥"
d1612 :: T1572 -> AgdaAny
d1612 v0
  = case coe v0 of
      C15479 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1614
  = "Relation.Binary.Lattice.HeytingAlgebra.isHeytingAlgebra"
d1614 :: T1572 -> T1440
d1614 v0
  = case coe v0 of
      C15479 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
name1616 = "Relation.Binary.Lattice.HeytingAlgebra.boundedLattice"
d1616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T1298
d1616 v0 v1 v2 v3 = du1616 v3
du1616 :: T1572 -> T1298
du1616 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 -> C12215 v4 v5 v6 v7 v8) erased erased
      erased (d1604 (coe v0)) (d1606 (coe v0)) (d1610 (coe v0))
      (d1612 (coe v0)) (d1468 (coe (d1614 (coe v0))))
name1620 = "Relation.Binary.Lattice.HeytingAlgebra._.exponential"
d1620 ::
  T1572 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1620 v0 = coe (d1470 (coe (d1614 (coe v0))))
name1622 = "Relation.Binary.Lattice.HeytingAlgebra._.transpose-⇨"
d1622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1622 v0 v1 v2 v3 = du1622 v3
du1622 ::
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1622 v0
  = let v1 = d1614 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1470 v1 v2 v3 v4))
name1624 = "Relation.Binary.Lattice.HeytingAlgebra._.transpose-∧"
d1624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1624 v0 v1 v2 v3 = du1624 v3
du1624 ::
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1624 v0
  = let v1 = d1614 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1470 v1 v2 v3 v4))
name1628 = "Relation.Binary.Lattice.HeytingAlgebra._.antisym"
d1628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1628 v0 v1 v2 v3 = du1628 v3
du1628 ::
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1628 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))
name1630
  = "Relation.Binary.Lattice.HeytingAlgebra._.boundedJoinSemilattice"
d1630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T330
d1630 v0 v1 v2 v3 = du1630 v3
du1630 :: T1572 -> T330
du1630 v0 = coe (du1400 (coe (du1616 (coe v0))))
name1632
  = "Relation.Binary.Lattice.HeytingAlgebra._.boundedMeetSemilattice"
d1632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T692
d1632 v0 v1 v2 v3 = du1632 v3
du1632 :: T1572 -> T692
du1632 v0 = coe (du1402 (coe (du1616 (coe v0))))
name1634 = "Relation.Binary.Lattice.HeytingAlgebra._.infimum"
d1634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1634 v0 v1 v2 v3 = du1634 v3
du1634 ::
  T1572 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1634 v0
  = coe (d822 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))
name1636
  = "Relation.Binary.Lattice.HeytingAlgebra._.isBoundedJoinSemilattice"
d1636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T258
d1636 v0 v1 v2 v3 = du1636 v3
du1636 :: T1572 -> T258
du1636 v0
  = let v1 = du1616 (coe v0) in coe (du1288 (coe (d1336 (coe v1))))
name1638
  = "Relation.Binary.Lattice.HeytingAlgebra._.isBoundedLattice"
d1638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T1202
d1638 v0 v1 v2 v3 = du1638 v3
du1638 :: T1572 -> T1202
du1638 v0 = coe (d1468 (coe (d1614 (coe v0))))
name1640
  = "Relation.Binary.Lattice.HeytingAlgebra._.isBoundedMeetSemilattice"
d1640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T620
d1640 v0 v1 v2 v3 = du1640 v3
du1640 :: T1572 -> T620
du1640 v0
  = let v1 = du1616 (coe v0) in coe (du1290 (coe (d1336 (coe v1))))
name1642 = "Relation.Binary.Lattice.HeytingAlgebra._.isEquivalence"
d1642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> MAlonzo.Code.Relation.Binary.Core.T402
d1642 v0 v1 v2 v3 = du1642 v3
du1642 :: T1572 -> MAlonzo.Code.Relation.Binary.Core.T402
du1642 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))))
name1644
  = "Relation.Binary.Lattice.HeytingAlgebra._.isJoinSemilattice"
d1644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T68
d1644 v0 v1 v2 v3 = du1644 v3
du1644 :: T1572 -> T68
du1644 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in coe (du824 (coe (d1230 (coe v2))))
name1646 = "Relation.Binary.Lattice.HeytingAlgebra._.isLattice"
d1646 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T794
d1646 v0 v1 v2 v3 = du1646 v3
du1646 :: T1572 -> T794
du1646 v0 = coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))
name1648
  = "Relation.Binary.Lattice.HeytingAlgebra._.isMeetSemilattice"
d1648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T430
d1648 v0 v1 v2 v3 = du1648 v3
du1648 :: T1572 -> T430
du1648 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in coe (du826 (coe (d1230 (coe v2))))
name1650
  = "Relation.Binary.Lattice.HeytingAlgebra._.isPartialOrder"
d1650 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> MAlonzo.Code.Relation.Binary.T256
d1650 v0 v1 v2 v3 = du1650 v3
du1650 :: T1572 -> MAlonzo.Code.Relation.Binary.T256
du1650 v0
  = coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))
name1652 = "Relation.Binary.Lattice.HeytingAlgebra._.isPreorder"
d1652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> MAlonzo.Code.Relation.Binary.T16
d1652 v0 v1 v2 v3 = du1652 v3
du1652 :: T1572 -> MAlonzo.Code.Relation.Binary.T16
du1652 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))
name1654
  = "Relation.Binary.Lattice.HeytingAlgebra._.joinSemilattice"
d1654 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T168
d1654 v0 v1 v2 v3 = du1654 v3
du1654 :: T1572 -> T168
du1654 v0
  = let v1 = du1616 (coe v0) in coe (du966 (coe (du1404 (coe v1))))
name1656 = "Relation.Binary.Lattice.HeytingAlgebra._.lattice"
d1656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T880
d1656 v0 v1 v2 v3 = du1656 v3
du1656 :: T1572 -> T880
du1656 v0 = coe (du1404 (coe (du1616 (coe v0))))
name1658 = "Relation.Binary.Lattice.HeytingAlgebra._.maximum"
d1658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> AgdaAny -> AgdaAny
d1658 v0 v1 v2 v3 = du1658 v3
du1658 :: T1572 -> AgdaAny -> AgdaAny
du1658 v0 = coe (d1232 (coe (d1468 (coe (d1614 (coe v0))))))
name1660
  = "Relation.Binary.Lattice.HeytingAlgebra._.meetSemilattice"
d1660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> T530
d1660 v0 v1 v2 v3 = du1660 v3
du1660 :: T1572 -> T530
du1660 v0
  = let v1 = du1616 (coe v0) in coe (du968 (coe (du1404 (coe v1))))
name1662 = "Relation.Binary.Lattice.HeytingAlgebra._.minimum"
d1662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> AgdaAny -> AgdaAny
d1662 v0 v1 v2 v3 = du1662 v3
du1662 :: T1572 -> AgdaAny -> AgdaAny
du1662 v0 = coe (d1234 (coe (d1468 (coe (d1614 (coe v0))))))
name1664 = "Relation.Binary.Lattice.HeytingAlgebra._.poset"
d1664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> MAlonzo.Code.Relation.Binary.T310
d1664 v0 v1 v2 v3 = du1664 v3
du1664 :: T1572 -> MAlonzo.Code.Relation.Binary.T310
du1664 v0
  = let v1 = du1616 (coe v0) in
    let v2 = du1404 (coe v1) in coe (du236 (coe (du966 (coe v2))))
name1666 = "Relation.Binary.Lattice.HeytingAlgebra._.preorder"
d1666 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> MAlonzo.Code.Relation.Binary.T74
d1666 v0 v1 v2 v3 = du1666 v3
du1666 :: T1572 -> MAlonzo.Code.Relation.Binary.T74
du1666 v0
  = let v1 = du1616 (coe v0) in
    let v2 = du1404 (coe v1) in
    let v3 = du966 (coe v2) in
    coe (MAlonzo.Code.Relation.Binary.du364 (coe (du236 (coe v3))))
name1668 = "Relation.Binary.Lattice.HeytingAlgebra._.refl"
d1668 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> AgdaAny -> AgdaAny
d1668 v0 v1 v2 v3 = du1668 v3
du1668 :: T1572 -> AgdaAny -> AgdaAny
du1668 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1670 = "Relation.Binary.Lattice.HeytingAlgebra._.reflexive"
d1670 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1670 v0 v1 v2 v3 = du1670 v3
du1670 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1670 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))))
name1672 = "Relation.Binary.Lattice.HeytingAlgebra._.setoid"
d1672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> MAlonzo.Code.Relation.Binary.T128
d1672 v0 v1 v2 v3 = du1672 v3
du1672 :: T1572 -> MAlonzo.Code.Relation.Binary.T128
du1672 v0
  = let v1 = du1616 (coe v0) in coe (du964 (coe (du1404 (coe v1))))
name1674 = "Relation.Binary.Lattice.HeytingAlgebra._.supremum"
d1674 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1674 v0 v1 v2 v3 = du1674 v3
du1674 ::
  T1572 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1674 v0
  = coe (d820 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))
name1676 = "Relation.Binary.Lattice.HeytingAlgebra._.trans"
d1676 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1676 v0 v1 v2 v3 = du1676 v3
du1676 ::
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1676 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))))
name1678 = "Relation.Binary.Lattice.HeytingAlgebra._.x∧y≤x"
d1678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny
d1678 v0 v1 v2 v3 = du1678 v3
du1678 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny
du1678 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du826 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v4 v5 v6))
name1680 = "Relation.Binary.Lattice.HeytingAlgebra._.x∧y≤y"
d1680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny
d1680 v0 v1 v2 v3 = du1680 v3
du1680 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny
du1680 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du826 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v4 v5 v6))))
name1682 = "Relation.Binary.Lattice.HeytingAlgebra._.x≤x∨y"
d1682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny
d1682 v0 v1 v2 v3 = du1682 v3
du1682 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny
du1682 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du824 (coe v3) in
    coe
      (\ v5 v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v4 v5 v6))
name1684 = "Relation.Binary.Lattice.HeytingAlgebra._.y≤x∨y"
d1684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny
d1684 v0 v1 v2 v3 = du1684 v3
du1684 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny
du1684 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du824 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6))))
name1686 = "Relation.Binary.Lattice.HeytingAlgebra._.∧-greatest"
d1686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1686 v0 v1 v2 v3 = du1686 v3
du1686 ::
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1686 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du826 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v4 v6 v7)) v5)
name1688 = "Relation.Binary.Lattice.HeytingAlgebra._.∨-least"
d1688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1688 v0 v1 v2 v3 = du1688 v3
du1688 ::
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1688 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du824 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6)) v7)
name1690 = "Relation.Binary.Lattice.HeytingAlgebra._.∼-resp-≈"
d1690 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1690 v0 v1 v2 v3 = du1690 v3
du1690 :: T1572 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1690 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1692 = "Relation.Binary.Lattice.HeytingAlgebra._.∼-respʳ-≈"
d1692 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1692 v0 v1 v2 v3 = du1692 v3
du1692 ::
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1692 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1694 = "Relation.Binary.Lattice.HeytingAlgebra._.∼-respˡ-≈"
d1694 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1694 v0 v1 v2 v3 = du1694 v3
du1694 ::
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1694 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1698 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.refl"
d1698 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1572 -> AgdaAny -> AgdaAny
d1698 v0 v1 v2 v3 = du1698 v3
du1698 :: T1572 -> AgdaAny -> AgdaAny
du1698 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))))))
name1700 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.reflexive"
d1700 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1700 v0 v1 v2 v3 = du1700 v3
du1700 ::
  T1572 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1700 v0
  = let v1 = du1616 (coe v0) in
    let v2 = d1336 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    let v5 = MAlonzo.Code.Relation.Binary.d274 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v5))) v6)
name1702 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.sym"
d1702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1702 v0 v1 v2 v3 = du1702 v3
du1702 :: T1572 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1702 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))))))
name1704 = "Relation.Binary.Lattice.HeytingAlgebra._.Eq.trans"
d1704 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1704 v0 v1 v2 v3 = du1704 v3
du1704 ::
  T1572 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1704 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v0))))))))))))))
name1728 = "Relation.Binary.Lattice.IsBooleanAlgebra"
d1728 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 = ()
newtype T1728 = C16209 T1440
name1760 = "Relation.Binary.Lattice.IsBooleanAlgebra._⇨_"
d1760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1728 -> AgdaAny -> AgdaAny -> AgdaAny
d1760 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du1760 v6 v8 v12 v13
du1760 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du1760 v0 v1 v2 v3 = coe v0 (coe v1 v2) v3
name1766
  = "Relation.Binary.Lattice.IsBooleanAlgebra.isHeytingAlgebra"
d1766 :: T1728 -> T1440
d1766 v0
  = case coe v0 of
      C16209 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1770 = "Relation.Binary.Lattice.IsBooleanAlgebra._.antisym"
d1770 ::
  T1728 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1770 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))
name1772 = "Relation.Binary.Lattice.IsBooleanAlgebra._.exponential"
d1772 ::
  T1728 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1772 v0 = coe (d1470 (coe (d1766 (coe v0))))
name1774 = "Relation.Binary.Lattice.IsBooleanAlgebra._.infimum"
d1774 ::
  T1728 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1774 v0
  = coe (d822 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))
name1776
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedJoinSemilattice"
d1776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1728 -> T258
d1776 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1776 v11
du1776 :: T1728 -> T258
du1776 v0
  = let v1 = d1766 (coe v0) in coe (du1288 (coe (d1468 (coe v1))))
name1778
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedLattice"
d1778 :: T1728 -> T1202
d1778 v0 = coe (d1468 (coe (d1766 (coe v0))))
name1780
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isBoundedMeetSemilattice"
d1780 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1728 -> T620
d1780 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1780 v11
du1780 :: T1728 -> T620
du1780 v0
  = let v1 = d1766 (coe v0) in coe (du1290 (coe (d1468 (coe v1))))
name1782
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isEquivalence"
d1782 :: T1728 -> MAlonzo.Code.Relation.Binary.Core.T402
d1782 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))))
name1784
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isJoinSemilattice"
d1784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1728 -> T68
d1784 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1784 v11
du1784 :: T1728 -> T68
du1784 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in coe (du824 (coe (d1230 (coe v2))))
name1786 = "Relation.Binary.Lattice.IsBooleanAlgebra._.isLattice"
d1786 :: T1728 -> T794
d1786 v0 = coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))
name1788
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isMeetSemilattice"
d1788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> T1728 -> T430
d1788 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1788 v11
du1788 :: T1728 -> T430
du1788 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in coe (du826 (coe (d1230 (coe v2))))
name1790
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.isPartialOrder"
d1790 :: T1728 -> MAlonzo.Code.Relation.Binary.T256
d1790 v0
  = coe (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))
name1792 = "Relation.Binary.Lattice.IsBooleanAlgebra._.isPreorder"
d1792 :: T1728 -> MAlonzo.Code.Relation.Binary.T16
d1792 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))
name1794 = "Relation.Binary.Lattice.IsBooleanAlgebra._.maximum"
d1794 :: T1728 -> AgdaAny -> AgdaAny
d1794 v0 = coe (d1232 (coe (d1468 (coe (d1766 (coe v0))))))
name1796 = "Relation.Binary.Lattice.IsBooleanAlgebra._.minimum"
d1796 :: T1728 -> AgdaAny -> AgdaAny
d1796 v0 = coe (d1234 (coe (d1468 (coe (d1766 (coe v0))))))
name1798 = "Relation.Binary.Lattice.IsBooleanAlgebra._.refl"
d1798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1728 -> AgdaAny -> AgdaAny
d1798 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1798 v11
du1798 :: T1728 -> AgdaAny -> AgdaAny
du1798 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1800 = "Relation.Binary.Lattice.IsBooleanAlgebra._.reflexive"
d1800 :: T1728 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1800 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))))
name1802 = "Relation.Binary.Lattice.IsBooleanAlgebra._.supremum"
d1802 ::
  T1728 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1802 v0
  = coe (d820 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))
name1804 = "Relation.Binary.Lattice.IsBooleanAlgebra._.trans"
d1804 ::
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1804 v0
  = coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))))
name1806 = "Relation.Binary.Lattice.IsBooleanAlgebra._.transpose-⇨"
d1806 ::
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
  T1728 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1806 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1806 v11
du1806 ::
  T1728 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1806 v0
  = let v1 = d1766 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1470 v1 v2 v3 v4))
name1808 = "Relation.Binary.Lattice.IsBooleanAlgebra._.transpose-∧"
d1808 ::
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
  T1728 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1808 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1808 v11
du1808 ::
  T1728 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1808 v0
  = let v1 = d1766 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1470 v1 v2 v3 v4))
name1810 = "Relation.Binary.Lattice.IsBooleanAlgebra._.x∧y≤x"
d1810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1728 -> AgdaAny -> AgdaAny -> AgdaAny
d1810 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1810 v11
du1810 :: T1728 -> AgdaAny -> AgdaAny -> AgdaAny
du1810 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du826 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v4 v5 v6))
name1812 = "Relation.Binary.Lattice.IsBooleanAlgebra._.x∧y≤y"
d1812 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1728 -> AgdaAny -> AgdaAny -> AgdaAny
d1812 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1812 v11
du1812 :: T1728 -> AgdaAny -> AgdaAny -> AgdaAny
du1812 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du826 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v4 v5 v6))))
name1814 = "Relation.Binary.Lattice.IsBooleanAlgebra._.x≤x∨y"
d1814 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1728 -> AgdaAny -> AgdaAny -> AgdaAny
d1814 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1814 v11
du1814 :: T1728 -> AgdaAny -> AgdaAny -> AgdaAny
du1814 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du824 (coe v3) in
    coe
      (\ v5 v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v4 v5 v6))
name1816 = "Relation.Binary.Lattice.IsBooleanAlgebra._.y≤x∨y"
d1816 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1728 -> AgdaAny -> AgdaAny -> AgdaAny
d1816 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1816 v11
du1816 :: T1728 -> AgdaAny -> AgdaAny -> AgdaAny
du1816 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du824 (coe v3) in
    coe
      (\ v5 v6 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6))))
name1818 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∧-greatest"
d1818 ::
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
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1818 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1818 v11
du1818 ::
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1818 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du826 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v4 v6 v7)) v5)
name1820 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∨-least"
d1820 ::
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
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1820 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1820 v11
du1820 ::
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1820 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = du824 (coe v3) in
    coe
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v4 v5 v6)) v7)
name1822 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∼-resp-≈"
d1822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T1728 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1822 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1822 v11
du1822 :: T1728 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1822 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1824 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∼-respʳ-≈"
d1824 ::
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
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1824 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1824 v11
du1824 ::
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1824 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1826 = "Relation.Binary.Lattice.IsBooleanAlgebra._.∼-respˡ-≈"
d1826 ::
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
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1826 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1826 v11
du1826 ::
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1826 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v4))))
name1830 = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.refl"
d1830 :: T1728 -> AgdaAny -> AgdaAny
d1830 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))))))
name1832
  = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.reflexive"
d1832 ::
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
  T1728 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1832 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du1832 v11
du1832 ::
  T1728 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1832 v0
  = let v1 = d1766 (coe v0) in
    let v2 = d1468 (coe v1) in
    let v3 = d1230 (coe v2) in
    let v4 = d818 (coe v3) in
    let v5 = MAlonzo.Code.Relation.Binary.d274 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v5))) v6)
name1834 = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.sym"
d1834 :: T1728 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1834 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))))))
name1836 = "Relation.Binary.Lattice.IsBooleanAlgebra._.Eq.trans"
d1836 ::
  T1728 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1836 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1766 (coe v0))))))))))))))
name1844 = "Relation.Binary.Lattice.BooleanAlgebra"
d1844 a0 a1 a2 = ()
data T1844
  = C17947 (AgdaAny -> AgdaAny -> AgdaAny)
           (AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny) AgdaAny
           AgdaAny T1728
name1870 = "Relation.Binary.Lattice.BooleanAlgebra.Carrier"
d1870 :: T1844 -> ()
d1870 = erased
name1872 = "Relation.Binary.Lattice.BooleanAlgebra._≈_"
d1872 :: T1844 -> AgdaAny -> AgdaAny -> ()
d1872 = erased
name1874 = "Relation.Binary.Lattice.BooleanAlgebra._≤_"
d1874 :: T1844 -> AgdaAny -> AgdaAny -> ()
d1874 = erased
name1876 = "Relation.Binary.Lattice.BooleanAlgebra._∨_"
d1876 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny
d1876 v0
  = case coe v0 of
      C17947 v4 v5 v6 v7 v8 v9 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name1878 = "Relation.Binary.Lattice.BooleanAlgebra._∧_"
d1878 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny
d1878 v0
  = case coe v0 of
      C17947 v4 v5 v6 v7 v8 v9 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name1880 = "Relation.Binary.Lattice.BooleanAlgebra.¬_"
d1880 :: T1844 -> AgdaAny -> AgdaAny
d1880 v0
  = case coe v0 of
      C17947 v4 v5 v6 v7 v8 v9 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name1882 = "Relation.Binary.Lattice.BooleanAlgebra.⊤"
d1882 :: T1844 -> AgdaAny
d1882 v0
  = case coe v0 of
      C17947 v4 v5 v6 v7 v8 v9 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
name1884 = "Relation.Binary.Lattice.BooleanAlgebra.⊥"
d1884 :: T1844 -> AgdaAny
d1884 v0
  = case coe v0 of
      C17947 v4 v5 v6 v7 v8 v9 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
name1886
  = "Relation.Binary.Lattice.BooleanAlgebra.isBooleanAlgebra"
d1886 :: T1844 -> T1728
d1886 v0
  = case coe v0 of
      C17947 v4 v5 v6 v7 v8 v9 -> coe v9
      _ -> MAlonzo.RTE.mazUnreachableError
name1890
  = "Relation.Binary.Lattice.BooleanAlgebra._.isHeytingAlgebra"
d1890 :: T1844 -> T1440
d1890 v0 = coe (d1766 (coe (d1886 (coe v0))))
name1892 = "Relation.Binary.Lattice.BooleanAlgebra.heytingAlgebra"
d1892 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T1572
d1892 v0 v1 v2 v3 = du1892 v3
du1892 :: T1844 -> T1572
du1892 v0
  = coe
      (\ v1 v2 v3 v4 v5 v6 v7 v8 v9 -> C15479 v4 v5 v6 v7 v8 v9) erased
      erased erased (d1876 (coe v0)) (d1878 (coe v0))
      (\ v1 -> coe d1876 v0 (coe d1880 v0 v1)) (d1882 (coe v0))
      (d1884 (coe v0)) (d1766 (coe (d1886 (coe v0))))
name1896 = "Relation.Binary.Lattice.BooleanAlgebra._._⇨_"
d1896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny
d1896 v0 v1 v2 v3 v4 = du1896 v3 v4
du1896 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny
du1896 v0 v1 = coe d1876 v0 (coe d1880 v0 v1)
name1898 = "Relation.Binary.Lattice.BooleanAlgebra._.antisym"
d1898 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1898 v0 v1 v2 v3 = du1898 v3
du1898 ::
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1898 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.d276
         (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))
name1900
  = "Relation.Binary.Lattice.BooleanAlgebra._.boundedJoinSemilattice"
d1900 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T330
d1900 v0 v1 v2 v3 = du1900 v3
du1900 :: T1844 -> T330
du1900 v0
  = let v1 = du1892 (coe v0) in coe (du1400 (coe (du1616 (coe v1))))
name1902
  = "Relation.Binary.Lattice.BooleanAlgebra._.boundedLattice"
d1902 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T1298
d1902 v0 v1 v2 v3 = du1902 v3
du1902 :: T1844 -> T1298
du1902 v0 = coe (du1616 (coe (du1892 (coe v0))))
name1904
  = "Relation.Binary.Lattice.BooleanAlgebra._.boundedMeetSemilattice"
d1904 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T692
d1904 v0 v1 v2 v3 = du1904 v3
du1904 :: T1844 -> T692
du1904 v0
  = let v1 = du1892 (coe v0) in coe (du1402 (coe (du1616 (coe v1))))
name1906 = "Relation.Binary.Lattice.BooleanAlgebra._.exponential"
d1906 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1906 v0 v1 v2 v3 = du1906 v3
du1906 ::
  T1844 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1906 v0 = coe (d1470 (coe (d1766 (coe (d1886 (coe v0))))))
name1908 = "Relation.Binary.Lattice.BooleanAlgebra._.infimum"
d1908 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1908 v0 v1 v2 v3 = du1908 v3
du1908 ::
  T1844 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1908 v0
  = let v1 = du1892 (coe v0) in
    coe (d822 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))
name1910
  = "Relation.Binary.Lattice.BooleanAlgebra._.isBoundedJoinSemilattice"
d1910 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T258
d1910 v0 v1 v2 v3 = du1910 v3
du1910 :: T1844 -> T258
du1910 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in coe (du1288 (coe (d1336 (coe v2))))
name1912
  = "Relation.Binary.Lattice.BooleanAlgebra._.isBoundedLattice"
d1912 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T1202
d1912 v0 v1 v2 v3 = du1912 v3
du1912 :: T1844 -> T1202
du1912 v0
  = let v1 = du1892 (coe v0) in coe (d1468 (coe (d1614 (coe v1))))
name1914
  = "Relation.Binary.Lattice.BooleanAlgebra._.isBoundedMeetSemilattice"
d1914 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T620
d1914 v0 v1 v2 v3 = du1914 v3
du1914 :: T1844 -> T620
du1914 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in coe (du1290 (coe (d1336 (coe v2))))
name1916 = "Relation.Binary.Lattice.BooleanAlgebra._.isEquivalence"
d1916 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> MAlonzo.Code.Relation.Binary.Core.T402
d1916 v0 v1 v2 v3 = du1916 v3
du1916 :: T1844 -> MAlonzo.Code.Relation.Binary.Core.T402
du1916 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.d36
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))))
name1918
  = "Relation.Binary.Lattice.BooleanAlgebra._.isHeytingAlgebra"
d1918 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T1440
d1918 v0 v1 v2 v3 = du1918 v3
du1918 :: T1844 -> T1440
du1918 v0 = coe (d1766 (coe (d1886 (coe v0))))
name1920
  = "Relation.Binary.Lattice.BooleanAlgebra._.isJoinSemilattice"
d1920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T68
d1920 v0 v1 v2 v3 = du1920 v3
du1920 :: T1844 -> T68
du1920 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in coe (du824 (coe (d1230 (coe v3))))
name1922 = "Relation.Binary.Lattice.BooleanAlgebra._.isLattice"
d1922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T794
d1922 v0 v1 v2 v3 = du1922 v3
du1922 :: T1844 -> T794
du1922 v0
  = let v1 = du1892 (coe v0) in
    coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))
name1924
  = "Relation.Binary.Lattice.BooleanAlgebra._.isMeetSemilattice"
d1924 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T430
d1924 v0 v1 v2 v3 = du1924 v3
du1924 :: T1844 -> T430
du1924 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in coe (du826 (coe (d1230 (coe v3))))
name1926
  = "Relation.Binary.Lattice.BooleanAlgebra._.isPartialOrder"
d1926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> MAlonzo.Code.Relation.Binary.T256
d1926 v0 v1 v2 v3 = du1926 v3
du1926 :: T1844 -> MAlonzo.Code.Relation.Binary.T256
du1926 v0
  = let v1 = du1892 (coe v0) in
    coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))
name1928 = "Relation.Binary.Lattice.BooleanAlgebra._.isPreorder"
d1928 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> MAlonzo.Code.Relation.Binary.T16
d1928 v0 v1 v2 v3 = du1928 v3
du1928 :: T1844 -> MAlonzo.Code.Relation.Binary.T16
du1928 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.d274
         (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))
name1930
  = "Relation.Binary.Lattice.BooleanAlgebra._.joinSemilattice"
d1930 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T168
d1930 v0 v1 v2 v3 = du1930 v3
du1930 :: T1844 -> T168
du1930 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in coe (du966 (coe (du1404 (coe v2))))
name1932 = "Relation.Binary.Lattice.BooleanAlgebra._.lattice"
d1932 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T880
d1932 v0 v1 v2 v3 = du1932 v3
du1932 :: T1844 -> T880
du1932 v0
  = let v1 = du1892 (coe v0) in coe (du1404 (coe (du1616 (coe v1))))
name1934 = "Relation.Binary.Lattice.BooleanAlgebra._.maximum"
d1934 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> AgdaAny -> AgdaAny
d1934 v0 v1 v2 v3 = du1934 v3
du1934 :: T1844 -> AgdaAny -> AgdaAny
du1934 v0
  = let v1 = du1892 (coe v0) in
    coe (d1232 (coe (d1468 (coe (d1614 (coe v1))))))
name1936
  = "Relation.Binary.Lattice.BooleanAlgebra._.meetSemilattice"
d1936 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> T530
d1936 v0 v1 v2 v3 = du1936 v3
du1936 :: T1844 -> T530
du1936 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in coe (du968 (coe (du1404 (coe v2))))
name1938 = "Relation.Binary.Lattice.BooleanAlgebra._.minimum"
d1938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> AgdaAny -> AgdaAny
d1938 v0 v1 v2 v3 = du1938 v3
du1938 :: T1844 -> AgdaAny -> AgdaAny
du1938 v0
  = let v1 = du1892 (coe v0) in
    coe (d1234 (coe (d1468 (coe (d1614 (coe v1))))))
name1940 = "Relation.Binary.Lattice.BooleanAlgebra._.poset"
d1940 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> MAlonzo.Code.Relation.Binary.T310
d1940 v0 v1 v2 v3 = du1940 v3
du1940 :: T1844 -> MAlonzo.Code.Relation.Binary.T310
du1940 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = du1404 (coe v2) in coe (du236 (coe (du966 (coe v3))))
name1942 = "Relation.Binary.Lattice.BooleanAlgebra._.preorder"
d1942 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> MAlonzo.Code.Relation.Binary.T74
d1942 v0 v1 v2 v3 = du1942 v3
du1942 :: T1844 -> MAlonzo.Code.Relation.Binary.T74
du1942 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = du1404 (coe v2) in
    let v4 = du966 (coe v3) in
    coe (MAlonzo.Code.Relation.Binary.du364 (coe (du236 (coe v4))))
name1944 = "Relation.Binary.Lattice.BooleanAlgebra._.refl"
d1944 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> AgdaAny -> AgdaAny
d1944 v0 v1 v2 v3 = du1944 v3
du1944 :: T1844 -> AgdaAny -> AgdaAny
du1944 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = d818 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.du52
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v5))))
name1946 = "Relation.Binary.Lattice.BooleanAlgebra._.reflexive"
d1946 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1946 v0 v1 v2 v3 = du1946 v3
du1946 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1946 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.d38
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))))
name1948 = "Relation.Binary.Lattice.BooleanAlgebra._.setoid"
d1948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> MAlonzo.Code.Relation.Binary.T128
d1948 v0 v1 v2 v3 = du1948 v3
du1948 :: T1844 -> MAlonzo.Code.Relation.Binary.T128
du1948 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in coe (du964 (coe (du1404 (coe v2))))
name1950 = "Relation.Binary.Lattice.BooleanAlgebra._.supremum"
d1950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1950 v0 v1 v2 v3 = du1950 v3
du1950 ::
  T1844 -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1950 v0
  = let v1 = du1892 (coe v0) in
    coe (d820 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))
name1952 = "Relation.Binary.Lattice.BooleanAlgebra._.trans"
d1952 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1952 v0 v1 v2 v3 = du1952 v3
du1952 ::
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1952 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.d40
         (coe
            (MAlonzo.Code.Relation.Binary.d274
               (coe (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))))
name1954 = "Relation.Binary.Lattice.BooleanAlgebra._.transpose-⇨"
d1954 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1954 v0 v1 v2 v3 = du1954 v3
du1954 ::
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1954 v0
  = let v1 = du1892 (coe v0) in
    let v2 = d1614 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d1470 v2 v3 v4 v5))
name1956 = "Relation.Binary.Lattice.BooleanAlgebra._.transpose-∧"
d1956 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1956 v0 v1 v2 v3 = du1956 v3
du1956 ::
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1956 v0
  = let v1 = du1892 (coe v0) in
    let v2 = d1614 (coe v1) in
    coe
      (\ v3 v4 v5 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d1470 v2 v3 v4 v5))
name1958 = "Relation.Binary.Lattice.BooleanAlgebra._.x∧y≤x"
d1958 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny
d1958 v0 v1 v2 v3 = du1958 v3
du1958 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny
du1958 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = du826 (coe v4) in
    coe
      (\ v6 v7 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d452 v5 v6 v7))
name1960 = "Relation.Binary.Lattice.BooleanAlgebra._.x∧y≤y"
d1960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny
d1960 v0 v1 v2 v3 = du1960 v3
du1960 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny
du1960 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = du826 (coe v4) in
    coe
      (\ v6 v7 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v5 v6 v7))))
name1962 = "Relation.Binary.Lattice.BooleanAlgebra._.x≤x∨y"
d1962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny
d1962 v0 v1 v2 v3 = du1962 v3
du1962 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny
du1962 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = du824 (coe v4) in
    coe
      (\ v6 v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe d90 v5 v6 v7))
name1964 = "Relation.Binary.Lattice.BooleanAlgebra._.y≤x∨y"
d1964 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny
d1964 v0 v1 v2 v3 = du1964 v3
du1964 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny
du1964 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = du824 (coe v4) in
    coe
      (\ v6 v7 ->
         MAlonzo.Code.Agda.Builtin.Sigma.d28
           (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v5 v6 v7))))
name1966 = "Relation.Binary.Lattice.BooleanAlgebra._.∧-greatest"
d1966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1966 v0 v1 v2 v3 = du1966 v3
du1966 ::
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1966 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = du826 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d452 v5 v7 v8)) v6)
name1968 = "Relation.Binary.Lattice.BooleanAlgebra._.∨-least"
d1968 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1968 v0 v1 v2 v3 = du1968 v3
du1968 ::
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1968 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = du824 (coe v4) in
    coe
      (\ v6 v7 v8 ->
         coe
           MAlonzo.Code.Agda.Builtin.Sigma.d30
           (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe d90 v5 v6 v7)) v8)
name1970 = "Relation.Binary.Lattice.BooleanAlgebra._.∼-resp-≈"
d1970 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1970 v0 v1 v2 v3 = du1970 v3
du1970 :: T1844 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1970 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = d818 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.du66
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v5))))
name1972 = "Relation.Binary.Lattice.BooleanAlgebra._.∼-respʳ-≈"
d1972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1972 v0 v1 v2 v3 = du1972 v3
du1972 ::
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1972 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = d818 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.du60
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v5))))
name1974 = "Relation.Binary.Lattice.BooleanAlgebra._.∼-respˡ-≈"
d1974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1974 v0 v1 v2 v3 = du1974 v3
du1974 ::
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1974 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = d818 (coe v4) in
    coe
      (MAlonzo.Code.Relation.Binary.du54
         (coe (MAlonzo.Code.Relation.Binary.d274 (coe v5))))
name1978 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.refl"
d1978 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> T1844 -> AgdaAny -> AgdaAny
d1978 v0 v1 v2 v3 = du1978 v3
du1978 :: T1844 -> AgdaAny -> AgdaAny
du1978 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d414
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))))))
name1980 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.reflexive"
d1980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d1980 v0 v1 v2 v3 = du1980 v3
du1980 ::
  T1844 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
du1980 v0
  = let v1 = du1892 (coe v0) in
    let v2 = du1616 (coe v1) in
    let v3 = d1336 (coe v2) in
    let v4 = d1230 (coe v3) in
    let v5 = d818 (coe v4) in
    let v6 = MAlonzo.Code.Relation.Binary.d274 (coe v5) in
    coe
      (\ v7 v8 v9 ->
         MAlonzo.Code.Relation.Binary.Core.du420
           (coe (MAlonzo.Code.Relation.Binary.d36 (coe v6))) v7)
name1982 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.sym"
d1982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1982 v0 v1 v2 v3 = du1982 v3
du1982 :: T1844 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1982 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d416
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))))))
name1984 = "Relation.Binary.Lattice.BooleanAlgebra._.Eq.trans"
d1984 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1984 v0 v1 v2 v3 = du1984 v3
du1984 ::
  T1844 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du1984 v0
  = let v1 = du1892 (coe v0) in
    coe
      (MAlonzo.Code.Relation.Binary.Core.d418
         (coe
            (MAlonzo.Code.Relation.Binary.d36
               (coe
                  (MAlonzo.Code.Relation.Binary.d274
                     (coe
                        (d818 (coe (d1230 (coe (d1468 (coe (d1614 (coe v1))))))))))))))
