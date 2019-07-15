{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Packages where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name30 = "Function.Packages._._._≈_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> AgdaAny -> AgdaAny -> ()
d30 = erased
name32 = "Function.Packages._._.Carrier"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> ()
d32 = erased
name42 = "Function.Packages._._.Bijective"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> (AgdaAny -> AgdaAny) -> ()
d42 = erased
name46 = "Function.Packages._._.Injective"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> (AgdaAny -> AgdaAny) -> ()
d46 = erased
name48 = "Function.Packages._._.Inverseʳ"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d48 = erased
name50 = "Function.Packages._._.Inverseˡ"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d50 = erased
name52 = "Function.Packages._._.Inverseᵇ"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d52 = erased
name54 = "Function.Packages._._.Surjective"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> AgdaAny) -> ()
d54 = erased
name58 = "Function.Packages._._.IsBijection"
d58 a0 a1 a2 a3 a4 a5 a6 = ()
name60 = "Function.Packages._._.IsCongruent"
d60 a0 a1 a2 a3 a4 a5 a6 = ()
name62 = "Function.Packages._._.IsInjection"
d62 a0 a1 a2 a3 a4 a5 a6 = ()
name64 = "Function.Packages._._.IsInverse"
d64 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name66 = "Function.Packages._._.IsLeftInverse"
d66 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name68 = "Function.Packages._._.IsRightInverse"
d68 a0 a1 a2 a3 a4 a5 a6 a7 = ()
name70 = "Function.Packages._._.IsSurjection"
d70 a0 a1 a2 a3 a4 a5 a6 = ()
name202 = "Function.Packages._.Injection"
d202 a0 a1 a2 a3 a4 a5 = ()
data T202
  = C1345 (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name210 = "Function.Packages._.Injection.f"
d210 :: T202 -> AgdaAny -> AgdaAny
d210 v0
  = case coe v0 of
      C1345 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Function.Packages._.Injection.cong"
d212 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d212 v0
  = case coe v0 of
      C1345 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Function.Packages._.Injection.injective"
d214 :: T202 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d214 v0
  = case coe v0 of
      C1345 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name216 = "Function.Packages._.Injection.isCongruent"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T202 -> MAlonzo.Code.Function.Structures.T22
d216 v0 v1 v2 v3 v4 v5 v6 = du216 v4 v5 v6
du216 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T202 -> MAlonzo.Code.Function.Structures.T22
du216 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C17
         (coe (d212 (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v1))))
name218 = "Function.Packages._.Injection.isInjection"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T202 -> MAlonzo.Code.Function.Structures.T44
d218 v0 v1 v2 v3 v4 v5 v6 = du218 v4 v5 v6
du218 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T202 -> MAlonzo.Code.Function.Structures.T44
du218 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C473
         (coe (du216 (coe v0) (coe v1) (coe v2))) (coe (d214 (coe v2))))
name220 = "Function.Packages._.Surjection"
d220 a0 a1 a2 a3 a4 a5 = ()
data T220
  = C1699 (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name228 = "Function.Packages._.Surjection.f"
d228 :: T220 -> AgdaAny -> AgdaAny
d228 v0
  = case coe v0 of
      C1699 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Function.Packages._.Surjection.cong"
d230 :: T220 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d230 v0
  = case coe v0 of
      C1699 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name232 = "Function.Packages._.Surjection.surjective"
d232 :: T220 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d232 v0
  = case coe v0 of
      C1699 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name234 = "Function.Packages._.Surjection.isCongruent"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T220 -> MAlonzo.Code.Function.Structures.T22
d234 v0 v1 v2 v3 v4 v5 v6 = du234 v4 v5 v6
du234 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T220 -> MAlonzo.Code.Function.Structures.T22
du234 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C17
         (coe (d230 (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v1))))
name236 = "Function.Packages._.Surjection.isSurjection"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T220 -> MAlonzo.Code.Function.Structures.T70
d236 v0 v1 v2 v3 v4 v5 v6 = du236 v4 v5 v6
du236 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T220 -> MAlonzo.Code.Function.Structures.T70
du236 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C767
         (coe (du234 (coe v0) (coe v1) (coe v2))) (coe (d232 (coe v2))))
