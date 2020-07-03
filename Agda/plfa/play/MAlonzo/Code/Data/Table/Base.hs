{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Table.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Vec.Base

name20 = "Data.Table.Base.Table"
d20 a0 a1 a2 = ()
newtype T20 = C30 (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny)
name28 = "Data.Table.Base.Table.lookup"
d28 :: T20 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d28 v0
  = case coe v0 of
      C30 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Data.Table.Base.head"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T20 -> AgdaAny
d34 v0 v1 v2 v3 = du34 v3
du34 :: T20 -> AgdaAny
du34 v0 = coe d28 v0 (coe MAlonzo.Code.Data.Fin.Base.C10)
name40 = "Data.Table.Base.tail"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T20 -> T20
d40 v0 v1 v2 v3 = du40 v3
du40 :: T20 -> T20
du40 v0
  = coe
      C30
      (coe (\ v1 -> coe d28 v0 (coe MAlonzo.Code.Data.Fin.Base.C16 v1)))
name46 = "Data.Table.Base.uncons"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T20 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d46 v0 v1 v2 v3 = du46 v3
du46 :: T20 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du46 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32
      (coe d28 v0 (coe MAlonzo.Code.Data.Fin.Base.C10))
      (coe
         C30
         (coe (\ v1 -> coe d28 v0 (coe MAlonzo.Code.Data.Fin.Base.C16 v1))))
name52 = "Data.Table.Base.remove"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> T20 -> T20
d52 v0 v1 v2 v3 v4 = du52 v3 v4
du52 :: MAlonzo.Code.Data.Fin.Base.T6 -> T20 -> T20
du52 v0 v1
  = coe
      C30
      (coe
         (\ v2 ->
            coe
              d28 v1 (coe MAlonzo.Code.Data.Fin.Base.du414 (coe v0) (coe v2))))
name62 = "Data.Table.Base.rearrange"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T6 -> MAlonzo.Code.Data.Fin.Base.T6) ->
  T20 -> T20
d62 v0 v1 v2 v3 v4 v5 = du62 v4 v5
du62 ::
  (MAlonzo.Code.Data.Fin.Base.T6 -> MAlonzo.Code.Data.Fin.Base.T6) ->
  T20 -> T20
du62 v0 v1 = coe C30 (coe (\ v2 -> coe d28 v1 (coe v0 v2)))
name70 = "Data.Table.Base.map"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (AgdaAny -> AgdaAny) -> T20 -> T20
d70 v0 v1 v2 v3 v4 v5 v6 = du70 v5 v6
du70 :: (AgdaAny -> AgdaAny) -> T20 -> T20
du70 v0 v1 = coe C30 (coe (\ v2 -> coe v0 (coe d28 v1 v2)))
name78 = "Data.Table.Base._⊛_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T20 -> T20 -> T20
d78 v0 v1 v2 v3 v4 v5 v6 = du78 v5 v6
du78 :: T20 -> T20 -> T20
du78 v0 v1 = coe C30 (coe (\ v2 -> coe d28 v0 v2 (coe d28 v1 v2)))
name88 = "Data.Table.Base.foldr"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T20 -> AgdaAny
d88 v0 v1 v2 v3 v4 v5 v6 v7 = du88 v4 v5 v6 v7
du88 ::
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T20 -> AgdaAny
du88 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe v2
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             v1 (coe d28 v3 (coe MAlonzo.Code.Data.Fin.Base.C10))
             (coe
                du88 (coe v4) (coe v1) (coe v2)
                (coe
                   C30
                   (coe
                      (\ v5 -> coe d28 v3 (coe MAlonzo.Code.Data.Fin.Base.C16 v5)))))
name106 = "Data.Table.Base.foldl"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T20 -> AgdaAny
d106 v0 v1 v2 v3 v4 v5 v6 v7 = du106 v4 v5 v6 v7
du106 ::
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T20 -> AgdaAny
du106 v0 v1 v2 v3
  = case coe v0 of
      0 -> coe v2
      _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             du106 (coe v4) (coe v1)
             (coe v1 v2 (coe d28 v3 (coe MAlonzo.Code.Data.Fin.Base.C10)))
             (coe
                C30
                (coe (\ v5 -> coe d28 v3 (coe MAlonzo.Code.Data.Fin.Base.C16 v5))))
name124 = "Data.Table.Base.replicate"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> AgdaAny -> T20
d124 v0 v1 v2 v3 = du124 v3
du124 :: AgdaAny -> T20
du124 v0 = coe C30 (coe (\ v1 -> v0))
name132 = "Data.Table.Base.toList"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T20 -> [AgdaAny]
d132 v0 v1 v2 v3 = du132 v2 v3
du132 :: Integer -> T20 -> [AgdaAny]
du132 v0 v1
  = coe MAlonzo.Code.Data.List.Base.du376 (coe v0) (coe d28 (coe v1))
name136 = "Data.Table.Base.fromList"
d136 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T20
d136 v0 v1 v2 = du136 v2
du136 :: [AgdaAny] -> T20
du136 v0 = coe C30 (coe MAlonzo.Code.Data.List.Base.du386 (coe v0))
name140 = "Data.Table.Base.fromVec"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T20
d140 v0 v1 v2 v3 = du140 v3
du140 :: MAlonzo.Code.Data.Vec.Base.T24 -> T20
du140 v0 = coe C30 (coe MAlonzo.Code.Data.Vec.Base.du94 (coe v0))
name144 = "Data.Table.Base.toVec"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T20 -> MAlonzo.Code.Data.Vec.Base.T24
d144 v0 v1 v2 v3 = du144 v2 v3
du144 :: Integer -> T20 -> MAlonzo.Code.Data.Vec.Base.T24
du144 v0 v1
  = coe MAlonzo.Code.Data.Vec.Base.du500 (coe v0) (coe d28 (coe v1))
