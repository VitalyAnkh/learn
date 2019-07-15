{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name22 = "Function.Structures.IsCongruent"
d22 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T22
  = C17 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
        MAlonzo.Code.Relation.Binary.Core.T402
        MAlonzo.Code.Relation.Binary.Core.T402
name32 = "Function.Structures.IsCongruent.cong"
d32 :: T22 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d32 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Function.Structures.IsCongruent.isEquivalence₁"
d34 :: T22 -> MAlonzo.Code.Relation.Binary.Core.T402
d34 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name36 = "Function.Structures.IsCongruent.isEquivalence₂"
d36 :: T22 -> MAlonzo.Code.Relation.Binary.Core.T402
d36 v0
  = case coe v0 of
      C17 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name38 = "Function.Structures.IsCongruent.setoid₁"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T22 -> MAlonzo.Code.Relation.Binary.T128
d38 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du38 v9
du38 :: T22 -> MAlonzo.Code.Relation.Binary.T128
du38 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (d34 (coe v0))
name40 = "Function.Structures.IsCongruent.setoid₂"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T22 -> MAlonzo.Code.Relation.Binary.T128
d40 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du40 v9
du40 :: T22 -> MAlonzo.Code.Relation.Binary.T128
du40 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (d36 (coe v0))
name44 = "Function.Structures.IsInjection"
d44 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T44 = C473 T22 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name52 = "Function.Structures.IsInjection.isCongruent"
d52 :: T44 -> T22
d52 v0
  = case coe v0 of
      C473 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Function.Structures.IsInjection.injective"
d54 :: T44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d54 v0
  = case coe v0 of
      C473 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Function.Structures.IsInjection._.cong"
d58 :: T44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d58 v0 = coe (d32 (coe (d52 (coe v0))))
name60 = "Function.Structures.IsInjection._.isEquivalence₁"
d60 :: T44 -> MAlonzo.Code.Relation.Binary.Core.T402
d60 v0 = coe (d34 (coe (d52 (coe v0))))
name62 = "Function.Structures.IsInjection._.isEquivalence₂"
d62 :: T44 -> MAlonzo.Code.Relation.Binary.Core.T402
d62 v0 = coe (d36 (coe (d52 (coe v0))))
name64 = "Function.Structures.IsInjection._.setoid₁"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T44 -> MAlonzo.Code.Relation.Binary.T128
d64 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du64 v9
du64 :: T44 -> MAlonzo.Code.Relation.Binary.T128
du64 v0 = coe (du38 (coe (d52 (coe v0))))
name66 = "Function.Structures.IsInjection._.setoid₂"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T44 -> MAlonzo.Code.Relation.Binary.T128
d66 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du66 v9
du66 :: T44 -> MAlonzo.Code.Relation.Binary.T128
du66 v0 = coe (du40 (coe (d52 (coe v0))))
name70 = "Function.Structures.IsSurjection"
d70 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T70
  = C767 T22 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name78 = "Function.Structures.IsSurjection.isCongruent"
d78 :: T70 -> T22
d78 v0
  = case coe v0 of
      C767 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Function.Structures.IsSurjection.surjective"
d80 :: T70 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d80 v0
  = case coe v0 of
      C767 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Function.Structures.IsSurjection._.cong"
d84 :: T70 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d84 v0 = coe (d32 (coe (d78 (coe v0))))
name86 = "Function.Structures.IsSurjection._.isEquivalence₁"
d86 :: T70 -> MAlonzo.Code.Relation.Binary.Core.T402
d86 v0 = coe (d34 (coe (d78 (coe v0))))
name88 = "Function.Structures.IsSurjection._.isEquivalence₂"
d88 :: T70 -> MAlonzo.Code.Relation.Binary.Core.T402
d88 v0 = coe (d36 (coe (d78 (coe v0))))
name90 = "Function.Structures.IsSurjection._.setoid₁"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T70 -> MAlonzo.Code.Relation.Binary.T128
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du90 v9
du90 :: T70 -> MAlonzo.Code.Relation.Binary.T128
du90 v0 = coe (du38 (coe (d78 (coe v0))))
name92 = "Function.Structures.IsSurjection._.setoid₂"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T70 -> MAlonzo.Code.Relation.Binary.T128
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du92 v9
du92 :: T70 -> MAlonzo.Code.Relation.Binary.T128
du92 v0 = coe (du40 (coe (d78 (coe v0))))
name96 = "Function.Structures.IsBijection"
d96 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T96
  = C1061 T44 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name104 = "Function.Structures.IsBijection.isInjection"
d104 :: T96 -> T44
d104 v0
  = case coe v0 of
      C1061 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Function.Structures.IsBijection.surjective"
d106 :: T96 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d106 v0
  = case coe v0 of
      C1061 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Function.Structures.IsBijection._.cong"
d110 :: T96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d110 v0 = coe (d32 (coe (d52 (coe (d104 (coe v0))))))
name112 = "Function.Structures.IsBijection._.injective"
d112 :: T96 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0 = coe (d54 (coe (d104 (coe v0))))
name114 = "Function.Structures.IsBijection._.isCongruent"
d114 :: T96 -> T22
d114 v0 = coe (d52 (coe (d104 (coe v0))))
name116 = "Function.Structures.IsBijection._.isEquivalence₁"
d116 :: T96 -> MAlonzo.Code.Relation.Binary.Core.T402
d116 v0 = coe (d34 (coe (d52 (coe (d104 (coe v0))))))
name118 = "Function.Structures.IsBijection._.isEquivalence₂"
d118 :: T96 -> MAlonzo.Code.Relation.Binary.Core.T402
d118 v0 = coe (d36 (coe (d52 (coe (d104 (coe v0))))))
name120 = "Function.Structures.IsBijection._.setoid₁"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T96 -> MAlonzo.Code.Relation.Binary.T128
d120 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du120 v9
du120 :: T96 -> MAlonzo.Code.Relation.Binary.T128
du120 v0
  = let v1 = d104 (coe v0) in coe (du38 (coe (d52 (coe v1))))
name122 = "Function.Structures.IsBijection._.setoid₂"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T96 -> MAlonzo.Code.Relation.Binary.T128
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du122 v9
du122 :: T96 -> MAlonzo.Code.Relation.Binary.T128
du122 v0
  = let v1 = d104 (coe v0) in coe (du40 (coe (d52 (coe v1))))
name124 = "Function.Structures.IsBijection.bijective"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> T96 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du124 v9
du124 :: T96 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du124 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (d54 (coe (d104 (coe v0))))) (coe (d106 (coe v0))))
name126 = "Function.Structures.IsBijection.isSurjection"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> T96 -> T70
d126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du126 v9
du126 :: T96 -> T70
du126 v0
  = coe
      (C767 (coe (d52 (coe (d104 (coe v0))))) (coe (d106 (coe v0))))
