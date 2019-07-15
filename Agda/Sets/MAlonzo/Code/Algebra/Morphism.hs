{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Morphism where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single

name18 = "Algebra.Morphism.Definitions.Morphism"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d18 = erased
name20 = "Algebra.Morphism.Definitions.Homomorphic₀"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d20 = erased
name28 = "Algebra.Morphism.Definitions.Homomorphic₁"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d28 = erased
name38 = "Algebra.Morphism.Definitions.Homomorphic₂"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d38 = erased
name68 = "Algebra.Morphism._.F._∙_"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 -> AgdaAny -> AgdaAny -> AgdaAny
d68 v0 v1 v2 v3 v4 v5 = du68 v4
du68 :: MAlonzo.Code.Algebra.T6 -> AgdaAny -> AgdaAny -> AgdaAny
du68 v0 = coe (MAlonzo.Code.Algebra.d22 (coe v0))
name70 = "Algebra.Morphism._.F._≈_"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 -> AgdaAny -> AgdaAny -> ()
d70 = erased
name84 = "Algebra.Morphism._._.Homomorphic₀"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d84 = erased
name86 = "Algebra.Morphism._._.Homomorphic₁"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d86 = erased
name88 = "Algebra.Morphism._._.Homomorphic₂"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d88 = erased
name90 = "Algebra.Morphism._._.Morphism"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 -> MAlonzo.Code.Algebra.T6 -> ()
d90 = erased
name94 = "Algebra.Morphism._.IsRawMagmaMorphism"
d94 a0 a1 a2 a3 a4 a5 a6 = ()
data T94
  = C521 MAlonzo.Code.Algebra.Structures.T84
         MAlonzo.Code.Algebra.Structures.T84
         (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny)
name106 = "Algebra.Morphism._.IsRawMagmaMorphism.F-isMagma"
d106 :: T94 -> MAlonzo.Code.Algebra.Structures.T84
d106 v0
  = case coe v0 of
      C521 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Algebra.Morphism._.IsRawMagmaMorphism.T-isMagma"
d108 :: T94 -> MAlonzo.Code.Algebra.Structures.T84
d108 v0
  = case coe v0 of
      C521 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Algebra.Morphism._.IsRawMagmaMorphism.⟦⟧-cong"
d110 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d110 v0
  = case coe v0 of
      C521 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name112 = "Algebra.Morphism._.IsRawMagmaMorphism.∙-homo"
d112 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny
d112 v0
  = case coe v0 of
      C521 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name116 = "Algebra.Morphism._.IsRawMagmaMorphism._.setoid"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) -> T94 -> MAlonzo.Code.Relation.Binary.T128
d116 v0 v1 v2 v3 v4 v5 v6 v7 = du116 v7
du116 :: T94 -> MAlonzo.Code.Relation.Binary.T128
du116 v0
  = coe (MAlonzo.Code.Algebra.Structures.du106 (coe (d106 (coe v0))))
name118 = "Algebra.Morphism._.IsRawMagmaMorphism._.∙-cong"
d118 ::
  T94 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d118 v0
  = coe (MAlonzo.Code.Algebra.Structures.d94 (coe (d106 (coe v0))))
name120 = "Algebra.Morphism._.IsRawMagmaMorphism._.∙-congʳ"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) ->
  T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d120 v0 v1 v2 v3 v4 v5 v6 v7 = du120 v7
du120 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du120 v0
  = coe (MAlonzo.Code.Algebra.Structures.du112 (coe (d106 (coe v0))))
name122 = "Algebra.Morphism._.IsRawMagmaMorphism._.∙-congˡ"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) ->
  T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d122 v0 v1 v2 v3 v4 v5 v6 v7 = du122 v7
du122 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du122 v0
  = coe (MAlonzo.Code.Algebra.Structures.du108 (coe (d106 (coe v0))))
name126 = "Algebra.Morphism._.IsRawMagmaMorphism._.setoid"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) -> T94 -> MAlonzo.Code.Relation.Binary.T128
d126 v0 v1 v2 v3 v4 v5 v6 v7 = du126 v7
du126 :: T94 -> MAlonzo.Code.Relation.Binary.T128
du126 v0
  = coe (MAlonzo.Code.Algebra.Structures.du106 (coe (d108 (coe v0))))
name128 = "Algebra.Morphism._.IsRawMagmaMorphism._.∙-cong"
d128 ::
  T94 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d128 v0
  = coe (MAlonzo.Code.Algebra.Structures.d94 (coe (d108 (coe v0))))
