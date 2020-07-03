{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Membership.Propositional.Properties.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Membership.Propositional
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties

name30
  = "Data.List.Membership.Propositional.Properties.Core.map∘find"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d30 = erased
name50
  = "Data.List.Membership.Propositional.Properties.Core.find∘map"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d50 = erased
name70
  = "Data.List.Membership.Propositional.Properties.Core.find-∈"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d70 = erased
name84
  = "Data.List.Membership.Propositional.Properties.Core.lose∘find"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d84 = erased
name98
  = "Data.List.Membership.Propositional.Properties.Core.find∘lose"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d98 = erased
name128
  = "Data.List.Membership.Propositional.Properties.Core._.∃∈-Any"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26
d128 v0 v1 v2 v3 v4 v5 = du128 v4 v5
du128 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26
du128 v0 v1
  = coe
      MAlonzo.Code.Data.Product.du248
      (coe
         MAlonzo.Code.Data.List.Membership.Propositional.du54
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v1)) (coe v0))
      (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v1))
name134
  = "Data.List.Membership.Propositional.Properties.Core._.Any↔"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> [AgdaAny] -> MAlonzo.Code.Function.Inverse.T58
d134 v0 v1 v2 v3 v4 = du134 v4
du134 :: [AgdaAny] -> MAlonzo.Code.Function.Inverse.T58
du134 v0
  = coe
      MAlonzo.Code.Function.Inverse.du156 (coe du128 (coe v0))
      (coe
         MAlonzo.Code.Data.List.Membership.Setoid.du80
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
         (coe v0))
      erased erased
name142
  = "Data.List.Membership.Propositional.Properties.Core._._.from∘to"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d142 = erased
