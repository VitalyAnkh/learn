{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Properties.Poset where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Properties.Preorder

name110 = "Relation.Binary.Properties.Poset.invIsPartialOrder"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T256
d110 v0 v1 v2 v3 = du110 v3
du110 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T256
du110 v0
  = coe
      (MAlonzo.Code.Relation.Binary.C1639
         (coe
            (MAlonzo.Code.Relation.Binary.Properties.Preorder.d50
               (coe (MAlonzo.Code.Relation.Binary.du364 (coe v0)))))
         (coe
            (\ v1 v2 v3 v4 ->
               coe
                 MAlonzo.Code.Relation.Binary.d276
                 (MAlonzo.Code.Relation.Binary.d332 (coe v0)) v1 v2 v4 v3)))
name112 = "Relation.Binary.Properties.Poset.invPoset"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T310
d112 v0 v1 v2 v3 = du112 v3
du112 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T310
du112 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C1973 v4) erased
      erased erased (du110 (coe v0))
name114 = "Relation.Binary.Properties.Poset.strictPartialOrder"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T628
d114 v0 v1 v2 v3 = du114 v3
du114 ::
  MAlonzo.Code.Relation.Binary.T310 ->
  MAlonzo.Code.Relation.Binary.T628
du114 v0
  = coe
      (\ v1 v2 v3 v4 -> MAlonzo.Code.Relation.Binary.C4141 v4) erased
      erased erased
      (MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du312
         (coe (MAlonzo.Code.Relation.Binary.d332 (coe v0))))
