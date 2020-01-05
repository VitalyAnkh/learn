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
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial
import qualified MAlonzo.Code.Relation.Binary.Structures

name32 = "Algebra.Morphism.Definitions._.Homomorphic₀"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d32 = erased
name34 = "Algebra.Morphism.Definitions._.Homomorphic₁"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d34 = erased
name36 = "Algebra.Morphism.Definitions._.Homomorphic₂"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d36 = erased
name38 = "Algebra.Morphism.Definitions._.Morphism"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> ()
d38 = erased
name58 = "Algebra.Morphism._.F._∙_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  MAlonzo.Code.Algebra.Bundles.T80 -> AgdaAny -> AgdaAny -> AgdaAny
d58 v0 v1 v2 v3 v4 v5 = du58 v4
du58 ::
  MAlonzo.Code.Algebra.Bundles.T80 -> AgdaAny -> AgdaAny -> AgdaAny
du58 v0 = coe (MAlonzo.Code.Algebra.Bundles.d98 (coe v0))
name60 = "Algebra.Morphism._.F._≈_"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  MAlonzo.Code.Algebra.Bundles.T80 -> AgdaAny -> AgdaAny -> ()
d60 = erased
name134 = "Algebra.Morphism._._.Homomorphic₀"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d134 = erased
name136 = "Algebra.Morphism._._.Homomorphic₁"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d136 = erased
name138 = "Algebra.Morphism._._.Homomorphic₂"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d138 = erased
name140 = "Algebra.Morphism._._.Morphism"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  MAlonzo.Code.Algebra.Bundles.T80 -> ()
d140 = erased
name144 = "Algebra.Morphism._.IsSemigroupMorphism"
d144 a0 a1 a2 a3 a4 a5 a6 = ()
data T144
  = C241 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny)
name152 = "Algebra.Morphism._.IsSemigroupMorphism.⟦⟧-cong"
d152 :: T144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d152 v0
  = case coe v0 of
      C241 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name154 = "Algebra.Morphism._.IsSemigroupMorphism.∙-homo"
d154 :: T144 -> AgdaAny -> AgdaAny -> AgdaAny
d154 v0
  = case coe v0 of
      C241 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name156 = "Algebra.Morphism._.IsSemigroupMorphism-syntax"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T80 ->
  MAlonzo.Code.Algebra.Bundles.T80 -> (AgdaAny -> AgdaAny) -> ()
d156 = erased
name210 = "Algebra.Morphism._.F.semigroup"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T80
d210 v0 v1 v2 v3 v4 v5 = du210 v4
du210 ::
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T80
du210 v0 = coe (MAlonzo.Code.Algebra.Bundles.du482 (coe v0))
name218 = "Algebra.Morphism._.F.ε"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 -> AgdaAny
d218 v0 v1 v2 v3 v4 v5 = du218 v4
du218 :: MAlonzo.Code.Algebra.Bundles.T422 -> AgdaAny
du218 v0 = coe (MAlonzo.Code.Algebra.Bundles.d444 (coe v0))
name262 = "Algebra.Morphism._.T.semigroup"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T80
d262 v0 v1 v2 v3 v4 v5 = du262 v5
du262 ::
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T80
du262 v0 = coe (MAlonzo.Code.Algebra.Bundles.du482 (coe v0))
name280 = "Algebra.Morphism._._.Homomorphic₀"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d280 = erased
name282 = "Algebra.Morphism._._.Homomorphic₁"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d282 = erased
name284 = "Algebra.Morphism._._.Homomorphic₂"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d284 = erased
name286 = "Algebra.Morphism._._.Morphism"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 -> ()
d286 = erased
name290 = "Algebra.Morphism._.IsMonoidMorphism"
d290 a0 a1 a2 a3 a4 a5 a6 = ()
data T290 = C545 T144 AgdaAny
name298 = "Algebra.Morphism._.IsMonoidMorphism.sm-homo"
d298 :: T290 -> T144
d298 v0
  = case coe v0 of
      C545 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name300 = "Algebra.Morphism._.IsMonoidMorphism.ε-homo"