name238 = "Function.Packages._.Bijection"
d238 a0 a1 a2 a3 a4 a5 = ()
data T238
  = C2049 (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name246 = "Function.Packages._.Bijection.f"
d246 :: T238 -> AgdaAny -> AgdaAny
d246 v0
  = case coe v0 of
      C2049 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name248 = "Function.Packages._.Bijection.cong"
d248 :: T238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d248 v0
  = case coe v0 of
      C2049 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name250 = "Function.Packages._.Bijection.bijective"
d250 :: T238 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d250 v0
  = case coe v0 of
      C2049 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name252 = "Function.Packages._.Bijection.injective"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d252 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du252 v6 v7 v8
du252 :: T238 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du252 v0 v1 v2
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (d250 (coe v0)) v1 v2
name254 = "Function.Packages._.Bijection.surjective"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d254 v0 v1 v2 v3 v4 v5 v6 = du254 v6
du254 :: T238 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du254 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d250 (coe v0))))
name256 = "Function.Packages._.Bijection.injection"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T238 -> T202
d256 v0 v1 v2 v3 v4 v5 v6 = du256 v6
du256 :: T238 -> T202
du256 v0
  = coe
      (C1345
         (coe (d246 (coe v0))) (coe (d248 (coe v0)))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d250 (coe v0))))))
name258 = "Function.Packages._.Bijection.surjection"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T238 -> T220
d258 v0 v1 v2 v3 v4 v5 v6 = du258 v6
du258 :: T238 -> T220
du258 v0
  = coe
      (C1699
         (coe (d246 (coe v0))) (coe (d248 (coe v0)))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d250 (coe v0))))))
name262 = "Function.Packages._.Bijection._.isInjection"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> MAlonzo.Code.Function.Structures.T44
d262 v0 v1 v2 v3 v4 v5 v6 = du262 v4 v5 v6
du262 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> MAlonzo.Code.Function.Structures.T44
du262 v0 v1 v2
  = coe (du218 (coe v0) (coe v1) (coe (du256 (coe v2))))
name266 = "Function.Packages._.Bijection._.isSurjection"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> MAlonzo.Code.Function.Structures.T70
d266 v0 v1 v2 v3 v4 v5 v6 = du266 v4 v5 v6
du266 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> MAlonzo.Code.Function.Structures.T70
du266 v0 v1 v2
  = coe (du236 (coe v0) (coe v1) (coe (du258 (coe v2))))
name268 = "Function.Packages._.Bijection.isBijection"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> MAlonzo.Code.Function.Structures.T96
d268 v0 v1 v2 v3 v4 v5 v6 = du268 v4 v5 v6
du268 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T238 -> MAlonzo.Code.Function.Structures.T96
du268 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C1061
         (coe (du218 (coe v0) (coe v1) (coe (du256 (coe v2)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d250 (coe v2))))))
name270 = "Function.Packages._.Equivalence"
d270 a0 a1 a2 a3 a4 a5 = ()
data T270
  = C2783 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name280 = "Function.Packages._.Equivalence.f"
d280 :: T270 -> AgdaAny -> AgdaAny
d280 v0
  = case coe v0 of
      C2783 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name282 = "Function.Packages._.Equivalence.g"
d282 :: T270 -> AgdaAny -> AgdaAny
d282 v0
  = case coe v0 of
      C2783 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Function.Packages._.Equivalence.cong₁"
d284 :: T270 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d284 v0
  = case coe v0 of
      C2783 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Function.Packages._.Equivalence.cong₂"
d286 :: T270 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d286 v0
  = case coe v0 of
      C2783 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name288 = "Function.Packages._.LeftInverse"
d288 a0 a1 a2 a3 a4 a5 = ()
data T288
  = C2963 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name300 = "Function.Packages._.LeftInverse.f"
d300 :: T288 -> AgdaAny -> AgdaAny
d300 v0
  = case coe v0 of
      C2963 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name302 = "Function.Packages._.LeftInverse.g"
