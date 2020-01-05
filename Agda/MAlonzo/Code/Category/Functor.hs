{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Category.Functor where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive

name10 = "Category.Functor.RawFunctor"
d10 a0 a1 a2 = ()
newtype T10
  = C5 (() -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny)
name28 = "Category.Functor.RawFunctor._<$>_"
d28 ::
  T10 -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d28 v0
  = case coe v0 of
      C5 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Category.Functor.RawFunctor._<$_"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) -> T10 -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d34 v0 v1 v2 v3 v4 v5 v6 v7 = du34 v3 v6 v7
du34 :: T10 -> AgdaAny -> AgdaAny -> AgdaAny
du34 v0 v1 v2 = coe d28 v0 erased erased (\ v3 -> v1) v2
name44 = "Category.Functor.RawFunctor._<&>_"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  T10 -> () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d44 v0 v1 v2 v3 v4 v5 v6 v7 = du44 v3 v6 v7
du44 :: T10 -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du44 v0 v1 v2 = coe d28 v0 erased erased v2 v1
name60 = "Category.Functor.Morphism"
d60 a0 a1 a2 a3 a4 a5 a6 = ()
newtype T60 = C281 (() -> AgdaAny -> AgdaAny)
name92 = "Category.Functor.Morphism.op"
d92 :: T60 -> () -> AgdaAny -> AgdaAny
d92 v0
  = case coe v0 of
      C281 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name102 = "Category.Functor.Morphism.op-<$>"
d102 ::
  T60 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d102 = erased
