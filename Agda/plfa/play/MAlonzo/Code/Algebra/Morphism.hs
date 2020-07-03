{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
import qualified MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid
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
du58 v0 = coe MAlonzo.Code.Algebra.Bundles.d98 (coe v0)
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
  = C771 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
         (AgdaAny -> AgdaAny -> AgdaAny)
name152 = "Algebra.Morphism._.IsSemigroupMorphism.⟦⟧-cong"
d152 :: T144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d152 v0
  = case coe v0 of
      C771 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name154 = "Algebra.Morphism._.IsSemigroupMorphism.∙-homo"
d154 :: T144 -> AgdaAny -> AgdaAny -> AgdaAny
d154 v0
  = case coe v0 of
      C771 v1 v2 -> coe v2
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
du210 v0 = coe MAlonzo.Code.Algebra.Bundles.du482 (coe v0)
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
du218 v0 = coe MAlonzo.Code.Algebra.Bundles.d444 (coe v0)
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
du262 v0 = coe MAlonzo.Code.Algebra.Bundles.du482 (coe v0)
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
data T290 = C1525 T144 AgdaAny
name298 = "Algebra.Morphism._.IsMonoidMorphism.sm-homo"
d298 :: T290 -> T144
d298 v0
  = case coe v0 of
      C1525 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name300 = "Algebra.Morphism._.IsMonoidMorphism.ε-homo"
d300 :: T290 -> AgdaAny
d300 v0
  = case coe v0 of
      C1525 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name304 = "Algebra.Morphism._.IsMonoidMorphism._.∙-homo"
d304 :: T290 -> AgdaAny -> AgdaAny -> AgdaAny
d304 v0 = coe d154 (coe d298 (coe v0))
name306 = "Algebra.Morphism._.IsMonoidMorphism._.⟦⟧-cong"
d306 :: T290 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d306 v0 = coe d152 (coe d298 (coe v0))
name308 = "Algebra.Morphism._.IsMonoidMorphism-syntax"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T422 ->
  MAlonzo.Code.Algebra.Bundles.T422 -> (AgdaAny -> AgdaAny) -> ()
d308 = erased
name362 = "Algebra.Morphism._.F.monoid"
d362 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
d362 v0 v1 v2 v3 v4 v5 = du362 v4
du362 ::
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
du362 v0 = coe MAlonzo.Code.Algebra.Bundles.du562 (coe v0)
name424 = "Algebra.Morphism._.T.monoid"
d424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
d424 v0 v1 v2 v3 v4 v5 = du424 v5
du424 ::
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T422
du424 v0 = coe MAlonzo.Code.Algebra.Bundles.du562 (coe v0)
name452 = "Algebra.Morphism._._.Homomorphic₀"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d452 = erased
name454 = "Algebra.Morphism._._.Homomorphic₁"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d454 = erased
name456 = "Algebra.Morphism._._.Homomorphic₂"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d456 = erased
name458 = "Algebra.Morphism._._.Morphism"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 -> ()
d458 = erased
name462 = "Algebra.Morphism._.IsCommutativeMonoidMorphism"
d462 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T462 = C2621 T290
name468 = "Algebra.Morphism._.IsCommutativeMonoidMorphism.mn-homo"
d468 :: T462 -> T290
d468 v0
  = case coe v0 of
      C2621 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name472
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.sm-homo"
d472 :: T462 -> T144
d472 v0 = coe d298 (coe d468 (coe v0))
name474 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.ε-homo"
d474 :: T462 -> AgdaAny
d474 v0 = coe d300 (coe d468 (coe v0))
name476 = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.∙-homo"
d476 :: T462 -> AgdaAny -> AgdaAny -> AgdaAny
d476 v0 = coe d154 (coe d298 (coe d468 (coe v0)))
name478
  = "Algebra.Morphism._.IsCommutativeMonoidMorphism._.⟦⟧-cong"
d478 :: T462 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d478 v0 = coe d152 (coe d298 (coe d468 (coe v0)))
name480 = "Algebra.Morphism._.IsCommutativeMonoidMorphism-syntax"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T496 ->
  MAlonzo.Code.Algebra.Bundles.T496 -> (AgdaAny -> AgdaAny) -> ()
d480 = erased
name510 = "Algebra.Morphism._.F.commutativeMonoid"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T496
d510 v0 v1 v2 v3 v4 v5 = du510 v4
du510 ::
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T496
du510 v0 = coe MAlonzo.Code.Algebra.Bundles.du650 (coe v0)
name538 = "Algebra.Morphism._.F.monoid"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T422
d538 v0 v1 v2 v3 v4 v5 = du538 v4
du538 ::
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T422
du538 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du562
      (coe MAlonzo.Code.Algebra.Bundles.du650 (coe v0))
name576 = "Algebra.Morphism._.T.commutativeMonoid"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T496
d576 v0 v1 v2 v3 v4 v5 = du576 v5
du576 ::
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T496
du576 v0 = coe MAlonzo.Code.Algebra.Bundles.du650 (coe v0)
name604 = "Algebra.Morphism._.T.monoid"
d604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T422
d604 v0 v1 v2 v3 v4 v5 = du604 v5
du604 ::
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T422
du604 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du562
      (coe MAlonzo.Code.Algebra.Bundles.du650 (coe v0))
name632 = "Algebra.Morphism._._.Homomorphic₀"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d632 = erased
name634 = "Algebra.Morphism._._.Homomorphic₁"
d634 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d634 = erased
name636 = "Algebra.Morphism._._.Homomorphic₂"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d636 = erased
name638 = "Algebra.Morphism._._.Morphism"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 -> ()
d638 = erased
name642
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism"
d642 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T642 = C3767 T290
name648
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.mn-homo"
d648 :: T642 -> T290
d648 v0
  = case coe v0 of
      C3767 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name652
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.sm-homo"
d652 :: T642 -> T144
d652 v0 = coe d298 (coe d648 (coe v0))
name654
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.ε-homo"
d654 :: T642 -> AgdaAny
d654 v0 = coe d300 (coe d648 (coe v0))
name656
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.∙-homo"
d656 :: T642 -> AgdaAny -> AgdaAny -> AgdaAny
d656 v0 = coe d154 (coe d298 (coe d648 (coe v0)))
name658
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism._.⟦⟧-cong"
d658 :: T642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d658 v0 = coe d152 (coe d298 (coe d648 (coe v0)))
name660
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism.isCommutativeMonoidMorphism"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  (AgdaAny -> AgdaAny) -> T642 -> T462
d660 v0 v1 v2 v3 v4 v5 v6 v7 = du660 v7
du660 :: T642 -> T462
du660 v0 = coe C2621 (coe d648 (coe v0))
name662
  = "Algebra.Morphism._.IsIdempotentCommutativeMonoidMorphism-syntax"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T580 ->
  MAlonzo.Code.Algebra.Bundles.T580 -> (AgdaAny -> AgdaAny) -> ()
d662 = erased
name684 = "Algebra.Morphism._.F._⁻¹"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 -> AgdaAny -> AgdaAny
d684 v0 v1 v2 v3 v4 v5 = du684 v4
du684 :: MAlonzo.Code.Algebra.Bundles.T778 -> AgdaAny -> AgdaAny
du684 v0 = coe MAlonzo.Code.Algebra.Bundles.d804 (coe v0)
name720 = "Algebra.Morphism._.F.monoid"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T422
d720 v0 v1 v2 v3 v4 v5 = du720 v4
du720 ::
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T422
du720 v0 = coe MAlonzo.Code.Algebra.Bundles.du860 (coe v0)
name794 = "Algebra.Morphism._.T.monoid"
d794 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T422
d794 v0 v1 v2 v3 v4 v5 = du794 v5
du794 ::
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T422
du794 v0 = coe MAlonzo.Code.Algebra.Bundles.du860 (coe v0)
name830 = "Algebra.Morphism._._.Homomorphic₀"
d830 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d830 = erased
name832 = "Algebra.Morphism._._.Homomorphic₁"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d832 = erased
name834 = "Algebra.Morphism._._.Homomorphic₂"
d834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d834 = erased
name836 = "Algebra.Morphism._._.Morphism"
d836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 -> ()
d836 = erased
name840 = "Algebra.Morphism._.IsGroupMorphism"
d840 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T840 = C5271 T290
name846 = "Algebra.Morphism._.IsGroupMorphism.mn-homo"
d846 :: T840 -> T290
d846 v0
  = case coe v0 of
      C5271 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name850 = "Algebra.Morphism._.IsGroupMorphism._.sm-homo"
d850 :: T840 -> T144
d850 v0 = coe d298 (coe d846 (coe v0))
name852 = "Algebra.Morphism._.IsGroupMorphism._.ε-homo"
d852 :: T840 -> AgdaAny
d852 v0 = coe d300 (coe d846 (coe v0))
name854 = "Algebra.Morphism._.IsGroupMorphism._.∙-homo"
d854 :: T840 -> AgdaAny -> AgdaAny -> AgdaAny
d854 v0 = coe d154 (coe d298 (coe d846 (coe v0)))
name856 = "Algebra.Morphism._.IsGroupMorphism._.⟦⟧-cong"
d856 :: T840 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d856 v0 = coe d152 (coe d298 (coe d846 (coe v0)))
name858 = "Algebra.Morphism._.IsGroupMorphism.⁻¹-homo"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  (AgdaAny -> AgdaAny) -> T840 -> AgdaAny -> AgdaAny
d858 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du858 v4 v5 v6 v7 v8
du858 ::
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  (AgdaAny -> AgdaAny) -> T840 -> AgdaAny -> AgdaAny
du858 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Structures.du596
      (MAlonzo.Code.Algebra.Bundles.d800 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d802 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d804 (coe v1))
      (MAlonzo.Code.Algebra.Bundles.d806 (coe v1))
      (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4)) (coe v2 v4)
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.d38
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du74
               (let v5 = MAlonzo.Code.Algebra.Bundles.d806 (coe v1) in
                let v6 = MAlonzo.Code.Algebra.Structures.d542 (coe v5) in
                let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
                coe
                  MAlonzo.Code.Algebra.Structures.du104
                  (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))))
            (coe
               MAlonzo.Code.Algebra.Bundles.d800 v1
               (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4)) (coe v2 v4))
            (coe
               v2
               (coe
                  MAlonzo.Code.Algebra.Bundles.d800 v0
                  (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4) v4))
            (MAlonzo.Code.Algebra.Bundles.d802 (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.du74
                  (let v5 = MAlonzo.Code.Algebra.Bundles.d806 (coe v1) in
                   let v6 = MAlonzo.Code.Algebra.Structures.d542 (coe v5) in
                   let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
                   coe
                     MAlonzo.Code.Algebra.Structures.du104
                     (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))))
               (coe
                  v2
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d800 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4) v4))
               (coe v2 (MAlonzo.Code.Algebra.Bundles.d802 (coe v0)))
               (MAlonzo.Code.Algebra.Bundles.d802 (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.PartialSetoid.du50
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.du74
                     (let v5 = MAlonzo.Code.Algebra.Bundles.d806 (coe v1) in
                      let v6 = MAlonzo.Code.Algebra.Structures.d542 (coe v5) in
                      let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
                      coe
                        MAlonzo.Code.Algebra.Structures.du104
                        (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7))))
                  (coe v2 (MAlonzo.Code.Algebra.Bundles.d802 (coe v0)))
                  (MAlonzo.Code.Algebra.Bundles.d802 (coe v1))
                  (MAlonzo.Code.Algebra.Bundles.d802 (coe v1))
                  (let v5
                         = MAlonzo.Code.Relation.Binary.Structures.d34
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d60
                                (let v5 = MAlonzo.Code.Algebra.Bundles.d806 (coe v1) in
                                 let v6 = MAlonzo.Code.Algebra.Structures.d542 (coe v5) in
                                 let v7 = MAlonzo.Code.Algebra.Structures.d324 (coe v6) in
                                 coe
                                   MAlonzo.Code.Algebra.Structures.du104
                                   (coe MAlonzo.Code.Algebra.Structures.d124 (coe v7)))) in
                   let v6 = MAlonzo.Code.Algebra.Bundles.d802 (coe v1) in
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Partial.C32
                     (coe v5 v6))
                  (d300 (coe d846 (coe v3))))
               (coe
                  d152 (d298 (coe d846 (coe v3)))
                  (coe
                     MAlonzo.Code.Algebra.Bundles.d800 v0
                     (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4) v4)
                  (MAlonzo.Code.Algebra.Bundles.d802 (coe v0))
                  (let v5 = MAlonzo.Code.Algebra.Bundles.d806 (coe v0) in
                   coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d28
                     (MAlonzo.Code.Algebra.Structures.d544 (coe v5)) v4)))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d36
               (MAlonzo.Code.Algebra.Structures.d88
                  (coe
                     MAlonzo.Code.Algebra.Structures.d124
                     (coe
                        MAlonzo.Code.Algebra.Structures.d324
                        (coe
                           MAlonzo.Code.Algebra.Structures.d542
                           (coe MAlonzo.Code.Algebra.Bundles.d806 (coe v1))))))
               (coe
                  v2
                  (let v5
                         = let v5 = coe MAlonzo.Code.Algebra.Bundles.du860 (coe v0) in
                           coe MAlonzo.Code.Algebra.Bundles.du482 (coe v5) in
                   coe
                     MAlonzo.Code.Algebra.Bundles.d98 v5
                     (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4) v4))
               (coe
                  MAlonzo.Code.Algebra.Bundles.d98
                  (let v5 = coe MAlonzo.Code.Algebra.Bundles.du860 (coe v1) in
                   coe MAlonzo.Code.Algebra.Bundles.du482 (coe v5))
                  (coe v2 (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4)) (coe v2 v4))
               (coe
                  d154 (d298 (coe d846 (coe v3)))
                  (coe MAlonzo.Code.Algebra.Bundles.d804 v0 v4) v4))))
