{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.IO where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

type AgdaIO a b = IO b
name8 = "Agda.Builtin.IO.IO"
type T8 a0 a1 = AgdaIO a0 a1
d8
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.IO.IO"
