{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Induction where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

name8 = "Induction.RecStruct"
d8 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> ()
d8 = erased
name24 = "Induction.RecursorBuilder"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> ((AgdaAny -> ()) -> AgdaAny -> ()) -> ()
d24 = erased
name38 = "Induction.Recursor"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> ((AgdaAny -> ()) -> AgdaAny -> ()) -> ()
d38 = erased
name54 = "Induction.build"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  ((AgdaAny -> ()) -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d54 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du54 v5 v6 v7 v8
du54 ::
  ((AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du54 v0 v1 v2 v3 = coe v2 v3 (coe v0 v1 v2 v3)
name74 = "Induction.SubsetRecursorBuilder"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> ((AgdaAny -> ()) -> AgdaAny -> ()) -> ()
d74 = erased
name92 = "Induction.SubsetRecursor"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> ((AgdaAny -> ()) -> AgdaAny -> ()) -> ()
d92 = erased
name114 = "Induction.subsetBuild"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  ((AgdaAny -> ()) -> AgdaAny -> ()) ->
  ((AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du114 v7 v8 v9 v10 v11
du114 ::
  ((AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du114 v0 v1 v2 v3 v4 = coe v2 v3 (coe v0 v1 v2 v3 v4)
