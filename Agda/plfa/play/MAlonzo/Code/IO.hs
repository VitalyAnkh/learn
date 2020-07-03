{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.IO where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Char
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.IO
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Musical.Colist
import qualified MAlonzo.Code.Codata.Musical.Costring
import qualified MAlonzo.Code.IO.Primitive
import qualified MAlonzo.Code.Level

name6 = "IO.IO"
d6 a0 a1 = ()
data T6
  = C14 (MAlonzo.Code.Agda.Builtin.IO.T8 AgdaAny AgdaAny) |
    C18 AgdaAny |
    C28 (MAlonzo.RTE.Infinity AgdaAny T6)
        (AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T6) |
    C36 (MAlonzo.RTE.Infinity AgdaAny T6)
        (MAlonzo.RTE.Infinity AgdaAny T6)
name42 = "IO.run"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T6 -> MAlonzo.Code.Agda.Builtin.IO.T8 AgdaAny AgdaAny
d42 v0 v1 v2 = du42 v0 v2
du42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  T6 -> MAlonzo.Code.Agda.Builtin.IO.T8 AgdaAny AgdaAny
du42 v0 v1
  = case coe v1 of
      C14 v2 -> coe v2
      C18 v2 -> coe MAlonzo.Code.IO.Primitive.d8 v0 erased v2
      C28 v3 v4
        -> coe
             MAlonzo.Code.IO.Primitive.d18 v0 v0 erased erased
             (coe
                du42 (coe v0)
                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
             (\ v5 ->
                coe
                  du42 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4 v5)))
      C36 v3 v4
        -> coe
             MAlonzo.Code.IO.Primitive.d18 v0 v0 erased erased
             (coe
                du42 (coe v0)
                (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
             (\ v5 ->
                coe
                  du42 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
name64 = "IO.sequence"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6 -> T6
d64 v0 v1 v2 = du64 v0 v2
du64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6 -> T6
du64 v0 v1
  = case coe v1 of
      MAlonzo.Code.Codata.Musical.Colist.C60 -> coe C18 (coe v1)
      MAlonzo.Code.Codata.Musical.Colist.C66 v2 v3
        -> coe C28 (coe du1599 (coe v2)) (coe du1749 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name78 = "IO.sequence′"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6 -> T6
d78 v0 v1 v2 = du78 v0 v2
du78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6 -> T6
du78 v0 v1
  = case coe v1 of
      MAlonzo.Code.Codata.Musical.Colist.C60
        -> coe
             C18
             (coe
                MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))
      MAlonzo.Code.Codata.Musical.Colist.C66 v2 v3
        -> coe C36 (coe du3305 (coe v2)) (coe du3449 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name96 = "IO._.mapM"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> T6) ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny -> T6
d96 v0 v1 v2 v3 v4 v5 = du96 v0 v1 v4 v5
du96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> T6) ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny -> T6
du96 v0 v1 v2 v3
  = coe
      du64 (coe v1)
      (coe
         MAlonzo.Code.Codata.Musical.Colist.du252 (coe v0) (coe ()) (coe v2)
         (coe v3))
name100 = "IO._.mapM′"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> T6) ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny -> T6
d100 v0 v1 v2 v3 v4 v5 = du100 v0 v1 v4 v5
du100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> T6) ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny -> T6
du100 v0 v1 v2 v3
  = coe
      du78 (coe v1)
      (coe
         MAlonzo.Code.Codata.Musical.Colist.du252 (coe v0) (coe ()) (coe v2)
         (coe v3))
name104 = "IO.getContents"
d104 :: T6
d104 = coe C14 (coe MAlonzo.Code.IO.Primitive.d20)
name106 = "IO.readFile"
d106 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d106 v0 = coe C14 (coe MAlonzo.Code.IO.Primitive.d22 v0)
name110 = "IO.readFiniteFile"
d110 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d110 v0 = coe C14 (coe MAlonzo.Code.IO.Primitive.d32 v0)
name114 = "IO.writeFile∞"
d114 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d114 v0 v1 = coe C36 (d5373 (coe v0) (coe v1)) (coe du5483)
name120 = "IO.writeFile"
d120 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d120 v0 v1
  = coe
      d114 (coe v0)
      (coe MAlonzo.Code.Codata.Musical.Costring.d8 (coe v1))
