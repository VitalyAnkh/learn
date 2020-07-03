{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name34 = "Data.Sum.Properties.inj₁-injective"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d34 = erased
name40 = "Data.Sum.Properties.inj₂-injective"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d40 = erased
name54 = "Data.Sum.Properties._.≡-dec"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T32
d54 v0 v1 v2 v3 v4 v5 v6 v7 = du54 v4 v5 v6 v7
du54 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T32
du54 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C38 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 erased
                    (coe v0 v4 v5)
             MAlonzo.Code.Data.Sum.Base.C42 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C38 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
             MAlonzo.Code.Data.Sum.Base.C42 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 erased
                    (coe v1 v4 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Data.Sum.Properties.swap-involutive"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d72 = erased
name78 = "Data.Sum.Properties.map-id"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d78 = erased
name86 = "Data.Sum.Properties.[,]-∘-distr"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d86 = erased
name96 = "Data.Sum.Properties.[,]-map-commute"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d96 = erased
name106 = "Data.Sum.Properties.map-commute"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d106 = erased
name112 = "Data.Sum.Properties.map₁₂-commute"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d112 = erased
name122 = "Data.Sum.Properties.[,]-cong"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d122 = erased
name130 = "Data.Sum.Properties.[-,]-cong"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d130 = erased
name142 = "Data.Sum.Properties.[,-]-cong"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d142 = erased
name156 = "Data.Sum.Properties.map-cong"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d156 = erased
name174 = "Data.Sum.Properties.map₁-cong"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d174 = erased
name182 = "Data.Sum.Properties.map₂-cong"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d182 = erased
name3027 = "Data.Sum.Properties._..absurdlambda"
d3027 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3027 = erased
name3345 = "Data.Sum.Properties._..absurdlambda"
d3345 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d3345 = erased
