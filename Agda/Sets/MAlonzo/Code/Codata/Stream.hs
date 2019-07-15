{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
      (C18
         (coe v0)
         (coe (MAlonzo.Code.Codata.Thunk.C3 (coe (\ v1 -> du30 (coe v0))))))
name38 = "Codata.Stream._.head"
d38 :: T10 -> AgdaAny
d38 v0
  = case coe v0 of
      C18 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name44 = "Codata.Stream._.tail"
d44 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> T10
d44 v0 v1 v2 = du44 v2
du44 :: T10 -> T10
du44 v0
  = case coe v0 of
      C18 v1 v2 -> coe MAlonzo.Code.Codata.Thunk.d24 v2 erased
      _ -> MAlonzo.RTE.mazUnreachableError
name50 = "Codata.Stream._.lookup"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T10 -> AgdaAny
d50 v0 v1 v2 v3 = du50 v2 v3
du50 :: Integer -> T10 -> AgdaAny
du50 v0 v1
  = case coe v0 of
      0 -> coe (d38 (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (du50 (coe v2) (coe (du44 (coe v1))))
name60 = "Codata.Stream._.splitAt"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d60 v0 v1 v2 v3 = du60 v2 v3
du60 :: Integer -> T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du60 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe MAlonzo.Code.Data.Vec.Base.C28) (coe v1))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C18 v3 v4
               -> coe
                    MAlonzo.Code.Data.Product.du160
                    (MAlonzo.Code.Data.Vec.Base.C36 (coe v3))
                    (du60 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name74 = "Codata.Stream._.take"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Data.Vec.Base.T24
d74 v0 v1 v2 v3 = du74 v2 v3
du74 :: Integer -> T10 -> MAlonzo.Code.Data.Vec.Base.T24
du74 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d28
         (coe (du60 (coe v0) (coe v1))))
name80 = "Codata.Stream._.drop"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T10 -> T10
d80 v0 v1 v2 v3 = du80 v2 v3
du80 :: Integer -> T10 -> T10
du80 v0 v1
  = coe
      (MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe (du60 (coe v0) (coe v1))))
name88 = "Codata.Stream._._++_"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> [AgdaAny] -> T10 -> T10
d88 v0 v1 v2 v3 v4 = du88 v3 v4
du88 :: [AgdaAny] -> T10 -> T10
du88 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             (C18
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe (\ v4 -> du88 (coe v3) (coe v1))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name102 = "Codata.Stream._._⁺++_"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T10 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T10
d102 v0 v1 v2 v3 v4 = du102 v3 v4
du102 ::
  MAlonzo.Code.Data.List.NonEmpty.T10 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T10
du102 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.C24 v2 v3
        -> coe
             (C18
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du88 (coe v3) (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name114 = "Codata.Stream._.cycle"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T10 -> T10
d114 v0 v1 v2 v3 = du114 v3
du114 :: MAlonzo.Code.Data.List.NonEmpty.T10 -> T10
du114 v0
  = coe
      (du102
         (coe v0)
         (coe
            (MAlonzo.Code.Codata.Thunk.C3 (coe (\ v1 -> du114 (coe v0))))))
name122 = "Codata.Stream._.concat"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10
d122 v0 v1 v2 v3 = du122 v3
du122 :: T10 -> T10
du122 v0
  = case coe v0 of
      C18 v1 v2
        -> coe
             (du102
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du122 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Codata.Stream._.interleave"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T10 -> MAlonzo.Code.Codata.Thunk.T10 -> T10
d132 v0 v1 v2 v3 v4 = du132 v3 v4
du132 :: T10 -> MAlonzo.Code.Codata.Thunk.T10 -> T10
du132 v0 v1
  = case coe v0 of
      C18 v2 v3
        -> coe
             (C18
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du132 (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased) (coe v3))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name144 = "Codata.Stream._.chunksOf"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T10 -> T10
d144 v0 v1 v2 = du144 v2
du144 :: Integer -> T10 -> T10
du144 v0 = coe (du156 (coe v0) (coe v0) (coe (\ v1 -> v1)))
name156 = "Codata.Stream._.ChunksOf.chunksOfAcc"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T10 -> T10
d156 v0 v1 v2 v3 v4 v5 v6 = du156 v2 v4 v5 v6
du156 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T10 -> T10
du156 v0 v1 v2 v3
  = case coe v1 of
      0 -> coe
             (C18
                (coe v2 MAlonzo.Code.Data.Vec.Base.C28)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 -> du156 (coe v0) (coe v0) (coe (\ v5 -> v5)) (coe v3))))))
      _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v3 of
             C18 v5 v6
               -> coe
                    (du156
                       (coe v0) (coe v4)
                       (coe
                          (\ v7 ->
                             coe
                               v2
                               (coe
                                  (\ v8 v9 v10 -> MAlonzo.Code.Data.Vec.Base.C36 v9 v10) erased v5
                                  v7)))
                       (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name188 = "Codata.Stream._.map"
d188 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T10 -> T10
d188 v0 v1 v2 v3 v4 v5 v6 = du188 v5 v6
du188 :: (AgdaAny -> AgdaAny) -> T10 -> T10
du188 v0 v1
  = case coe v1 of
      C18 v2 v3
        -> coe
             (C18
                (coe v0 v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du188 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name200 = "Codata.Stream._.ap"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d200 v0 v1 v2 v3 v4 v5 v6 = du200 v5 v6
du200 :: T10 -> T10 -> T10
du200 v0 v1
  = case coe v0 of
      C18 v2 v3
        -> case coe v1 of
             C18 v4 v5
               -> coe
                    (C18
                       (coe v2 v4)
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe
                                (\ v6 ->
                                   du200
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased)
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v5 erased))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Codata.Stream._.unfold"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) -> AgdaAny -> T10
d214 v0 v1 v2 v3 v4 v5 v6 = du214 v5 v6
du214 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) -> AgdaAny -> T10
du214 v0 v1
  = coe
      (C18
         (coe (MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0 v1)))
         (coe
            (MAlonzo.Code.Codata.Thunk.C3
               (coe
                  (\ v2 ->
                     du214
                       (coe v0)
                       (coe (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v0 v1))))))))
name228 = "Codata.Stream._.scanl"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T10 -> T10
d228 v0 v1 v2 v3 v4 v5 v6 v7 = du228 v5 v6 v7
du228 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T10 -> T10
du228 v0 v1 v2
  = case coe v2 of
      C18 v3 v4
        -> coe
             (C18
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v5 ->
                            du228
                              (coe v0) (coe v0 v1 v3)
                              (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Codata.Stream._.zipWith"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
d258 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du258 v7 v8 v9
du258 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
du258 v0 v1 v2
  = case coe v1 of
      C18 v3 v4
        -> case coe v2 of
             C18 v5 v6
               -> coe
                    (C18
                       (coe v0 v3 v5)
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe
                                (\ v7 ->
                                   du258
                                     (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name280 = "Codata.Stream._.iterate"
d280 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> T10
d280 v0 v1 v2 = du280 v2
du280 :: (AgdaAny -> AgdaAny) -> AgdaAny -> T10
du280 v0
  = coe
      (du214
         (coe
            (MAlonzo.Code.Data.Product.du134 (coe v0) (coe (\ v1 -> v1)))))