name126 = "IO.appendFile∞"
d126 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d126 v0 v1 = coe C36 (d5685 (coe v0) (coe v1)) (coe du5795)
name132 = "IO.appendFile"
d132 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d132 v0 v1
  = coe
      d126 (coe v0)
      (coe MAlonzo.Code.Codata.Musical.Costring.d8 (coe v1))
name138 = "IO.putStr∞"
d138 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d138 v0 = coe C36 (d5977 (coe v0)) (coe du6035)
name142 = "IO.putStr"
d142 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d142 v0
  = coe d138 (coe MAlonzo.Code.Codata.Musical.Costring.d8 (coe v0))
name146 = "IO.putStrLn∞"
d146 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d146 v0 = coe C36 (d6145 (coe v0)) (coe du6203)
name150 = "IO.putStrLn"
d150 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d150 v0
  = coe d146 (coe MAlonzo.Code.Codata.Musical.Costring.d8 (coe v0))
name1599 = "IO._.♯-0"
d1599 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d1599 v0 v1 v2 v3 = du1599 v2
du1599 :: T6 -> MAlonzo.RTE.Infinity AgdaAny T6
du1599 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name1749 = "IO._.♯-1"
d1749 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T6
d1749 v0 v1 v2 v3 v4 = du1749 v0 v3 v4
du1749 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T6
du1749 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe C28 (coe du1947 (coe v0) (coe v1)) (coe du2235 (coe v2)))
name1947 = "IO._._.♯-2"
d1947 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T6
d1947 v0 v1 v2 v3 v4 = du1947 v0 v3
du1947 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
du1947 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du64 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name2235 = "IO._._.♯-3"
d2235 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2235 v0 v1 v2 v3 v4 v5 = du2235 v4 v5
du2235 ::
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny T6
du2235 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         C18
         (coe
            MAlonzo.Code.Codata.Musical.Colist.C66 (coe v0)
            (coe du2679 (coe v1))))
name2679 = "IO._._._.♯-5"
d2679 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny)
d2679 v0 v1 v2 v3 v4 v5 = du2679 v5
du2679 ::
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny)
du2679 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name3305 = "IO._.♯-6"
d3305 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d3305 v0 v1 v2 v3 = du3305 v2
du3305 :: T6 -> MAlonzo.RTE.Infinity AgdaAny T6
du3305 v0 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0)
name3449 = "IO._.♯-7"
d3449 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d3449 v0 v1 v2 v3 = du3449 v0 v3
du3449 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
du3449 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe C36 (coe du3609 (coe v0) (coe v1)) (coe du3833))
name3609 = "IO._._.♯-8"
d3609 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d3609 v0 v1 v2 v3 = du3609 v0 v3
du3609 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
du3609 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         du78 (coe v0)
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
name3833 = "IO._._.♯-9"
d3833 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d3833 v0 v1 v2 v3 = du3833
du3833 :: MAlonzo.RTE.Infinity AgdaAny T6
du3833
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         C18
         (coe
            MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
name5373 = "IO._.♯-10"
d5373 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d5373 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d24 v0 v1))
name5483 = "IO._.♯-12"
d5483 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d5483 v0 v1 = du5483
du5483 :: MAlonzo.RTE.Infinity AgdaAny T6
du5483
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         C18
         (coe
            MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
name5685 = "IO._.♯-13"
d5685 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d5685 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d26 v0 v1))
name5795 = "IO._.♯-15"
d5795 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d5795 v0 v1 = du5795
du5795 :: MAlonzo.RTE.Infinity AgdaAny T6
du5795
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         C18
         (coe
            MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
name5977 = "IO._.♯-16"
d5977 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d5977 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d28 v0))
name6035 = "IO._.♯-18"
d6035 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d6035 v0 = du6035
du6035 :: MAlonzo.RTE.Infinity AgdaAny T6
du6035
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         C18
         (coe
            MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
name6145 = "IO._.♯-19"
d6145 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d6145 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe C14 (coe MAlonzo.Code.IO.Primitive.d30 v0))
name6203 = "IO._.♯-21"
d6203 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d6203 v0 = du6203
du6203 :: MAlonzo.RTE.Infinity AgdaAny T6
du6203
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         C18
         (coe
            MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)))
