{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO.Primitive where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Musical.Colist

import qualified Control.Exception
import qualified System.IO
import qualified Data.Text.IO
import qualified Data.Text
readFiniteFile :: Data.Text.Text -> IO Data.Text.Text
readFiniteFile f = do
  h <- System.IO.openFile (Data.Text.unpack f) System.IO.ReadMode
  Control.Exception.bracketOnError (return ()) (\_ -> System.IO.hClose h)
                                               (\_ -> System.IO.hFileSize h)
  Data.Text.IO.hGetContents h

fromColist :: MAlonzo.Code.Codata.Musical.Colist.AgdaColist a -> [a]
fromColist MAlonzo.Code.Codata.Musical.Colist.Nil         = []
fromColist (MAlonzo.Code.Codata.Musical.Colist.Cons x xs) =
  x : fromColist (MAlonzo.RTE.flat xs)

toColist :: [a] -> MAlonzo.Code.Codata.Musical.Colist.AgdaColist a
toColist []       = MAlonzo.Code.Codata.Musical.Colist.Nil
toColist (x : xs) =
  MAlonzo.Code.Codata.Musical.Colist.Cons x (MAlonzo.RTE.Sharp (toColist xs))
name8 = "IO.Primitive.return"
d8 ::
  forall xa.
    MAlonzo.Code.Agda.Primitive.T4 ->
    (forall xA. () -> xA -> MAlonzo.Code.Agda.Builtin.IO.T8 xa xA)
d8 = \_ _ -> return
name18 = "IO.Primitive._>>=_"
d18 ::
  forall xa.
    MAlonzo.Code.Agda.Primitive.T4 ->
    (forall xb.
       MAlonzo.Code.Agda.Primitive.T4 ->
       (forall xA.
          () ->
          (forall xB.
             () ->
             MAlonzo.Code.Agda.Builtin.IO.T8 xa xA ->
             (xA -> MAlonzo.Code.Agda.Builtin.IO.T8 xb xB) ->
             MAlonzo.Code.Agda.Builtin.IO.T8 xb xB)))
d18 = \_ _ _ _ -> (>>=)
name20 = "IO.Primitive.getContents"
d20 ::
  MAlonzo.Code.Agda.Builtin.IO.T8
    ()
    (MAlonzo.Code.Codata.Musical.Colist.T54
       () MAlonzo.Code.Agda.Builtin.Char.T6)
d20 = fmap toColist getContents
name22 = "IO.Primitive.readFile"
d22 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    ()
    (MAlonzo.Code.Codata.Musical.Colist.T54
       () MAlonzo.Code.Agda.Builtin.Char.T6)
d22 = fmap toColist . readFile . Data.Text.unpack
name24 = "IO.Primitive.writeFile"
d24 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d24 = \x -> writeFile (Data.Text.unpack x) . fromColist
name26 = "IO.Primitive.appendFile"
d26 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d26 = \x -> appendFile (Data.Text.unpack x) . fromColist
name28 = "IO.Primitive.putStr"
d28 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d28 = putStr . fromColist
name30 = "IO.Primitive.putStrLn"
d30 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    () MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.Unit.T6
d30 = putStrLn . fromColist
name32 = "IO.Primitive.readFiniteFile"
d32 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.IO.T8
    () MAlonzo.Code.Agda.Builtin.String.T6
d32 = readFiniteFile