d302 :: T288 -> AgdaAny -> AgdaAny
d302 v0
  = case coe v0 of
      C2963 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name304 = "Function.Packages._.LeftInverse.cong₁"
d304 :: T288 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0
  = case coe v0 of
      C2963 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name306 = "Function.Packages._.LeftInverse.cong₂"
d306 :: T288 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0
  = case coe v0 of
      C2963 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name308 = "Function.Packages._.LeftInverse.inverseˡ"
d308 :: T288 -> AgdaAny -> AgdaAny
d308 v0
  = case coe v0 of
      C2963 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name310 = "Function.Packages._.LeftInverse.isCongruent"
d310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T288 -> MAlonzo.Code.Function.Structures.T22
d310 v0 v1 v2 v3 v4 v5 v6 = du310 v4 v5 v6
du310 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T288 -> MAlonzo.Code.Function.Structures.T22
du310 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C17
         (coe (d304 (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v1))))
name312 = "Function.Packages._.LeftInverse.isLeftInverse"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T288 -> MAlonzo.Code.Function.Structures.T132
d312 v0 v1 v2 v3 v4 v5 v6 = du312 v4 v5 v6
du312 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T288 -> MAlonzo.Code.Function.Structures.T132
du312 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C1733
         (coe (du310 (coe v0) (coe v1) (coe v2))) (coe (d306 (coe v2)))
         (coe (d308 (coe v2))))
name314 = "Function.Packages._.LeftInverse.equivalence"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T288 -> T270
d314 v0 v1 v2 v3 v4 v5 v6 = du314 v6
du314 :: T288 -> T270
du314 v0
  = coe
      (C2783
         (coe (d300 (coe v0))) (coe (d302 (coe v0))) (coe (d304 (coe v0)))
         (coe (d306 (coe v0))))
name316 = "Function.Packages._.RightInverse"
d316 a0 a1 a2 a3 a4 a5 = ()
data T316
  = C3499 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
name328 = "Function.Packages._.RightInverse.f"
d328 :: T316 -> AgdaAny -> AgdaAny
d328 v0
  = case coe v0 of
      C3499 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name330 = "Function.Packages._.RightInverse.g"
d330 :: T316 -> AgdaAny -> AgdaAny
d330 v0
  = case coe v0 of
      C3499 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name332 = "Function.Packages._.RightInverse.cong₁"
d332 :: T316 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d332 v0
  = case coe v0 of
      C3499 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name334 = "Function.Packages._.RightInverse.cong₂"
d334 :: T316 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d334 v0
  = case coe v0 of
      C3499 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name336 = "Function.Packages._.RightInverse.inverseʳ"
d336 :: T316 -> AgdaAny -> AgdaAny
d336 v0
  = case coe v0 of
      C3499 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name338 = "Function.Packages._.RightInverse.isCongruent"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T316 -> MAlonzo.Code.Function.Structures.T22
d338 v0 v1 v2 v3 v4 v5 v6 = du338 v4 v5 v6
du338 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T316 -> MAlonzo.Code.Function.Structures.T22
du338 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C17
         (coe (d332 (coe v2)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0)))
         (coe (MAlonzo.Code.Relation.Binary.d144 (coe v1))))
name340 = "Function.Packages._.RightInverse.isRightInverse"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T316 -> MAlonzo.Code.Function.Structures.T166
d340 v0 v1 v2 v3 v4 v5 v6 = du340 v4 v5 v6
du340 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T316 -> MAlonzo.Code.Function.Structures.T166
du340 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C2105
         (coe (du338 (coe v0) (coe v1) (coe v2))) (coe (d334 (coe v2)))
         (coe (d336 (coe v2))))
name342 = "Function.Packages._.RightInverse.equivalence"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T316 -> T270
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v6
du342 :: T316 -> T270
du342 v0
  = coe
      (C2783
         (coe (d328 (coe v0))) (coe (d330 (coe v0))) (coe (d332 (coe v0)))
         (coe (d334 (coe v0))))
