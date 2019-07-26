{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Qpeano where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

name2 = "peano.ℕ"
d2 = ()
data T2 = C4 | C6 T2
name8 = "peano._+_"
d8 :: T2 -> T2 -> T2
d8 v0 v1
  = case coe v0 of
      C4 -> coe v1
      C6 v2
        -> let v3 = C6 (coe (d8 (coe v2) (coe v1))) in
           case coe v1 of
             C4 -> coe v1
             _ -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name18 = "peano._*_"
d18 :: T2 -> T2 -> T2
d18 v0 v1
  = case coe v0 of
      C4 -> coe v0
      C6 v2
        -> let v3 = d8 (coe v1) (coe (d18 (coe v2) (coe v1))) in
           case coe v2 of
             C4 -> coe v1
             _ -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name28 = "peano.Bool"
d28 = ()
data T28 = C30 | C32
name34 = "peano._or_"
d34 :: T28 -> T28 -> T28
d34 v0 v1
  = let v2 = C32 in
    case coe v0 of
      C30
        -> case coe v1 of
             C30 -> coe v1
             _ -> coe v2
      _ -> coe v2
name38 = "peano.if_then_else_"
d38 :: () -> T28 -> AgdaAny -> AgdaAny -> AgdaAny
d38 v0 v1 v2 v3 = du38 v1 v2 v3
du38 :: T28 -> AgdaAny -> AgdaAny -> AgdaAny
du38 v0 v1 v2
  = case coe v0 of
      C30 -> coe v2
      C32 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "peano.List"
d50 a0 = ()
data T50 = C54 | C56 T50
name60 = "peano.identity"
d60 :: () -> AgdaAny -> AgdaAny
d60 v0 v1 = du60 v1
du60 :: AgdaAny -> AgdaAny
du60 v0 = coe v0
name66 = "peano.MyType"
d66 = ()
data T66 = C68
name70 = "peano.zero′"
d70 :: T66
d70 = erased
name80 = "peano.apply"
d80 ::
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d80 v0 v1 v2 v3 = du80 v2 v3
du80 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du80 v0 v1 = coe v0 v1
name92 = "peano.identity₂"
d92 :: () -> AgdaAny -> AgdaAny
d92 v0 v1 = du92 v1
du92 :: AgdaAny -> AgdaAny
du92 v0 = coe v0
name100 = "peano.identity₃"
d100 :: () -> AgdaAny -> AgdaAny
d100 v0 v1 = du100 v1
du100 :: AgdaAny -> AgdaAny
du100 v0 = coe v0
name108 = "peano.identity₄"
d108 :: () -> AgdaAny -> AgdaAny
d108 v0 v1 = du108 v1
du108 :: AgdaAny -> AgdaAny
du108 v0 = coe v0
name116 = "peano.id"
d116 :: () -> AgdaAny -> AgdaAny
d116 v0 v1 = du116 v1
du116 :: AgdaAny -> AgdaAny
du116 v0 = coe v0
name124 = "peano.silly"
d124 :: () -> AgdaAny -> AgdaAny
d124 v0 v1 = du124 v1
du124 :: AgdaAny -> AgdaAny
du124 v0 = coe v0
name128 = "peano.false′"
d128 :: T28
d128 = coe C30
name130 = "peano.one"
d130 :: T2
d130 = coe (C6 (coe C4))
name152 = "peano._o_"
d152 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d152 v0 v1 v2 v3 v4 v5 = du152 v3 v4 v5
du152 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du152 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name160 = "peano._≤_"
d160 a0 a1 = ()
data T160 = C164 | C170 T160
