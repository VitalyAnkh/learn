{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial
import qualified MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name26 = "Relation.Binary.PropositionalEquality._→-setoid_"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Relation.Binary.Bundles.T44
d26 v0 v1 v2 v3 = du26
du26 :: MAlonzo.Code.Relation.Binary.Bundles.T44
du26
  = coe
      MAlonzo.Code.Function.Equality.du206
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du100
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
name36 = "Relation.Binary.PropositionalEquality._≗_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d36 = erased
name48 = "Relation.Binary.PropositionalEquality.:→-to-Π"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T18 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d48 v0 v1 v2 v3 v4 v5 = du48 v4 v5
du48 ::
  MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.T18 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du48 v0 v1
  = coe
      MAlonzo.Code.Function.Equality.C763 (coe v1)
      (coe
         (\ v2 v3 v4 ->
            coe
              MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Structures.d30
              (MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.d38
                 (coe v0))
              v2 (coe v1 v2)))
name68 = "Relation.Binary.PropositionalEquality.→-to-⟶"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
d68 v0 v1 v2 v3 v4 = du68 v4
du68 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Function.Equality.T16
du68 v0
  = coe
      du48
      (coe
         MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Bundles.C279
         (coe
            MAlonzo.Code.Relation.Binary.Indexed.Heterogeneous.Construct.Trivial.du32
            (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))))
name86 = "Relation.Binary.PropositionalEquality.Reveal_·_is_"
d86 a0 a1 a2 a3 a4 a5 a6 = ()
data T86 = C102
name100 = "Relation.Binary.PropositionalEquality.Reveal_·_is_.eq"
d100 :: T86 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d100 = erased
name114 = "Relation.Binary.PropositionalEquality.inspect"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> T86
d114 = erased
name120 = "Relation.Binary.PropositionalEquality.isPropositional"
d120 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d120 = erased
name142 = "Relation.Binary.PropositionalEquality.naturality"
d142 ::
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
d142 = erased
name160 = "Relation.Binary.PropositionalEquality.cong-≡id"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d160 = erased
name172 = "Relation.Binary.PropositionalEquality._.fx≡x"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d172 = erased
name174 = "Relation.Binary.PropositionalEquality._.f²x≡x"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d174 = erased
name194 = "Relation.Binary.PropositionalEquality._.≡-≟-identity"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d194 = erased
name200 = "Relation.Binary.PropositionalEquality._.≢-≟-identity"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d200 v0 v1 v2 v3 v4 v5 = du200 v2 v3 v4
du200 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du200 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du124 (coe v0 v1 v2)
name204 = "Relation.Binary.PropositionalEquality.Extensionality"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d204 = erased
name206
  = "Relation.Binary.PropositionalEquality.extensionality-for-lower-levels"
d206 ::
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
d206 = erased
name208 = "Relation.Binary.PropositionalEquality.∀-extensionality"
d208 ::
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
d208 = erased
