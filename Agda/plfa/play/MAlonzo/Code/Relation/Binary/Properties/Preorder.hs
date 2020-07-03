{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Properties.Preorder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name64 = "Relation.Binary.Properties.Preorder.invIsPreorder"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d64 v0 v1 v2 v3 = du64 v3
du64 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d80
         (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d82
              (MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)) v2 v1
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d36
                 (MAlonzo.Code.Relation.Binary.Structures.d80
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)))
                 v1 v2 v3)))
      (coe
         (\ v1 v2 v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d84
              (MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)) v3 v2 v1 v5
              v4))
name66 = "Relation.Binary.Properties.Preorder.invPreorder"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d66 v0 v1 v2 v3 = du66 v3
du66 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509 (coe du64 (coe v0))
name68 = "Relation.Binary.Properties.Preorder.InducedEquivalence"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d68 v0 v1 v2 v3 = du68 v3
du68 ::
  MAlonzo.Code.Relation.Binary.Bundles.T132 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du68 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C483
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C32
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.du98
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)) (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.du98
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0))
                    (coe v1))))
         (coe (\ v1 v2 -> coe MAlonzo.Code.Data.Product.du250))
         (coe
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Data.Product.du186
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d84
                    (MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)) v1 v2 v3)
                 (coe
                    (\ v4 v5 v6 v7 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Structures.d84
                         (MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v0)) v3 v2 v1 v7
                         v6)))))
