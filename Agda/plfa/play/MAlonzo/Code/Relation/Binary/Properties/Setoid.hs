{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Properties.Setoid where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

name18 = "Relation.Binary.Properties.Setoid._._≉_"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny -> AgdaAny -> ()
d18 = erased
name36 = "Relation.Binary.Properties.Setoid.isPreorder"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d36 v0 v1 v2 = du36 v2
du36 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
du36 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du242)
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du40
           (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v1)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d38
         (coe MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)))
name38 = "Relation.Binary.Properties.Setoid.preorder"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d38 v0 v1 v2 = du38 v2
du38 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
du38 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509 (coe du36 (coe v0))
name40 = "Relation.Binary.Properties.Setoid.≉-sym"
d40 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d40 = erased
name44 = "Relation.Binary.Properties.Setoid.≉-respˡ"
d44 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d44 = erased
name50 = "Relation.Binary.Properties.Setoid.≉-respʳ"
d50 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> MAlonzo.Code.Data.Empty.T4
d50 = erased
name58 = "Relation.Binary.Properties.Setoid.≉-resp₂"
d58 ::
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d58 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe
         (\ v1 v2 v3 v4 v5 v6 ->
            coe
              v5
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d38
                 (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v1 v3 v2 v6
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d36
                    (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v2 v3 v4))))
      (coe
         (\ v1 v2 v3 v4 v5 v6 ->
            coe
              v5
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d38
                 (MAlonzo.Code.Relation.Binary.Bundles.d60 (coe v0)) v2 v3 v1 v4
                 v6)))