name130 = "Algebra.Morphism._.IsRawMagmaMorphism._.∙-congʳ"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) ->
  T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d130 v0 v1 v2 v3 v4 v5 v6 v7 = du130 v7
du130 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du130 v0
  = coe (MAlonzo.Code.Algebra.Structures.du112 (coe (d108 (coe v0))))
name132 = "Algebra.Morphism._.IsRawMagmaMorphism._.∙-congˡ"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 ->
  (AgdaAny -> AgdaAny) ->
  T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d132 v0 v1 v2 v3 v4 v5 v6 v7 = du132 v7
du132 :: T94 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du132 v0
  = coe (MAlonzo.Code.Algebra.Structures.du108 (coe (d108 (coe v0))))
name134 = "Algebra.Morphism._.IsRawMagmaMorphism-syntax"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T6 ->
  MAlonzo.Code.Algebra.T6 -> (AgdaAny -> AgdaAny) -> ()
d134 = erased
name160 = "Algebra.Morphism._.F.rawMagma"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 -> MAlonzo.Code.Algebra.T6
d160 v0 v1 v2 v3 v4 v5 = du160 v4
du160 :: MAlonzo.Code.Algebra.T318 -> MAlonzo.Code.Algebra.T6
du160 v0 = coe (MAlonzo.Code.Algebra.du340 (coe v0))
name162 = "Algebra.Morphism._.F.ε"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 -> MAlonzo.Code.Algebra.T318 -> AgdaAny
d162 v0 v1 v2 v3 v4 v5 = du162 v4
du162 :: MAlonzo.Code.Algebra.T318 -> AgdaAny
du162 v0 = coe (MAlonzo.Code.Algebra.d338 (coe v0))
name172 = "Algebra.Morphism._.T.rawMagma"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 -> MAlonzo.Code.Algebra.T6
d172 v0 v1 v2 v3 v4 v5 = du172 v5
du172 :: MAlonzo.Code.Algebra.T318 -> MAlonzo.Code.Algebra.T6
du172 v0 = coe (MAlonzo.Code.Algebra.du340 (coe v0))
name178 = "Algebra.Morphism._._.Homomorphic₀"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d178 = erased
name180 = "Algebra.Morphism._._.Homomorphic₁"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d180 = erased
name182 = "Algebra.Morphism._._.Homomorphic₂"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d182 = erased
name184 = "Algebra.Morphism._._.Morphism"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 -> MAlonzo.Code.Algebra.T318 -> ()
d184 = erased
name188 = "Algebra.Morphism._.IsRawMonoidMorphism"
d188 a0 a1 a2 a3 a4 a5 a6 = ()
data T188 = C941 T94 AgdaAny
name196 = "Algebra.Morphism._.IsRawMonoidMorphism.magma-homo"
d196 :: T188 -> T94
d196 v0
  = case coe v0 of
      C941 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name198 = "Algebra.Morphism._.IsRawMonoidMorphism.ε-homo"
d198 :: T188 -> AgdaAny
d198 v0
  = case coe v0 of
      C941 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name202 = "Algebra.Morphism._.IsRawMonoidMorphism._.F-isMagma"
d202 :: T188 -> MAlonzo.Code.Algebra.Structures.T84
d202 v0 = coe (d106 (coe (d196 (coe v0))))
name204 = "Algebra.Morphism._.IsRawMonoidMorphism._.setoid"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) -> T188 -> MAlonzo.Code.Relation.Binary.T128
d204 v0 v1 v2 v3 v4 v5 v6 v7 = du204 v7
du204 :: T188 -> MAlonzo.Code.Relation.Binary.T128
du204 v0
  = let v1 = d196 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.du106 (coe (d106 (coe v1))))
name206 = "Algebra.Morphism._.IsRawMonoidMorphism._.∙-cong"
d206 ::
  T188 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d206 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe (d106 (coe (d196 (coe v0))))))
name208 = "Algebra.Morphism._.IsRawMonoidMorphism._.∙-congʳ"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) ->
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d208 v0 v1 v2 v3 v4 v5 v6 v7 = du208 v7
du208 ::
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du208 v0
  = let v1 = d196 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.du112 (coe (d106 (coe v1))))
name210 = "Algebra.Morphism._.IsRawMonoidMorphism._.∙-congˡ"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) ->
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d210 v0 v1 v2 v3 v4 v5 v6 v7 = du210 v7
du210 ::
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du210 v0
  = let v1 = d196 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.du108 (coe (d106 (coe v1))))
