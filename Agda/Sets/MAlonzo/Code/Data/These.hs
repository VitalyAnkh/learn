{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.These where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.These.Base

name12 = "Data.These.fromThis"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d12 v0 v1 v2 v3 = du12
du12 ::
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
du12
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe MAlonzo.Code.Data.Maybe.Base.C28)
         (coe (\ v0 -> MAlonzo.Code.Data.Maybe.Base.C30))
         (coe (\ v0 v1 -> MAlonzo.Code.Data.Maybe.Base.C28 (coe v0))))
name14 = "Data.These.fromThat"
d14 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d14 v0 v1 v2 v3 = du14
du14 ::
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
du14
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe (\ v0 -> MAlonzo.Code.Data.Maybe.Base.C30))
         (coe MAlonzo.Code.Data.Maybe.Base.C28)
         (coe (\ v0 -> MAlonzo.Code.Data.Maybe.Base.C28)))
name16 = "Data.These.leftMost"
d16 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.These.Base.T38 -> AgdaAny
d16 v0 v1 = du16
du16 :: MAlonzo.Code.Data.These.Base.T38 -> AgdaAny
du16
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 -> v0)))
name18 = "Data.These.rightMost"
d18 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.These.Base.T38 -> AgdaAny
d18 v0 v1 = du18
du18 :: MAlonzo.Code.Data.These.Base.T38 -> AgdaAny
du18
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe (\ v0 -> v0)) (coe (\ v0 -> v0)) (coe (\ v0 v1 -> v1)))
name20 = "Data.These.mergeThese"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.These.Base.T38 -> AgdaAny
d20 v0 v1 = du20
du20 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.These.Base.T38 -> AgdaAny
du20
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe (\ v0 -> v0)) (coe (\ v0 -> v0)))
name22 = "Data.These.deleteThis"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d22 v0 v1 v2 v3 = du22
du22 ::
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
du22
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe (\ v0 -> MAlonzo.Code.Data.Maybe.Base.C30))
         (coe
            (\ v0 ->
               MAlonzo.Code.Data.Maybe.Base.C28
                 (coe (MAlonzo.Code.Data.These.Base.C50 (coe v0)))))
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Data.Maybe.Base.C28
                 (coe (MAlonzo.Code.Data.These.Base.C50 (coe v1))))))
name24 = "Data.These.deleteThat"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
d24 v0 v1 v2 v3 = du24
du24 ::
  MAlonzo.Code.Data.These.Base.T38 ->
  MAlonzo.Code.Data.Maybe.Base.T22
du24
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe
            (\ v0 ->
               MAlonzo.Code.Data.Maybe.Base.C28
                 (coe (MAlonzo.Code.Data.These.Base.C48 (coe v0)))))
         (coe (\ v0 -> MAlonzo.Code.Data.Maybe.Base.C30))
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Data.Maybe.Base.C28
                 (coe (MAlonzo.Code.Data.These.Base.C48 (coe v0))))))
