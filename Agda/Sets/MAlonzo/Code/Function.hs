{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Function where

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

name20 = "Function._.Bijective"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d20 = erased
name22 = "Function._.Congruent"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d22 = erased
name24 = "Function._.Injective"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d24 = erased
name26 = "Function._.Inverseʳ"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d26 = erased
name28 = "Function._.Inverseˡ"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d28 = erased
name30 = "Function._.Inverseᵇ"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d30 = erased
name32 = "Function._.Surjective"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> AgdaAny) -> ()
d32 = erased
name36 = "Function._.IsBijection"
d36 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
name38 = "Function._.IsCongruent"
d38 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
name40 = "Function._.IsInjection"
d40 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
name42 = "Function._.IsInverse"
d42 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
name44 = "Function._.IsLeftInverse"
d44 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
name46 = "Function._.IsRightInverse"
d46 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
name48 = "Function._.IsSurjection"
d48 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
name52 = "Function._.IsBijection.bijective"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d52 v0 v1 v2 v3 v4 v5 v6 v7 = du52
du52 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du52 = coe (\ v0 v1 -> MAlonzo.Code.Function.Structures.du124 v1)
name54 = "Function._.IsBijection.cong"
d54 ::
  MAlonzo.Code.Function.Structures.T96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d54 v0
  = coe
      (MAlonzo.Code.Function.Structures.d32
         (coe
            (MAlonzo.Code.Function.Structures.d52
               (coe (MAlonzo.Code.Function.Structures.d104 (coe v0))))))
name56 = "Function._.IsBijection.injective"
d56 ::
  MAlonzo.Code.Function.Structures.T96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d56 v0
  = coe
      (MAlonzo.Code.Function.Structures.d54
         (coe (MAlonzo.Code.Function.Structures.d104 (coe v0))))
name58 = "Function._.IsBijection.isCongruent"
d58 ::
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Function.Structures.T22
d58 v0
  = coe
      (MAlonzo.Code.Function.Structures.d52
         (coe (MAlonzo.Code.Function.Structures.d104 (coe v0))))
name60 = "Function._.IsBijection.isEquivalence₁"
d60 ::
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d60 v0
  = coe
      (MAlonzo.Code.Function.Structures.d34
         (coe
            (MAlonzo.Code.Function.Structures.d52
               (coe (MAlonzo.Code.Function.Structures.d104 (coe v0))))))
name62 = "Function._.IsBijection.isEquivalence₂"
d62 ::
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d62 v0
  = coe
      (MAlonzo.Code.Function.Structures.d36
         (coe
            (MAlonzo.Code.Function.Structures.d52
               (coe (MAlonzo.Code.Function.Structures.d104 (coe v0))))))
name64 = "Function._.IsBijection.isInjection"
d64 ::
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Function.Structures.T44
d64 = coe MAlonzo.Code.Function.Structures.d104
name66 = "Function._.IsBijection.isSurjection"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Function.Structures.T70
d66 v0 v1 v2 v3 v4 v5 v6 v7 = du66
du66 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Function.Structures.T70
du66 = coe (\ v0 v1 -> MAlonzo.Code.Function.Structures.du126 v1)
name68 = "Function._.IsBijection.setoid₁"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Relation.Binary.T128
d68 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du68 v9
du68 ::
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Relation.Binary.T128
du68 v0
  = let v1 = MAlonzo.Code.Function.Structures.d104 (coe v0) in
    coe
      (MAlonzo.Code.Function.Structures.du38
         (coe (MAlonzo.Code.Function.Structures.d52 (coe v1))))
name70 = "Function._.IsBijection.setoid₂"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Relation.Binary.T128
d70 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du70 v9
du70 ::
  MAlonzo.Code.Function.Structures.T96 ->
  MAlonzo.Code.Relation.Binary.T128
du70 v0
  = let v1 = MAlonzo.Code.Function.Structures.d104 (coe v0) in
    coe
      (MAlonzo.Code.Function.Structures.du40
         (coe (MAlonzo.Code.Function.Structures.d52 (coe v1))))
name72 = "Function._.IsBijection.surjective"
d72 ::
  MAlonzo.Code.Function.Structures.T96 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d72 = coe MAlonzo.Code.Function.Structures.d106
name76 = "Function._.IsCongruent.cong"
d76 ::
  MAlonzo.Code.Function.Structures.T22 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d76 = coe MAlonzo.Code.Function.Structures.d32
name78 = "Function._.IsCongruent.isEquivalence₁"
d78 ::
  MAlonzo.Code.Function.Structures.T22 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d78 = coe MAlonzo.Code.Function.Structures.d34
