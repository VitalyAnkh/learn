{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core

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
      C12 v1 -> coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name26 = "Codata.Musical.Conat.fromℕ"
d26 :: Integer -> T6
d26 v0
  = case coe v0 of
      0 -> coe C8
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (C12 (coe (d199 (coe v1))))
name34 = "Codata.Musical.Conat.fromℕ-injective"
d34 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d34 = erased
name44 = "Codata.Musical.Conat.∞ℕ"
d44 :: T6
d44 = coe (C12 (coe d431))
name46 = "Codata.Musical.Conat._+_"
d46 :: T6 -> T6 -> T6
d46 v0 v1
  = case coe v0 of
      C8 -> coe v1
      C12 v2 -> coe (C12 (coe (d481 (coe v2) (coe v1))))
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
d78 :: MAlonzo.Code.Relation.Binary.T128
d78
  = coe
      (\ v0 v1 v2 -> MAlonzo.Code.Relation.Binary.C1037 v2) erased erased
      (MAlonzo.Code.Relation.Binary.Core.C5081
         (coe d84) (coe d88) (coe d92))
name84 = "Codata.Musical.Conat._.refl"
d84 :: T6 -> T54
d84 v0
  = case coe v0 of
      C8 -> coe C56
      C12 v1 -> coe (\ v2 v3 v4 -> C64 v4) erased erased (d1059 (coe v1))
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
                    C12 v7
                      -> coe
                           (\ v8 v9 v10 -> C64 v10) erased erased
                           (d1263 (coe v6) (coe v7) (coe v5))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name92 = "Codata.Musical.Conat._.trans"
d92 :: T6 -> T6 -> T6 -> T54 -> T54 -> T54
d92 v0 v1 v2 v3 v4
  = case coe v3 of
      C56 -> coe (seq (coe v4) (coe v3))
      C64 v7
        -> case coe v4 of
             C64 v10
               -> case coe v0 of
                    C12 v11
                      -> case coe v1 of
                           C12 v12
                             -> case coe v2 of
                                  C12 v13
                                    -> coe
                                         (\ v14 v15 v16 -> C64 v16) erased erased
                                         (d1927 (coe v12) (coe v13) (coe v11) (coe v7) (coe v10))
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
             (MAlonzo.Code.Codata.Conat.C12
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v2 ->
                            du100
                              (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Codata.Musical.Conat.toMusical"
d106 :: MAlonzo.Code.Codata.Conat.T6 -> T6
d106 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Conat.C10 -> coe C8
      MAlonzo.Code.Codata.Conat.C12 v1
        -> coe (C12 (coe (d2835 (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name199 = "Codata.Musical.Conat._.♯-0"
d199 :: Integer -> MAlonzo.RTE.Infinity AgdaAny T6
d199 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe (d26 (coe v0))))
name431 = "Codata.Musical.Conat._.♯-2"
d431 :: MAlonzo.RTE.Infinity AgdaAny T6
d431 = coe (MAlonzo.Code.Agda.Builtin.Coinduction.C16 (coe d44))
name481 = "Codata.Musical.Conat._.♯-3"
d481 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  T6 -> MAlonzo.RTE.Infinity AgdaAny T6
d481 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (d46
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0)))
               (coe v1))))
name1059 = "Codata.Musical.Conat._._.♯-4"
d1059 ::
  MAlonzo.RTE.Infinity AgdaAny T6 -> MAlonzo.RTE.Infinity AgdaAny T54
d1059 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (d84 (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0))))))
name1263 = "Codata.Musical.Conat._._.♯-5"
d1263 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.RTE.Infinity AgdaAny T54
d1263 v0 v1 v2
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (d88
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2))))))
name1927 = "Codata.Musical.Conat._._.♯-6"
d1927 ::
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T6 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.RTE.Infinity AgdaAny T54 ->
  MAlonzo.RTE.Infinity AgdaAny T54
d1927 v0 v1 v2 v3 v4
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe
            (d92
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v2)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v0)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v1)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v3)))
               (coe (MAlonzo.Code.Agda.Builtin.Coinduction.d22 (coe v4))))))
name2835 = "Codata.Musical.Conat._.♯-7"
d2835 ::
  MAlonzo.Code.Codata.Thunk.T10 -> MAlonzo.RTE.Infinity AgdaAny T6
d2835 v0
  = coe
      (MAlonzo.Code.Agda.Builtin.Coinduction.C16
         (coe (d106 (coe MAlonzo.Code.Codata.Thunk.d24 v0 erased))))
