{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary.Decidable where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Nullary

name14 = "Relation.Nullary.Decidable.map"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d14 v0 v1 v2 v3 v4 v5 = du14 v4 v5
du14 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du14 v0 v1
  = case coe v1 of
      MAlonzo.Code.Relation.Nullary.C22 v2
        -> coe
             (MAlonzo.Code.Relation.Nullary.C22
                (coe
                   MAlonzo.Code.Function.Equality.d38
                   (MAlonzo.Code.Function.Equivalence.d34 (coe v0)) v2))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (\ v3 -> MAlonzo.Code.Relation.Nullary.C26) erased
      _ -> MAlonzo.RTE.mazUnreachableError
name24 = "Relation.Nullary.Decidable.map′"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
d24 v0 v1 v2 v3 v4 v5 = du24 v4 v5
du24 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Nullary.T14 ->
  MAlonzo.Code.Relation.Nullary.T14
du24 v0 v1
  = coe
      (du14
         (coe (MAlonzo.Code.Function.Equivalence.du56 (coe v0) (coe v1))))
name48 = "Relation.Nullary.Decidable._._._≈_"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 -> AgdaAny -> AgdaAny -> ()
d48 = erased
name54 = "Relation.Nullary.Decidable._.via-injection"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Function.Injection.T88 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
d54 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du54 v6 v7 v8 v9
du54 ::
  MAlonzo.Code.Function.Injection.T88 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14
du54 v0 v1 v2 v3
  = let v4
          = coe
              v1
              (coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Injection.d106 (coe v0)) v2)
              (coe
                 MAlonzo.Code.Function.Equality.d38
                 (MAlonzo.Code.Function.Injection.d106 (coe v0)) v3) in
    case coe v4 of
      MAlonzo.Code.Relation.Nullary.C22 v5
        -> coe
             (MAlonzo.Code.Relation.Nullary.C22
                (coe MAlonzo.Code.Function.Injection.d108 v0 v2 v3 v5))
      MAlonzo.Code.Relation.Nullary.C26
        -> coe (\ v6 -> MAlonzo.Code.Relation.Nullary.C26) erased
      _ -> MAlonzo.RTE.mazUnreachableError
