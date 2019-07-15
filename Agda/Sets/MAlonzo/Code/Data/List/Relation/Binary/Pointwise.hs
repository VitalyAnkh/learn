{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Pointwise where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Properties
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Nullary

name50 = "Data.List.Relation.Binary.Pointwise.Pointwise"
d50 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T50 = C58 | C72 AgdaAny T50
name94 = "Data.List.Relation.Binary.Pointwise._.head"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> [AgdaAny] -> T50 -> AgdaAny
d94 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du94 v10
du94 :: T50 -> AgdaAny
du94 v0
  = case coe v0 of
      C72 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Data.List.Relation.Binary.Pointwise._.tail"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> [AgdaAny] -> [AgdaAny] -> T50 -> T50
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du108 v10
du108 :: T50 -> T50
du108 v0
  = case coe v0 of
      C72 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
name138 = "Data.List.Relation.Binary.Pointwise._.rec"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  ([AgdaAny] -> [AgdaAny] -> T50 -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   [AgdaAny] -> [AgdaAny] -> T50 -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny] -> T50 -> AgdaAny
d138 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du138 v8 v9 v10 v11 v12
du138 ::
  (AgdaAny ->
   AgdaAny ->
   [AgdaAny] -> [AgdaAny] -> T50 -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny] -> T50 -> AgdaAny
du138 v0 v1 v2 v3 v4
  = case coe v4 of
      C58 -> coe v1
      C72 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> coe
                           v0 v11 v13 v12 v14 v10 v9
                           (du138 (coe v0) (coe v1) (coe v12) (coe v14) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Data.List.Relation.Binary.Pointwise._.map"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
d158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du158 v8 v9 v10 v11
du158 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
du158 v0 v1 v2 v3
  = case coe v3 of
      C58 -> coe v3
      C72 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> coe
                           (\ v14 v15 v16 v17 v18 v19 -> C72 v18 v19) erased erased erased
                           erased (coe v0 v10 v12 v8)
                           (du158 (coe v0) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name172 = "Data.List.Relation.Binary.Pointwise.reflexive"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
d172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du172 v8 v9 v10 v11
du172 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
du172 v0 v1 v2 v3
  = case coe v3 of
      C58 -> coe v3
      C72 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> coe
                           (\ v14 v15 v16 v17 v18 v19 -> C72 v18 v19) erased erased erased
                           erased (coe v0 v10 v12 v8)
                           (du172 (coe v0) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name184 = "Data.List.Relation.Binary.Pointwise.refl"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> T50
d184 v0 v1 v2 v3 v4 v5 = du184 v4 v5
du184 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> T50
du184 v0 v1
  = case coe v1 of
      [] -> coe C58
      (:) v2 v3
        -> coe
             (\ v4 v5 v6 v7 v8 v9 -> C72 v8 v9) erased erased erased erased
             (coe v0 v2) (du184 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name198 = "Data.List.Relation.Binary.Pointwise.symmetric"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
d198 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du198 v8 v9 v10 v11
du198 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
du198 v0 v1 v2 v3
  = case coe v3 of
      C58 -> coe v3
      C72 v8 v9
        -> case coe v1 of
             (:) v10 v11
               -> case coe v2 of
                    (:) v12 v13
                      -> coe
                           (\ v14 v15 v16 v17 v18 v19 -> C72 v18 v19) erased erased erased
                           erased (coe v0 v10 v12 v8)
                           (du198 (coe v0) (coe v11) (coe v13) (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Data.List.Relation.Binary.Pointwise.transitive"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
d214 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du214 v12 v13 v14 v15 v16 v17
du214 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
du214 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C58 -> coe (seq (coe v5) (coe v4))
      C72 v10 v11
        -> case coe v5 of
             C72 v16 v17
               -> case coe v1 of
                    (:) v18 v19
                      -> case coe v2 of
                           (:) v20 v21
                             -> case coe v3 of
                                  (:) v22 v23
                                    -> coe
                                         (\ v24 v25 v26 v27 v28 v29 -> C72 v28 v29) erased erased
                                         erased erased (coe v0 v18 v20 v22 v10 v16)
                                         (du214
                                            (coe v0) (coe v19) (coe v21) (coe v23) (coe v11)
                                            (coe v17))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name234 = "Data.List.Relation.Binary.Pointwise.antisymmetric"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
d234 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du234 v10 v11 v12 v13 v14
du234 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
du234 v0 v1 v2 v3 v4
  = case coe v3 of
      C58 -> coe (seq (coe v4) (coe v3))
      C72 v9 v10
        -> case coe v4 of
             C72 v15 v16
               -> case coe v1 of
                    (:) v17 v18
                      -> case coe v2 of
                           (:) v19 v20
                             -> coe
                                  (\ v21 v22 v23 v24 v25 v26 -> C72 v25 v26) erased erased erased
                                  erased (coe v0 v17 v19 v9 v15)
                                  (du234 (coe v0) (coe v18) (coe v20) (coe v10) (coe v16))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name252 = "Data.List.Relation.Binary.Pointwise.respects₂"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d252 v0 v1 v2 v3 v4 v5 v6 = du252 v6
du252 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du252 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe (du264 (coe v0))) (coe (du274 (coe v0))))
name264 = "Data.List.Relation.Binary.Pointwise._.respʳ"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
d264 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du264 v6 v7 v8 v9 v10 v11
du264 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
du264 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C58 -> coe (seq (coe v5) (coe v4))
      C72 v10 v11
        -> case coe v5 of
             C72 v16 v17
               -> case coe v1 of
                    (:) v18 v19
                      -> case coe v2 of
                           (:) v20 v21
                             -> case coe v3 of
                                  (:) v22 v23
                                    -> coe
                                         (\ v24 v25 v26 v27 v28 v29 -> C72 v28 v29) erased erased
                                         erased erased
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d28 v0 v18 v20 v22 v10
                                            v16)
                                         (du264
                                            (coe v0) (coe v19) (coe v21) (coe v23) (coe v11)
                                            (coe v17))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name274 = "Data.List.Relation.Binary.Pointwise._.respˡ"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
d274 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du274 v6 v7 v8 v9 v10 v11
du274 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
du274 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C58 -> coe (seq (coe v5) (coe v4))
      C72 v10 v11
        -> case coe v5 of
             C72 v16 v17
               -> case coe v1 of
                    (:) v18 v19
                      -> case coe v2 of
                           (:) v20 v21
                             -> case coe v3 of
                                  (:) v22 v23
                                    -> coe
                                         (\ v24 v25 v26 v27 v28 v29 -> C72 v28 v29) erased erased
                                         erased erased
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d30 v0 v18 v20 v22 v10
                                            v16)
                                         (du274
                                            (coe v0) (coe v19) (coe v21) (coe v23) (coe v11)
                                            (coe v17))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Data.List.Relation.Binary.Pointwise.decidable"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
d286 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du286 v6 v7 v8
du286 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
du286 v0 v1 v2
  = case coe v1 of
      []
        -> case coe v2 of
             [] -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe C58))
             (:) v3 v4 -> coe (\ v5 -> MAlonzo.Code.Relation.Nullary.C26) erased
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v2 of
             [] -> coe (\ v5 -> MAlonzo.Code.Relation.Nullary.C26) erased
             (:) v5 v6
               -> let v7 = coe v0 v3 v5 in
                  case coe v7 of
                    MAlonzo.Code.Relation.Nullary.C22 v8
                      -> let v9 = du286 (coe v0) (coe v4) (coe v6) in
                         case coe v9 of
                           MAlonzo.Code.Relation.Nullary.C22 v10
                             -> coe
                                  (MAlonzo.Code.Relation.Nullary.C22
                                     (coe
                                        (\ v11 v12 v13 v14 v15 v16 -> C72 v15 v16) erased erased
                                        erased erased v8 v10))
                           MAlonzo.Code.Relation.Nullary.C26
                             -> coe (\ v11 -> MAlonzo.Code.Relation.Nullary.C26) erased
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Relation.Nullary.C26
                      -> coe (\ v9 -> MAlonzo.Code.Relation.Nullary.C26) erased
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name382 = "Data.List.Relation.Binary.Pointwise._.isEquivalence"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Relation.Binary.Core.T402
d382 v0 v1 v2 v3 v4 = du382 v4
du382 ::
  MAlonzo.Code.Relation.Binary.Core.T402 ->
  MAlonzo.Code.Relation.Binary.Core.T402
du382 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Core.C5081
         (coe
            (du184 (coe (MAlonzo.Code.Relation.Binary.Core.d414 (coe v0)))))
         (coe
            (du198 (coe (MAlonzo.Code.Relation.Binary.Core.d416 (coe v0)))))
         (coe
            (du214 (coe (MAlonzo.Code.Relation.Binary.Core.d418 (coe v0))))))
