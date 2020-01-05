{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
name40 = "Relation.Binary.Morphism.Structures.IsRelHomomorphism"
d40 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
newtype T40 = C55 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name50
  = "Relation.Binary.Morphism.Structures.IsRelHomomorphism.cong"
d50 :: T40 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d50 v0
  = case coe v0 of
      C55 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Relation.Binary.Morphism.Structures.IsRelMonomorphism"
d62 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T62 = C209 T40 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name74
  = "Relation.Binary.Morphism.Structures.IsRelMonomorphism.isHomomorphism"
d74 :: T62 -> T40
d74 v0
  = case coe v0 of
      C209 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name76
  = "Relation.Binary.Morphism.Structures.IsRelMonomorphism.injective"
d76 :: T62 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d76 v0
  = case coe v0 of
      C209 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name80
  = "Relation.Binary.Morphism.Structures.IsRelMonomorphism._.cong"
d80 :: T62 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d80 v0 = coe (d50 (coe (d74 (coe v0))))
name92 = "Relation.Binary.Morphism.Structures.IsRelIsomorphism"
d92 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T92
  = C441 T62 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name104
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism.isMonomorphism"
d104 :: T92 -> T62
d104 v0
  = case coe v0 of
      C441 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name106
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism.surjective"
d106 :: T92 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d106 v0
  = case coe v0 of
      C441 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name110
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism._.cong"
d110 :: T92 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d110 v0 = coe (d50 (coe (d74 (coe (d104 (coe v0))))))
name112
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism._.injective"
d112 :: T92 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0 = coe (d76 (coe (d104 (coe v0))))
name114
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism._.isHomomorphism"
d114 :: T92 -> T40
d114 v0 = coe (d74 (coe (d104 (coe v0))))
name116
  = "Relation.Binary.Morphism.Structures.IsRelIsomorphism.bijective"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T92 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d116 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du116 v9
du116 :: T92 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du116 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (d76 (coe (d104 (coe v0))))) (coe (d106 (coe v0))))
name136 = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism"
d136 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = ()
data T136
  = C905 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name152
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.cong"
d152 :: T136 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d152 v0
  = case coe v0 of
      C905 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name154
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.mono"
d154 :: T136 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d154 v0
  = case coe v0 of
      C905 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name158
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.Eq.isRelHomomorphism"
d158 ::
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T136 -> T40
d158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du158 v13
du158 :: T136 -> T40
du158 v0 = coe (C55 (coe (d152 (coe v0))))
name160
  = "Relation.Binary.Morphism.Structures.IsOrderHomomorphism.isRelHomomorphism"
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T136 -> T40
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du160 v13
du160 :: T136 -> T40
du160 v0 = coe (C55 (coe (d154 (coe v0))))
name180 = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism"
d180 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = ()
data T180
  = C1605 T136 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name198
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.isOrderHomomorphism"
d198 :: T180 -> T136
d198 v0
  = case coe v0 of
      C1605 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name200
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.injective"
d200 :: T180 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d200 v0
  = case coe v0 of
      C1605 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name202
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.cancel"
d202 :: T180 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d202 v0
  = case coe v0 of
      C1605 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name206
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.cong"
d206 :: T180 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d206 v0 = coe (d152 (coe (d198 (coe v0))))
name208
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.isRelHomomorphism"
d208 ::
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T180 -> T40
d208 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du208 v13
du208 :: T180 -> T40
du208 v0 = coe (du160 (coe (d198 (coe v0))))
name210
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism._.mono"
d210 :: T180 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d210 v0 = coe (d154 (coe (d198 (coe v0))))
name214
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.Eq.isRelMonomorphism"
d214 ::
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T180 -> T62
d214 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du214 v13
du214 :: T180 -> T62
du214 v0
  = coe
      (C209 (coe (du158 (coe (d198 (coe v0))))) (coe (d200 (coe v0))))
name216
  = "Relation.Binary.Morphism.Structures.IsOrderMonomorphism.isRelMonomorphism"
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T180 -> T62
d216 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du216 v13
du216 :: T180 -> T62
du216 v0
  = coe
      (C209 (coe (du160 (coe (d198 (coe v0))))) (coe (d202 (coe v0))))
name236 = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism"
d236 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 = ()
data T236
  = C2489 T180 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name252
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism.isOrderMonomorphism"
d252 :: T236 -> T180
d252 v0
  = case coe v0 of
      C2489 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name254
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism.surjective"
d254 :: T236 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d254 v0
  = case coe v0 of
      C2489 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name258
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.cancel"
d258 :: T236 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d258 v0 = coe (d202 (coe (d252 (coe v0))))
name260
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.cong"
d260 :: T236 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d260 v0 = coe (d152 (coe (d198 (coe (d252 (coe v0))))))
name262
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.injective"
d262 :: T236 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d262 v0 = coe (d200 (coe (d252 (coe v0))))
name264
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isOrderHomomorphism"
d264 :: T236 -> T136
d264 v0 = coe (d198 (coe (d252 (coe v0))))
name266
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isRelHomomorphism"
d266 ::
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T236 -> T40
d266 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du266 v13
du266 :: T236 -> T40
du266 v0
  = let v1 = d252 (coe v0) in coe (du160 (coe (d198 (coe v1))))
name268
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.isRelMonomorphism"
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T236 -> T62
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du268 v13
du268 :: T236 -> T62
du268 v0 = coe (du216 (coe (d252 (coe v0))))
name270
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism._.mono"
d270 :: T236 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d270 v0 = coe (d154 (coe (d198 (coe (d252 (coe v0))))))
name274
  = "Relation.Binary.Morphism.Structures.IsOrderIsomorphism.Eq.isRelIsomorphism"
d274 ::
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
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T236 -> T92
d274 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du274 v13
du274 :: T236 -> T92
du274 v0
  = coe
      (C441 (coe (du214 (coe (d252 (coe v0))))) (coe (d254 (coe v0))))