d300 :: T290 -> AgdaAny
d300 v0
  = case coe v0 of
      C545 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name304 = "Algebra.Morphism._.IsMonoidMorphism._.∙-homo"
d304 :: T290 -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0 = coe (d154 (coe (d298 (coe v0))))
name306 = "Algebra.Morphism._.IsMonoidMorphism._.⟦⟧-cong"
d306 :: T290 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0 = coe (d152 (coe (d298 (coe v0))))
name308 = "Algebra.Morphism._.IsMonoidMorphism-syntax"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 -> (AgdaAny -> AgdaAny) -> ()
d308 = erased
name360 = "Algebra.Morphism._.F.monoid"
d360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
d360 v0 v1 v2 v3 v4 v5 = du360 v4
du360 ::
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
du360 v0 = coe (MAlonzo.Code.Algebra.Bundles.du562 (coe v0))
name420 = "Algebra.Morphism._.T.monoid"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
d420 v0 v1 v2 v3 v4 v5 = du420 v5
du420 ::
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
du420 v0 = coe (MAlonzo.Code.Algebra.Bundles.du562 (coe v0))
name448 = "Algebra.Morphism._._.Homomorphic₀"
d448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d448 = erased
name450 = "Algebra.Morphism._._.Homomorphic₁"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d450 = erased
name452 = "Algebra.Morphism._._.Homomorphic₂"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d452 = erased
name454 = "Algebra.Morphism._._.Morphism"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 -> ()
d454 = erased
name458 = "Algebra.Morphism._.IsCommutativeMonoidMorphism"
d458 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T458 = C929 T290
name464 = "Algebra.Morphism._.IsCommutativeMonoidMorphism.mn-homo"
d464 :: T458 -> T290
d464 v0
  = case coe v0 of
      C929 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name468
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.sm-homo"
d468 :: T458 -> T144
d468 v0 = coe (d298 (coe (d464 (coe v0))))
name470 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.ε-homo"
d470 :: T458 -> AgdaAny
d470 v0 = coe (d300 (coe (d464 (coe v0))))
name472 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.∙-homo"
d472 :: T458 -> AgdaAny -> AgdaAny -> AgdaAny
d472 v0 = coe (d154 (coe (d298 (coe (d464 (coe v0))))))
name474
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.⟦⟧-cong"
d474 :: T458 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d474 v0 = coe (d152 (coe (d298 (coe (d464 (coe v0))))))
name476 = "Algebra.Morphism._.IsCommutativeMonoidMorphism-syntax"
d476 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 -> (AgdaAny -> AgdaAny) -> ()
d476 = erased
name506 = "Algebra.Morphism._.F.commutativeMonoid"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T496
d506 v0 v1 v2 v3 v4 v5 = du506 v4
du506 ::
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T496
du506 v0 = coe (MAlonzo.Code.Algebra.Bundles.du648 (coe v0))
name534 = "Algebra.Morphism._.F.monoid"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T422
d534 v0 v1 v2 v3 v4 v5 = du534 v4
du534 ::
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T422
du534 v0
  = coe
      (MAlonzo.Code.Algebra.Bundles.du562
         (coe (MAlonzo.Code.Algebra.Bundles.du648 (coe v0))))
name572 = "Algebra.Morphism._.T.commutativeMonoid"
d572 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T496
d572 v0 v1 v2 v3 v4 v5 = du572 v5
du572 ::
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T496
du572 v0 = coe (MAlonzo.Code.Algebra.Bundles.du648 (coe v0))
name600 = "Algebra.Morphism._.T.monoid"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T422
d600 v0 v1 v2 v3 v4 v5 = du600 v5
du600 ::
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T422
du600 v0
  = coe
      (MAlonzo.Code.Algebra.Bundles.du562
         (coe (MAlonzo.Code.Algebra.Bundles.du648 (coe v0))))
