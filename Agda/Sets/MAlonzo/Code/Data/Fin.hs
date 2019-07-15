{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Fin where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Data.Fin.Base

name10 = "Data.Fin.#_"
d10 ::
  Integer -> Integer -> AgdaAny -> MAlonzo.Code.Data.Fin.Base.T6
d10 v0 v1 v2 = du10 v0
du10 :: Integer -> MAlonzo.Code.Data.Fin.Base.T6
du10 v0 = coe (MAlonzo.Code.Data.Fin.Base.du66 (coe v0))
