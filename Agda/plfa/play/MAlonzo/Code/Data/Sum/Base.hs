{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Sum.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Reflects

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
name68 = "Data.Sum.Base.fromInj₁"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d68 v0 v1 v2 v3 = du68
du68 :: (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du68 = coe du66 (\ v0 -> v0)
name72 = "Data.Sum.Base.fromInj₂"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
d72 v0 v1 v2 v3 v4 = du72 v4
du72 :: (AgdaAny -> AgdaAny) -> T30 -> AgdaAny
du72 v0 = coe du66 v0 (\ v1 -> v1)
name76 = "Data.Sum.Base.swap"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T30 -> T30
d76 v0 v1 v2 v3 v4 = du76 v4
du76 :: T30 -> T30
du76 v0
  = case coe v0 of
      C38 v1 -> coe C42 (coe v1)
      C42 v1 -> coe C38 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Data.Sum.Base.map"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
d82 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du82 v8 v9
du82 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
du82 v0 v1
  = coe
      du52 (coe (\ v2 -> coe C38 (coe v0 v2)))
      (coe (\ v2 -> coe C42 (coe v1 v2)))
name88 = "Data.Sum.Base.map₁"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> T30
d88 v0 v1 v2 v3 v4 v5 v6 = du88 v6
du88 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du88 v0 = coe du82 (coe v0) (coe (\ v1 -> v1))
name92 = "Data.Sum.Base.map₂"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T30 -> T30
d92 v0 v1 v2 v3 v4 v5 = du92
du92 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du92 = coe du82 (coe (\ v0 -> v0))
name94 = "Data.Sum.Base._-⊎-_"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d94 = erased
name100 = "Data.Sum.Base.fromDec"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Relation.Nullary.T32 -> T30
d100 v0 v1 v2 = du100 v2
du100 :: MAlonzo.Code.Relation.Nullary.T32 -> T30
du100 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe
                    C38 (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2))
             else coe
                    C42 (coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Data.Sum.Base.toDec"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T30 -> MAlonzo.Code.Relation.Nullary.T32
d106 v0 v1 v2 = du106 v2
du106 :: T30 -> MAlonzo.Code.Relation.Nullary.T32
du106 v0
  = case coe v0 of
      C38 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
             (coe MAlonzo.Code.Relation.Nullary.C22 (coe v1))
      C42 v1
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      _ -> MAlonzo.RTE.mazUnreachableError
