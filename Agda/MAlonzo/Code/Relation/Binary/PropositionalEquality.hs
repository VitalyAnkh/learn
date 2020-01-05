{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.PropositionalEquality where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name32 = "Relation.Binary.PropositionalEquality.subst₂"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d32 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du32 v12
du32 :: AgdaAny -> AgdaAny
du32 v0 = coe v0
name48 = "Relation.Binary.PropositionalEquality.cong-app"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d48 = erased
name62 = "Relation.Binary.PropositionalEquality.cong₂"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d62 = erased
name66 = "Relation.Binary.PropositionalEquality.isEquivalence"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T26
d66 v0 v1 = du66
du66 :: MAlonzo.Code.Relation.Binary.Structures.T26
du66
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C97 erased erased erased)
name68 = "Relation.Binary.PropositionalEquality.isDecEquivalence"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d68 v0 v1 v2 = du68 v2
du68 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du68 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C589 (coe du66) (coe v0))
name72 = "Relation.Binary.PropositionalEquality.isPreorder"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T70
d72 v0 v1 = du72
du72 :: MAlonzo.Code.Relation.Binary.Structures.T70
du72
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C753
         (coe du66) (coe (\ v0 v1 v2 -> v2)) erased)
name74 = "Relation.Binary.PropositionalEquality.setoid"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T44
d74 v0 v1 = du74
du74 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du74
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.Bundles.C163 v2) erased
      erased du66
name78 = "Relation.Binary.PropositionalEquality.decSetoid"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T86
d78 v0 v1 v2 = du78 v2
du78 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Relation.Binary.Bundles.T86
du78 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C381 v3) erased
      erased (du68 (coe v0))
name82 = "Relation.Binary.PropositionalEquality.preorder"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T128
d82 v0 v1 = du82
du82 :: MAlonzo.Code.Relation.Binary.Bundles.T128
du82
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C563 v3)
      erased erased erased du72
name90 = "Relation.Binary.PropositionalEquality._→-setoid_"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Relation.Binary.Bundles.T44
d90 v0 v1 v2 v3 = du90
du90 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du90
  = coe
      (MAlonzo.Code.Function.Equality.du206
         (coe
            (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du100
               (coe du74))))
name100 = "Relation.Binary.PropositionalEquality._≗_"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d100 = erased
name112 = "Relation.Binary.PropositionalEquality.:→-to-Π"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T18 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d112 v0 v1 v2 v3 v4 v5 = du112 v4 v5
du112 ::
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T18 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du112 v0 v1
  = coe
      (MAlonzo.Code.Function.Equality.C19
         (coe v1)
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d30
                 (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.d38
                    (coe v0))
                 v2 (coe v1 v2))))
name132 = "Relation.Binary.PropositionalEquality.→-to-⟶"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d132 v0 v1 v2 v3 v4 = du132 v4
du132 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du132 v0
  = coe
      (du112
         (coe
            (\ v1 v2 v3 ->
               MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.C17 v3)
            erased erased
            (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du32
               (coe (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))))))
name150 = "Relation.Binary.PropositionalEquality.Reveal_·_is_"
d150 a0 a1 a2 a3 a4 a5 a6 = ()
data T150 = C166
name164 = "Relation.Binary.PropositionalEquality.Reveal_·_is_.eq"
d164 :: T150 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d164 = erased
name178 = "Relation.Binary.PropositionalEquality.inspect"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> T150
d178 = erased
name184 = "Relation.Binary.PropositionalEquality.isPropositional"
d184 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d184 = erased
name204 = "Relation.Binary.PropositionalEquality.trans-injectiveˡ"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d204 = erased
name218 = "Relation.Binary.PropositionalEquality.trans-injectiveʳ"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d218 = erased
name228 = "Relation.Binary.PropositionalEquality.cong-id"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d228 = erased
name240 = "Relation.Binary.PropositionalEquality.cong-∘"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d240 = erased
name262 = "Relation.Binary.PropositionalEquality._.subst-injective"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d262 = erased
name274 = "Relation.Binary.PropositionalEquality._.subst-subst"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d274 = erased
name280 = "Relation.Binary.PropositionalEquality._.subst-subst-sym"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d280 = erased
name286 = "Relation.Binary.PropositionalEquality._.subst-sym-subst"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d286 = erased
name300 = "Relation.Binary.PropositionalEquality.subst-∘"
d300 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d300 = erased
name332 = "Relation.Binary.PropositionalEquality.subst-application"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d332 = erased
name348 = "Relation.Binary.PropositionalEquality.naturality"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d348 = erased
name366 = "Relation.Binary.PropositionalEquality.cong-≡id"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d366 = erased
name378 = "Relation.Binary.PropositionalEquality._.fx≡x"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d378 = erased
name380 = "Relation.Binary.PropositionalEquality._.f²x≡x"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d380 = erased
name400 = "Relation.Binary.PropositionalEquality._.≡-≟-identity"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d400 = erased
name406 = "Relation.Binary.PropositionalEquality._.≢-≟-identity"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d406 v0 v1 v2 v3 v4 v5 = du406 v2 v3 v4
du406 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du406 v0 v1 v2
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.Core.du124 (coe v0 v1 v2))
name412 = "Relation.Binary.PropositionalEquality.isMagma"
d412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T78
d412 v0 v1 v2 = du412
du412 :: MAlonzo.Code.Algebra.Structures.T78
du412
  = coe (MAlonzo.Code.Algebra.Structures.C257 (coe du66) erased)
name418 = "Relation.Binary.PropositionalEquality.magma"
d418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T30
d418 v0 v1 v2 = du418 v2
du418 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> MAlonzo.Code.Algebra.Bundles.T30
du418 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Algebra.Bundles.C77 v3 v4) erased
      erased v0 du412
name422 = "Relation.Binary.PropositionalEquality.Extensionality"
d422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d422 = erased
name424
  = "Relation.Binary.PropositionalEquality.extensionality-for-lower-levels"
d424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d424 = erased
name426 = "Relation.Binary.PropositionalEquality.∀-extensionality"
d426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d426 = erased