name888 = "Algebra.Morphism._.IsGroupMorphism-syntax"
d888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T778 ->
  MAlonzo.Code.Algebra.Bundles.T778 -> (AgdaAny -> AgdaAny) -> ()
d888 = erased
name926 = "Algebra.Morphism._.F.group"
d926 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T778
d926 v0 v1 v2 v3 v4 v5 = du926 v4
du926 ::
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T778
du926 v0 = coe MAlonzo.Code.Algebra.Bundles.du964 (coe v0)
name1014 = "Algebra.Morphism._.T.group"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T778
d1014 v0 v1 v2 v3 v4 v5 = du1014 v5
du1014 ::
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T778
du1014 v0 = coe MAlonzo.Code.Algebra.Bundles.du964 (coe v0)
name1084 = "Algebra.Morphism._._.Homomorphic₀"
d1084 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1084 = erased
name1086 = "Algebra.Morphism._._.Homomorphic₁"
d1086 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d1086 = erased
name1088 = "Algebra.Morphism._._.Homomorphic₂"
d1088 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1088 = erased
name1090 = "Algebra.Morphism._._.Morphism"
d1090 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 -> ()
d1090 = erased
name1094 = "Algebra.Morphism._.IsAbelianGroupMorphism"
d1094 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T1094 = C8003 T840
name1100 = "Algebra.Morphism._.IsAbelianGroupMorphism.gp-homo"
d1100 :: T1094 -> T840
d1100 v0
  = case coe v0 of
      C8003 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1104 = "Algebra.Morphism._.IsAbelianGroupMorphism._.mn-homo"
