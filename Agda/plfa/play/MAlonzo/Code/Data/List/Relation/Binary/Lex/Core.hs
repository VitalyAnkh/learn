{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Binary.Lex.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Product
import qualified MAlonzo.Code.Relation.Nullary.Sum

name26 = "Data.List.Relation.Binary.Lex.Core.Lex"
d26 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T26 = C42 AgdaAny | C48 | C60 AgdaAny | C74 AgdaAny T26
name94 = "Data.List.Relation.Binary.Lex.Core._._≋_"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d94 = erased
name96 = "Data.List.Relation.Binary.Lex.Core._._<_"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> [AgdaAny] -> [AgdaAny] -> ()
d96 = erased
name106 = "Data.List.Relation.Binary.Lex.Core._.¬≤-this"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  T26 -> MAlonzo.Code.Data.Empty.T4
d106 = erased
name130 = "Data.List.Relation.Binary.Lex.Core._.¬≤-next"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (T26 -> MAlonzo.Code.Data.Empty.T4) ->
  T26 -> MAlonzo.Code.Data.Empty.T4
d130 = erased
name144 = "Data.List.Relation.Binary.Lex.Core._.transitive"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
d144 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du144 v7 v8 v9 v10 v11 v12
du144 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
du144 v0 v1 v2 v3 v4 v5
  = coe du156 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
name156 = "Data.List.Relation.Binary.Lex.Core._._.trans"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
d156 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du156 v7 v8 v9 v13 v14 v15 v16 v17
du156 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> T26 -> T26 -> T26
du156 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v6 of
      C42 v8
        -> case coe v7 of
             C42 v9 -> coe v6
             C48 -> coe C48
             _ -> MAlonzo.RTE.mazUnreachableError
      C48 -> coe seq (coe v7) (coe C48)
      C60 v12
        -> case coe v3 of
             (:) v13 v14
               -> case coe v4 of
                    (:) v15 v16
                      -> case coe v7 of
                           C60 v21
                             -> case coe v5 of
                                  (:) v22 v23 -> coe C60 (coe v2 v13 v15 v22 v12 v21)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           C74 v21 v22
                             -> case coe v5 of
                                  (:) v23 v24
                                    -> coe
                                         C60
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d28 v1 v13 v15 v23 v21
                                            v12)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C74 v12 v13
        -> case coe v3 of
             (:) v14 v15
               -> case coe v4 of
                    (:) v16 v17
                      -> case coe v7 of
                           C60 v22
                             -> case coe v5 of
                                  (:) v23 v24
                                    -> coe
                                         C60
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d30 v1 v23 v16 v14
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d36 v0 v14
                                               v16 v12)
                                            v22)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           C74 v22 v23
                             -> case coe v5 of
                                  (:) v24 v25
                                    -> coe
                                         C74
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d38 v0 v14 v16
                                            v24 v12 v22)
                                         (coe
                                            du156 (coe v0) (coe v1) (coe v2) (coe v15) (coe v17)
                                            (coe v25) (coe v13) (coe v23))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name192 = "Data.List.Relation.Binary.Lex.Core._.antisymmetric"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du192 v10 v11
du192 ::
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du192 v0 v1 = coe du204 (coe v0) (coe v1)
name204 = "Data.List.Relation.Binary.Lex.Core._._.as"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
d204 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du204 v12 v13 v14 v15
du204 ::
  [AgdaAny] ->
  [AgdaAny] ->
  T26 -> T26 -> MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52
du204 v0 v1 v2 v3
  = case coe v2 of
      C42 v4
        -> coe
             seq (coe v3)
             (coe MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C60)
      C60 v8
        -> coe
             seq (coe v3) (coe MAlonzo.Code.Data.Empty.d10 () erased erased)
      C74 v8 v9
        -> case coe v0 of
             (:) v10 v11
               -> case coe v1 of
                    (:) v12 v13
                      -> case coe v3 of
                           C60 v18 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
                           C74 v18 v19
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C74 v8
                                  (coe du204 (coe v11) (coe v13) (coe v9) (coe v19))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Data.List.Relation.Binary.Lex.Core._.respects₂"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d230 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du230 v7 v8