name628 = "Algebra.Morphism._._.Homomorphic₀"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d628 = erased
name630 = "Algebra.Morphism._._.Homomorphic₁"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d630 = erased
name632 = "Algebra.Morphism._._.Homomorphic₂"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d632 = erased
name634 = "Algebra.Morphism._._.Morphism"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 -> ()
d634 = erased
name638
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism"
d638 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T638 = C1363 T290
name644
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.mn-homo"
d644 :: T638 -> T290
d644 v0
  = case coe v0 of
      C1363 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name648
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.sm-homo"
d648 :: T638 -> T144
d648 v0 = coe (d298 (coe (d644 (coe v0))))
name650
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.ε-homo"
d650 :: T638 -> AgdaAny
d650 v0 = coe (d300 (coe (d644 (coe v0))))
name652
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.∙-homo"
d652 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny
d652 v0 = coe (d154 (coe (d298 (coe (d644 (coe v0))))))
name654
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.⟦⟧-cong"
d654 :: T638 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d654 v0 = coe (d152 (coe (d298 (coe (d644 (coe v0))))))
name656
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.isCommutativeMonoidMorphism"
d656 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  (AgdaAny -> AgdaAny) -> T638 -> T458
d656 v0 v1 v2 v3 v4 v5 v6 v7 = du656 v7
du656 :: T638 -> T458
du656 v0 = coe (C929 (coe (d644 (coe v0))))
name658
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism-syntax"
d658 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T578 ->
  MAlonzo.Code.Algebra.Bundles.T578 -> (AgdaAny -> AgdaAny) -> ()
d658 = erased
name680 = "Algebra.Morphism._.F._⁻¹"
d680 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 -> AgdaAny -> AgdaAny
d680 v0 v1 v2 v3 v4 v5 = du680 v4
du680 :: MAlonzo.Code.Algebra.Bundles.T776 -> AgdaAny -> AgdaAny
du680 v0 = coe (MAlonzo.Code.Algebra.Bundles.d802 (coe v0))
name716 = "Algebra.Morphism._.F.monoid"
d716 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T422
d716 v0 v1 v2 v3 v4 v5 = du716 v4
du716 ::
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T422
du716 v0 = coe (MAlonzo.Code.Algebra.Bundles.du858 (coe v0))
name790 = "Algebra.Morphism._.T.monoid"
d790 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T422
d790 v0 v1 v2 v3 v4 v5 = du790 v5
du790 ::
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T422
du790 v0 = coe (MAlonzo.Code.Algebra.Bundles.du858 (coe v0))
name826 = "Algebra.Morphism._._.Homomorphic₀"
d826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d826 = erased
name828 = "Algebra.Morphism._._.Homomorphic₁"
d828 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d828 = erased
name830 = "Algebra.Morphism._._.Homomorphic₂"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d830 = erased
name832 = "Algebra.Morphism._._.Morphism"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 -> ()
d832 = erased
name836 = "Algebra.Morphism._.IsGroupMorphism"
d836 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T836 = C1991 T290
name842 = "Algebra.Morphism._.IsGroupMorphism.mn-homo"
d842 :: T836 -> T290
d842 v0
  = case coe v0 of
      C1991 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name846 = "Algebra.Morphism._.IsGroupMorphism._.sm-homo"
