{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Membership.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

name36 = "Data.List.Membership.Setoid._∈_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 -> AgdaAny -> [AgdaAny] -> ()
d36 = erased
name44 = "Data.List.Membership.Setoid._∉_"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 -> AgdaAny -> [AgdaAny] -> ()
d44 = erased
name58 = "Data.List.Membership.Setoid.mapWith∈"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d58 v0 v1 v2 v3 v4 v5 v6 = du58 v2 v5 v6
du58 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du58 v0 v1 v2
  = case coe v1 of
      [] -> coe v1
      (:) v3 v4
        -> coe
             (MAlonzo.Code.Agda.Builtin.List.C22
                (coe
                   v2 v3
                   (coe
                      (\ v5 v6 v7 -> MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v7)
                      erased erased
                      (coe
                         MAlonzo.Code.Relation.Binary.Core.d414
                         (MAlonzo.Code.Relation.Binary.d144 (coe v0)) v3)))
                (coe
                   (du58
                      (coe v0) (coe v4)
                      (coe
                         (\ v5 v6 ->
                            coe
                              v2 v5
                              (coe
                                 (\ v7 v8 v9 -> MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v9)
                                 erased erased v6))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Data.List.Membership.Setoid._.find"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d80 v0 v1 v2 v3 v4 v5 v6 = du80 v2 v5 v6
du80 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du80 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v5
        -> case coe v1 of
             (:) v6 v7
               -> coe
                    (MAlonzo.Code.Agda.Builtin.Sigma.C32
                       (coe v6)
                       (coe
                          (MAlonzo.Code.Agda.Builtin.Sigma.C32
                             (coe
                                (\ v8 v9 v10 -> MAlonzo.Code.Data.List.Relation.Unary.Any.C38 v10)
                                erased erased
                                (coe
                                   MAlonzo.Code.Relation.Binary.Core.d414
                                   (MAlonzo.Code.Relation.Binary.d144 (coe v0)) v6))
                             (coe v5))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v5
        -> case coe v1 of
             (:) v6 v7
               -> coe
                    (MAlonzo.Code.Data.Product.du150
                       (coe (\ v8 -> v8))
                       (coe
                          (\ v8 ->
                             MAlonzo.Code.Data.Product.du150
                               (coe
                                  (\ v9 v10 v11 ->
                                     MAlonzo.Code.Data.List.Relation.Unary.Any.C46 v11)
                                  erased erased)
                               (coe (\ v9 v10 -> v10))))
                       (coe (du80 (coe v0) (coe v7) (coe v5))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Data.List.Membership.Setoid._.lose"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du90 v5 v6 v7 v8 v9
du90 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T26
du90 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Data.List.Relation.Unary.Any.du96
         (coe (\ v5 v6 -> coe v0 v1 v5 v6 v4)) (coe v2) (coe v3))
name98 = "Data.List.Membership.Setoid.map-with-∈"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
d98 v0 v1 v2 = du98 v2
du98 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T26 -> AgdaAny) ->
  [AgdaAny]
du98 v0 = coe (\ v1 v2 v3 v4 -> du58 (coe v0) v3 v4)
