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
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
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
name66 = "Relation.Binary.PropositionalEquality.setoid"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T128
d66 v0 v1 = du66
du66 :: MAlonzo.Code.Relation.Binary.T128
du66
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1037 v2) erased erased
      MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70
name70 = "Relation.Binary.PropositionalEquality.decSetoid"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T206
d70 v0 v1 v2 = du70 v2
du70 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  MAlonzo.Code.Relation.Binary.T206
du70 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1455 v3) erased erased
      (MAlonzo.Code.Relation.Binary.C1313
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         (coe v0))
name74 = "Relation.Binary.PropositionalEquality.isPreorder"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T16
d74 v0 v1 = du74
du74 :: MAlonzo.Code.Relation.Binary.T16
du74
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du70)
         (coe (\ v0 v1 v2 -> v2)) erased)
name76 = "Relation.Binary.PropositionalEquality.preorder"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Binary.T74
d76 v0 v1 = du76
du76 :: MAlonzo.Code.Relation.Binary.T74
du76
  = coe
      (\ v0 v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C807 v3) erased
      erased erased du74
name84 = "Relation.Binary.PropositionalEquality._→-setoid_"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Relation.Binary.T128
d84 v0 v1 v2 v3 = du84
du84 :: MAlonzo.Code.Relation.Binary.T128
du84
  = coe
      (MAlonzo.Code.Function.Equality.du206
         (coe
            (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du96
               (coe du66))))
name94 = "Relation.Binary.PropositionalEquality._≗_"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d94 = erased
name106 = "Relation.Binary.PropositionalEquality.:→-to-Π"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.T58 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d106 v0 v1 v2 v3 v4 v5 = du106 v4 v5
du106 ::
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.T58 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du106 v0 v1
  = coe
      (MAlonzo.Code.Function.Equality.C19
         (coe v1)
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.d40
                 (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.d78 (coe v0))
                 v2 (coe v1 v2))))
name126 = "Relation.Binary.PropositionalEquality.→-to-⟶"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d126 v0 v1 v2 v3 v4 = du126 v4
du126 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du126 v0
  = coe
      (du106
         (coe
            (\ v1 v2 v3 ->
               MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.C625 v3)
            erased erased
            (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du32
               (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))))
name144 = "Relation.Binary.PropositionalEquality.Reveal_·_is_"
d144 a0 a1 a2 a3 a4 a5 a6 = ()
data T144 = C160
name158 = "Relation.Binary.PropositionalEquality.Reveal_·_is_.eq"
d158 :: T144 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d158 = erased
name172 = "Relation.Binary.PropositionalEquality.inspect"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> T144
d172 = erased
name178 = "Relation.Binary.PropositionalEquality.isPropositional"
d178 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d178 = erased
name198 = "Relation.Binary.PropositionalEquality.trans-injectiveˡ"
d198 ::
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
d198 = erased
name212 = "Relation.Binary.PropositionalEquality.trans-injectiveʳ"
d212 ::
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
d212 = erased
name222 = "Relation.Binary.PropositionalEquality.cong-id"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d222 = erased
name234 = "Relation.Binary.PropositionalEquality.cong-∘"
d234 ::
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
d234 = erased
name256 = "Relation.Binary.PropositionalEquality._.subst-injective"
d256 ::
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
d256 = erased
name268 = "Relation.Binary.PropositionalEquality._.subst-subst"
d268 ::
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
d268 = erased
name274 = "Relation.Binary.PropositionalEquality._.subst-subst-sym"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d274 = erased
name280 = "Relation.Binary.PropositionalEquality._.subst-sym-subst"
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
name294 = "Relation.Binary.PropositionalEquality.subst-∘"
d294 ::
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
d294 = erased
name326 = "Relation.Binary.PropositionalEquality.subst-application"
d326 ::
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
d326 = erased
name342 = "Relation.Binary.PropositionalEquality.naturality"
d342 ::
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
d342 = erased
name360 = "Relation.Binary.PropositionalEquality.cong-≡id"
d360 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d360 = erased
name372 = "Relation.Binary.PropositionalEquality._.fx≡x"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d372 = erased
name374 = "Relation.Binary.PropositionalEquality._.f²x≡x"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d374 = erased
name394 = "Relation.Binary.PropositionalEquality._.≡-≟-identity"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d394 = erased
name408 = "Relation.Binary.PropositionalEquality._.≢-≟-identity"
d408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d408 v0 v1 v2 v3 v4 v5 = du408 v0 v2 v3 v4
du408 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du408 v0 v1 v2 v3
  = coe
      (MAlonzo.Code.Relation.Nullary.Decidable.Core.du96
         (coe v0) (coe v1 v2 v3) erased)
name416 = "Relation.Binary.PropositionalEquality.Extensionality"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d416 = erased
name418
  = "Relation.Binary.PropositionalEquality.extensionality-for-lower-levels"
d418 ::
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
d418 = erased
name420 = "Relation.Binary.PropositionalEquality.∀-extensionality"
d420 ::
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
d420 = erased