name400 = "Data.List.Relation.Binary.Pointwise._.isDecEquivalence"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T174 ->
  MAlonzo.Code.Relation.Binary.T174
d400 v0 v1 v2 v3 v4 = du400 v4
du400 ::
  MAlonzo.Code.Relation.Binary.T174 ->
  MAlonzo.Code.Relation.Binary.T174
du400 v0
  = coe
      (MAlonzo.Code.Relation.Binary.C1313
         (coe (du382 (coe (MAlonzo.Code.Relation.Binary.d188 (coe v0)))))
         (coe (du286 (coe (MAlonzo.Code.Relation.Binary.d190 (coe v0))))))
name436 = "Data.List.Relation.Binary.Pointwise._.isPreorder"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T16 ->
  MAlonzo.Code.Relation.Binary.T16
d436 v0 v1 v2 v3 v4 v5 v6 = du436 v6
du436 ::
  MAlonzo.Code.Relation.Binary.T16 ->
  MAlonzo.Code.Relation.Binary.T16
du436 v0
  = coe
      (MAlonzo.Code.Relation.Binary.C17
         (coe (du382 (coe (MAlonzo.Code.Relation.Binary.d36 (coe v0)))))
         (coe (du172 (coe (MAlonzo.Code.Relation.Binary.d38 (coe v0)))))
         (coe (du214 (coe (MAlonzo.Code.Relation.Binary.d40 (coe v0))))))