name212 = "Algebra.Morphism._.IsRawMonoidMorphism._.T-isMagma"
d212 :: T188 -> MAlonzo.Code.Algebra.Structures.T84
d212 v0 = coe (d108 (coe (d196 (coe v0))))
name214 = "Algebra.Morphism._.IsRawMonoidMorphism._.setoid"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) -> T188 -> MAlonzo.Code.Relation.Binary.T128
d214 v0 v1 v2 v3 v4 v5 v6 v7 = du214 v7
du214 :: T188 -> MAlonzo.Code.Relation.Binary.T128
du214 v0
  = let v1 = d196 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.du106 (coe (d108 (coe v1))))
name216 = "Algebra.Morphism._.IsRawMonoidMorphism._.∙-cong"
d216 ::
  T188 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d216 v0
  = coe
      (MAlonzo.Code.Algebra.Structures.d94
         (coe (d108 (coe (d196 (coe v0))))))
name218 = "Algebra.Morphism._.IsRawMonoidMorphism._.∙-congʳ"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) ->
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0 v1 v2 v3 v4 v5 v6 v7 = du218 v7
du218 ::
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du218 v0
  = let v1 = d196 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.du112 (coe (d108 (coe v1))))
name220 = "Algebra.Morphism._.IsRawMonoidMorphism._.∙-congˡ"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 ->
  (AgdaAny -> AgdaAny) ->
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d220 v0 v1 v2 v3 v4 v5 v6 v7 = du220 v7
du220 ::
  T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du220 v0
  = let v1 = d196 (coe v0) in
    coe (MAlonzo.Code.Algebra.Structures.du108 (coe (d108 (coe v1))))
name222 = "Algebra.Morphism._.IsRawMonoidMorphism._.∙-homo"
d222 :: T188 -> AgdaAny -> AgdaAny -> AgdaAny
d222 v0 = coe (d112 (coe (d196 (coe v0))))
name224 = "Algebra.Morphism._.IsRawMonoidMorphism._.⟦⟧-cong"
d224 :: T188 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 = coe (d110 (coe (d196 (coe v0))))
name226 = "Algebra.Morphism._.IsRawMonoidMorphism-syntax"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T318 ->
  MAlonzo.Code.Algebra.T318 -> (AgdaAny -> AgdaAny) -> ()
d226 = erased
name246 = "Algebra.Morphism._.F._∙_"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T76 ->
  MAlonzo.Code.Algebra.T76 -> AgdaAny -> AgdaAny -> AgdaAny
d246 v0 v1 v2 v3 v4 v5 = du246 v4
du246 :: MAlonzo.Code.Algebra.T76 -> AgdaAny -> AgdaAny -> AgdaAny
du246 v0 = coe (MAlonzo.Code.Algebra.d94 (coe v0))
name248 = "Algebra.Morphism._.F._≈_"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T76 ->
  MAlonzo.Code.Algebra.T76 -> AgdaAny -> AgdaAny -> ()
d248 = erased
name318 = "Algebra.Morphism._._.Homomorphic₀"
d318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T76 ->
  MAlonzo.Code.Algebra.T76 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d318 = erased
name320 = "Algebra.Morphism._._.Homomorphic₁"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T76 ->
  MAlonzo.Code.Algebra.T76 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d320 = erased
name322 = "Algebra.Morphism._._.Homomorphic₂"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T76 ->
  MAlonzo.Code.Algebra.T76 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d322 = erased
name324 = "Algebra.Morphism._._.Morphism"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T76 -> MAlonzo.Code.Algebra.T76 -> ()
d324 = erased
name328 = "Algebra.Morphism._.IsSemigroupMorphism"
d328 a0 a1 a2 a3 a4 a5 a6 = ()
data T328
  = C1499 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
          (AgdaAny -> AgdaAny -> AgdaAny)
name336 = "Algebra.Morphism._.IsSemigroupMorphism.⟦⟧-cong"
d336 :: T328 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d336 v0
  = case coe v0 of
      C1499 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name338 = "Algebra.Morphism._.IsSemigroupMorphism.∙-homo"
d338 :: T328 -> AgdaAny -> AgdaAny -> AgdaAny
d338 v0
  = case coe v0 of
      C1499 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name340 = "Algebra.Morphism._.IsSemigroupMorphism-syntax"
d340 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T76 ->
  MAlonzo.Code.Algebra.T76 -> (AgdaAny -> AgdaAny) -> ()
d340 = erased
name392 = "Algebra.Morphism._.F.semigroup"
d392 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 ->
  MAlonzo.Code.Algebra.T346 -> MAlonzo.Code.Algebra.T76
