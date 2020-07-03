{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Cowriter where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Agda.Builtin.Unit
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
import qualified MAlonzo.Code.Data.Vec.Bounded.Base

name30 = "Codata.Cowriter.Cowriter"
d30 a0 a1 a2 a3 a4 = ()
data T30 = C38 AgdaAny | C40 AgdaAny MAlonzo.Code.Codata.Thunk.T10
name44 = "Codata.Cowriter.fromDelay"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Delay.T10 -> T30
d44 v0 v1 v2 v3 = du44 v3
du44 :: MAlonzo.Code.Codata.Delay.T10 -> T30
du44 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Delay.C18 v1 -> coe C38 (coe v1)
      MAlonzo.Code.Codata.Delay.C20 v1
        -> coe
             C40 (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v2 -> coe du44 (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Codata.Cowriter.toDelay"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T30 -> MAlonzo.Code.Codata.Delay.T10
d54 v0 v1 v2 v3 v4 v5 = du54 v5
du54 :: T30 -> MAlonzo.Code.Codata.Delay.T10
du54 v0
  = case coe v0 of
      C38 v1 -> coe MAlonzo.Code.Codata.Delay.C18 (coe v1)
      C40 v1 v2
        -> coe
             MAlonzo.Code.Codata.Delay.C20
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du54 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name64 = "Codata.Cowriter.fromStream"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Stream.T10 -> T30
d64 v0 v1 v2 v3 v4 v5 = du64 v5
du64 :: MAlonzo.Code.Codata.Stream.T10 -> T30
du64 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Stream.C18 v1 v2
        -> coe
             C40 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du64 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Codata.Cowriter.repeat"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T30
d72 v0 v1 v2 v3 v4 = du72 v4
du72 :: AgdaAny -> T30
du72 v0 = coe du64 (coe MAlonzo.Code.Codata.Stream.du30 (coe v0))
name76 = "Codata.Cowriter.length"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T30 -> MAlonzo.Code.Codata.Conat.T6
d76 v0 v1 v2 v3 v4 v5 = du76 v5
du76 :: T30 -> MAlonzo.Code.Codata.Conat.T6
du76 v0
  = case coe v0 of
      C38 v1 -> coe MAlonzo.Code.Codata.Conat.C10
      C40 v1 v2
        -> coe
             MAlonzo.Code.Codata.Conat.C12
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du76 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name86 = "Codata.Cowriter.splitAt"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
d86 v0 v1 v2 v3 v4 v5 = du86 v4 v5
du86 :: Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
du86 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C38
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe MAlonzo.Code.Data.Vec.Base.C28) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C38 v3
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C42
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C32
                       (coe
                          MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer)
                          (coe MAlonzo.Code.Data.Vec.Base.C28))
                       (coe v3))
             C40 v3 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du82
                    (coe
                       MAlonzo.Code.Data.Product.du158
                       (coe MAlonzo.Code.Data.Vec.Base.C36 (coe v3)))
                    (coe
                       MAlonzo.Code.Data.Product.du158
                       (coe MAlonzo.Code.Data.Vec.Bounded.Base.du308 (coe v3)))
                    (coe du86 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Codata.Cowriter.take"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
d106 v0 v1 v2 v3 v4 v5 = du106 v4 v5
du106 :: Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
du106 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du88 MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe du86 (coe v0) (coe v1))
name112 = "Codata.Cowriter._++_"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> [AgdaAny] -> T30 -> T30
d112 v0 v1 v2 v3 v4 v5 v6 = du112 v5 v6
du112 :: [AgdaAny] -> T30 -> T30
du112 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             C40 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe (\ v4 -> coe du112 (coe v3) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name126 = "Codata.Cowriter._⁺++_"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T30
d126 v0 v1 v2 v3 v4 v5 v6 = du126 v5 v6
du126 ::
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T30
du126 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.C34 v2 v3
        -> coe
             C40 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du112 (coe v3) (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name138 = "Codata.Cowriter.concat"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T30 -> T30
d138 v0 v1 v2 v3 v4 v5 = du138 v5
du138 :: T30 -> T30
du138 v0
  = case coe v0 of
      C38 v1 -> coe v0
      C40 v1 v2
        -> coe
             du126 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du138 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name150 = "Codata.Cowriter.map"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
d150 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du150 v9 v10 v11
du150 :: (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T30 -> T30
du150 v0 v1 v2
  = case coe v2 of
      C38 v3 -> coe C38 (coe v1 v3)
      C40 v3 v4
        -> coe
             C40 (coe v0 v3)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v5 ->
                      coe
                        du150 (coe v0) (coe v1)
                        (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name170 = "Codata.Cowriter.map₁"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T30 -> T30
d170 v0 v1 v2 v3 v4 v5 v6 v7 = du170 v7
du170 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du170 v0 = coe du150 (coe v0) (coe (\ v1 -> v1))
name176 = "Codata.Cowriter.map₂"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T30 -> T30
d176 v0 v1 v2 v3 v4 v5 v6 = du176
du176 :: (AgdaAny -> AgdaAny) -> T30 -> T30
du176 = coe du150 (coe (\ v0 -> v0))
name180 = "Codata.Cowriter.ap"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T30 -> T30 -> T30
d180 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du180 v7 v8
du180 :: T30 -> T30 -> T30
du180 v0 v1
  = case coe v0 of
      C38 v2 -> coe du176 v2 v1
      C40 v2 v3
        -> coe
             C40 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du180 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name196 = "Codata.Cowriter._>>=_"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T30 -> (AgdaAny -> T30) -> T30
d196 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du196 v7 v8
du196 :: T30 -> (AgdaAny -> T30) -> T30
du196 v0 v1
  = case coe v0 of
      C38 v2 -> coe v1 v2
      C40 v2 v3
        -> coe
             C40 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du196 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name212 = "Codata.Cowriter.unfold"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) -> AgdaAny -> T30
d212 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du212 v7 v8
du212 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) -> AgdaAny -> T30
du212 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
               -> coe
                    C40 (coe v4)
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe (\ v6 -> coe du212 (coe v0) (coe v5))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe C38 (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name240 = "Codata.Cowriter.splitAt′"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
d240 v0 v1 v2 v3 v4 v5 = du240 v4 v5
du240 :: Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
du240 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Sum.Base.C38
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe MAlonzo.Code.Data.Vec.Base.C28) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C38 v3
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C42
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C32
                       (coe
                          MAlonzo.Code.Data.BoundedVec.C20 (coe v0) (coe (0 :: Integer))
                          (coe MAlonzo.Code.Data.Vec.Base.C28))
                       (coe v3))
             C40 v3 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.du82
                    (coe
                       MAlonzo.Code.Data.Product.du158
                       (coe MAlonzo.Code.Data.Vec.Base.C36 (coe v3)))
                    (coe
                       MAlonzo.Code.Data.Product.du158
                       (coe MAlonzo.Code.Data.BoundedVec.du36 (coe v3)))
                    (coe du240 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name260 = "Codata.Cowriter.take′"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
d260 v0 v1 v2 v3 v4 v5 = du260 v4 v5
du260 :: Integer -> T30 -> MAlonzo.Code.Data.Sum.Base.T30
du260 v0 v1
  = coe
      MAlonzo.Code.Data.Sum.Base.du88 MAlonzo.Code.Agda.Builtin.Sigma.d28
      (coe du240 (coe v0) (coe v1))
