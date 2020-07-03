{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Decidable.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Reflects

name16 = "Relation.Nullary.Decidable.Core.isYes"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> Bool
d16 v0 v1 v2 = du16 v2
du16 :: MAlonzo.Code.Relation.Nullary.T32 -> Bool
du16 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name20 = "Relation.Nullary.Decidable.Core.isYes≗does"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d20 = erased
name22 = "Relation.Nullary.Decidable.Core.⌊_⌋"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> Bool
d22 v0 v1 v2 = coe du16 v2
name24 = "Relation.Nullary.Decidable.Core.isNo"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> Bool
d24 v0 v1 v2 = du24 v2
du24 :: MAlonzo.Code.Relation.Nullary.T32 -> Bool
du24 v0 = coe MAlonzo.Code.Data.Bool.Base.d22 (coe du16 (coe v0))
name26 = "Relation.Nullary.Decidable.Core.True"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> ()
d26 = erased
name30 = "Relation.Nullary.Decidable.Core.False"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> ()
d30 = erased
name36 = "Relation.Nullary.Decidable.Core.toWitness"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny -> AgdaAny
d36 v0 v1 v2 v3 = du36 v2
du36 :: MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny
du36 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> coe
             seq (coe v1)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name42 = "Relation.Nullary.Decidable.Core.fromWitness"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny -> AgdaAny
d42 v0 v1 v2 = du42 v2
du42 :: MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny -> AgdaAny
du42 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8)
             else coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name48 = "Relation.Nullary.Decidable.Core.toWitnessFalse"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4
d48 = erased
name54 = "Relation.Nullary.Decidable.Core.fromWitnessFalse"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> AgdaAny
d54 v0 v1 v2 = du54 v2
du54 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> AgdaAny
du54 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe
                    (\ v3 ->
                       coe v3 (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2)))
             else coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8)
      _ -> MAlonzo.RTE.mazUnreachableError
name66 = "Relation.Nullary.Decidable.Core._.From-yes"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> ()
d66 = erased
name70 = "Relation.Nullary.Decidable.Core._.from-yes"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny
d70 v0 v1 v2 = du70 v2
du70 :: MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny
du70 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2)
             else coe
                    MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
      _ -> MAlonzo.RTE.mazUnreachableError
name74 = "Relation.Nullary.Decidable.Core._.From-no"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> ()
d74 = erased
name78 = "Relation.Nullary.Decidable.Core._.from-no"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny
d78 v0 v1 v2 = du78 v2
du78 :: MAlonzo.Code.Relation.Nullary.T32 -> AgdaAny
du78 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
             else coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Relation.Nullary.Decidable.Core.dec-true"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d84 = erased
name94 = "Relation.Nullary.Decidable.Core.dec-false"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d94 = erased
name106 = "Relation.Nullary.Decidable.Core.dec-yes"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d106 v0 v1 v2 v3 = du106 v2
du106 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du106 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                MAlonzo.Code.Relation.Nullary.C22 v3
                  -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3) erased
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name124 = "Relation.Nullary.Decidable.Core.dec-no"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d124 v0 v1 v2 v3 = du124 v2
du124 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du124 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> coe
             seq (coe v1)
             (coe
                seq (coe v2)
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased))
      _ -> MAlonzo.RTE.mazUnreachableError
name142 = "Relation.Nullary.Decidable.Core.dec-yes-irr"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d142 = erased
name168 = "Relation.Nullary.Decidable.Core.map′"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
d168 v0 v1 v2 v3 v4 v5 v6 = du168 v4 v6
du168 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Relation.Nullary.T32
du168 v0 v1
  = coe
      MAlonzo.Code.Relation.Nullary.C46
      (coe MAlonzo.Code.Relation.Nullary.d42 (coe v1))
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.C46 v2 v3
           -> if coe v2
                then coe
                       MAlonzo.Code.Relation.Nullary.C22
                       (coe v0 (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v3)))
                else coe MAlonzo.Code.Relation.Nullary.C26
         _ -> MAlonzo.RTE.mazUnreachableError)