d392 v0 v1 v2 v3 v4 v5 = du392 v4
du392 :: MAlonzo.Code.Algebra.T346 -> MAlonzo.Code.Algebra.T76
du392 v0 = coe (MAlonzo.Code.Algebra.du404 (coe v0))
name400 = "Algebra.Morphism._.F.ε"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 -> MAlonzo.Code.Algebra.T346 -> AgdaAny
d400 v0 v1 v2 v3 v4 v5 = du400 v4
du400 :: MAlonzo.Code.Algebra.T346 -> AgdaAny
du400 v0 = coe (MAlonzo.Code.Algebra.d368 (coe v0))
name442 = "Algebra.Morphism._.T.semigroup"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 ->
  MAlonzo.Code.Algebra.T346 -> MAlonzo.Code.Algebra.T76
d442 v0 v1 v2 v3 v4 v5 = du442 v5
du442 :: MAlonzo.Code.Algebra.T346 -> MAlonzo.Code.Algebra.T76
du442 v0 = coe (MAlonzo.Code.Algebra.du404 (coe v0))
name460 = "Algebra.Morphism._._.Homomorphic₀"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 ->
  MAlonzo.Code.Algebra.T346 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d460 = erased
name462 = "Algebra.Morphism._._.Homomorphic₁"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 ->
  MAlonzo.Code.Algebra.T346 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d462 = erased
name464 = "Algebra.Morphism._._.Homomorphic₂"
d464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 ->
  MAlonzo.Code.Algebra.T346 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d464 = erased
name466 = "Algebra.Morphism._._.Morphism"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 -> MAlonzo.Code.Algebra.T346 -> ()
d466 = erased
name470 = "Algebra.Morphism._.IsMonoidMorphism"
d470 a0 a1 a2 a3 a4 a5 a6 = ()
data T470 = C1803 T328 AgdaAny
name478 = "Algebra.Morphism._.IsMonoidMorphism.sm-homo"
d478 :: T470 -> T328
d478 v0
  = case coe v0 of
      C1803 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name480 = "Algebra.Morphism._.IsMonoidMorphism.ε-homo"
d480 :: T470 -> AgdaAny
d480 v0
  = case coe v0 of
      C1803 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name484 = "Algebra.Morphism._.IsMonoidMorphism._.∙-homo"
d484 :: T470 -> AgdaAny -> AgdaAny -> AgdaAny
d484 v0 = coe (d338 (coe (d478 (coe v0))))
name486 = "Algebra.Morphism._.IsMonoidMorphism._.⟦⟧-cong"
d486 :: T470 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d486 v0 = coe (d336 (coe (d478 (coe v0))))
name488 = "Algebra.Morphism._.IsMonoidMorphism-syntax"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T346 ->
  MAlonzo.Code.Algebra.T346 -> (AgdaAny -> AgdaAny) -> ()
d488 = erased
name536 = "Algebra.Morphism._.F.monoid"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  MAlonzo.Code.Algebra.T418 -> MAlonzo.Code.Algebra.T346
d536 v0 v1 v2 v3 v4 v5 = du536 v4
du536 :: MAlonzo.Code.Algebra.T418 -> MAlonzo.Code.Algebra.T346
du536 v0 = coe (MAlonzo.Code.Algebra.du480 (coe v0))
name592 = "Algebra.Morphism._.T.monoid"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  MAlonzo.Code.Algebra.T418 -> MAlonzo.Code.Algebra.T346
d592 v0 v1 v2 v3 v4 v5 = du592 v5
du592 :: MAlonzo.Code.Algebra.T418 -> MAlonzo.Code.Algebra.T346
du592 v0 = coe (MAlonzo.Code.Algebra.du480 (coe v0))
name620 = "Algebra.Morphism._._.Homomorphic₀"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  MAlonzo.Code.Algebra.T418 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d620 = erased
name622 = "Algebra.Morphism._._.Homomorphic₁"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  MAlonzo.Code.Algebra.T418 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d622 = erased
name624 = "Algebra.Morphism._._.Homomorphic₂"
d624 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  MAlonzo.Code.Algebra.T418 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d624 = erased
name626 = "Algebra.Morphism._._.Morphism"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 -> MAlonzo.Code.Algebra.T418 -> ()
d626 = erased
name630 = "Algebra.Morphism._.IsCommutativeMonoidMorphism"
d630 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T630 = C2177 T470
name636 = "Algebra.Morphism._.IsCommutativeMonoidMorphism.mn-homo"
d636 :: T630 -> T470
d636 v0
  = case coe v0 of
      C2177 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name640
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.sm-homo"
d640 :: T630 -> T328
d640 v0 = coe (d478 (coe (d636 (coe v0))))
name642 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.ε-homo"
d642 :: T630 -> AgdaAny
d642 v0 = coe (d480 (coe (d636 (coe v0))))
name644 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.∙-homo"
d644 :: T630 -> AgdaAny -> AgdaAny -> AgdaAny
d644 v0 = coe (d338 (coe (d478 (coe (d636 (coe v0))))))
name646
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.⟦⟧-cong"
d646 :: T630 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d646 v0 = coe (d336 (coe (d478 (coe (d636 (coe v0))))))
name648 = "Algebra.Morphism._.IsCommutativeMonoidMorphism-syntax"
d648 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T418 ->
  MAlonzo.Code.Algebra.T418 -> (AgdaAny -> AgdaAny) -> ()
