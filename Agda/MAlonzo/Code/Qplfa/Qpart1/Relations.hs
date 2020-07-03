{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Qplfa.Qpart1.Relations where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality

name6 = "plfa.part1.Relations._≤_"
d6 a0 a1 = ()
data T6 = C10 | C16 T6
name26 = "plfa.part1.Relations.inv-s≤s"
d26 :: Integer -> Integer -> T6 -> T6
d26 v0 v1 v2 = du26 v2
du26 :: T6 -> T6
du26 v0
  = case coe v0 of
      C16 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name32 = "plfa.part1.Relations.inv-z≤n"
d32 :: Integer -> T6 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d32 = erased
name34 = "plfa.part1.Relations._||_"
d34 a0 a1 = ()
data T34 = C38
