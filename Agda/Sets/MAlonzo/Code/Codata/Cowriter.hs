{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Cowriter where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Conat
import qualified MAlonzo.Code.Codata.Delay
import qualified MAlonzo.Code.Codata.Stream
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Data.BoundedVec
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Vec.Base

name14 = "Codata.Cowriter.Cowriter"
d14 a0 a1 a2 a3 a4 = ()
data T14 = C26 AgdaAny | C28 AgdaAny MAlonzo.Code.Codata.Thunk.T10
name40 = "Codata.Cowriter._.fromDelay"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Delay.T10 -> T14
d40 v0 v1 v2 v3 = du40 v3
du40 :: MAlonzo.Code.Codata.Delay.T10 -> T14
du40 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Delay.C18 v1 -> coe (C26 (coe v1))
      MAlonzo.Code.Codata.Delay.C20 v1
        -> coe
             (C28
                erased
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v2 -> du40 (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Codata.Cowriter._.toDelay"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T14 -> MAlonzo.Code.Codata.Delay.T10
d62 v0 v1 v2 v3 v4 v5 = du62 v5
du62 :: T14 -> MAlonzo.Code.Codata.Delay.T10
du62 v0
  = case coe v0 of
      C26 v1 -> coe (MAlonzo.Code.Codata.Delay.C18 (coe v1))
      C28 v1 v2
        -> coe
             (MAlonzo.Code.Codata.Delay.C20
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du62 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Codata.Cowriter._.fromStream"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Stream.T10 -> T14
d72 v0 v1 v2 v3 v4 v5 = du72 v5
du72 :: MAlonzo.Code.Codata.Stream.T10 -> T14
du72 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Stream.C18 v1 v2
        -> coe
             (C28
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du72 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Codata.Cowriter._.repeat"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> AgdaAny -> T14
d80 v0 v1 v2 v3 v4 = du80 v4
du80 :: AgdaAny -> T14
du80 v0
  = coe (du72 (coe (MAlonzo.Code.Codata.Stream.du30 (coe v0))))
name84 = "Codata.Cowriter._.length"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T14 -> MAlonzo.Code.Codata.Conat.T6
d84 v0 v1 v2 v3 v4 v5 = du84 v5
du84 :: T14 -> MAlonzo.Code.Codata.Conat.T6
du84 v0
  = case coe v0 of
      C26 v1 -> coe MAlonzo.Code.Codata.Conat.C10
      C28 v1 v2
        -> coe
             (MAlonzo.Code.Codata.Conat.C12
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du84 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name94 = "Codata.Cowriter._.splitAt"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> Integer -> T14 -> MAlonzo.Code.Data.Sum.Base.T30
d94 v0 v1 v2 v3 v4 v5 = du94 v4 v5
du94 :: Integer -> T14 -> MAlonzo.Code.Data.Sum.Base.T30
du94 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Data.Sum.Base.C38
                (coe
                   (MAlonzo.Code.Agda.Builtin.Sigma.C32
                      (coe MAlonzo.Code.Data.Vec.Base.C28) (coe v1))))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C26 v3
               -> coe
                    (MAlonzo.Code.Data.Sum.Base.C42
                       (coe
                          (MAlonzo.Code.Agda.Builtin.Sigma.C32
                             (coe
                                (MAlonzo.Code.Data.BoundedVec.C20
                                   (coe v0) (coe (0 :: Integer))
                                   (coe MAlonzo.Code.Data.Vec.Base.C28)))
                             (coe v3))))
             C28 v3 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du74
                    (MAlonzo.Code.Data.Product.du160
                       (coe (MAlonzo.Code.Data.Vec.Base.C36 (coe v3))))
                    (MAlonzo.Code.Data.Product.du160
                       (coe (MAlonzo.Code.Data.BoundedVec.du36 (coe v3))))
                    (du94 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name114 = "Codata.Cowriter._.take"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> Integer -> T14 -> MAlonzo.Code.Data.Sum.Base.T30
d114 v0 v1 v2 v3 v4 v5 = du114 v4 v5
du114 :: Integer -> T14 -> MAlonzo.Code.Data.Sum.Base.T30
du114 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du80 MAlonzo.Code.Agda.Builtin.Sigma.d28
      (du94 (coe v0) (coe v1))
name120 = "Codata.Cowriter._._++_"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> [AgdaAny] -> T14 -> T14
d120 v0 v1 v2 v3 v4 v5 v6 = du120 v5 v6
du120 :: [AgdaAny] -> T14 -> T14
du120 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             (C28
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe (\ v4 -> du120 (coe v3) (coe v1))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Codata.Cowriter._._⁺++_"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T10 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T14
d134 v0 v1 v2 v3 v4 v5 v6 = du134 v5 v6
du134 ::
  MAlonzo.Code.Data.List.NonEmpty.T10 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T14
du134 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.C24 v2 v3
        -> coe
             (C28
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du120 (coe v3) (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name146 = "Codata.Cowriter._.concat"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T14 -> T14
d146 v0 v1 v2 v3 v4 v5 = du146 v5
du146 :: T14 -> T14
du146 v0
  = case coe v0 of
      C26 v1 -> coe v0
      C28 v1 v2
        -> coe
             (du134
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du146 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name178 = "Codata.Cowriter._.map"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T14 -> T14
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du178 v9 v10 v11
du178 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T14 -> T14
du178 v0 v1 v2
  = case coe v2 of
      C26 v3 -> coe (C26 (coe v1 v3))
      C28 v3 v4
        -> coe
             (C28
                (coe v0 v3)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v5 ->
                            du178
                              (coe v0) (coe v1)
                              (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Codata.Cowriter._.map₁"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T14 -> T14
d214 v0 v1 v2 v3 v4 v5 v6 v7 = du214 v7
du214 :: (AgdaAny -> AgdaAny) -> T14 -> T14
du214 v0 = coe (du178 (coe v0) (coe (\ v1 -> v1)))
name220 = "Codata.Cowriter._.map₂"
d220 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T14 -> T14
d220 v0 v1 v2 v3 v4 v5 v6 = du220
du220 :: (AgdaAny -> AgdaAny) -> T14 -> T14
du220 = coe (du178 (coe (\ v0 -> v0)))
name224 = "Codata.Cowriter._.ap"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T14 -> T14 -> T14
d224 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du224 v7 v8
du224 :: T14 -> T14 -> T14
du224 v0 v1
  = case coe v0 of
      C26 v2 -> coe du220 v2 v1
      C28 v2 v3
        -> coe
             (C28
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du224 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased) (coe v1))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name240 = "Codata.Cowriter._._>>=_"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T14 -> (AgdaAny -> T14) -> T14
d240 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du240 v7 v8
du240 :: T14 -> (AgdaAny -> T14) -> T14
du240 v0 v1
  = case coe v0 of
      C26 v2 -> coe v1 v2
      C28 v2 v3
        -> coe
             (C28
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du240 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased) (coe v1))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name272 = "Codata.Cowriter._.unfold"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) -> AgdaAny -> T14
d272 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du272 v7 v8
du272 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) -> AgdaAny -> T14
du272 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
               -> coe
                    (C28
                       (coe v4)
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe (\ v6 -> du272 (coe v0) (coe v5))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe (C26 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