d648 = erased
name678 = "Algebra.Morphism._.F.commutativeMonoid"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T418
d678 v0 v1 v2 v3 v4 v5 = du678 v4
du678 :: MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T418
du678 v0 = coe (MAlonzo.Code.Algebra.du562 (coe v0))
name702 = "Algebra.Morphism._.F.monoid"
d702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T346
d702 v0 v1 v2 v3 v4 v5 = du702 v4
du702 :: MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T346
du702 v0
  = coe
      (MAlonzo.Code.Algebra.du480
         (coe (MAlonzo.Code.Algebra.du562 (coe v0))))
name740 = "Algebra.Morphism._.T.commutativeMonoid"
d740 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T418
d740 v0 v1 v2 v3 v4 v5 = du740 v5
du740 :: MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T418
du740 v0 = coe (MAlonzo.Code.Algebra.du562 (coe v0))
name764 = "Algebra.Morphism._.T.monoid"
d764 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T346
d764 v0 v1 v2 v3 v4 v5 = du764 v5
du764 :: MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T346
du764 v0
  = coe
      (MAlonzo.Code.Algebra.du480
         (coe (MAlonzo.Code.Algebra.du562 (coe v0))))
name792 = "Algebra.Morphism._._.Homomorphic₀"
d792 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d792 = erased
name794 = "Algebra.Morphism._._.Homomorphic₁"
d794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d794 = erased
name796 = "Algebra.Morphism._._.Homomorphic₂"
d796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d796 = erased
name798 = "Algebra.Morphism._._.Morphism"
d798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 -> MAlonzo.Code.Algebra.T496 -> ()
d798 = erased
name802
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism"
d802 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T802 = C2601 T470
name808
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.mn-homo"
d808 :: T802 -> T470
d808 v0
  = case coe v0 of
      C2601 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name812
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.sm-homo"
d812 :: T802 -> T328
d812 v0 = coe (d478 (coe (d808 (coe v0))))
name814
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.ε-homo"
d814 :: T802 -> AgdaAny
d814 v0 = coe (d480 (coe (d808 (coe v0))))
name816
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.∙-homo"
d816 :: T802 -> AgdaAny -> AgdaAny -> AgdaAny
d816 v0 = coe (d338 (coe (d478 (coe (d808 (coe v0))))))
name818
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.⟦⟧-cong"
d818 :: T802 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d818 v0 = coe (d336 (coe (d478 (coe (d808 (coe v0))))))
name820
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.isCommutativeMonoidMorphism"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 -> (AgdaAny -> AgdaAny) -> T802 -> T630
d820 v0 v1 v2 v3 v4 v5 v6 v7 = du820 v7
du820 :: T802 -> T630
du820 v0 = coe (C2177 (coe (d808 (coe v0))))
name822
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism-syntax"
d822 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T496 ->
  MAlonzo.Code.Algebra.T496 -> (AgdaAny -> AgdaAny) -> ()