d846 :: T836 -> T144
d846 v0 = coe (d298 (coe (d842 (coe v0))))
name848 = "Algebra.Morphism._.IsGroupMorphism._.ε-homo"
d848 :: T836 -> AgdaAny
d848 v0 = coe (d300 (coe (d842 (coe v0))))
name850 = "Algebra.Morphism._.IsGroupMorphism._.∙-homo"
d850 :: T836 -> AgdaAny -> AgdaAny -> AgdaAny
d850 v0 = coe (d154 (coe (d298 (coe (d842 (coe v0))))))
name852 = "Algebra.Morphism._.IsGroupMorphism._.⟦⟧-cong"
d852 :: T836 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d852 v0 = coe (d152 (coe (d298 (coe (d842 (coe v0))))))
name854 = "Algebra.Morphism._.IsGroupMorphism.⁻¹-homo"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  (AgdaAny -> AgdaAny) -> T836 -> AgdaAny -> AgdaAny
d854 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du854 v4 v5 v6 v7 v8
du854 ::
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  (AgdaAny -> AgdaAny) -> T836 -> AgdaAny -> AgdaAny
du854 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du594
      (MAlonzo.Code.Algebra.Bundles.d798 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d800 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d802 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d804 (coe v1))
      (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4)) (coe v2 v4)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (let v5
                = MAlonzo.Code.Relation.Binary.Bundles.du80
                    (let v5 = MAlonzo.Code.Algebra.Bundles.d804 (coe v1) in
                     let v6 = MAlonzo.Code.Algebra.Structures.d540 (coe v5) in
                     let v7 = MAlonzo.Code.Algebra.Structures.d322 (coe v6) in
                     coe
                       (MAlonzo.Code.Algebra.Structures.du102
                          (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v7))))) in
          coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
               (coe
                  (MAlonzo.Code.Relation.Binary.Structures.d24
                     (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v5)))))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d798 v1
                  (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4)) (coe v2 v4))
               (coe
                  v2
                  (let v6
                         = let v6 = MAlonzo.Code.Algebra.Bundles.du858 (coe v0) in
                           MAlonzo.Code.Algebra.Bundles.du482 (coe v6) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.d98 v6
                     (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4) v4))
               (coe (MAlonzo.Code.Algebra.Bundles.d800 (coe v1)))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d36
                  (MAlonzo.Code.Algebra.Structures.d86
                     (coe
                        (MAlonzo.Code.Algebra.Structures.d122
                           (coe
                              (MAlonzo.Code.Algebra.Structures.d322
                                 (coe
                                    (MAlonzo.Code.Algebra.Structures.d540
                                       (coe (MAlonzo.Code.Algebra.Bundles.d804 (coe v1))))))))))
                  (coe
                     v2
                     (let v6
                            = let v6 = MAlonzo.Code.Algebra.Bundles.du858 (coe v0) in
                              MAlonzo.Code.Algebra.Bundles.du482 (coe v6) in
                      coe
                        MAlonzo.Code.Algebra.Bundles.d98 v6
                        (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4) v4))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d98
                     (let v6 = MAlonzo.Code.Algebra.Bundles.du858 (coe v1) in
                      MAlonzo.Code.Algebra.Bundles.du482 (coe v6))
                     (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4)) (coe v2 v4))
                  (coe
                     d154 (d298 (coe (d842 (coe v3))))
                     (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4) v4))
               (let v6
                      = MAlonzo.Code.Relation.Binary.Bundles.du80
                          (let v6 = MAlonzo.Code.Algebra.Bundles.d804 (coe v1) in
                           let v7 = MAlonzo.Code.Algebra.Structures.d540 (coe v6) in
                           let v8 = MAlonzo.Code.Algebra.Structures.d322 (coe v7) in
                           coe
                             (MAlonzo.Code.Algebra.Structures.du102
                                (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v8))))) in
                coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                     (coe
                        (MAlonzo.Code.Relation.Binary.Structures.d24
                           (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v6)))))
                     (coe
                        v2
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d798 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4) v4))
                     (coe v2 (MAlonzo.Code.Algebra.Bundles.d800 (coe v0)))
                     (coe (MAlonzo.Code.Algebra.Bundles.d800 (coe v1)))
                     (coe
                        d152 (d298 (coe (d842 (coe v3))))
                        (coe
                           MAlonzo.Code.Algebra.Bundles.d798 v0
                           (coe MAlonzo.Code.Algebra.Bundles.d802 v0 v4) v4)
                        (MAlonzo.Code.Algebra.Bundles.d800 (coe v0))
                        (let v7 = MAlonzo.Code.Algebra.Bundles.d804 (coe v0) in
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d28
                           (MAlonzo.Code.Algebra.Structures.d542 (coe v7)) v4))
                     (let v7
                            = MAlonzo.Code.Relation.Binary.Bundles.du80
                                (let v7 = MAlonzo.Code.Algebra.Bundles.d804 (coe v1) in
                                 let v8 = MAlonzo.Code.Algebra.Structures.d540 (coe v7) in
                                 let v9 = MAlonzo.Code.Algebra.Structures.d322 (coe v8) in
                                 coe
                                   (MAlonzo.Code.Algebra.Structures.du102
                                      (coe (MAlonzo.Code.Algebra.Structures.d122 (coe v9))))) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.du48
                           (coe
                              (MAlonzo.Code.Relation.Binary.Structures.d24
                                 (coe (MAlonzo.Code.Relation.Binary.Bundles.d26 (coe v7)))))
                           (coe v2 (MAlonzo.Code.Algebra.Bundles.d800 (coe v0)))
                           (coe
                              (MAlonzo.Code.Algebra.Bundles.d444
                                 (coe (MAlonzo.Code.Algebra.Bundles.du858 (coe v1)))))
                           (coe (MAlonzo.Code.Algebra.Bundles.d800 (coe v1)))
                           (coe (d300 (coe (d842 (coe v3)))))
                           (let v8
                                  = MAlonzo.Code.Relation.Binary.Structures.d34
                                      (coe
                                         (MAlonzo.Code.Relation.Binary.Bundles.d60
                                            (let v8 = MAlonzo.Code.Algebra.Bundles.d804 (coe v1) in
                                             let v9
                                                   = MAlonzo.Code.Algebra.Structures.d540
                                                       (coe v8) in
                                             let v10
                                                   = MAlonzo.Code.Algebra.Structures.d322
                                                       (coe v9) in
                                             coe
                                               (MAlonzo.Code.Algebra.Structures.du102
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d122
                                                        (coe v10))))))) in
                            let v9 = MAlonzo.Code.Algebra.Bundles.d800 (coe v1) in
                            coe
                              (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                                 (coe v8 v9))))))))))