name132 = "Function.Structures.IsLeftInverse"
d132 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T132
  = C1733 T22 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny)
name144 = "Function.Structures.IsLeftInverse.isCongruent"
d144 :: T132 -> T22
d144 v0
  = case coe v0 of
      C1733 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name146 = "Function.Structures.IsLeftInverse.cong₂"
d146 :: T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d146 v0
  = case coe v0 of
      C1733 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name148 = "Function.Structures.IsLeftInverse.inverseˡ"
d148 :: T132 -> AgdaAny -> AgdaAny
d148 v0
  = case coe v0 of
      C1733 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name152 = "Function.Structures.IsLeftInverse._.cong"
d152 :: T132 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d152 v0 = coe (d32 (coe (d144 (coe v0))))
name154 = "Function.Structures.IsLeftInverse._.isEquivalence₁"
d154 :: T132 -> MAlonzo.Code.Relation.Binary.Core.T402
d154 v0 = coe (d34 (coe (d144 (coe v0))))
name156 = "Function.Structures.IsLeftInverse._.isEquivalence₂"
d156 :: T132 -> MAlonzo.Code.Relation.Binary.Core.T402
d156 v0 = coe (d36 (coe (d144 (coe v0))))
name158 = "Function.Structures.IsLeftInverse._.setoid₁"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T132 -> MAlonzo.Code.Relation.Binary.T128
d158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du158 v10
du158 :: T132 -> MAlonzo.Code.Relation.Binary.T128
du158 v0 = coe (du38 (coe (d144 (coe v0))))
name160 = "Function.Structures.IsLeftInverse._.setoid₂"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T132 -> MAlonzo.Code.Relation.Binary.T128
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du160 v10
du160 :: T132 -> MAlonzo.Code.Relation.Binary.T128
du160 v0 = coe (du40 (coe (d144 (coe v0))))
name166 = "Function.Structures.IsRightInverse"
d166 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T166
  = C2105 T22 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny)