d822 = erased
name844 = "Algebra.Morphism._.F._⁻¹"
d844 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 -> AgdaAny -> AgdaAny
d844 v0 v1 v2 v3 v4 v5 = du844 v4
du844 :: MAlonzo.Code.Algebra.T686 -> AgdaAny -> AgdaAny
du844 v0 = coe (MAlonzo.Code.Algebra.d712 (coe v0))
name878 = "Algebra.Morphism._.F.monoid"
d878 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 -> MAlonzo.Code.Algebra.T346
d878 v0 v1 v2 v3 v4 v5 = du878 v4
du878 :: MAlonzo.Code.Algebra.T686 -> MAlonzo.Code.Algebra.T346
du878 v0 = coe (MAlonzo.Code.Algebra.du766 (coe v0))
name950 = "Algebra.Morphism._.T.monoid"
d950 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 -> MAlonzo.Code.Algebra.T346
d950 v0 v1 v2 v3 v4 v5 = du950 v5
du950 :: MAlonzo.Code.Algebra.T686 -> MAlonzo.Code.Algebra.T346
du950 v0 = coe (MAlonzo.Code.Algebra.du766 (coe v0))
name986 = "Algebra.Morphism._._.Homomorphic₀"
d986 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d986 = erased
name988 = "Algebra.Morphism._._.Homomorphic₁"
d988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d988 = erased
name990 = "Algebra.Morphism._._.Homomorphic₂"
d990 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d990 = erased
name992 = "Algebra.Morphism._._.Morphism"
d992 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 -> MAlonzo.Code.Algebra.T686 -> ()
d992 = erased
name996 = "Algebra.Morphism._.IsGroupMorphism"
d996 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T996 = C3237 T470
name1002 = "Algebra.Morphism._.IsGroupMorphism.mn-homo"
d1002 :: T996 -> T470
d1002 v0
  = case coe v0 of
      C3237 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1006 = "Algebra.Morphism._.IsGroupMorphism._.sm-homo"
d1006 :: T996 -> T328
d1006 v0 = coe (d478 (coe (d1002 (coe v0))))
name1008 = "Algebra.Morphism._.IsGroupMorphism._.ε-homo"
d1008 :: T996 -> AgdaAny
d1008 v0 = coe (d480 (coe (d1002 (coe v0))))
name1010 = "Algebra.Morphism._.IsGroupMorphism._.∙-homo"
d1010 :: T996 -> AgdaAny -> AgdaAny -> AgdaAny
d1010 v0 = coe (d338 (coe (d478 (coe (d1002 (coe v0))))))
name1012 = "Algebra.Morphism._.IsGroupMorphism._.⟦⟧-cong"
d1012 :: T996 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1012 v0 = coe (d336 (coe (d478 (coe (d1002 (coe v0))))))
name1014 = "Algebra.Morphism._.IsGroupMorphism.⁻¹-homo"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 ->
  (AgdaAny -> AgdaAny) -> T996 -> AgdaAny -> AgdaAny
d1014 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du1014 v4 v5 v6 v7 v8
du1014 ::
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 ->
  (AgdaAny -> AgdaAny) -> T996 -> AgdaAny -> AgdaAny