name80 = "Function._.IsCongruent.isEquivalence₂"
d80 ::
  MAlonzo.Code.Function.Structures.T22 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d80 = coe MAlonzo.Code.Function.Structures.d36
name82 = "Function._.IsCongruent.setoid₁"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T22 ->
  MAlonzo.Code.Relation.Binary.T128
d82 v0 v1 v2 v3 v4 v5 v6 v7 = du82
du82 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T22 ->
  MAlonzo.Code.Relation.Binary.T128
du82 = coe (\ v0 v1 -> MAlonzo.Code.Function.Structures.du38 v1)
name84 = "Function._.IsCongruent.setoid₂"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T22 ->
  MAlonzo.Code.Relation.Binary.T128
d84 v0 v1 v2 v3 v4 v5 v6 v7 = du84
du84 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T22 ->
  MAlonzo.Code.Relation.Binary.T128
du84 = coe (\ v0 v1 -> MAlonzo.Code.Function.Structures.du40 v1)
name88 = "Function._.IsInjection.cong"
d88 ::
  MAlonzo.Code.Function.Structures.T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d88 v0
  = coe
      (MAlonzo.Code.Function.Structures.d32
         (coe (MAlonzo.Code.Function.Structures.d52 (coe v0))))
name90 = "Function._.IsInjection.injective"
d90 ::
  MAlonzo.Code.Function.Structures.T44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d90 = coe MAlonzo.Code.Function.Structures.d54
name92 = "Function._.IsInjection.isCongruent"
d92 ::
  MAlonzo.Code.Function.Structures.T44 ->
  MAlonzo.Code.Function.Structures.T22
d92 = coe MAlonzo.Code.Function.Structures.d52
name94 = "Function._.IsInjection.isEquivalence₁"
d94 ::
  MAlonzo.Code.Function.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d94 v0
  = coe
      (MAlonzo.Code.Function.Structures.d34
         (coe (MAlonzo.Code.Function.Structures.d52 (coe v0))))
name96 = "Function._.IsInjection.isEquivalence₂"
d96 ::
  MAlonzo.Code.Function.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d96 v0
  = coe
      (MAlonzo.Code.Function.Structures.d36
         (coe (MAlonzo.Code.Function.Structures.d52 (coe v0))))
name98 = "Function._.IsInjection.setoid₁"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.T128
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du98 v9
du98 ::
  MAlonzo.Code.Function.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.T128
du98 v0
  = coe
      (MAlonzo.Code.Function.Structures.du38
         (coe (MAlonzo.Code.Function.Structures.d52 (coe v0))))
name100 = "Function._.IsInjection.setoid₂"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.T128
d100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du100 v9
du100 ::
  MAlonzo.Code.Function.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.T128
du100 v0
  = coe
      (MAlonzo.Code.Function.Structures.du40
         (coe (MAlonzo.Code.Function.Structures.d52 (coe v0))))
name104 = "Function._.IsInverse.cong"
d104 ::
  MAlonzo.Code.Function.Structures.T200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0
  = coe
      (MAlonzo.Code.Function.Structures.d32
         (coe
            (MAlonzo.Code.Function.Structures.d144
               (coe (MAlonzo.Code.Function.Structures.d210 (coe v0))))))
name106 = "Function._.IsInverse.cong₂"
d106 ::
  MAlonzo.Code.Function.Structures.T200 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0
  = coe
      (MAlonzo.Code.Function.Structures.d146
         (coe (MAlonzo.Code.Function.Structures.d210 (coe v0))))
name108 = "Function._.IsInverse.inverse"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d108 v0 v1 v2 v3 v4 v5 v6 v7 = du108
du108 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du108
  = coe (\ v0 v1 v2 -> MAlonzo.Code.Function.Structures.du234 v2)
name110 = "Function._.IsInverse.inverseʳ"
d110 :: MAlonzo.Code.Function.Structures.T200 -> AgdaAny -> AgdaAny
d110 = coe MAlonzo.Code.Function.Structures.d212
name112 = "Function._.IsInverse.inverseˡ"
d112 :: MAlonzo.Code.Function.Structures.T200 -> AgdaAny -> AgdaAny
d112 v0
  = coe
      (MAlonzo.Code.Function.Structures.d148
         (coe (MAlonzo.Code.Function.Structures.d210 (coe v0))))