name470 = "Data.List.Relation.Binary.Pointwise._.isPartialOrder"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T256
d470 v0 v1 v2 v3 v4 v5 v6 = du470 v6
du470 ::
  MAlonzo.Code.Relation.Binary.T256 ->
  MAlonzo.Code.Relation.Binary.T256
du470 v0
  = coe
      (MAlonzo.Code.Relation.Binary.C1639
         (coe (du436 (coe (MAlonzo.Code.Relation.Binary.d274 (coe v0)))))
         (coe (du234 (coe (MAlonzo.Code.Relation.Binary.d276 (coe v0))))))
name508 = "Data.List.Relation.Binary.Pointwise.setoid"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128
d508 v0 v1 v2 = du508 v2
du508 ::
  MAlonzo.Code.Relation.Binary.T128 ->
  MAlonzo.Code.Relation.Binary.T128
du508 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1037 v3) erased erased
      (du382 (coe (MAlonzo.Code.Relation.Binary.d144 (coe v0))))
name512 = "Data.List.Relation.Binary.Pointwise.decSetoid"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T206 ->
  MAlonzo.Code.Relation.Binary.T206
d512 v0 v1 v2 = du512 v2
du512 ::
  MAlonzo.Code.Relation.Binary.T206 ->
  MAlonzo.Code.Relation.Binary.T206
du512 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.C1455 v3) erased erased
      (du400 (coe (MAlonzo.Code.Relation.Binary.d222 (coe v0))))
name516 = "Data.List.Relation.Binary.Pointwise.preorder"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T74 ->
  MAlonzo.Code.Relation.Binary.T74
d516 v0 v1 v2 v3 = du516 v3
du516 ::
  MAlonzo.Code.Relation.Binary.T74 ->
  MAlonzo.Code.Relation.Binary.T74
du516 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C807 v4) erased
      erased erased
      (du436 (coe (MAlonzo.Code.Relation.Binary.d96 (coe v0))))
name520 = "Data.List.Relation.Binary.Pointwise.poset"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T310
d520 v0 v1 v2 v3 = du520 v3
du520 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T310
du520 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1973 v4) erased
      erased erased
      (du470 (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0))))
name540 = "Data.List.Relation.Binary.Pointwise._.Pointwise-length"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] -> T50 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d540 = erased
name566 = "Data.List.Relation.Binary.Pointwise._.tabulate⁺"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T50
d566 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du566 v6 v9
du566 ::
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T50
du566 v0 v1
  = case coe v0 of
      0 -> coe C58
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 v4 v5 v6 v7 v8 -> C72 v7 v8) erased erased erased erased
             (coe v1 (coe (\ v3 -> MAlonzo.Code.Data.Fin.Base.C10) erased))
             (du566
                (coe v2)
                (coe
                   (\ v3 ->
                      coe
                        v1
                        (coe (\ v4 v5 -> MAlonzo.Code.Data.Fin.Base.C16 v5) erased v3))))
name582 = "Data.List.Relation.Binary.Pointwise._.tabulate⁻"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) ->
  T50 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d582 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du582 v9 v10