du1014 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du536
      (MAlonzo.Code.Algebra.d708 (coe v1))
      (MAlonzo.Code.Algebra.d710 (coe v1))
      (MAlonzo.Code.Algebra.d712 (coe v1))
      (MAlonzo.Code.Algebra.d714 (coe v1))
      (coe v2 (coe MAlonzo.Code.Algebra.d712 v0 v4)) (coe v2 v4)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v5 = MAlonzo.Code.Algebra.d714 (coe v1) in
                            let v6 = MAlonzo.Code.Algebra.Structures.d484 (coe v5) in
                            let v7 = MAlonzo.Code.Algebra.Structures.d278 (coe v6) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v7)))))))))
               (coe
                  MAlonzo.Code.Algebra.d708 v1
                  (coe v2 (coe MAlonzo.Code.Algebra.d712 v0 v4)) (coe v2 v4))
               (coe
                  v2
                  (let v5
                         = let v5 = MAlonzo.Code.Algebra.du766 (coe v0) in
                           MAlonzo.Code.Algebra.du404 (coe v5) in
                   coe
                     MAlonzo.Code.Algebra.d94 v5 (coe MAlonzo.Code.Algebra.d712 v0 v4)
                     v4))
               (coe (MAlonzo.Code.Algebra.d710 (coe v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Core.d416
                  (MAlonzo.Code.Algebra.Structures.d92
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d126
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d278
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d484
                                       (coe (MAlonzo.Code.Algebra.d714 (coe v1))))))))))
                  (coe
                     v2
                     (let v5
                            = let v5 = MAlonzo.Code.Algebra.du766 (coe v0) in
                              MAlonzo.Code.Algebra.du404 (coe v5) in
                      coe
                        MAlonzo.Code.Algebra.d94 v5 (coe MAlonzo.Code.Algebra.d712 v0 v4)
                        v4))
                  (coe
                     MAlonzo.Code.Algebra.d94
                     (let v5 = MAlonzo.Code.Algebra.du766 (coe v1) in
                      MAlonzo.Code.Algebra.du404 (coe v5))
                     (coe v2 (coe MAlonzo.Code.Algebra.d712 v0 v4)) (coe v2 v4))
                  (coe
                     d338 (d478 (coe (d1002 (coe v3))))
                     (coe MAlonzo.Code.Algebra.d712 v0 v4) v4))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v5 = MAlonzo.Code.Algebra.d714 (coe v1) in
                                  let v6 = MAlonzo.Code.Algebra.Structures.d484 (coe v5) in
                                  let v7 = MAlonzo.Code.Algebra.Structures.d278 (coe v6) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v7)))))))))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.d708 v0 (coe MAlonzo.Code.Algebra.d712 v0 v4)
                           v4))
                     (coe v2 (MAlonzo.Code.Algebra.d710 (coe v0)))
                     (coe (MAlonzo.Code.Algebra.d710 (coe v1)))
                     (coe
                        d336 (d478 (coe (d1002 (coe v3))))
                        (coe
                           MAlonzo.Code.Algebra.d708 v0 (coe MAlonzo.Code.Algebra.d712 v0 v4)
                           v4)
                        (MAlonzo.Code.Algebra.d710 (coe v0))
                        (let v5 = MAlonzo.Code.Algebra.d714 (coe v0) in
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d28
                           (MAlonzo.Code.Algebra.Structures.d486 (coe v5)) v4))
                     (coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                           (coe
                              (MAlonzo.Code.Relation.Binary.Core.d418
                                 (coe
                                    (MAlonzo.Code.Relation.Binary.d144
                                       (let v5 = MAlonzo.Code.Algebra.d714 (coe v1) in
                                        let v6 = MAlonzo.Code.Algebra.Structures.d484 (coe v5) in
                                        let v7 = MAlonzo.Code.Algebra.Structures.d278 (coe v6) in
                                        coe
                                          (MAlonzo.Code.Algebra.Structures.du106
                                             (coe
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe v7)))))))))
                           (coe v2 (MAlonzo.Code.Algebra.d710 (coe v0)))
                           (coe
                              (MAlonzo.Code.Algebra.d368
                                 (coe (MAlonzo.Code.Algebra.du766 (coe v1)))))
                           (coe (MAlonzo.Code.Algebra.d710 (coe v1)))
                           (coe (d480 (coe (d1002 (coe v3)))))
                           (let v5
                                  = MAlonzo.Code.Relation.Binary.Core.d414
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.d144
                                            (let v5 = MAlonzo.Code.Algebra.d714 (coe v1) in
                                             let v6
                                                   = MAlonzo.Code.Algebra.Structures.d484
                                                       (coe v5) in
                                             let v7
                                                   = MAlonzo.Code.Algebra.Structures.d278
                                                       (coe v6) in
                                             coe
                                               (MAlonzo.Code.Algebra.Structures.du106
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                        (coe v7))))))) in
                            let v6 = MAlonzo.Code.Algebra.d710 (coe v1) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                 (coe v5 v6))))))))))
name1042 = "Algebra.Morphism._.IsGroupMorphism-syntax"
d1042 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T686 ->
  MAlonzo.Code.Algebra.T686 -> (AgdaAny -> AgdaAny) -> ()
d1042 = erased
name1078 = "Algebra.Morphism._.F.group"
d1078 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 -> MAlonzo.Code.Algebra.T686
d1078 v0 v1 v2 v3 v4 v5 = du1078 v4
du1078 :: MAlonzo.Code.Algebra.T782 -> MAlonzo.Code.Algebra.T686
du1078 v0 = coe (MAlonzo.Code.Algebra.du866 (coe v0))
name1160 = "Algebra.Morphism._.T.group"
d1160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 -> MAlonzo.Code.Algebra.T686
d1160 v0 v1 v2 v3 v4 v5 = du1160 v5
du1160 :: MAlonzo.Code.Algebra.T782 -> MAlonzo.Code.Algebra.T686
du1160 v0 = coe (MAlonzo.Code.Algebra.du866 (coe v0))
name1226 = "Algebra.Morphism._._.Homomorphic₀"
d1226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1226 = erased
name1228 = "Algebra.Morphism._._.Homomorphic₁"
d1228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d1228 = erased
name1230 = "Algebra.Morphism._._.Homomorphic₂"
d1230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1230 = erased
name1232 = "Algebra.Morphism._._.Morphism"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 -> MAlonzo.Code.Algebra.T782 -> ()
d1232 = erased
name1236 = "Algebra.Morphism._.IsAbelianGroupMorphism"
d1236 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T1236 = C4323 T996
name1242 = "Algebra.Morphism._.IsAbelianGroupMorphism.gp-homo"
d1242 :: T1236 -> T996
d1242 v0
  = case coe v0 of
      C4323 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1246 = "Algebra.Morphism._.IsAbelianGroupMorphism._.mn-homo"
