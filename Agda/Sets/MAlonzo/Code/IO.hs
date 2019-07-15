{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
             (du42
                (coe v0)
                (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))))
             (\ v5 ->
                du42
                  (coe v0)
                  (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4 v5))))
      C36 v3 v4
        -> coe
             MAlonzo.Code.IO.Primitive.d18 v0 v0 erased erased
             (du42
                (coe v0)
                (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))))
             (\ v5 ->
                du42
                  (coe v0)
                  (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4))))
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
      MAlonzo.Code.Codata.Musical.Colist.C60 -> coe (C18 (coe v1))
      MAlonzo.Code.Codata.Musical.Colist.C66 v2 v3
        -> coe
             (\ v4 v5 v6 -> C28 v5 v6) erased (du655 (coe v2))
             (du739 (coe v0) (coe v3))
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
        -> coe (C18 (coe (MAlonzo.Code.Level.C20 erased)))
      MAlonzo.Code.Codata.Musical.Colist.C66 v2 v3
        -> coe
             (\ v4 v5 v6 -> C36 v5 v6) erased (du1695 (coe v2))
             (du1779 (coe v0) (coe v3))
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
      (du64
         (coe v1)
         (coe
            (MAlonzo.Code.Codata.Musical.Colist.du252
               (coe v0) (coe ()) (coe v2) (coe v3))))
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
      (du78
         (coe v1)
         (coe
            (MAlonzo.Code.Codata.Musical.Colist.du252
               (coe v0) (coe ()) (coe v2) (coe v3))))
name104 = "IO.getContents"
d104 :: T6
d104 = coe (C14 (coe MAlonzo.Code.IO.Primitive.d20))
name106 = "IO.readFile"
d106 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d106 v0 = coe (C14 (coe MAlonzo.Code.IO.Primitive.d22 v0))
name110 = "IO.readFiniteFile"
d110 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d110 v0 = coe (C14 (coe MAlonzo.Code.IO.Primitive.d32 v0))
name114 = "IO.writeFile∞"
d114 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d114 v0 v1
  = coe
      (\ v2 v3 v4 -> C36 v3 v4) erased (d2483 (coe v0) (coe v1)) du2527
name120 = "IO.writeFile"
d120 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d120 v0 v1
  = coe
      (d114
         (coe v0) (coe (MAlonzo.Code.Codata.Musical.Costring.d8 (coe v1))))
name126 = "IO.appendFile∞"
d126 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d126 v0 v1
  = coe
      (\ v2 v3 v4 -> C36 v3 v4) erased (d2627 (coe v0) (coe v1)) du2671
name132 = "IO.appendFile"
d132 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d132 v0 v1
  = coe
      (d126
         (coe v0) (coe (MAlonzo.Code.Codata.Musical.Costring.d8 (coe v1))))
name138 = "IO.putStr∞"
d138 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d138 v0
  = coe (\ v1 v2 v3 -> C36 v2 v3) erased (d2763 (coe v0)) du2787
name142 = "IO.putStr"
d142 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d142 v0
  = coe
      (d138 (coe (MAlonzo.Code.Codata.Musical.Costring.d8 (coe v0))))
name146 = "IO.putStrLn∞"
d146 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  T6
d146 v0
  = coe (\ v1 v2 v3 -> C36 v2 v3) erased (d2839 (coe v0)) du2863
name150 = "IO.putStrLn"
d150 :: MAlonzo.Code.Agda.Builtin.String.T6 -> T6
d150 v0
  = coe
      (d146 (coe (MAlonzo.Code.Codata.Musical.Costring.d8 (coe v0))))
name655 = "IO._.♯-0"
d655 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d655 v0 v1 v2 v3 = du655 v2
du655 :: T6 -> MAlonzo.RTE.Infinity AgdaAny T6
du655 v0 = coe (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0))
name739 = "IO._.♯-1"
d739 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T6
d739 v0 v1 v2 v3 v4 = du739 v0 v3 v4
du739 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T6
du739 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (\ v3 v4 v5 -> C28 v4 v5) erased (du813 (coe v0) (coe v1))
            (du917 (coe v2))))