name114 = "Function._.IsInverse.isCongruent"
d114 ::
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Function.Structures.T22
d114 v0
  = coe
      (MAlonzo.Code.Function.Structures.d144
         (coe (MAlonzo.Code.Function.Structures.d210 (coe v0))))
name116 = "Function._.IsInverse.isEquivalence₁"
d116 ::
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d116 v0
  = coe
      (MAlonzo.Code.Function.Structures.d34
         (coe
            (MAlonzo.Code.Function.Structures.d144
               (coe (MAlonzo.Code.Function.Structures.d210 (coe v0))))))
name118 = "Function._.IsInverse.isEquivalence₂"
d118 ::
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d118 v0
  = coe
      (MAlonzo.Code.Function.Structures.d36
         (coe
            (MAlonzo.Code.Function.Structures.d144
               (coe (MAlonzo.Code.Function.Structures.d210 (coe v0))))))
name120 = "Function._.IsInverse.isLeftInverse"
d120 ::
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Function.Structures.T132
d120 = coe MAlonzo.Code.Function.Structures.d210
name122 = "Function._.IsInverse.isRightInverse"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Function.Structures.T166
d122 v0 v1 v2 v3 v4 v5 v6 v7 = du122
du122 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Function.Structures.T166
du122
  = coe (\ v0 v1 v2 -> MAlonzo.Code.Function.Structures.du232 v2)
name124 = "Function._.IsInverse.setoid₁"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Relation.Binary.T128
d124 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du124 v10
du124 ::
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Relation.Binary.T128
du124 v0
  = let v1 = MAlonzo.Code.Function.Structures.d210 (coe v0) in
    coe
      (MAlonzo.Code.Function.Structures.du38
         (coe (MAlonzo.Code.Function.Structures.d144 (coe v1))))
name126 = "Function._.IsInverse.setoid₂"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Relation.Binary.T128
d126 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du126 v10
du126 ::
  MAlonzo.Code.Function.Structures.T200 ->
  MAlonzo.Code.Relation.Binary.T128
du126 v0
  = let v1 = MAlonzo.Code.Function.Structures.d210 (coe v0) in
    coe
      (MAlonzo.Code.Function.Structures.du40
         (coe (MAlonzo.Code.Function.Structures.d144 (coe v1))))
name130 = "Function._.IsLeftInverse.cong"
d130 ::
  MAlonzo.Code.Function.Structures.T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d130 v0
  = coe
      (MAlonzo.Code.Function.Structures.d32
         (coe (MAlonzo.Code.Function.Structures.d144 (coe v0))))
name132 = "Function._.IsLeftInverse.cong₂"
d132 ::
  MAlonzo.Code.Function.Structures.T132 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d132 = coe MAlonzo.Code.Function.Structures.d146
name134 = "Function._.IsLeftInverse.inverseˡ"
d134 :: MAlonzo.Code.Function.Structures.T132 -> AgdaAny -> AgdaAny
d134 = coe MAlonzo.Code.Function.Structures.d148
name136 = "Function._.IsLeftInverse.isCongruent"
d136 ::
  MAlonzo.Code.Function.Structures.T132 ->
  MAlonzo.Code.Function.Structures.T22
d136 = coe MAlonzo.Code.Function.Structures.d144
name138 = "Function._.IsLeftInverse.isEquivalence₁"
d138 ::
  MAlonzo.Code.Function.Structures.T132 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d138 v0
  = coe
      (MAlonzo.Code.Function.Structures.d34
         (coe (MAlonzo.Code.Function.Structures.d144 (coe v0))))
name140 = "Function._.IsLeftInverse.isEquivalence₂"
d140 ::
  MAlonzo.Code.Function.Structures.T132 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d140 v0
  = coe
      (MAlonzo.Code.Function.Structures.d36
         (coe (MAlonzo.Code.Function.Structures.d144 (coe v0))))
name142 = "Function._.IsLeftInverse.setoid₁"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T132 ->
  MAlonzo.Code.Relation.Binary.T128
d142 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du142 v10
du142 ::
  MAlonzo.Code.Function.Structures.T132 ->
  MAlonzo.Code.Relation.Binary.T128
du142 v0
  = coe
      (MAlonzo.Code.Function.Structures.du38
         (coe (MAlonzo.Code.Function.Structures.d144 (coe v0))))
name144 = "Function._.IsLeftInverse.setoid₂"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T132 ->
  MAlonzo.Code.Relation.Binary.T128
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du144 v10
du144 ::
  MAlonzo.Code.Function.Structures.T132 ->
  MAlonzo.Code.Relation.Binary.T128