name344 = "Function.Packages._.Inverse"
d344 a0 a1 a2 a3 a4 a5 = ()
data T344
  = C4035 (AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          MAlonzo.Code.Agda.Builtin.Sigma.T14
name356 = "Function.Packages._.Inverse.f"
d356 :: T344 -> AgdaAny -> AgdaAny
d356 v0
  = case coe v0 of
      C4035 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name358 = "Function.Packages._.Inverse.f⁻¹"
d358 :: T344 -> AgdaAny -> AgdaAny
d358 v0
  = case coe v0 of
      C4035 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name360 = "Function.Packages._.Inverse.cong₁"
d360 :: T344 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d360 v0
  = case coe v0 of
      C4035 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name362 = "Function.Packages._.Inverse.cong₂"
d362 :: T344 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d362 v0
  = case coe v0 of
      C4035 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name364 = "Function.Packages._.Inverse.inverse"
d364 :: T344 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d364 v0
  = case coe v0 of
      C4035 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name366 = "Function.Packages._.Inverse.inverseˡ"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T344 -> AgdaAny -> AgdaAny
d366 v0 v1 v2 v3 v4 v5 v6 = du366 v6
du366 :: T344 -> AgdaAny -> AgdaAny
du366 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d364 (coe v0))))
name368 = "Function.Packages._.Inverse.inverseʳ"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T344 -> AgdaAny -> AgdaAny
d368 v0 v1 v2 v3 v4 v5 v6 = du368 v6
du368 :: T344 -> AgdaAny -> AgdaAny
du368 v0
  = coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d364 (coe v0))))
name370 = "Function.Packages._.Inverse.leftInverse"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T344 -> T288
d370 v0 v1 v2 v3 v4 v5 v6 = du370 v6
du370 :: T344 -> T288
du370 v0
  = coe
      (C2963
         (coe (d356 (coe v0))) (coe (d358 (coe v0))) (coe (d360 (coe v0)))
         (coe (d362 (coe v0)))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe (d364 (coe v0))))))
name372 = "Function.Packages._.Inverse.rightInverse"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> T344 -> T316
d372 v0 v1 v2 v3 v4 v5 v6 = du372 v6
du372 :: T344 -> T316
du372 v0
  = coe
      (C3499
         (coe (d356 (coe v0))) (coe (d358 (coe v0))) (coe (d360 (coe v0)))
         (coe (d362 (coe v0)))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d364 (coe v0))))))
name376 = "Function.Packages._.Inverse._.isLeftInverse"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T344 -> MAlonzo.Code.Function.Structures.T132
d376 v0 v1 v2 v3 v4 v5 v6 = du376 v4 v5 v6
du376 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T344 -> MAlonzo.Code.Function.Structures.T132
du376 v0 v1 v2
  = coe (du312 (coe v0) (coe v1) (coe (du370 (coe v2))))
name380 = "Function.Packages._.Inverse._.isRightInverse"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T344 -> MAlonzo.Code.Function.Structures.T166
d380 v0 v1 v2 v3 v4 v5 v6 = du380 v4 v5 v6
du380 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T344 -> MAlonzo.Code.Function.Structures.T166
du380 v0 v1 v2
  = coe (du340 (coe v0) (coe v1) (coe (du372 (coe v2))))
name382 = "Function.Packages._.Inverse.isInverse"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T344 -> MAlonzo.Code.Function.Structures.T200
d382 v0 v1 v2 v3 v4 v5 v6 = du382 v4 v5 v6
du382 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  T344 -> MAlonzo.Code.Function.Structures.T200
du382 v0 v1 v2
  = coe
      (MAlonzo.Code.Function.Structures.C2469
         (coe (du312 (coe v0) (coe v1) (coe (du370 (coe v2)))))
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe (d364 (coe v2))))))
name384 = "Function.Packages._↣_"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d384 = erased
name390 = "Function.Packages._↠_"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d390 = erased
name396 = "Function.Packages._⤖_"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d396 = erased
name402 = "Function.Packages._⇔_"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d402 = erased
name408 = "Function.Packages._↞_"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d408 = erased
name414 = "Function.Packages._↔_"
d414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d414 = erased