name884 = "Algebra.Morphism._.IsGroupMorphism-syntax"
d884 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T776 ->
  MAlonzo.Code.Algebra.Bundles.T776 -> (AgdaAny -> AgdaAny) -> ()
d884 = erased
name920 = "Algebra.Morphism._.F.group"
d920 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T776
d920 v0 v1 v2 v3 v4 v5 = du920 v4
du920 ::
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T776
du920 v0 = coe (MAlonzo.Code.Algebra.Bundles.du962 (coe v0))
name1006 = "Algebra.Morphism._.T.group"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T776
d1006 v0 v1 v2 v3 v4 v5 = du1006 v5
du1006 ::
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T776
du1006 v0 = coe (MAlonzo.Code.Algebra.Bundles.du962 (coe v0))
name1076 = "Algebra.Morphism._._.Homomorphic₀"
d1076 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1076 = erased
name1078 = "Algebra.Morphism._._.Homomorphic₁"
d1078 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d1078 = erased
name1080 = "Algebra.Morphism._._.Homomorphic₂"
d1080 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1080 = erased
name1082 = "Algebra.Morphism._._.Morphism"
d1082 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 -> ()
d1082 = erased
name1086 = "Algebra.Morphism._.IsAbelianGroupMorphism"
d1086 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T1086 = C3131 T836
name1092 = "Algebra.Morphism._.IsAbelianGroupMorphism.gp-homo"
d1092 :: T1086 -> T836
d1092 v0
  = case coe v0 of
      C3131 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1096 = "Algebra.Morphism._.IsAbelianGroupMorphism._.mn-homo"
