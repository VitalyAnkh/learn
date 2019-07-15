{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Nullary

name30 = "Data.Sum.Base._⊎_"
d30 a0 a1 a2 a3 = ()
data T30 = C38 AgdaAny | C42 AgdaAny
name52 = "Data.Sum.Base.[_,_]"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (T30 -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du52 v6 v7 v8
du52 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du52 v0 v1 v2
  = case coe v2 of
      C38 v3 -> coe v0 v3
      C42 v3 -> coe v1 v3
      _ -> MAlonzo.RTE.mazUnreachableError
name66 = "Data.Sum.Base.[_,_]′"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d66 v0 v1 v2 v3 v4 v5 = du66
du66 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du66 = coe du52
name68 = "Data.Sum.Base.swap"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T30 -> T30
d68 v0 v1 v2 v3 v4 = du68 v4
du68 :: T30 -> T30
du68 v0
  = case coe v0 of
      C38 v1 -> coe (C42 (coe v1))
      C42 v1 -> coe (C38 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name74 = "Data.Sum.Base.map"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
d74 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du74 v8 v9
du74 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
du74 v0 v1
  = coe
      (du52
         (coe (\ v2 -> C38 (coe v0 v2))) (coe (\ v2 -> C42 (coe v1 v2))))
name80 = "Data.Sum.Base.map₁"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> T30
d80 v0 v1 v2 v3 v4 v5 v6 = du80 v6
du80 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du80 v0 = coe (du74 (coe v0) (coe (\ v1 -> v1)))
name84 = "Data.Sum.Base.map₂"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> T30
d84 v0 v1 v2 v3 v4 v5 = du84
du84 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du84 = coe (du74 (coe (\ v0 -> v0)))
name86 = "Data.Sum.Base._-⊎-_"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d86 = erased
name92 = "Data.Sum.Base.fromDec"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T14 -> T30
d92 v0 v1 v2 = du92 v2
du92 :: MAlonzo.Code.Relation.Nullary.T14 -> T30
du92 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C22 v1 -> coe (C38 (coe v1))
      MAlonzo.Code.Relation.Nullary.C26 -> coe (C42 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name98 = "Data.Sum.Base.toDec"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T30 -> MAlonzo.Code.Relation.Nullary.T14
d98 v0 v1 v2 = du98 v2
du98 :: T30 -> MAlonzo.Code.Relation.Nullary.T14
du98 v0
  = case coe v0 of
      C38 v1 -> coe (MAlonzo.Code.Relation.Nullary.C22 (coe v1))
      C42 v1 -> coe (\ v2 -> MAlonzo.Code.Relation.Nullary.C26) erased
      _ -> MAlonzo.RTE.mazUnreachableError