du582 :: T50 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du582 v0 v1
  = case coe v0 of
      C72 v6 v7
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v6
             MAlonzo.Code.Data.Fin.Base.C16 v9 -> coe (du582 (coe v7) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name618 = "Data.List.Relation.Binary.Pointwise._.++⁺"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
d618 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du618 v6 v7 v10 v11
du618 :: [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
du618 v0 v1 v2 v3
  = case coe v2 of
      C58 -> coe v3
      C72 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> coe
                           (\ v14 v15 v16 v17 v18 v19 -> C72 v18 v19) erased erased erased
                           erased v8 (du618 (coe v11) (coe v13) (coe v9) (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name644 = "Data.List.Relation.Binary.Pointwise._.++-cancelˡ"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50
d644 v0 v1 v2 v3 v4 v5 v6 v7 = du644 v4 v7
du644 :: [AgdaAny] -> T50 -> T50
du644 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v1 of
             C72 v8 v9 -> coe (du644 (coe v3) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name660 = "Data.List.Relation.Binary.Pointwise._.++-cancelʳ"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50
d660 v0 v1 v2 v3 v4 v5 v6 v7 = du660 v5 v6 v7
du660 :: [AgdaAny] -> [AgdaAny] -> T50 -> T50
du660 v0 v1 v2
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe C58
             (:) v3 v4 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             (:) v5 v6
               -> case coe v2 of
                    C72 v11 v12
                      -> coe
                           (\ v13 v14 v15 v16 v17 v18 -> C72 v17 v18) erased erased erased
                           erased v11 (du660 (coe v4) (coe v6) (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name706 = "Data.List.Relation.Binary.Pointwise._.concat⁺"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [[AgdaAny]] -> [[AgdaAny]] -> T50 -> T50
d706 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du706 v6 v7 v8
du706 :: [[AgdaAny]] -> [[AgdaAny]] -> T50 -> T50
du706 v0 v1 v2
  = case coe v2 of
      C58 -> coe v2
      C72 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           (du618
                              (coe v9) (coe v11) (coe v7)
                              (coe (du706 (coe v10) (coe v12) (coe v8))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name732 = "Data.List.Relation.Binary.Pointwise._.reverseAcc⁺"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
d732 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du732 v6 v7 v10 v11
du732 :: [AgdaAny] -> [AgdaAny] -> T50 -> T50 -> T50
du732 v0 v1 v2 v3
  = case coe v3 of
      C58 -> coe v2
      C72 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> coe
                           (du732
                              (coe v11) (coe v13)
                              (coe
                                 (\ v14 v15 v16 v17 v18 v19 -> C72 v18 v19) erased erased erased
                                 erased v8 v2)
                              (coe v9))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name746 = "Data.List.Relation.Binary.Pointwise._.reverse⁺"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> T50 -> T50
d746 v0 v1 v2 v3 v4 v5 v6 v7 = du746 v6 v7
du746 :: [AgdaAny] -> [AgdaAny] -> T50 -> T50
du746 v0 v1 = coe (du732 (coe v0) (coe v1) (coe C58))
name772 = "Data.List.Relation.Binary.Pointwise._.map⁺"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T50 -> T50
d772 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du772 v10 v11 v14
du772 :: [AgdaAny] -> [AgdaAny] -> T50 -> T50
du772 v0 v1 v2
  = case coe v2 of
      C58 -> coe v2
      C72 v7 v8
        -> case coe v0 of
             (:) v9 v10
               -> case coe v1 of
                    (:) v11 v12
                      -> coe
                           (\ v13 v14 v15 v16 v17 v18 -> C72 v17 v18) erased erased erased
                           erased v7 (du772 (coe v10) (coe v12) (coe v8))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name798 = "Data.List.Relation.Binary.Pointwise._.map⁻"
d798 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T50 -> T50
d798 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du798 v10 v11 v14
du798 :: [AgdaAny] -> [AgdaAny] -> T50 -> T50
du798 v0 v1 v2
  = case coe v0 of
      []
        -> case coe v1 of
             [] -> coe (seq (coe v2) (coe C58))
             (:) v3 v4 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v3 v4
        -> case coe v1 of
             [] -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
             (:) v5 v6
               -> case coe v2 of
                    C72 v11 v12
                      -> coe
                           (\ v13 v14 v15 v16 v17 v18 -> C72 v17 v18) erased erased erased
                           erased v11 (du798 (coe v4) (coe v6) (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name880 = "Data.List.Relation.Binary.Pointwise._.filter⁺"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
d880 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du880 v10 v11 v14 v15 v16
du880 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> T50 -> T50
du880 v0 v1 v2 v3 v4
  = case coe v4 of
      C58 -> coe v4
      C72 v9 v10
        -> case coe v2 of
             (:) v11 v12
               -> case coe v3 of
                    (:) v13 v14
                      -> let v15 = coe v0 v11 in
                         let v16 = coe v1 v13 in
                         case coe v15 of
                           MAlonzo.Code.Relation.Nullary.C22 v17
                             -> case coe v16 of
                                  MAlonzo.Code.Relation.Nullary.C22 v18
                                    -> coe
                                         (\ v19 v20 v21 v22 v23 v24 -> C72 v23 v24) erased erased
                                         erased erased v9
                                         (du880 (coe v0) (coe v1) (coe v12) (coe v14) (coe v10))
                                  MAlonzo.Code.Relation.Nullary.C26
                                    -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           MAlonzo.Code.Relation.Nullary.C26
                             -> case coe v16 of
                                  MAlonzo.Code.Relation.Nullary.C22 v18
                                    -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
                                  MAlonzo.Code.Relation.Nullary.C26
                                    -> coe (du880 (coe v0) (coe v1) (coe v12) (coe v14) (coe v10))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name960 = "Data.List.Relation.Binary.Pointwise._.replicate⁺"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> Integer -> T50
d960 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du960 v8 v9
du960 :: AgdaAny -> Integer -> T50
du960 v0 v1
  = case coe v1 of
      0 -> coe C58
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (\ v3 v4 v5 v6 v7 v8 -> C72 v7 v8) erased erased erased erased v0
             (du960 (coe v0) (coe v2))
name980 = "Data.List.Relation.Binary.Pointwise._.irrelevant"
d980 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  [AgdaAny] ->
  [AgdaAny] -> T50 -> T50 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d980 = erased
name994 = "Data.List.Relation.Binary.Pointwise.Pointwise-≡⇒≡"
d994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> T50 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d994 = erased
name1004 = "Data.List.Relation.Binary.Pointwise.≡⇒Pointwise-≡"
d1004 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T50
d1004 v0 v1 v2 v3 v4 = du1004 v2
du1004 :: [AgdaAny] -> T50
du1004 v0 = coe (du184 erased (coe v0))
name1006 = "Data.List.Relation.Binary.Pointwise.Pointwise-≡↔≡"
d1006 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d1006 v0 v1 = du1006
du1006 :: MAlonzo.Code.Function.Inverse.T58
du1006
  = coe
      (MAlonzo.Code.Function.Inverse.C309
         (coe
            (MAlonzo.Code.Function.Equality.C19 (coe (\ v0 -> v0)) erased))
         (coe
            (MAlonzo.Code.Function.Equality.C19
               (coe (\ v0 -> v0)) (coe (\ v0 v1 v2 -> du1004 v0))))
         (coe
            (MAlonzo.Code.Function.Inverse.C125
               (coe (\ v0 -> du184 erased (coe v0))) erased)))
name1012 = "Data.List.Relation.Binary.Pointwise.Rel"
d1012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d1012 = erased
name1014 = "Data.List.Relation.Binary.Pointwise.Rel≡⇒≡"
d1014 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> T50 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d1014 = erased
name1016 = "Data.List.Relation.Binary.Pointwise.≡⇒Rel≡"
d1016 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> T50
d1016 = coe d1004
name1018 = "Data.List.Relation.Binary.Pointwise.Rel↔≡"
d1018 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d1018 = coe d1006
name1020 = "Data.List.Relation.Binary.Pointwise.decidable-≡"
d1020 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T14
d1020 = coe MAlonzo.Code.Data.List.Properties.d48
name29993 = "Data.List.Relation.Binary.Pointwise..absurdlambda"
d29993 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> [AgdaAny] -> T50 -> MAlonzo.Code.Data.Empty.T4
d29993 = erased
name30463 = "Data.List.Relation.Binary.Pointwise..absurdlambda"
d30463 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  AgdaAny -> [AgdaAny] -> T50 -> MAlonzo.Code.Data.Empty.T4
d30463 = erased
name53597 = "Data.List.Relation.Binary.Pointwise._..absurdlambda"
d53597 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T50 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d53597 = erased
name54109 = "Data.List.Relation.Binary.Pointwise._..absurdlambda"
d54109 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  T50 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Data.Empty.T4
d54109 = erased
