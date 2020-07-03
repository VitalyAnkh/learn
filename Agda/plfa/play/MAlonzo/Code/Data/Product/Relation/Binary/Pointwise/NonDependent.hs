{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Product.Relation.Binary.Pointwise.NonDependent where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Product.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Product

name28
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.Pointwise"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d28 = erased
name42
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-reflexive"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d42 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du42 v10 v11 v12 v13 v14
du42 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du42 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe
                v0 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
                (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3)) v5)
             (coe
                v1 (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
                (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3)) v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name56
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-refl"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d56 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du56 v8 v9 v10
du56 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du56 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe v0 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2)))
      (coe v1 (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2)))
name70
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-irreflexive₁"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d70 = erased
name86
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-irreflexive₂"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d86 = erased
name98
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-symmetric"
d98 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d98 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du98 v8 v9 v10 v11 v12
du98 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du98 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe
                v0 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
                (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3)) v5)
             (coe
                v1 (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
                (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3)) v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name112
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-transitive"
d112 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d112 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du112 v8 v9 v10 v11 v12 v13 v14
du112 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du112 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe
         v0 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v4))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v6)))
      (coe
         v1 (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v4))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v6)))
name130
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-antisymmetric"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d130 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = du130 v10 v11 v12 v13 v14 v15
du130 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du130 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
        -> case coe v5 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v8 v9
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe
                       v0 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3)) v6 v8)
                    (coe
                       v1 (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
                       (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3)) v7 v9)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name148
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-asymmetric₁"
d148 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d148 = erased
name160
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-asymmetric₂"
d160 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> MAlonzo.Code.Data.Empty.T4
d160 = erased
name176
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-respects₂"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d176 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du176 v10 v11
du176 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du176 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe du202 (coe v0) (coe v1))
      (coe du212 (coe v0) (coe v1))
name194
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._._._∼_"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d194 = erased
name196
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._._._≈_"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d196 = erased
name202
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._._.resp¹"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d202 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du202 v10 v11 v12 v13 v14 v15 v16
du202 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du202 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d28 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v4))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v6)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d28 v1
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v4))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v6)))
name212
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._._.resp²"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d212 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15 v16
  = du212 v10 v11 v12 v13 v14 v15 v16
du212 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du212 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30 v0
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v4))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v6)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30 v1
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v3))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v4))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v6)))
name222
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-total"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.Sum.Base.T30
d222 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du222 v8 v9 v10 v11 v12
du222 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.Sum.Base.T30
du222 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
               -> let v9 = coe v1 v5 v7 in
                  let v10 = coe v2 v6 v8 in
                  case coe v9 of
                    MAlonzo.Code.Data.Sum.Base.C38 v11
                      -> case coe v10 of
                           MAlonzo.Code.Data.Sum.Base.C38 v12
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C38
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v11) (coe v12))
                           MAlonzo.Code.Data.Sum.Base.C42 v12
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C42
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v5 v7 v11)
                                     (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Sum.Base.C42 v11
                      -> case coe v10 of
                           MAlonzo.Code.Data.Sum.Base.C38 v12
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C38
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0 v7 v5 v11)
                                     (coe v12))
                           MAlonzo.Code.Data.Sum.Base.C42 v12
                             -> coe
                                  MAlonzo.Code.Data.Sum.Base.C42
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v11) (coe v12))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name318
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-decidable"
d318 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T32
d318 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du318 v8 v9 v10 v11
du318 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T32
du318 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
               -> coe
                    MAlonzo.Code.Relation.Nullary.Product.du30 (coe v0 v4 v6)
                    (coe v1 v5 v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name336
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-isEquivalence"
d336 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d336 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du336 v8 v9
du336 ::
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
du336 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (coe
         du56 (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d34 (coe v1)))
      (coe
         du98 (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d36 (coe v1)))
      (coe
         du112 (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d38 (coe v1)))
name354
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-isDecEquivalence"
d354 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d354 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du354 v8 v9
du354 ::
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
du354 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C1529
      (coe
         du336 (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d50 (coe v1)))
      (coe
         du318 (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d52 (coe v1)))
name372
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-isPreorder"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d372 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du372 v10 v11
du372 ::
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du372 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         du336 (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d80 (coe v1)))
      (coe
         du42 (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d82 (coe v1)))
      (coe
         du112 (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d84 (coe v1)))
name394
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-isPartialOrder"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d394 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du394 v10 v11
du394 ::
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
du394 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C4865
      (coe
         du372 (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v1)))
      (coe
         du130 (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d128 (coe v1)))
name416
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-isStrictPartialOrder"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d416 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du416 v10 v11
du416 ::
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
du416 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C7193
      (coe
         du336 (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d234 (coe v1)))
      (coe
         du112 (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d238 (coe v1)))
      (coe
         du176 (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Structures.d240 (coe v1)))
