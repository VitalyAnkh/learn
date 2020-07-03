{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.Size where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

type SizeLT i = ()
name6 = "Agda.Builtin.Size.SizeU"
d6 :: ()
d6 = erased
name8 = "Agda.Builtin.Size.Size"
type T8 = ()
d8
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.Size.Size"
name10 = "Agda.Builtin.Size.Size<_"
type T10 a0 = SizeLT a0
d10
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.Size.Size<_"
name12 = "Agda.Builtin.Size.↑_"
d12 :: T8 -> T8
d12 = \_ -> ()
name14 = "Agda.Builtin.Size.∞"
d14 :: T8
d14 = ()
name16 = "Agda.Builtin.Size._⊔ˢ_"
d16 :: T8 -> T8 -> T8
d16 = \_ _ -> ()
