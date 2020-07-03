{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Nullary where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Empty.Irrelevant

name6 = "Relation.Nullary.¬_"
d6 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d6 = erased
name14 = "Relation.Nullary.Reflects"
d14 a0 a1 a2 = ()
data T14 = C22 AgdaAny | C26
name32 = "Relation.Nullary.Dec"
d32 a0 a1 = ()
data T32 = C46 Bool T14
name42 = "Relation.Nullary.Dec.does"
d42 :: T32 -> Bool
d42 v0
  = case coe v0 of
      C46 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Relation.Nullary.Dec.proof"
d44 :: T32 -> T14
d44 v0
  = case coe v0 of
      C46 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name60 = "Relation.Nullary.recompute"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T32 -> AgdaAny -> AgdaAny
d60 v0 v1 v2 v3 = du60 v0 v2
du60 :: MAlonzo.Code.Agda.Primitive.T4 -> T32 -> AgdaAny
du60 v0 v1
  = case coe v1 of
      C46 v2 v3
        -> if coe v2
             then case coe v3 of
                    C22 v4 -> coe v4
                    _ -> MAlonzo.RTE.mazUnreachableError
             else coe
                    seq (coe v3)
                    (coe MAlonzo.Code.Data.Empty.Irrelevant.d10 v0 erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name70 = "Relation.Nullary.Irrelevant"
d70 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d70 = erased
