{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Stream where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Vec.Base

name10 = "Codata.Stream.Stream"
d10 a0 a1 a2 = ()
data T10 = C18 AgdaAny MAlonzo.Code.Codata.Thunk.T10
name30 = "Codata.Stream._.repeat"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> AgdaAny -> T10
d30 v0 v1 v2 v3 = du30 v3
du30 :: AgdaAny -> T10
du30 v0
  = coe
      C18 (coe v0)
      (coe
         MAlonzo.Code.Codata.Thunk.C5 (coe (\ v1 -> coe du30 (coe v0))))
name38 = "Codata.Stream._.head"
d38 :: T10 -> AgdaAny
d38 v0
  = case coe v0 of
      C18 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name48 = "Codata.Stream._.tail"
d48 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Agda.Builtin.Size.T10 AgdaAny -> T10 -> T10
d48 v0 v1 v2 v3 v4 = du48 v4
du48 :: T10 -> T10
du48 v0
  = case coe v0 of
      C18 v1 v2 -> coe MAlonzo.Code.Codata.Thunk.d24 v2 erased
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Codata.Stream._.lookup"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T10 -> AgdaAny
d54 v0 v1 v2 v3 = du54 v2 v3
du54 :: Integer -> T10 -> AgdaAny
du54 v0 v1
  = case coe v0 of
      0 -> coe d38 (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe du54 (coe v2) (coe du48 (coe v1))
name64 = "Codata.Stream._.splitAt"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d64 v0 v1 v2 v3 = du64 v2 v3
du64 :: Integer -> T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du64 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe MAlonzo.Code.Data.Vec.Base.C28) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C18 v3 v4
               -> coe
                    MAlonzo.Code.Data.Product.du158
                    (coe MAlonzo.Code.Data.Vec.Base.C36 (coe v3))
                    (coe du64 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name78 = "Codata.Stream._.take"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Data.Vec.Base.T24
d78 v0 v1 v2 v3 = du78 v2 v3
du78 :: Integer -> T10 -> MAlonzo.Code.Data.Vec.Base.T24
du78 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe du64 (coe v0) (coe v1))
name84 = "Codata.Stream._.drop"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T10 -> T10
d84 v0 v1 v2 v3 = du84 v2 v3
du84 :: Integer -> T10 -> T10
du84 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe du64 (coe v0) (coe v1))
name92 = "Codata.Stream._._++_"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> [AgdaAny] -> T10 -> T10
d92 v0 v1 v2 v3 v4 = du92 v3 v4
du92 :: [AgdaAny] -> T10 -> T10
du92 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             C18 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe (\ v4 -> coe du92 (coe v3) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Codata.Stream._._⁺++_"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T10
d106 v0 v1 v2 v3 v4 = du106 v3 v4
du106 ::
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T10
du106 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.C34 v2 v3
        -> coe
             C18 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du92 (coe v3) (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name118 = "Codata.Stream._.cycle"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T22 -> T10
d118 v0 v1 v2 v3 = du118 v3
du118 :: MAlonzo.Code.Data.List.NonEmpty.T22 -> T10
du118 v0
  = coe
      du106 (coe v0)
      (coe
         MAlonzo.Code.Codata.Thunk.C5 (coe (\ v1 -> coe du118 (coe v0))))
name126 = "Codata.Stream._.concat"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10
d126 v0 v1 v2 v3 = du126 v3
du126 :: T10 -> T10
du126 v0
  = case coe v0 of
      C18 v1 v2
        -> coe
             du106 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du126 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name136 = "Codata.Stream._.interleave"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T10 -> MAlonzo.Code.Codata.Thunk.T10 -> T10
d136 v0 v1 v2 v3 v4 = du136 v3 v4
du136 :: T10 -> MAlonzo.Code.Codata.Thunk.T10 -> T10
du136 v0 v1
  = case coe v0 of
      C18 v2 v3
        -> coe
             C18 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du136 (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name148 = "Codata.Stream._.chunksOf"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T10 -> T10
d148 v0 v1 v2 = du148 v2
du148 :: Integer -> T10 -> T10
du148 v0 = coe du160 (coe v0) (coe v0) (coe (\ v1 -> v1))
name160 = "Codata.Stream._.ChunksOf.chunksOfAcc"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T10 -> T10
d160 v0 v1 v2 v3 v4 v5 v6 = du160 v2 v4 v5 v6
du160 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T10 -> T10
du160 v0 v1 v2 v3
  = case coe v1 of
      0 -> coe
             C18 (coe v2 (coe MAlonzo.Code.Data.Vec.Base.C28))
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 -> coe du160 (coe v0) (coe v0) (coe (\ v5 -> v5)) (coe v3))))
      _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v3 of
             C18 v5 v6
               -> coe
                    du160 (coe v0) (coe v4)
                    (coe (\ v7 -> coe v2 (coe MAlonzo.Code.Data.Vec.Base.C36 v5 v7)))
                    (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
name192 = "Codata.Stream._.map"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T10 -> T10
d192 v0 v1 v2 v3 v4 v5 v6 = du192 v5 v6
du192 :: (AgdaAny -> AgdaAny) -> T10 -> T10
du192 v0 v1
  = case coe v1 of
      C18 v2 v3
        -> coe
             C18 (coe v0 v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du192 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Codata.Stream._.ap"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d204 v0 v1 v2 v3 v4 v5 v6 = du204 v5 v6
du204 :: T10 -> T10 -> T10
du204 v0 v1
  = case coe v0 of
      C18 v2 v3
        -> case coe v1 of
             C18 v4 v5
               -> coe
                    C18 (coe v2 v4)
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v6 ->
                             coe
                               du204 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v5 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name218 = "Codata.Stream._.unfold"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) -> AgdaAny -> T10
d218 v0 v1 v2 v3 v4 v5 v6 = du218 v5 v6
du218 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) -> AgdaAny -> T10
du218 v0 v1
  = coe
      C18 (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0 v1))
      (coe
         MAlonzo.Code.Codata.Thunk.C5
         (coe
            (\ v2 ->
               coe
                 du218 (coe v0)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v0 v1)))))
name232 = "Codata.Stream._.scanl"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T10 -> T10
d232 v0 v1 v2 v3 v4 v5 v6 v7 = du232 v5 v6 v7
du232 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T10 -> T10
du232 v0 v1 v2
  = case coe v2 of
      C18 v3 v4
        -> coe
             C18 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v5 ->
                      coe
                        du232 (coe v0) (coe v0 v1 v3)
                        (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name262 = "Codata.Stream._.zipWith"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
d262 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du262 v7 v8 v9
du262 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
du262 v0 v1 v2
  = case coe v1 of
      C18 v3 v4
        -> case coe v2 of
             C18 v5 v6
               -> coe
                    C18 (coe v0 v3 v5)
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v7 ->
                             coe
                               du262 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Codata.Stream._.iterate"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> T10
d284 v0 v1 v2 = du284 v2
du284 :: (AgdaAny -> AgdaAny) -> AgdaAny -> T10
du284 v0
  = coe
      du218
      (coe MAlonzo.Code.Data.Product.du132 (coe v0) (coe (\ v1 -> v1)))
