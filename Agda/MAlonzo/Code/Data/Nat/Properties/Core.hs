{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Nat.Properties.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Nat.Base

name12 = "Data.Nat.Properties.Core.≤-pred"
d12 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
d12 v0 v1 v2 = du12 v2
du12 ::
  MAlonzo.Code.Data.Nat.Base.T6 -> MAlonzo.Code.Data.Nat.Base.T6
du12 v0
  = case coe v0 of
      MAlonzo.Code.Data.Nat.Base.C18 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
