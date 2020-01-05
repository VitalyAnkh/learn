{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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

name52 = "Relation.Binary.Properties.Preorder.invIsPreorder"
d52 ::
  MAlonzo.Code.Relation.Binary.Bundles.T128 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d52 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Structures.C753
         (coe
            (MAlonzo.Code.Relation.Binary.Structures.d80
               (coe (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0)))))
         (coe
            (\ v1 v2 v3 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d82
                 (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0)) v2 v1
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d36
                    (MAlonzo.Code.Relation.Binary.Structures.d80
                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0))))
                    v1 v2 v3)))
         (coe
            (\ v1 v2 v3 v4 v5 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.d84
                 (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0)) v3 v2 v1 v5
                 v4)))
name54 = "Relation.Binary.Properties.Preorder.invPreorder"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T128 ->
  MAlonzo.Code.Relation.Binary.Bundles.T128
d54 v0 v1 v2 v3 = du54 v3
du54 ::
  MAlonzo.Code.Relation.Binary.Bundles.T128 ->
  MAlonzo.Code.Relation.Binary.Bundles.T128
du54 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.Bundles.C563 v4)
      erased erased erased (d52 (coe v0))
name56 = "Relation.Binary.Properties.Preorder.InducedEquivalence"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T128 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d56 v0 v1 v2 v3 = du56 v3
du56 ::
  MAlonzo.Code.Relation.Binary.Bundles.T128 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
du56 v0
  = coe
      (\ v1 v2 v3 -> MAlonzo.Code.Relation.Binary.Bundles.C163 v3) erased
      erased
      (MAlonzo.Code.Relation.Binary.Structures.C97
         (coe
            (\ v1 ->
               MAlonzo.Code.Agda.Builtin.Sigma.C32
                 (coe
                    (MAlonzo.Code.Relation.Binary.Structures.du98
                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0)))
                       (coe v1)))
                 (coe
                    (MAlonzo.Code.Relation.Binary.Structures.du98
                       (coe (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0)))
                       (coe v1)))))
         (coe (\ v1 v2 -> MAlonzo.Code.Data.Product.du252))
         (coe
            (\ v1 v2 v3 ->
               MAlonzo.Code.Data.Product.du188
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d84
                    (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0)) v1 v2 v3)
                 (coe
                    (\ v4 v5 v6 v7 ->
                       coe
                         MAlonzo.Code.Relation.Binary.Structures.d84
                         (MAlonzo.Code.Relation.Binary.Bundles.d150 (coe v0)) v3 v2 v1 v7
                         v6)))))
