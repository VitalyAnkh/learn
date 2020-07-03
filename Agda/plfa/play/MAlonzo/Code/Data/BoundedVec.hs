{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.BoundedVec where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.BoundedVec.Inefficient
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Vec.Base

name8 = "Data.BoundedVec.BoundedVec"
d8 a0 a1 a2 = ()
data T8 = C20 Integer Integer MAlonzo.Code.Data.Vec.Base.T24
name28 = "Data.BoundedVec.[]"
d28 :: MAlonzo.Code.Agda.Primitive.T4 -> Integer -> () -> T8
d28 v0 v1 v2 = du28 v1
du28 :: Integer -> T8
du28 v0
  = coe
      C20 (coe v0) (coe (0 :: Integer))
      (coe MAlonzo.Code.Data.Vec.Base.C28)
name36 = "Data.BoundedVec._∷_"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer -> () -> AgdaAny -> T8 -> T8
d36 v0 v1 v2 v3 v4 = du36 v3 v4
du36 :: AgdaAny -> T8 -> T8
du36 v0 v1
  = case coe v1 of
      C20 v2 v3 v4
        -> coe
             C20 (coe v2) (coe addInt (coe (1 :: Integer)) (coe v3))
             (coe MAlonzo.Code.Data.Vec.Base.C36 v0 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name46 = "Data.BoundedVec.View"
d46 a0 a1 a2 = ()
data T46 = C54 | C62 AgdaAny T8
name70 = "Data.BoundedVec.view"
d70 :: MAlonzo.Code.Agda.Primitive.T4 -> Integer -> () -> T8 -> T46
d70 v0 v1 v2 v3 = du70 v3
du70 :: T8 -> T46
du70 v0
  = case coe v0 of
      C20 v1 v2 v3
        -> case coe v3 of
             MAlonzo.Code.Data.Vec.Base.C28 -> coe C54
             MAlonzo.Code.Data.Vec.Base.C36 v5 v6
               -> let v7 = subInt (coe v2) (coe (1 :: Integer)) in
                  coe C62 v5 (coe C20 (coe v1) (coe v7) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Data.BoundedVec.↑"
d82 :: MAlonzo.Code.Agda.Primitive.T4 -> Integer -> () -> T8 -> T8
d82 v0 v1 v2 v3 = du82 v3
du82 :: T8 -> T8
du82 v0
  = case coe v0 of
      C20 v1 v2 v3
        -> coe
             C20 (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name112 = "Data.BoundedVec._.fromList"
d112 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T8
d112 v0 v1 v2 = du112 v2
du112 :: [AgdaAny] -> T8
du112 v0
  = coe
      C20 (coe (0 :: Integer))
      (coe
         MAlonzo.Code.Data.List.Base.du216
         (coe (\ v1 v2 -> addInt (coe (1 :: Integer)) (coe v2)))
         (coe (0 :: Integer)) (coe v0))
      (coe MAlonzo.Code.Data.Vec.Base.du660 (coe v0))
name120 = "Data.BoundedVec._._.lemma"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d120 = erased
name126 = "Data.BoundedVec._.toList"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T8 -> [AgdaAny]
d126 v0 v1 v2 v3 = du126 v3
du126 :: T8 -> [AgdaAny]
du126 v0
  = case coe v0 of
      C20 v1 v2 v3 -> coe MAlonzo.Code.Data.Vec.Base.du652 (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Data.BoundedVec._.toInefficient"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T8 -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10
d132 v0 v1 v2 v3 = du132 v3
du132 :: T8 -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10
du132 v0
  = let v1 = coe du70 (coe v0) in
    case coe v1 of
      C54 -> coe MAlonzo.Code.Data.BoundedVec.Inefficient.C18
      C62 v3 v4
        -> coe
             MAlonzo.Code.Data.BoundedVec.Inefficient.C26 v3
             (coe du132 (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name150 = "Data.BoundedVec._.fromInefficient"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10 -> T8
d150 v0 v1 v2 v3 = du150 v2 v3
du150 ::
  Integer -> MAlonzo.Code.Data.BoundedVec.Inefficient.T10 -> T8
du150 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.BoundedVec.Inefficient.C18
        -> coe
             C20 (coe v0) (coe (0 :: Integer))
             (coe MAlonzo.Code.Data.Vec.Base.C28)
      MAlonzo.Code.Data.BoundedVec.Inefficient.C26 v3 v4
        -> let v5 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du36 (coe v3) (coe du150 (coe v5) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
