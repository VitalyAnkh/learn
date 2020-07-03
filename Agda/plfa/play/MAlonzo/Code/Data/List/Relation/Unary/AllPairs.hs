{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Unary.AllPairs where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Product

name22 = "Data.List.Relation.Unary.AllPairs.head"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
d22 v0 v1 v2 v3 v4 v5 v6 = du22 v6
du22 ::
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34
du22 v0
  = case coe v0 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28 v3 v4
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name32 = "Data.List.Relation.Unary.AllPairs.tail"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d32 v0 v1 v2 v3 v4 v5 v6 = du32 v6
du32 ::
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du32 v0
  = case coe v0 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28 v3 v4
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name42 = "Data.List.Relation.Unary.AllPairs.uncons"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d42 v0 v1 v2 v3 v4 v5 = du42
du42 ::
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du42 = coe MAlonzo.Code.Data.Product.du132 (coe du22) (coe du32)
name52 = "Data.List.Relation.Unary.AllPairs._.map"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du52 v6 v7 v8
du52 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du52 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C22 -> coe v2
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28 v5 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.All.du196 (coe v0 v7)
                       (coe v8) (coe v5))
                    (coe du52 (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name74 = "Data.List.Relation.Unary.AllPairs._.zipWith"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d74 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du74 v8 v9 v10
du74 ::
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du74 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C22
               -> coe seq (coe v4) (coe v3)
             MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28 v7 v8
               -> case coe v1 of
                    (:) v9 v10
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28 v13 v14
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28
                                  (coe
                                     MAlonzo.Code.Data.List.Relation.Unary.All.du224 (coe v0 v9)
                                     (coe v10)
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v7) (coe v13)))
                                  (coe
                                     du74 (coe v0) (coe v10)
                                     (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v8) (coe v14)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Data.List.Relation.Unary.AllPairs._.unzipWith"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d88 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du88 v8 v9 v10
du88 ::
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du88 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C22
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v2)
      MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28 v5 v6
        -> case coe v1 of
             (:) v7 v8
               -> coe
                    MAlonzo.Code.Data.Product.du186
                    (coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28)
                    (coe
                       (\ v9 v10 ->
                          coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.All.du238 (coe v0 v7)
                       (coe v8) (coe v5))
                    (coe du88 (coe v0) (coe v8) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Data.List.Relation.Unary.AllPairs._.zip"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
d106 v0 v1 v2 v3 v4 v5 v6 = du106 v6
du106 ::
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20
du106 v0 = coe du74 (coe (\ v1 v2 v3 -> v3)) (coe v0)
name108 = "Data.List.Relation.Unary.AllPairs._.unzip"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d108 v0 v1 v2 v3 v4 v5 v6 = du108 v6
du108 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du108 v0 = coe du88 (coe (\ v1 v2 v3 -> v3)) (coe v0)
name110 = "Data.List.Relation.Unary.AllPairs.allPairs?"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d110 v0 v1 v2 v3 v4 v5 = du110 v4 v5
du110 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du110 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe
                MAlonzo.Code.Relation.Nullary.C22
                (coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C22))
      (:) v2 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du168
             (coe
                MAlonzo.Code.Data.Product.du232
                (coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C28))
             (coe
                MAlonzo.Code.Relation.Nullary.Product.du30
                (coe
                   MAlonzo.Code.Data.List.Relation.Unary.All.du602 (coe v0 v2)
                   (coe v3))
                (coe du110 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
name120 = "Data.List.Relation.Unary.AllPairs.irrelevant"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.T20 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d120 = erased
name134 = "Data.List.Relation.Unary.AllPairs.satisfiable"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d134 v0 v1 v2 v3 = du134
du134 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du134
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe MAlonzo.Code.Agda.Builtin.List.C16)
      (coe MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C22)
