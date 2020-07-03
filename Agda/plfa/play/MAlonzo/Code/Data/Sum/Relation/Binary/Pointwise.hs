{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum.Relation.Binary.Pointwise where

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
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

name34 = "Data.Sum.Relation.Binary.Pointwise.Pointwise"
d34 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12 a13 = ()
data T34 = C64 AgdaAny | C70 AgdaAny
name96 = "Data.Sum.Relation.Binary.Pointwise._.drop-inj₁"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> T34 -> AgdaAny
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du96 v10
du96 :: T34 -> AgdaAny
du96 v0
  = case coe v0 of
      C64 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Data.Sum.Relation.Binary.Pointwise._.drop-inj₂"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> T34 -> AgdaAny
d104 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du104 v10
du104 :: T34 -> AgdaAny
du104 v0
  = case coe v0 of
      C70 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Data.Sum.Relation.Binary.Pointwise._.⊎-refl"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Sum.Base.T30 -> T34
d108 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du108 v8 v9 v10
du108 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Data.Sum.Base.T30 -> T34
du108 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3 -> coe C64 (coe v0 v3)
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe C70 (coe v1 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name122 = "Data.Sum.Relation.Binary.Pointwise._.⊎-symmetric"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du122 v8 v9 v10 v11 v12
du122 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34
du122 v0 v1 v2 v3 v4
  = case coe v4 of
      C64 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C38 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9 -> coe C64 (coe v0 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C70 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C42 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C42 v9 -> coe C70 (coe v1 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name136 = "Data.Sum.Relation.Binary.Pointwise._.⊎-transitive"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
d136 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du136 v8 v9 v10 v11 v12 v13 v14
du136 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
du136 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      C64 v9
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C38 v10
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C38 v11
                      -> case coe v6 of
                           C64 v14
                             -> case coe v4 of
                                  MAlonzo.Code.Data.Sum.Base.C38 v15
                                    -> coe C64 (coe v0 v10 v11 v15 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C70 v9
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C42 v10
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C42 v11
                      -> case coe v6 of
                           C70 v14
                             -> case coe v4 of
                                  MAlonzo.Code.Data.Sum.Base.C42 v15
                                    -> coe C70 (coe v1 v10 v11 v15 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name154 = "Data.Sum.Relation.Binary.Pointwise._.⊎-asymmetric"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  T34 -> T34 -> MAlonzo.Code.Data.Empty.T4
d154 = erased
name178 = "Data.Sum.Relation.Binary.Pointwise._.⊎-substitutive"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Data.Sum.Base.T30 -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> AgdaAny -> AgdaAny
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du178 v9 v10 v11 v12 v13 v14
du178 ::
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  ((AgdaAny -> ()) ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Data.Sum.Base.T30 -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> AgdaAny -> AgdaAny
du178 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      C64 v8
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C38 v9
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C38 v10
                      -> coe
                           v0 (\ v11 -> coe v2 (coe MAlonzo.Code.Data.Sum.Base.C38 (coe v11)))
                           v9 v10 v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C70 v8
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C42 v9
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C42 v10
                      -> coe
                           v1 (\ v11 -> coe v2 (coe MAlonzo.Code.Data.Sum.Base.C42 (coe v11)))
                           v9 v10 v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name196 = "Data.Sum.Relation.Binary.Pointwise._.⊎-decidable"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T32
d196 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du196 v8 v9 v10 v11
du196 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T32
du196 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v4
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C38 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 (coe C64)
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
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 (coe C70)
                    (coe v1 v4 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Data.Sum.Relation.Binary.Pointwise._.⊎-reflexive"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34
d258 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du258 v12 v13 v14 v15 v16
du258 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34
du258 v0 v1 v2 v3 v4
  = case coe v4 of
      C64 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C38 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C38 v9 -> coe C64 (coe v0 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C70 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C42 v8
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C42 v9 -> coe C70 (coe v1 v8 v9 v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name272 = "Data.Sum.Relation.Binary.Pointwise._.⊎-irreflexive"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  T34 -> T34 -> MAlonzo.Code.Data.Empty.T4
d272 = erased
name290 = "Data.Sum.Relation.Binary.Pointwise._.⊎-antisymmetric"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
d290 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
  = du290 v12 v13 v14 v15 v16 v17
du290 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
du290 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C64 v8
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C38 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C38 v10
                      -> case coe v5 of
                           C64 v13 -> coe C64 (coe v0 v9 v10 v8 v13)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C70 v8
        -> case coe v2 of
             MAlonzo.Code.Data.Sum.Base.C42 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Sum.Base.C42 v10
                      -> case coe v5 of
                           C70 v13 -> coe C70 (coe v1 v9 v10 v8 v13)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name308 = "Data.Sum.Relation.Binary.Pointwise._.⊎-respectsˡ"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
d308 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
     v18
  = du308 v12 v13 v14 v15 v16 v17 v18
du308 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
du308 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      C64 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C38 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C38 v11
                      -> case coe v6 of
                           C64 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C38 v15
                                    -> coe C64 (coe v0 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C70 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C42 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C42 v11
                      -> case coe v6 of
                           C70 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C42 v15
                                    -> coe C70 (coe v1 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name326 = "Data.Sum.Relation.Binary.Pointwise._.⊎-respectsʳ"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
d326 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16 v17
     v18
  = du326 v12 v13 v14 v15 v16 v17 v18
du326 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> T34 -> T34 -> T34
du326 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      C64 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C38 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C38 v11
                      -> case coe v6 of
                           C64 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C38 v15
                                    -> coe C64 (coe v0 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C70 v9
        -> case coe v3 of
             MAlonzo.Code.Data.Sum.Base.C42 v10
               -> case coe v4 of
                    MAlonzo.Code.Data.Sum.Base.C42 v11
                      -> case coe v6 of
                           C70 v14
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Sum.Base.C42 v15
                                    -> coe C70 (coe v1 v15 v10 v11 v9 v14)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name344 = "Data.Sum.Relation.Binary.Pointwise._.⊎-respects₂"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d344 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du344 v12 v13
du344 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du344 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du326 (coe v2) (coe v4))
                    (coe du308 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name374 = "Data.Sum.Relation.Binary.Pointwise._.⊎-isEquivalence"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d374 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du374 v8 v9
du374 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du374 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (coe
         du108 (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v1)))
      (coe
         du122 (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v1)))
      (coe
         du136 (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v1)))
name384 = "Data.Sum.Relation.Binary.Pointwise._.⊎-isDecEquivalence"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d384 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du384 v8 v9
du384 ::
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du384 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe
         du374 (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1)))
      (coe
         du196 (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v1)))
name422 = "Data.Sum.Relation.Binary.Pointwise._.⊎-isPreorder"
d422 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d422 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du422 v12 v13
du422 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du422 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         du374 (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1)))
      (coe
         du258 (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v1)))
      (coe
         du136 (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v1)))
name432 = "Data.Sum.Relation.Binary.Pointwise._.⊎-isPartialOrder"
d432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d432 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du432 v12 v13
du432 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du432 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du422 (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1)))
      (coe
         du290 (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v1)))