name813 = "IO._._.♯-2"
d813 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny -> MAlonzo.RTE.Infinity AgdaAny T6
d813 v0 v1 v2 v3 v4 = du813 v0 v3
du813 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
du813 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du64
               (coe v0)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))
name917 = "IO._._.♯-3"
d917 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny T6
d917 v0 v1 v2 v3 v4 v5 = du917 v4 v5
du917 ::
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity AgdaAny T6
du917 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (C18
               (coe
                  (MAlonzo.Code.Codata.Musical.Colist.C66
                     (coe v0) (coe (du1071 (coe v1))))))))
name1071 = "IO._._._.♯-5"
d1071 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  AgdaAny ->
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny)
d1071 v0 v1 v2 v3 v4 v5 = du1071 v5
du1071 ::
  MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny AgdaAny)
du1071 v0
  = coe (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0))
name1695 = "IO._.♯-6"
d1695 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d1695 v0 v1 v2 v3 = du1695 v2
du1695 :: T6 -> MAlonzo.RTE.Infinity AgdaAny T6
du1695 v0
  = coe (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe v0))
name1779 = "IO._.♯-7"
d1779 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d1779 v0 v1 v2 v3 = du1779 v0 v3
du1779 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
du1779 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (\ v2 v3 v4 -> C36 v3 v4) erased (du1839 (coe v0) (coe v1))
            du1923))
name1839 = "IO._._.♯-8"
d1839 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d1839 v0 v1 v2 v3 = du1839 v0 v3
du1839 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
du1839 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (du78
               (coe v0)
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))
name1923 = "IO._._.♯-9"
d1923 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  T6 ->
  MAlonzo.RTE.Infinity
    AgdaAny (MAlonzo.Code.Codata.Musical.Colist.T54 AgdaAny T6) ->
  MAlonzo.RTE.Infinity AgdaAny T6
d1923 v0 v1 v2 v3 = du1923
du1923 :: MAlonzo.RTE.Infinity AgdaAny T6
du1923
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe (C18 (coe (MAlonzo.Code.Level.C20 erased)))))
name2483 = "IO._.♯-10"
d2483 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2483 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe (C14 (coe MAlonzo.Code.IO.Primitive.d24 v0 v1))))
name2527 = "IO._.♯-12"
d2527 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2527 v0 v1 = du2527
du2527 :: MAlonzo.RTE.Infinity AgdaAny T6
du2527
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe (C18 erased)))
name2627 = "IO._.♯-13"
d2627 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2627 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe (C14 (coe MAlonzo.Code.IO.Primitive.d26 v0 v1))))
name2671 = "IO._.♯-15"
d2671 ::
  MAlonzo.Code.Agda.Builtin.String.T6 ->
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2671 v0 v1 = du2671
du2671 :: MAlonzo.RTE.Infinity AgdaAny T6
du2671
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe (C18 erased)))
name2763 = "IO._.♯-16"
d2763 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2763 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe (C14 (coe MAlonzo.Code.IO.Primitive.d28 v0))))
name2787 = "IO._.♯-18"
d2787 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2787 v0 = du2787
du2787 :: MAlonzo.RTE.Infinity AgdaAny T6
du2787
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe (C18 erased)))
name2839 = "IO._.♯-19"
d2839 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2839 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe (C14 (coe MAlonzo.Code.IO.Primitive.d30 v0))))
name2863 = "IO._.♯-21"
d2863 ::
  MAlonzo.Code.Codata.Musical.Colist.T54
    AgdaAny MAlonzo.Code.Agda.Builtin.Char.T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6
d2863 v0 = du2863
du2863 :: MAlonzo.RTE.Infinity AgdaAny T6
du2863
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe (C18 erased)))