name178 = "Function.Structures.IsRightInverse.isCongruent"
d178 :: T166 -> T22
d178 v0
  = case coe v0 of
      C2105 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name180 = "Function.Structures.IsRightInverse.cong₂"
d180 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d180 v0
  = case coe v0 of
      C2105 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name182 = "Function.Structures.IsRightInverse.inverseʳ"
d182 :: T166 -> AgdaAny -> AgdaAny
d182 v0
  = case coe v0 of
      C2105 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name186 = "Function.Structures.IsRightInverse._.cong"
d186 :: T166 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d186 v0 = coe (d32 (coe (d178 (coe v0))))
name188 = "Function.Structures.IsRightInverse._.isEquivalence₁"
d188 :: T166 -> MAlonzo.Code.Relation.Binary.Core.T402
d188 v0 = coe (d34 (coe (d178 (coe v0))))
name190 = "Function.Structures.IsRightInverse._.isEquivalence₂"
d190 :: T166 -> MAlonzo.Code.Relation.Binary.Core.T402
d190 v0 = coe (d36 (coe (d178 (coe v0))))
name192 = "Function.Structures.IsRightInverse._.setoid₁"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T166 -> MAlonzo.Code.Relation.Binary.T128
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du192 v10
du192 :: T166 -> MAlonzo.Code.Relation.Binary.T128
du192 v0 = coe (du38 (coe (d178 (coe v0))))
name194 = "Function.Structures.IsRightInverse._.setoid₂"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T166 -> MAlonzo.Code.Relation.Binary.T128
d194 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du194 v10
du194 :: T166 -> MAlonzo.Code.Relation.Binary.T128
du194 v0 = coe (du40 (coe (d178 (coe v0))))
name200 = "Function.Structures.IsInverse"
d200 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T200 = C2469 T132 (AgdaAny -> AgdaAny)
name210 = "Function.Structures.IsInverse.isLeftInverse"
d210 :: T200 -> T132
d210 v0
  = case coe v0 of
      C2469 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Function.Structures.IsInverse.inverseʳ"
d212 :: T200 -> AgdaAny -> AgdaAny
d212 v0
  = case coe v0 of
      C2469 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name216 = "Function.Structures.IsInverse._.cong"
d216 :: T200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0 = coe (d32 (coe (d144 (coe (d210 (coe v0))))))
name218 = "Function.Structures.IsInverse._.cong₂"
d218 :: T200 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0 = coe (d146 (coe (d210 (coe v0))))
name220 = "Function.Structures.IsInverse._.inverseˡ"
d220 :: T200 -> AgdaAny -> AgdaAny
d220 v0 = coe (d148 (coe (d210 (coe v0))))
name222 = "Function.Structures.IsInverse._.isCongruent"
d222 :: T200 -> T22
d222 v0 = coe (d144 (coe (d210 (coe v0))))
name224 = "Function.Structures.IsInverse._.isEquivalence₁"
d224 :: T200 -> MAlonzo.Code.Relation.Binary.Core.T402
d224 v0 = coe (d34 (coe (d144 (coe (d210 (coe v0))))))
name226 = "Function.Structures.IsInverse._.isEquivalence₂"
d226 :: T200 -> MAlonzo.Code.Relation.Binary.Core.T402
d226 v0 = coe (d36 (coe (d144 (coe (d210 (coe v0))))))
name228 = "Function.Structures.IsInverse._.setoid₁"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T200 -> MAlonzo.Code.Relation.Binary.T128
d228 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du228 v10
du228 :: T200 -> MAlonzo.Code.Relation.Binary.T128
du228 v0
  = let v1 = d210 (coe v0) in coe (du38 (coe (d144 (coe v1))))
name230 = "Function.Structures.IsInverse._.setoid₂"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T200 -> MAlonzo.Code.Relation.Binary.T128
d230 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du230 v10
du230 :: T200 -> MAlonzo.Code.Relation.Binary.T128
du230 v0
  = let v1 = d210 (coe v0) in coe (du40 (coe (d144 (coe v1))))
name232 = "Function.Structures.IsInverse.isRightInverse"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T200 -> T166
d232 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du232 v10
du232 :: T200 -> T166
du232 v0
  = coe
      (C2105
         (coe (d144 (coe (d210 (coe v0)))))
         (coe (d146 (coe (d210 (coe v0))))) (coe (d212 (coe v0))))
name234 = "Function.Structures.IsInverse.inverse"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T200 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d234 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du234 v10
du234 :: T200 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du234 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (d148 (coe (d210 (coe v0))))) (coe (d212 (coe v0))))
