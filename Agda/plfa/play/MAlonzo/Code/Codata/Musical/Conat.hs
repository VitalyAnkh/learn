{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Musical.Conat where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Coinduction
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Codata.Conat
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name6 = "Codata.Musical.Conat.Coℕ"
d6 = ()
data T6 = C8 | C12 (MAlonzo.RTE.Infinity AgdaAny T6)
name20 = "Codata.Musical.Conat.Coℕ-injective.suc-injective"
d20 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d20 = erased
name22 = "Codata.Musical.Conat.pred"
d22 :: T6 -> T6
d22 v0
  = case coe v0 of
      C8 -> coe v0
      C12 v1 -> coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name26 = "Codata.Musical.Conat.fromℕ"
d26 :: Integer -> T6
d26 v0
  = case coe v0 of
      0 -> coe C8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C12 (coe d335 (coe v1))
name34 = "Codata.Musical.Conat.fromℕ-injective"
d34 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d34 = erased
name44 = "Codata.Musical.Conat.∞ℕ"
d44 :: T6
d44 = coe C12 (coe d1001)
name46 = "Codata.Musical.Conat._+_"
d46 :: T6 -> T6 -> T6
d46 v0 v1
  = case coe v0 of
      C8 -> coe v1
      C12 v2 -> coe C12 (coe d1075 (coe v2) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Codata.Musical.Conat._≈_"
d54 a0 a1 = ()
data T54 = C56 | C64 (MAlonzo.RTE.Infinity AgdaAny T54)
name76 = "Codata.Musical.Conat.≈-injective.suc-injective"
d76 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d76 = erased
name78 = "Codata.Musical.Conat.setoid"
d78 :: MAlonzo.Code.Relation.Binary.Bundles.T44
d78
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C483 (coe d84) (coe d88)
         (coe d92))
name84 = "Codata.Musical.Conat._.refl"
d84 :: T6 -> T54
d84 v0
  = case coe v0 of
      C8 -> coe C56
      C12 v1 -> coe C64 (d2087 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Codata.Musical.Conat._.sym"
d88 :: T6 -> T6 -> T54 -> T54
d88 v0 v1 v2
  = case coe v2 of
      C56 -> coe v2
      C64 v5
        -> case coe v0 of
             C12 v6
               -> case coe v1 of
                    C12 v7 -> coe C64 (d2401 (coe v6) (coe v7) (coe v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name92 = "Codata.Musical.Conat._.trans"
d92 :: T6 -> T6 -> T6 -> T54 -> T54 -> T54
d92 v0 v1 v2 v3 v4
  = case coe v3 of
      C56 -> coe seq (coe v4) (coe v3)
      C64 v7
        -> case coe v0 of
             C12 v8
               -> case coe v1 of
                    C12 v9
                      -> case coe v4 of
                           C64 v12
                             -> case coe v2 of
                                  C12 v13
                                    -> coe
                                         C64 (d3341 (coe v8) (coe v9) (coe v7) (coe v13) (coe v12))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Codata.Musical.Conat.fromMusical"
d100 ::
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T6 -> MAlonzo.Code.Codata.Conat.T6
d100 v0 v1 = du100 v1
du100 :: T6 -> MAlonzo.Code.Codata.Conat.T6
du100 v0
  = case coe v0 of
      C8 -> coe MAlonzo.Code.Codata.Conat.C10
      C12 v1
        -> coe
             MAlonzo.Code.Codata.Conat.C12
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v2 ->
                      coe
                        du100 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))))
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Codata.Musical.Conat.toMusical"
d106 :: MAlonzo.Code.Codata.Conat.T6 -> T6
d106 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Conat.C10 -> coe C8
      MAlonzo.Code.Codata.Conat.C12 v1 -> coe C12 (coe d4571 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name335 = "Codata.Musical.Conat._.♯-0"
d335 :: Integer -> MAlonzo.RTE.Infinity AgdaAny T6
d335 v0
  = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe d26 (coe v0))
name1001 = "Codata.Musical.Conat._.♯-2"
d1001 :: MAlonzo.RTE.Infinity AgdaAny T6
d1001 = coe MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe d44)
name1075 = "Codata.Musical.Conat._.♯-3"
d1075 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  T6 -> MAlonzo.RTE.Infinity AgdaAny T6
d1075 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         d46 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0))
         (coe v1))
name2087 = "Codata.Musical.Conat._._.♯-4"
d2087 ::
  MAlonzo.RTE.Infinity AgdaAny T6 -> MAlonzo.RTE.Infinity AgdaAny T54
d2087 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe d84 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0)))
name2401 = "Codata.Musical.Conat._._.♯-5"
d2401 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.RTE.Infinity AgdaAny T54
d2401 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         d88 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
name3341 = "Codata.Musical.Conat._._.♯-6"
d3341 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.RTE.Infinity AgdaAny T54
d3341 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe
         d92 (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))
         (coe MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4)))
name4571 = "Codata.Musical.Conat._.♯-7"
d4571 ::
  MAlonzo.Code.Codata.Thunk.T10 -> MAlonzo.RTE.Infinity AgdaAny T6
d4571 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Coinduction.C16
      (coe d106 (coe MAlonzo.Code.Codata.Thunk.d24 v0 erased))
