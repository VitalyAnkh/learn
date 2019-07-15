{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Decidable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary

name16 = "Relation.Nullary.Decidable.Core.⌊_⌋"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> Bool
d16 v0 v1 v2 = du16 v2
du16 :: MAlonzo.Code.Relation.Nullary.T14 -> Bool
du16 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name18 = "Relation.Nullary.Decidable.Core.True"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> ()
d18 = erased
name22 = "Relation.Nullary.Decidable.Core.False"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> ()
d22 = erased
name28 = "Relation.Nullary.Decidable.Core.toWitness"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny -> AgdaAny
d28 v0 v1 v2 v3 = du28 v2
du28 :: MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny
du28 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Relation.Nullary.Decidable.Core.fromWitness"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny -> AgdaAny
d34 = erased
name42 = "Relation.Nullary.Decidable.Core.toWitnessFalse"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d42 = erased
name48 = "Relation.Nullary.Decidable.Core.fromWitnessFalse"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> AgdaAny
d48 = erased
name62 = "Relation.Nullary.Decidable.Core._.From-yes"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> ()
d62 = erased
name66 = "Relation.Nullary.Decidable.Core._.from-yes"
d66 :: MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny
d66 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe v1
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (MAlonzo.Code.Level.C20 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name70 = "Relation.Nullary.Decidable.Core._.From-no"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> ()
d70 = erased
name74 = "Relation.Nullary.Decidable.Core._.from-no"
d74 :: MAlonzo.Code.Relation.Nullary.T14 -> AgdaAny
d74 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1
        -> coe (MAlonzo.Code.Level.C20 erased)
      MAlonzo.Code.Relation.Nullary.C26 -> erased
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Relation.Nullary.Decidable.Core.dec-yes"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d82 v0 v1 v2 v3 = du82 v0 v2
du82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du82 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C22 v2
        -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) erased)
      MAlonzo.Code.Relation.Nullary.C26
        -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name96 = "Relation.Nullary.Decidable.Core.dec-no"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d96 v0 v1 v2 v3 = du96 v0 v2 v3
du96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du96 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C22 v3
        -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe v2) (coe MAlonzo.Code.Data.Empty.d10 v0 erased erased))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name110 = "Relation.Nullary.Decidable.Core.dec-yes-irr"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d110 = erased
