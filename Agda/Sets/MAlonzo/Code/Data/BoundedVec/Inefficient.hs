{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.BoundedVec.Inefficient where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Primitive

name10 = "Data.BoundedVec.Inefficient.BoundedVec"
d10 a0 a1 a2 = ()
data T10 = C18 | C26 AgdaAny T10
name34 = "Data.BoundedVec.Inefficient.↑"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 -> Integer -> () -> T10 -> T10
d34 v0 v1 v2 v3 = du34 v3
du34 :: T10 -> T10
du34 v0 = coe v0
name46 = "Data.BoundedVec.Inefficient.fromList"
d46 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T10
d46 v0 v1 v2 = du46 v2
du46 :: [AgdaAny] -> T10
du46 v0
  = case coe v0 of
      [] -> coe (\ v1 -> C18) erased
      (:) v1 v2
        -> coe (\ v3 v4 v5 -> C26 v4 v5) erased v1 (du46 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Data.BoundedVec.Inefficient.toList"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 -> Integer -> () -> T10 -> [AgdaAny]
d58 v0 v1 v2 v3 = du58 v3
du58 :: T10 -> [AgdaAny]
du58 v0
  = case coe v0 of
      C18 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      C26 v2 v3
        -> coe
             (MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe (du58 (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
