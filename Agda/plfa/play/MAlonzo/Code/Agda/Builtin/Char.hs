{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Agda.Builtin.Char where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Char
import qualified Data.Text

name6 = "Agda.Builtin.Char.Char"
type T6 = Char
d6
  = error
      "MAlonzo Runtime Error: postulate evaluated: Agda.Builtin.Char.Char"
name8 = "Agda.Builtin.Char.primIsLower"
d8 = Data.Char.isLower
name10 = "Agda.Builtin.Char.primIsDigit"
d10 = Data.Char.isDigit
name12 = "Agda.Builtin.Char.primIsAlpha"
d12 = Data.Char.isAlpha
name14 = "Agda.Builtin.Char.primIsSpace"
d14 = Data.Char.isSpace
name16 = "Agda.Builtin.Char.primIsAscii"
d16 = Data.Char.isAscii
name18 = "Agda.Builtin.Char.primIsLatin1"
d18 = Data.Char.isLatin1
name20 = "Agda.Builtin.Char.primIsPrint"
d20 = Data.Char.isPrint
name22 = "Agda.Builtin.Char.primIsHexDigit"
d22 = Data.Char.isHexDigit
name24 = "Agda.Builtin.Char.primToUpper"
d24 = Data.Char.toUpper
name26 = "Agda.Builtin.Char.primToLower"
d26 = Data.Char.toLower
name28 = "Agda.Builtin.Char.primCharToNat"
d28 = (fromIntegral . fromEnum :: Char -> Integer)
name30 = "Agda.Builtin.Char.primNatToChar"
d30 = (toEnum . fromIntegral :: Integer -> Char)
name32 = "Agda.Builtin.Char.primCharEquality"
d32 = (\ x y -> ((==) :: Char -> Char -> Bool) ( x) ( y))
