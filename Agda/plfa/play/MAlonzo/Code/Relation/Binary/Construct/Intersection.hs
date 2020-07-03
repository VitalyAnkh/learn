{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Construct.Intersection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Product

name20 = "Relation.Binary.Construct.Intersection._∩_"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d20 = erased
name46 = "Relation.Binary.Construct.Intersection._.reflexive"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d46 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du46 v6 v7 v8
du46 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du46 v0 v1 v2
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v2) (coe v1 v2)
name52 = "Relation.Binary.Construct.Intersection._.symmetric"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du52 v6 v7 v8 v9
du52 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du52 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.du148 (coe v0 v2 v3)
      (coe (\ v4 -> coe v1 v2 v3))
name58 = "Relation.Binary.Construct.Intersection._.transitive"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d58 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du58 v6 v7 v8 v9 v10
du58 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du58 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Product.du186 (coe v0 v2 v3 v4)
      (coe (\ v5 v6 -> coe v1 v2 v3 v4))
name68 = "Relation.Binary.Construct.Intersection._.respects"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny -> AgdaAny
d68 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du68 v8 v9 v10 v11
du68 ::
  MAlonzo.Code.Data.Sum.Base.T30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny -> AgdaAny
du68 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
        -> coe
             MAlonzo.Code.Data.Sum.Base.du52 (coe (\ v6 -> coe v6 v1 v2 v4))
             (coe (\ v6 -> coe v6 v1 v2 v5)) (coe v0)
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Relation.Binary.Construct.Intersection._.min"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d84 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du84 v7 v8
du84 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du84 v0 v1 = coe MAlonzo.Code.Data.Product.du132 (coe v0) (coe v1)
name92 = "Relation.Binary.Construct.Intersection._.max"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d92 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du92 v7 v8
du92 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du92 v0 v1 = coe MAlonzo.Code.Data.Product.du132 (coe v0) (coe v1)
name122 = "Relation.Binary.Construct.Intersection._.implies"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d122 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du122 v10 v11 v12 v13
du122 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du122 v0 v1 v2 v3
  = coe MAlonzo.Code.Data.Product.du132 (coe v0 v2 v3) (coe v1 v2 v3)
name152 = "Relation.Binary.Construct.Intersection._.irreflexive"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d152 = erased
name186 = "Relation.Binary.Construct.Intersection._.respectsˡ"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d186 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du186 v8 v9 v10 v11 v12 v13
du186 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du186 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.Product.du148 (coe v0 v2 v3 v4 v5)
      (coe (\ v6 -> coe v1 v2 v3 v4 v5))
name194 = "Relation.Binary.Construct.Intersection._.respectsʳ"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d194 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du194 v8 v9 v10 v11 v12 v13
du194 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du194 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.Product.du148 (coe v0 v2 v3 v4 v5)
      (coe (\ v6 -> coe v1 v2 v3 v4 v5))
name202 = "Relation.Binary.Construct.Intersection._.respects₂"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d202 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du202 v8 v9
du202 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du202 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du194 (coe v2) (coe v4))
                    (coe du186 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Relation.Binary.Construct.Intersection._.antisymmetric"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d212 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du212 v8 v9 v10 v11 v12
du212 ::
  MAlonzo.Code.Data.Sum.Base.T30 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du212 v0 v1 v2 v3 v4
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C38 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9 -> coe v5 v1 v2 v6 v8
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
               -> case coe v4 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9 -> coe v5 v1 v2 v7 v9
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name246 = "Relation.Binary.Construct.Intersection._.decidable"
d246 ::
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
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
d246 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du246 v8 v9 v10 v11
du246 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32
du246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Product.du30 (coe v0 v2 v3)
      (coe v1 v2 v3)
name272 = "Relation.Binary.Construct.Intersection._.isEquivalence"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d272 v0 v1 v2 v3 v4 v5 v6 v7 = du272 v6 v7
du272 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du272 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (coe
         du46 (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v1)))
      (coe
         du52 (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v1)))
      (coe
         du58 (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v1)))
name306
  = "Relation.Binary.Construct.Intersection._.isDecEquivalence"
d306 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d306 v0 v1 v2 v3 v4 v5 v6 v7 = du306 v6 v7
du306 ::
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du306 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe
         du272 (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1)))
      (coe
         du246 (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v1)))
name368 = "Relation.Binary.Construct.Intersection._.isPreorder"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d368 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du368 v8 v9
du368 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du368 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0))
      (coe
         du122 (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v1)))
      (coe
         du58 (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v1)))
name434
  = "Relation.Binary.Construct.Intersection._.isPartialOrderˡ"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d434 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du434 v8 v9
du434 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du434 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du368 (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0))
         (coe v1))
      (coe
         du212
         (coe
            MAlonzo.Code.Data.Sum.Base.C38
            (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v0))))
name504
  = "Relation.Binary.Construct.Intersection._.isPartialOrderʳ"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d504 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du504 v8 v9
du504 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du504 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du368 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1)))
      (coe
         du212
         (coe
            MAlonzo.Code.Data.Sum.Base.C42
            (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v1))))
name574
  = "Relation.Binary.Construct.Intersection._.isStrictPartialOrderˡ"
d574 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d574 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du574 v8 v9 v10
du574 ::
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du574 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0))
      (coe
         du58 (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v0))
         (coe v1))
      (coe
         du202 (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v0))
         (coe v2))
name616
  = "Relation.Binary.Construct.Intersection._.isStrictPartialOrderʳ"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d616 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du616 v8 v9 v10
du616 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du616 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (MAlonzo.Code.Relation.Binary.Structures.d234 (coe v2))
      (coe
         du58 (coe v0)
         (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v2)))
      (coe
         du202 (coe v1)
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v2)))
