{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Conat where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Data.Empty

name6 = "Codata.Conat.Conat"
d6 a0 = ()
data T6 = C10 | C12 MAlonzo.Code.Codata.Thunk.T10
name16 = "Codata.Conat.infinity"
d16 :: MAlonzo.Code.Agda.Builtin.Size.T8 -> T6
d16 v0 = du16
du16 :: T6
du16
  = coe
      C12 (coe MAlonzo.Code.Codata.Thunk.C5 (coe (\ v0 -> coe du16)))
name20 = "Codata.Conat.fromℕ"
d20 :: Integer -> T6
d20 v0
  = case coe v0 of
      0 -> coe C10
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             C12 (coe MAlonzo.Code.Codata.Thunk.C5 (coe (\ v2 -> d20 (coe v1))))
name30 = "Codata.Conat.pred"
d30 ::
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Agda.Builtin.Size.T10 AgdaAny -> T6 -> T6
d30 v0 v1 v2 = du30 v2
du30 :: T6 -> T6
du30 v0
  = case coe v0 of
      C10 -> coe v0
      C12 v1 -> coe MAlonzo.Code.Codata.Thunk.d24 v1 erased
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Codata.Conat._∸_"
d34 :: T6 -> Integer -> T6
d34 v0 v1
  = case coe v1 of
      0 -> coe v0
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe d34 (coe du30 (coe v0)) (coe v2)
name44 = "Codata.Conat._ℕ+_"
d44 :: Integer -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T6 -> T6
d44 v0 v1 v2 = du44 v0 v2
du44 :: Integer -> T6 -> T6
du44 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             C12
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe (\ v3 -> coe du44 (coe v2) (coe v1))))
name56 = "Codata.Conat._+ℕ_"
d56 :: MAlonzo.Code.Agda.Builtin.Size.T8 -> T6 -> Integer -> T6
d56 v0 v1 v2 = du56 v1 v2
du56 :: T6 -> Integer -> T6
du56 v0 v1
  = case coe v0 of
      C10 -> coe d20 (coe v1)
      C12 v2
        -> coe
             C12
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 ->
                      coe du56 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name68 = "Codata.Conat._+_"
d68 :: MAlonzo.Code.Agda.Builtin.Size.T8 -> T6 -> T6 -> T6
d68 v0 v1 v2 = du68 v1 v2
du68 :: T6 -> T6 -> T6
du68 v0 v1
  = case coe v0 of
      C10 -> coe v1
      C12 v2
        -> coe
             C12
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 ->
                      coe du68 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Codata.Conat._*_"
d80 :: MAlonzo.Code.Agda.Builtin.Size.T8 -> T6 -> T6 -> T6
d80 v0 v1 v2 = du80 v1 v2
du80 :: T6 -> T6 -> T6
du80 v0 v1
  = case coe v1 of
      C10 -> coe v1
      C12 v2
        -> case coe v0 of
             C10 -> coe v0
             C12 v3
               -> coe
                    C12
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v4 ->
                             coe
                               du68 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased)
                               (coe
                                  du80 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased) (coe v1)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name94 = "Codata.Conat._⊔_"
d94 :: MAlonzo.Code.Agda.Builtin.Size.T8 -> T6 -> T6 -> T6
d94 v0 v1 v2 = du94 v1 v2
du94 :: T6 -> T6 -> T6
du94 v0 v1
  = case coe v0 of
      C10 -> coe v1
      C12 v2
        -> case coe v1 of
             C10 -> coe v0
             C12 v3
               -> coe
                    C12
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v4 ->
                             coe
                               du94 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Codata.Conat._⊓_"
d108 :: MAlonzo.Code.Agda.Builtin.Size.T8 -> T6 -> T6 -> T6
d108 v0 v1 v2 = du108 v1 v2
du108 :: T6 -> T6 -> T6
du108 v0 v1
  = case coe v0 of
      C10 -> coe v0
      C12 v2
        -> case coe v1 of
             C10 -> coe v1
             C12 v3
               -> coe
                    C12
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v4 ->
                             coe
                               du108 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name120 = "Codata.Conat.Finite"
d120 a0 = ()
data T120 = C122 | C126 T120
name130 = "Codata.Conat.toℕ"
d130 :: T6 -> T120 -> Integer
d130 v0 v1
  = case coe v1 of
      C122 -> coe (0 :: Integer)
      C126 v3
        -> case coe v0 of
             C12 v4
               -> coe
                    addInt (coe (1 :: Integer))
                    (coe d130 (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Codata.Conat.¬Finite∞"
d134 :: T120 -> MAlonzo.Code.Data.Empty.T4
d134 = erased
name138 = "Codata.Conat._ℕ≤_"
d138 a0 a1 = ()
data T138 = C142 | C148 T138
name150 = "Codata.Conat._ℕ<_"
d150 :: Integer -> T6 -> ()
d150 = erased
name158 = "Codata.Conat._ℕ≤infinity"
d158 :: Integer -> T138
d158 v0
  = case coe v0 of
      0 -> coe C142
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C148 (d158 (coe v1))