name444
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-preorder"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d444 v0 v1 v2 v3 v4 v5 = du444 v4 v5
du444 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du444 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         du372 (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v1)))
name454
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-setoid"
d454 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d454 v0 v1 v2 v3 v4 v5 = du454 v4 v5
du454 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du454 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         du336 (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v1)))
name464
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-decSetoid"
d464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
d464 v0 v1 v2 v3 v4 v5 = du464 v4 v5
du464 ::
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
du464 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C939
      (coe
         du354 (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d100 (coe v1)))
name474
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-poset"
d474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d474 v0 v1 v2 v3 v4 v5 = du474 v4 v5
du474 ::
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
du474 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C2365
      (coe
         du394 (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d226 (coe v1)))
name484
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.×-strictPartialOrder"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d484 v0 v1 v2 v3 v4 v5 = du484 v4 v5
du484 ::
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
du484 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C4625
      (coe
         du416 (coe MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v0))
         (coe MAlonzo.Code.Relation.Binary.Bundles.d416 (coe v1)))
name494
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._._×ₛ_"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d494 v0 v1 v2 v3 = du494
du494 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du494 = coe du454
name508
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.≡×≡⇒≡"
d508 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d508 = erased
name510
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.≡⇒≡×≡"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d510 v0 v1 v2 v3 v4 v5 v6 = du510
du510 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du510 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name512
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._.Pointwise-≡↔≡"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58
d512 v0 v1 v2 v3 = du512
du512 :: MAlonzo.Code.Function.Inverse.T58
du512
  = coe
      MAlonzo.Code.Function.Inverse.C2555
      (coe MAlonzo.Code.Function.Equality.C763 (coe (\ v0 -> v0)) erased)
      (coe
         MAlonzo.Code.Function.Equality.C763 (coe (\ v0 -> v0))
         (\ v0 v1 v2 -> coe du510))
      (coe
         MAlonzo.Code.Function.Inverse.C1525
         (coe
            (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased))
         erased)
name518
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-Rel_"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d518 = erased
name520
  = "Data.Product.Relation.Binary.Pointwise.NonDependent.Rel↔≡"
d520 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58
d520 v0 v1 v2 v3 = coe du512
name522
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-reflexive_"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d522 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = coe du42 v10 v11 v12 v13 v14
name524
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-refl_"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d524 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = coe du56 v8 v9 v10
name526
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-symmetric_"
d526 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d526 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe du98 v8 v9 v10 v11 v12
name528
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-transitive_"
d528 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d528 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = coe du112 v8 v9 v10 v11 v12 v13 v14
name530
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-antisymmetric_"
d530 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d530 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14 v15
  = coe du130 v10 v11 v12 v13 v14 v15
name532
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-≈-respects₂_"
d532 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d532 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = coe du176 v10 v11
name534
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-decidable_"
d534 ::
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
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T32
d534 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = coe du318 v8 v9 v10 v11
name536
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-isEquivalence_"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d536 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = coe du336 v8 v9
name538
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-isDecEquivalence_"
d538 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T44
d538 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = coe du354 v8 v9
name540
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-isPreorder_"
d540 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d540 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = coe du372 v10 v11
name542
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-isPartialOrder_"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118 ->
  MAlonzo.Code.Relation.Binary.Structures.T118
d542 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = coe du394 v10 v11
name544
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-isStrictPartialOrder_"
d544 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222 ->
  MAlonzo.Code.Relation.Binary.Structures.T222
d544 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = coe du416 v10 v11
name546
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-preorder_"
d546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d546 v0 v1 v2 v3 v4 v5 = coe du444 v4 v5
name548
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-setoid_"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d548 v0 v1 v2 v3 v4 v5 = coe du454 v4 v5
name550
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-decSetoid_"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84 ->
  MAlonzo.Code.Relation.Binary.Bundles.T84
d550 v0 v1 v2 v3 v4 v5 = coe du464 v4 v5
name552
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-poset_"
d552 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204 ->
  MAlonzo.Code.Relation.Binary.Bundles.T204
d552 v0 v1 v2 v3 v4 v5 = coe du474 v4 v5
name554
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-strictPartialOrder_"
d554 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394 ->
  MAlonzo.Code.Relation.Binary.Bundles.T394
d554 v0 v1 v2 v3 v4 v5 = coe du484 v4 v5
name556
  = "Data.Product.Relation.Binary.Pointwise.NonDependent._×-≟_"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T32
d556 v0 v1 v2 v3 v4 v5 v6 v7
  = coe MAlonzo.Code.Data.Product.Properties.du62 v4 v5 v6 v7
name558
  = "Data.Product.Relation.Binary.Pointwise.NonDependent.≡?×≡?⇒≡?"
d558 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Relation.Nullary.T32
d558 v0 v1 v2 v3 v4 v5 v6 v7
  = coe MAlonzo.Code.Data.Product.Properties.du62 v4 v5 v6 v7
