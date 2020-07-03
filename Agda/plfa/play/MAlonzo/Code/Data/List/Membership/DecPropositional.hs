{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Membership.DecPropositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.List.Membership.Propositional
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary

name16 = "Data.List.Membership.DecPropositional._._∈_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> ()
d16 = erased
name18 = "Data.List.Membership.DecPropositional._._∉_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> ()
d18 = erased
name20 = "Data.List.Membership.DecPropositional._._≢∈_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> ()
d20 = erased
name22 = "Data.List.Membership.DecPropositional._.find"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d22 v0 v1 v2 = du22
du22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du22 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du80
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      v2 v3
name24 = "Data.List.Membership.DecPropositional._.lose"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
d24 v0 v1 v2 = du24
du24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
du24 v0 v1 v2 v3
  = coe MAlonzo.Code.Data.List.Membership.Propositional.du54 v2 v3
name26 = "Data.List.Membership.DecPropositional._.map-with-∈"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d26 v0 v1 v2 = du26
du26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du26
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du98
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name28 = "Data.List.Membership.DecPropositional._.mapWith∈"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d28 v0 v1 v2 = du28
du28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du28 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du58
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      v2 v3
name30 = "Data.List.Membership.DecPropositional._._∷=_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> [AgdaAny]
d30 v0 v1 v2 = du30
du30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> [AgdaAny]
du30 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.du134 v4 v5 v6
name32 = "Data.List.Membership.DecPropositional._._─_"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> [AgdaAny]
d32 v0 v1 v2 = du32
du32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> [AgdaAny]
du32 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.du144 v4 v5
name36 = "Data.List.Membership.DecPropositional._._∈?_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d36 v0 v1 v2 = du36 v2
du36 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du36 v0
  = coe
      MAlonzo.Code.Data.List.Membership.DecSetoid.du62
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du254
         (coe v0))
