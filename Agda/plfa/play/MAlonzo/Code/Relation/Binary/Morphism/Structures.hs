{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Morphism.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive

name18 = "Relation.Binary.Morphism.Structures._.Homomorphic₂"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d18 = erased
name42 = "Relation.Binary.Morphism.Structures.IsRelHomomorphism"
d42 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
newtype T42 = C371 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name52
  = "Relation.Binary.Morphism.Structures.IsRelHomomorphism.cong"
d52 :: T42 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d52 v0
  = case coe v0 of
      C371 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name64 = "Relation.Binary.Morphism.Structures.IsRelMonomorphism"
d64 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T64 = C1033 T42 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name76
  = "Relation.Binary.Morphism.Structures.IsRelMonomorphism.isHomomorphism"
d76 :: T64 -> T42
d76 v0
  = case coe v0 of
      C1033 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name78
  = "Relation.Binary.Morphism.Structures.IsRelMonomorphism.injective"
d78 :: T64 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d78 v0
  = case coe v0 of
      C1033 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name82
  = "Relation.Binary.Morphism.Structures.IsRelMonomorphism._.cong"
d82 :: T64 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0 = coe d52 (coe d76 (coe v0))
name94 = "Relation.Binary.Morphism.Structures.IsRelIsomorphism"
d94 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T94
  = C2089 T64 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name106
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism.isMonomorphism"
d106 :: T94 -> T64
d106 v0
  = case coe v0 of
      C2089 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name108
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism.surjective"
d108 :: T94 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d108 v0
  = case coe v0 of
      C2089 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name112
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism._.cong"
d112 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0 = coe d52 (coe d76 (coe d106 (coe v0)))
name114
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism._.injective"
d114 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0 = coe d78 (coe d106 (coe v0))
name116
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism._.isHomomorphism"
d116 :: T94 -> T42
d116 v0 = coe d76 (coe d106 (coe v0))
name118
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism.bijective"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T94 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d118 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du118 v9
du118 :: T94 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du118 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe d78 (coe d106 (coe v0)))
      (coe d108 (coe v0))
name138 = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism"
d138 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = ()
data T138
  = C3703 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name154
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.cong"
d154 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d154 v0
  = case coe v0 of
      C3703 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name156
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.mono"
d156 :: T138 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d156 v0
  = case coe v0 of
      C3703 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name160
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.Eq.isRelHomomorphism"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T138 -> T42
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du160 v13
du160 :: T138 -> T42
du160 v0 = coe C371 (coe d154 (coe v0))
name162
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.isRelHomomorphism"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T138 -> T42
d162 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du162 v13
du162 :: T138 -> T42
du162 v0 = coe C371 (coe d156 (coe v0))
name182 = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism"
d182 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = ()
data T182
  = C6243 T138 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name200
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.isOrderHomomorphism"
d200 :: T182 -> T138
d200 v0
  = case coe v0 of
      C6243 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name202
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.injective"
d202 :: T182 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d202 v0
  = case coe v0 of
      C6243 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name204
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.cancel"
d204 :: T182 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d204 v0
  = case coe v0 of
      C6243 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name208
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.cong"
d208 :: T182 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d208 v0 = coe d154 (coe d200 (coe v0))
name210
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.isRelHomomorphism"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T182 -> T42
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du210 v13
du210 :: T182 -> T42
du210 v0 = coe du162 (coe d200 (coe v0))
name212
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.mono"
d212 :: T182 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0 = coe d156 (coe d200 (coe v0))
name216
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.Eq.isRelMonomorphism"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T182 -> T64
d216 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du216 v13
du216 :: T182 -> T64
du216 v0
  = coe C1033 (coe du160 (coe d200 (coe v0))) (coe d202 (coe v0))
name218
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.isRelMonomorphism"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T182 -> T64
d218 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du218 v13
du218 :: T182 -> T64
du218 v0
  = coe C1033 (coe du162 (coe d200 (coe v0))) (coe d204 (coe v0))
name238 = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism"
d238 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = ()
data T238
  = C9817 T182 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name254
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism.isOrderMonomorphism"
d254 :: T238 -> T182
d254 v0
  = case coe v0 of
      C9817 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name256
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism.surjective"
d256 :: T238 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d256 v0
  = case coe v0 of
      C9817 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name260
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.cancel"
d260 :: T238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d260 v0 = coe d204 (coe d254 (coe v0))
name262
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.cong"
d262 :: T238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d262 v0 = coe d154 (coe d200 (coe d254 (coe v0)))
name264
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.injective"
d264 :: T238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d264 v0 = coe d202 (coe d254 (coe v0))
name266
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isOrderHomomorphism"
d266 :: T238 -> T138
d266 v0 = coe d200 (coe d254 (coe v0))
name268
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isRelHomomorphism"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T238 -> T42
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du268 v13
du268 :: T238 -> T42
du268 v0 = let v1 = d254 (coe v0) in coe du162 (coe d200 (coe v1))
name270
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isRelMonomorphism"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T238 -> T64
d270 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du270 v13
du270 :: T238 -> T64
du270 v0 = coe du218 (coe d254 (coe v0))
name272
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.mono"
d272 :: T238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d272 v0 = coe d156 (coe d200 (coe d254 (coe v0)))
name276
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism.Eq.isRelIsomorphism"
d276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T238 -> T94
d276 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du276 v13
du276 :: T238 -> T94
du276 v0
  = coe C2089 (coe du216 (coe d254 (coe v0))) (coe d256 (coe v0))
