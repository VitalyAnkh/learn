{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.String where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

name6 = "Agda.Builtin.String.String"
type T6 = Data.Text.Text
d6
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.String.String"
name8 = "Agda.Builtin.String.primStringToList"
d8 = Data.Text.unpack
name10 = "Agda.Builtin.String.primStringFromList"
d10 = Data.Text.pack
name12 = "Agda.Builtin.String.primStringAppend"
d12
  = ((Data.Text.append) :: Data.Text.Text->Data.Text.Text->Data.Text.Text)
name14 = "Agda.Builtin.String.primStringEquality"
d14
  = (\ x y -> ((==) :: Data.Text.Text -> Data.Text.Text -> Bool) ( x) ( y))
name16 = "Agda.Builtin.String.primShowChar"
d16 = (Data.Text.pack . show :: Char -> Data.Text.Text)
name18 = "Agda.Builtin.String.primShowString"
d18 = (Data.Text.pack . show :: Data.Text.Text -> Data.Text.Text)
name20 = "Agda.Builtin.String.primShowNat"
d20 = (Data.Text.pack . show :: Integer -> Data.Text.Text)