du144 v0
  = coe
      (MAlonzo.Code.Function.Structures.du40
         (coe (MAlonzo.Code.Function.Structures.d144 (coe v0))))
name148 = "Function._.IsRightInverse.cong"
d148 ::
  MAlonzo.Code.Function.Structures.T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d148 v0
  = coe
      (MAlonzo.Code.Function.Structures.d32
         (coe (MAlonzo.Code.Function.Structures.d178 (coe v0))))
name150 = "Function._.IsRightInverse.cong₂"
d150 ::
  MAlonzo.Code.Function.Structures.T166 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d150 = coe MAlonzo.Code.Function.Structures.d180
name152 = "Function._.IsRightInverse.inverseʳ"
d152 :: MAlonzo.Code.Function.Structures.T166 -> AgdaAny -> AgdaAny
d152 = coe MAlonzo.Code.Function.Structures.d182
name154 = "Function._.IsRightInverse.isCongruent"
d154 ::
  MAlonzo.Code.Function.Structures.T166 ->
  MAlonzo.Code.Function.Structures.T22
d154 = coe MAlonzo.Code.Function.Structures.d178
name156 = "Function._.IsRightInverse.isEquivalence₁"
d156 ::
  MAlonzo.Code.Function.Structures.T166 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d156 v0
  = coe
      (MAlonzo.Code.Function.Structures.d34
         (coe (MAlonzo.Code.Function.Structures.d178 (coe v0))))
name158 = "Function._.IsRightInverse.isEquivalence₂"
d158 ::
  MAlonzo.Code.Function.Structures.T166 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d158 v0
  = coe
      (MAlonzo.Code.Function.Structures.d36
         (coe (MAlonzo.Code.Function.Structures.d178 (coe v0))))
name160 = "Function._.IsRightInverse.setoid₁"
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
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T166 ->
  MAlonzo.Code.Relation.Binary.T128
d160 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du160 v10
du160 ::
  MAlonzo.Code.Function.Structures.T166 ->
  MAlonzo.Code.Relation.Binary.T128
du160 v0
  = coe
      (MAlonzo.Code.Function.Structures.du38
         (coe (MAlonzo.Code.Function.Structures.d178 (coe v0))))
name162 = "Function._.IsRightInverse.setoid₂"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T166 ->
  MAlonzo.Code.Relation.Binary.T128
d162 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du162 v10
du162 ::
  MAlonzo.Code.Function.Structures.T166 ->
  MAlonzo.Code.Relation.Binary.T128
du162 v0
  = coe
      (MAlonzo.Code.Function.Structures.du40
         (coe (MAlonzo.Code.Function.Structures.d178 (coe v0))))
name166 = "Function._.IsSurjection.cong"
d166 ::
  MAlonzo.Code.Function.Structures.T70 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d166 v0
  = coe
      (MAlonzo.Code.Function.Structures.d32
         (coe (MAlonzo.Code.Function.Structures.d78 (coe v0))))
name168 = "Function._.IsSurjection.isCongruent"
d168 ::
  MAlonzo.Code.Function.Structures.T70 ->
  MAlonzo.Code.Function.Structures.T22
d168 = coe MAlonzo.Code.Function.Structures.d78
name170 = "Function._.IsSurjection.isEquivalence₁"
d170 ::
  MAlonzo.Code.Function.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d170 v0
  = coe
      (MAlonzo.Code.Function.Structures.d34
         (coe (MAlonzo.Code.Function.Structures.d78 (coe v0))))
name172 = "Function._.IsSurjection.isEquivalence₂"
d172 ::
  MAlonzo.Code.Function.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d172 v0
  = coe
      (MAlonzo.Code.Function.Structures.d36
         (coe (MAlonzo.Code.Function.Structures.d78 (coe v0))))
name174 = "Function._.IsSurjection.setoid₁"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.T128
d174 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du174 v9
du174 ::
  MAlonzo.Code.Function.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.T128
du174 v0
  = coe
      (MAlonzo.Code.Function.Structures.du38
         (coe (MAlonzo.Code.Function.Structures.d78 (coe v0))))
name176 = "Function._.IsSurjection.setoid₂"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Function.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.T128
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du176 v9
du176 ::
  MAlonzo.Code.Function.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.T128
du176 v0
  = coe
      (MAlonzo.Code.Function.Structures.du40
         (coe (MAlonzo.Code.Function.Structures.d78 (coe v0))))
name178 = "Function._.IsSurjection.surjective"
d178 ::
  MAlonzo.Code.Function.Structures.T70 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d178 = coe MAlonzo.Code.Function.Structures.d80