d1096 :: T1086 -> T290
d1096 v0 = coe (d842 (coe (d1092 (coe v0))))
name1098 = "Algebra.Morphism._.IsAbelianGroupMorphism._.sm-homo"
d1098 :: T1086 -> T144
d1098 v0 = coe (d298 (coe (d842 (coe (d1092 (coe v0))))))
name1100 = "Algebra.Morphism._.IsAbelianGroupMorphism._.ε-homo"
d1100 :: T1086 -> AgdaAny
d1100 v0 = coe (d300 (coe (d842 (coe (d1092 (coe v0))))))
name1102 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⁻¹-homo"
d1102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  (AgdaAny -> AgdaAny) -> T1086 -> AgdaAny -> AgdaAny
d1102 v0 v1 v2 v3 v4 v5 v6 v7 = du1102 v4 v5 v6 v7
du1102 ::
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  (AgdaAny -> AgdaAny) -> T1086 -> AgdaAny -> AgdaAny
du1102 v0 v1 v2 v3
  = coe
      (du854
         (coe (MAlonzo.Code.Algebra.Bundles.du962 (coe v0)))
         (coe (MAlonzo.Code.Algebra.Bundles.du962 (coe v1))) (coe v2)
         (coe (d1092 (coe v3))))
name1104 = "Algebra.Morphism._.IsAbelianGroupMorphism._.∙-homo"
d1104 :: T1086 -> AgdaAny -> AgdaAny -> AgdaAny
d1104 v0
  = coe (d154 (coe (d298 (coe (d842 (coe (d1092 (coe v0))))))))
name1106 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⟦⟧-cong"
d1106 :: T1086 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1106 v0
  = coe (d152 (coe (d298 (coe (d842 (coe (d1092 (coe v0))))))))
name1108 = "Algebra.Morphism._.IsAbelianGroupMorphism-syntax"
d1108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T874 ->
  MAlonzo.Code.Algebra.Bundles.T874 -> (AgdaAny -> AgdaAny) -> ()
d1108 = erased
name1158 = "Algebra.Morphism._.F.*-monoid"
d1158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T422
d1158 v0 v1 v2 v3 v4 v5 = du1158 v4
du1158 ::
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T422
du1158 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2158 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Bundles.du1648
         (coe (MAlonzo.Code.Algebra.Bundles.du1780 (coe v1))))
name1166 = "Algebra.Morphism._.F.+-abelianGroup"
d1166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T874
d1166 v0 v1 v2 v3 v4 v5 = du1166 v4
du1166 ::
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T874
du1166 v0 = coe (MAlonzo.Code.Algebra.Bundles.du2156 (coe v0))
name1310 = "Algebra.Morphism._.T.*-monoid"
d1310 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T422
d1310 v0 v1 v2 v3 v4 v5 = du1310 v5
du1310 ::
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T422
du1310 v0
  = let v1 = MAlonzo.Code.Algebra.Bundles.du2158 (coe v0) in
    coe
      (MAlonzo.Code.Algebra.Bundles.du1648
         (coe (MAlonzo.Code.Algebra.Bundles.du1780 (coe v1))))
name1318 = "Algebra.Morphism._.T.+-abelianGroup"
d1318 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T874
d1318 v0 v1 v2 v3 v4 v5 = du1318 v5
du1318 ::
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T874
du1318 v0 = coe (MAlonzo.Code.Algebra.Bundles.du2156 (coe v0))
name1432 = "Algebra.Morphism._._.Homomorphic₀"
d1432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1432 = erased
name1434 = "Algebra.Morphism._._.Homomorphic₁"
d1434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d1434 = erased
name1436 = "Algebra.Morphism._._.Homomorphic₂"
d1436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1436 = erased
name1438 = "Algebra.Morphism._._.Morphism"
d1438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 -> ()
d1438 = erased
name1442 = "Algebra.Morphism._.IsRingMorphism"
d1442 a0 a1 a2 a3 a4 a5 a6 = ()
data T1442 = C3807 T1086 T290
name1450 = "Algebra.Morphism._.IsRingMorphism.+-abgp-homo"
d1450 :: T1442 -> T1086
d1450 v0
  = case coe v0 of
      C3807 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1452 = "Algebra.Morphism._.IsRingMorphism.*-mn-homo"
d1452 :: T1442 -> T290
d1452 v0
  = case coe v0 of
      C3807 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1454 = "Algebra.Morphism._.IsRingMorphism-syntax"
d1454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2018 ->
  MAlonzo.Code.Algebra.Bundles.T2018 -> (AgdaAny -> AgdaAny) -> ()
d1454 = erased