name442
  = "Data.Sum.Relation.Binary.Pointwise._.⊎-isStrictPartialOrder"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d442 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du442 v12 v13
du442 ::
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du442 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (coe
         du374 (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v1)))
      (coe
         du136 (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v1)))
      (coe
         du344 (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)))
name464 = "Data.Sum.Relation.Binary.Pointwise._.⊎-setoid"
d464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d464 v0 v1 v2 v3 v4 v5 = du464 v4 v5
du464 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du464 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         du374 (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v1)))
name474 = "Data.Sum.Relation.Binary.Pointwise._.⊎-decSetoid"
d474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
d474 v0 v1 v2 v3 v4 v5 = du474 v4 v5
du474 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
du474 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C939
      (coe
         du384 (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v1)))
name484 = "Data.Sum.Relation.Binary.Pointwise._._⊎ₛ_"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d484 v0 v1 v2 v3 = du484
du484 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du484 = coe du464
name502 = "Data.Sum.Relation.Binary.Pointwise._.⊎-preorder"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d502 v0 v1 v2 v3 v4 v5 v6 v7 = du502 v6 v7
du502 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du502 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         du422 (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1)))
name512 = "Data.Sum.Relation.Binary.Pointwise._.⊎-poset"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d512 v0 v1 v2 v3 v4 v5 v6 v7 = du512 v6 v7
du512 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du512 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         du432 (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
name534 = "Data.Sum.Relation.Binary.Pointwise._.Pointwise-≡⇒≡"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  T34 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d534 = erased
name540 = "Data.Sum.Relation.Binary.Pointwise._.≡⇒Pointwise-≡"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 -> T34
d540 v0 v1 v2 v3 v4 v5 v6 = du540 v4
du540 :: MAlonzo.Code.Data.Sum.Base.T30 -> T34
du540 v0 = coe du108 erased erased (coe v0)
name550 = "Data.Sum.Relation.Binary.Pointwise.Pointwise-≡↔≡"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58
d550 v0 v1 v2 v3 = du550
du550 :: MAlonzo.Code.Function.Inverse.T58
du550
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe MAlonzo.Code.Function.Equality.C763 (coe (\ v0 -> v0)) erased)
      (coe
         MAlonzo.Code.Function.Equality.C763 (coe (\ v0 -> v0))
         (\ v0 v1 v2 -> coe du540 v0))
      (coe
         MAlonzo.Code.Function.Inverse.C1525
         (coe (\ v0 -> coe du108 erased erased (coe v0))) erased)
name588 = "Data.Sum.Relation.Binary.Pointwise._.₁∼₁"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny -> T34
d588 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du588
du588 :: AgdaAny -> T34
du588 = coe C64
name594 = "Data.Sum.Relation.Binary.Pointwise._.₂∼₂"
d594 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny -> T34
d594 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 = du594
du594 :: AgdaAny -> T34
du594 = coe C70
name604 = "Data.Sum.Relation.Binary.Pointwise._⊎-≟_"
d604 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T32
d604 v0 v1 v2 v3 v4 v5 v6 v7 = du604 v4 v5 v6 v7
du604 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.Sum.Base.T30 -> MAlonzo.Code.Relation.Nullary.T32
du604 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 erased
      (coe du196 (coe v0) (coe v1) (coe v2) (coe v3))
name29673 = "Data.Sum.Relation.Binary.Pointwise._..absurdlambda"
d29673 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> T34 -> MAlonzo.Code.Data.Empty.T4
d29673 = erased
name30503 = "Data.Sum.Relation.Binary.Pointwise._..absurdlambda"
d30503 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> T34 -> MAlonzo.Code.Data.Empty.T4
d30503 = erased