du230 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du230 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du250 (coe v0) (coe v2))
             (coe du268 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name250 = "Data.List.Relation.Binary.Lex.Core._._.resp¹"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 -> T26 -> T26
d250 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du250 v7 v8 v10 v11 v12 v13 v14
du250 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 -> T26 -> T26
du250 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C60 -> coe v6
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C74 v11 v12
        -> case coe v3 of
             (:) v13 v14
               -> case coe v4 of
                    (:) v15 v16
                      -> case coe v6 of
                           C48 -> coe C48
                           C60 v21
                             -> case coe v2 of
                                  (:) v22 v23 -> coe C60 (coe v1 v22 v13 v15 v11 v21)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           C74 v21 v22
                             -> case coe v2 of
                                  (:) v23 v24
                                    -> coe
                                         C74
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d38 v0 v23 v13
                                            v15 v21 v11)
                                         (coe
                                            du250 (coe v0) (coe v1) (coe v24) (coe v14) (coe v16)
                                            (coe v12) (coe v22))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Data.List.Relation.Binary.Lex.Core._._.resp²"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 -> T26 -> T26
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du268 v7 v9 v10 v11 v12 v13 v14
du268 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.T52 -> T26 -> T26
du268 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C60 -> coe v6
      MAlonzo.Code.Data.List.Relation.Binary.Pointwise.C74 v11 v12
        -> case coe v3 of
             (:) v13 v14
               -> case coe v4 of
                    (:) v15 v16
                      -> case coe v6 of
                           C60 v21
                             -> case coe v2 of
                                  (:) v22 v23 -> coe C60 (coe v1 v22 v13 v15 v11 v21)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           C74 v21 v22
                             -> case coe v2 of
                                  (:) v23 v24
                                    -> coe
                                         C74
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d38 v0 v15 v13
                                            v23
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Structures.d36 v0 v13
                                               v15 v11)
                                            v21)
                                         (coe
                                            du268 (coe v0) (coe v1) (coe v24) (coe v14) (coe v16)
                                            (coe v12) (coe v22))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Data.List.Relation.Binary.Lex.Core._.[]<[]-⇔"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Function.Equivalence.T16
d284 v0 v1 v2 v3 v4 v5 v6 = du284
du284 :: MAlonzo.Code.Function.Equivalence.T16
du284
  = coe
      MAlonzo.Code.Function.Equivalence.du56 (coe C42)
      (coe
         (\ v0 ->
            case coe v0 of
              C42 v1 -> coe v1
              _ -> MAlonzo.RTE.mazUnreachableError))
name298 = "Data.List.Relation.Binary.Lex.Core._.toSum"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> T26 -> MAlonzo.Code.Data.Sum.Base.T30
d298 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du298 v11
du298 :: T26 -> MAlonzo.Code.Data.Sum.Base.T30
du298 v0
  = case coe v0 of
      C60 v5 -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe v5)
      C74 v5 v6
        -> coe
             MAlonzo.Code.Data.Sum.Base.C42
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v5) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name314 = "Data.List.Relation.Binary.Lex.Core._.∷<∷-⇔"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Function.Equivalence.T16
d314 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du314
du314 :: MAlonzo.Code.Function.Equivalence.T16
du314
  = coe
      MAlonzo.Code.Function.Equivalence.du56
      (coe
         MAlonzo.Code.Data.Sum.Base.du52 (coe C60)
         (coe MAlonzo.Code.Data.Product.du232 (coe C74)))
      (coe du298)
name326 = "Data.List.Relation.Binary.Lex.Core._._.decidable"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d326 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du326 v7 v8 v9 v10 v11
du326 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du326 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> case coe v4 of
             []
               -> coe MAlonzo.Code.Relation.Nullary.Decidable.du14 (coe du284) v0
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
                    (coe MAlonzo.Code.Relation.Nullary.C22 (coe C48))
             _ -> MAlonzo.RTE.mazUnreachableError
      (:) v5 v6
        -> case coe v4 of
             []
               -> coe
                    MAlonzo.Code.Relation.Nullary.C46
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
                    (coe MAlonzo.Code.Relation.Nullary.C26)
             (:) v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.du14 (coe du314)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Sum.du32 (coe v2 v5 v7)
                       (coe
                          MAlonzo.Code.Relation.Nullary.Product.du30 (coe v1 v5 v7)
                          (coe du326 (coe v0) (coe v1) (coe v2) (coe v6) (coe v8))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name97373 = "Data.List.Relation.Binary.Lex.Core._._..absurdlambda"
d97373 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> [AgdaAny] -> T26 -> MAlonzo.Code.Data.Empty.T4
d97373 = erased
