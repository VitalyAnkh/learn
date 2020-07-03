{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Membership.Propositional where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

name14 = "Data.List.Membership.Propositional._._∈_"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> [AgdaAny] -> ()
d14 = erased
name16 = "Data.List.Membership.Propositional._._∉_"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> [AgdaAny] -> ()
d16 = erased
name18 = "Data.List.Membership.Propositional._.find"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d18 v0 v1 = du18
du18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du18 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du80
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      v2 v3
name20 = "Data.List.Membership.Propositional._.map-with-∈"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d20 v0 v1 = du20
du20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du20
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du98
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
name22 = "Data.List.Membership.Propositional._.mapWith∈"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d22 v0 v1 = du22
du22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du22 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du58
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      v2 v3
name26 = "Data.List.Membership.Propositional._._._∷=_"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> [AgdaAny]
d26 v0 v1 = du26
du26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> [AgdaAny]
du26 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.du134 v4 v5 v6
name28 = "Data.List.Membership.Propositional._._._─_"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> [AgdaAny]
d28 v0 v1 = du28
du28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> [AgdaAny]
du28 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Data.List.Relation.Unary.Any.du144 v4 v5
name36 = "Data.List.Membership.Propositional._≢∈_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> ()
d36 = erased
name54 = "Data.List.Membership.Propositional.lose"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
d54 v0 v1 v2 v3 v4 v5 = du54 v4 v5
du54 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
du54 v0 v1
  = coe
      MAlonzo.Code.Data.List.Membership.Setoid.du90
      (coe (\ v2 v3 v4 v5 -> v5)) (coe v0) (coe v1)