d1104 :: T1094 -> T290
d1104 v0 = coe d846 (coe d1100 (coe v0))
name1106 = "Algebra.Morphism._.IsAbelianGroupMorphism._.sm-homo"
d1106 :: T1094 -> T144
d1106 v0 = coe d298 (coe d846 (coe d1100 (coe v0)))
name1108 = "Algebra.Morphism._.IsAbelianGroupMorphism._.ε-homo"
d1108 :: T1094 -> AgdaAny
d1108 v0 = coe d300 (coe d846 (coe d1100 (coe v0)))
name1110 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⁻¹-homo"
d1110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  (AgdaAny -> AgdaAny) -> T1094 -> AgdaAny -> AgdaAny
d1110 v0 v1 v2 v3 v4 v5 v6 v7 = du1110 v4 v5 v6 v7
du1110 ::
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  (AgdaAny -> AgdaAny) -> T1094 -> AgdaAny -> AgdaAny
du1110 v0 v1 v2 v3
  = coe
      du858 (coe MAlonzo.Code.Algebra.Bundles.du964 (coe v0))
      (coe MAlonzo.Code.Algebra.Bundles.du964 (coe v1)) (coe v2)
      (coe d1100 (coe v3))
name1112 = "Algebra.Morphism._.IsAbelianGroupMorphism._.∙-homo"
d1112 :: T1094 -> AgdaAny -> AgdaAny -> AgdaAny
d1112 v0 = coe d154 (coe d298 (coe d846 (coe d1100 (coe v0))))
name1114 = "Algebra.Morphism._.IsAbelianGroupMorphism._.⟦⟧-cong"
d1114 :: T1094 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1114 v0 = coe d152 (coe d298 (coe d846 (coe d1100 (coe v0))))
name1116 = "Algebra.Morphism._.IsAbelianGroupMorphism-syntax"
d1116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T876 ->
  MAlonzo.Code.Algebra.Bundles.T876 -> (AgdaAny -> AgdaAny) -> ()