d1246 :: T1236 -> T470
d1246 v0 = coe (d1002 (coe (d1242 (coe v0))))
name1248 = "Algebra.Morphism._.IsAbelianGroupMorphism._.sm-homo"
d1248 :: T1236 -> T328
d1248 v0 = coe (d478 (coe (d1002 (coe (d1242 (coe v0))))))
name1250 = "Algebra.Morphism._.IsAbelianGroupMorphism._.ε-homo"
d1250 :: T1236 -> AgdaAny
d1250 v0 = coe (d480 (coe (d1002 (coe (d1242 (coe v0))))))
name1252 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⁻¹-homo"
d1252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 ->
  (AgdaAny -> AgdaAny) -> T1236 -> AgdaAny -> AgdaAny
d1252 v0 v1 v2 v3 v4 v5 v6 v7 = du1252 v4 v5 v6 v7
du1252 ::
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 ->
  (AgdaAny -> AgdaAny) -> T1236 -> AgdaAny -> AgdaAny
du1252 v0 v1 v2 v3
  = coe
      (du1014
         (coe (MAlonzo.Code.Algebra.du866 (coe v0)))
         (coe (MAlonzo.Code.Algebra.du866 (coe v1))) (coe v2)
         (coe (d1242 (coe v3))))
name1254 = "Algebra.Morphism._.IsAbelianGroupMorphism._.∙-homo"
d1254 :: T1236 -> AgdaAny -> AgdaAny -> AgdaAny
d1254 v0
  = coe (d338 (coe (d478 (coe (d1002 (coe (d1242 (coe v0))))))))
name1256 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⟦⟧-cong"
d1256 :: T1236 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1256 v0
  = coe (d336 (coe (d478 (coe (d1002 (coe (d1242 (coe v0))))))))
name1258 = "Algebra.Morphism._.IsAbelianGroupMorphism-syntax"
d1258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T782 ->
  MAlonzo.Code.Algebra.T782 -> (AgdaAny -> AgdaAny) -> ()
d1258 = erased
name1308 = "Algebra.Morphism._.F.*-monoid"
d1308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T346
d1308 v0 v1 v2 v3 v4 v5 = du1308 v4
du1308 :: MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T346
du1308 v0
  = let v1 = MAlonzo.Code.Algebra.du2024 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.du1534
         (coe (MAlonzo.Code.Algebra.du1662 (coe v1))))
name1316 = "Algebra.Morphism._.F.+-abelianGroup"
d1316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T782
d1316 v0 v1 v2 v3 v4 v5 = du1316 v4
du1316 :: MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T782
du1316 v0 = coe (MAlonzo.Code.Algebra.du2022 (coe v0))
name1456 = "Algebra.Morphism._.T.*-monoid"
d1456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T346
d1456 v0 v1 v2 v3 v4 v5 = du1456 v5
du1456 :: MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T346
du1456 v0
  = let v1 = MAlonzo.Code.Algebra.du2024 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.du1534
         (coe (MAlonzo.Code.Algebra.du1662 (coe v1))))
name1464 = "Algebra.Morphism._.T.+-abelianGroup"
d1464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T782
d1464 v0 v1 v2 v3 v4 v5 = du1464 v5
du1464 :: MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T782
du1464 v0 = coe (MAlonzo.Code.Algebra.du2022 (coe v0))
name1574 = "Algebra.Morphism._._.Homomorphic₀"
d1574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1574 = erased
name1576 = "Algebra.Morphism._._.Homomorphic₁"
d1576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d1576 = erased
name1578 = "Algebra.Morphism._._.Homomorphic₂"
d1578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1578 = erased
name1580 = "Algebra.Morphism._._.Morphism"
d1580 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 -> MAlonzo.Code.Algebra.T1888 -> ()
d1580 = erased
name1584 = "Algebra.Morphism._.IsRingMorphism"
d1584 a0 a1 a2 a3 a4 a5 a6 = ()
data T1584 = C4989 T1236 T470
name1592 = "Algebra.Morphism._.IsRingMorphism.+-abgp-homo"
d1592 :: T1584 -> T1236
d1592 v0
  = case coe v0 of
      C4989 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1594 = "Algebra.Morphism._.IsRingMorphism.*-mn-homo"
d1594 :: T1584 -> T470
d1594 v0
  = case coe v0 of
      C4989 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1596 = "Algebra.Morphism._.IsRingMorphism-syntax"
d1596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1888 ->
  MAlonzo.Code.Algebra.T1888 -> (AgdaAny -> AgdaAny) -> ()
d1596 = erased
