{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Injection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality
import qualified MAlonzo.Code.Relation.Binary.Structures

name16 = "Function.Injection.Injective"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Function.Equality.T16 -> ()
d16 = erased
name88 = "Function.Injection.Injection"
d88 a0 a1 a2 a3 a4 a5 = ()
data T88
  = C1975 MAlonzo.Code.Function.Equality.T16
          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name106 = "Function.Injection.Injection.to"
d106 :: T88 -> MAlonzo.Code.Function.Equality.T16
d106 v0
  = case coe v0 of
      C1975 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Function.Injection.Injection.injective"
d108 :: T88 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0
  = case coe v0 of
      C1975 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name112 = "Function.Injection.Injection._._⟨$⟩_"
d112 :: T88 -> AgdaAny -> AgdaAny
d112 v0
  = coe MAlonzo.Code.Function.Equality.d38 (coe d106 (coe v0))
name114 = "Function.Injection.Injection._.cong"
d114 :: T88 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0
  = coe MAlonzo.Code.Function.Equality.d40 (coe d106 (coe v0))
name120 = "Function.Injection._↣_"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d120 = erased
name140 = "Function.Injection.injection"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  T88
d140 v0 v1 v2 v3 v4 v5 = du140 v4 v5
du140 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  T88
du140 v0 v1
  = coe
      C1975
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.du68
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.C501
            (coe
               MAlonzo.Code.Relation.Binary.Structures.C483 erased erased erased))
         v0)
      (coe v1)
name152 = "Function.Injection.id"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T88
d152 v0 v1 v2 = du152
du152 :: T88
du152
  = coe
      C1975 (coe MAlonzo.Code.Function.Equality.du62)
      (coe (\ v0 v1 v2 -> v2))
name172 = "Function.Injection._∘_"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44 -> T88 -> T88 -> T88
d172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du172 v9 v10
du172 :: T88 -> T88 -> T88
du172 v0 v1
  = coe
      C1975
      (coe
         MAlonzo.Code.Function.Equality.du82 (coe d106 (coe v0))
         (coe d106 (coe v1)))
      (coe
         (\ v2 v3 v4 ->
            coe
              d108 v1 v2 v3
              (coe
                 d108 v0 (coe MAlonzo.Code.Function.Equality.d38 (d106 (coe v1)) v2)
                 (coe MAlonzo.Code.Function.Equality.d38 (d106 (coe v1)) v3) v4)))