d1116 = erased
name1166 = "Algebra.Morphism._.F.*-monoid"
d1166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T422
d1166 v0 v1 v2 v3 v4 v5 = du1166 v4
du1166 ::
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T422
du1166 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2180 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1658
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v1))
name1174 = "Algebra.Morphism._.F.+-abelianGroup"
d1174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T876
d1174 v0 v1 v2 v3 v4 v5 = du1174 v4
du1174 ::
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T876
du1174 v0 = coe MAlonzo.Code.Algebra.Bundles.du2178 (coe v0)
name1320 = "Algebra.Morphism._.T.*-monoid"
d1320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T422
d1320 v0 v1 v2 v3 v4 v5 = du1320 v5
du1320 ::
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T422
du1320 v0
  = let v1 = coe MAlonzo.Code.Algebra.Bundles.du2180 (coe v0) in
    coe
      MAlonzo.Code.Algebra.Bundles.du1658
      (coe MAlonzo.Code.Algebra.Bundles.du1790 (coe v1))
name1328 = "Algebra.Morphism._.T.+-abelianGroup"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T876
d1328 v0 v1 v2 v3 v4 v5 = du1328 v5
du1328 ::
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T876
du1328 v0 = coe MAlonzo.Code.Algebra.Bundles.du2178 (coe v0)
name1444 = "Algebra.Morphism._._.Homomorphic₀"
d1444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d1444 = erased
name1446 = "Algebra.Morphism._._.Homomorphic₁"
d1446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d1446 = erased
name1448 = "Algebra.Morphism._._.Homomorphic₂"
d1448 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d1448 = erased
name1450 = "Algebra.Morphism._._.Morphism"
d1450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 -> ()
d1450 = erased
name1454 = "Algebra.Morphism._.IsRingMorphism"
d1454 a0 a1 a2 a3 a4 a5 a6 = ()
data T1454 = C9535 T1094 T290
name1462 = "Algebra.Morphism._.IsRingMorphism.+-abgp-homo"
d1462 :: T1454 -> T1094
d1462 v0
  = case coe v0 of
      C9535 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name1464 = "Algebra.Morphism._.IsRingMorphism.*-mn-homo"
d1464 :: T1454 -> T290
d1464 v0
  = case coe v0 of
      C9535 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name1466 = "Algebra.Morphism._.IsRingMorphism-syntax"
d1466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T2040 ->
  MAlonzo.Code.Algebra.Bundles.T2040 -> (AgdaAny -> AgdaAny) -> ()
d1466 = erased
