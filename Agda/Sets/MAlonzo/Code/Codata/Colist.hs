{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Colist where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Conat
import qualified MAlonzo.Code.Codata.Cowriter
import qualified MAlonzo.Code.Codata.Delay
import qualified MAlonzo.Code.Codata.Stream
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Data.BoundedVec
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Data.Vec.Base

name10 = "Codata.Colist.Colist"
d10 a0 a1 a2 = ()
data T10 = C18 | C20 AgdaAny MAlonzo.Code.Codata.Thunk.T10
name36 = "Codata.Colist._.fromCowriter"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Cowriter.T14 -> T10
d36 v0 v1 v2 v3 v4 v5 = du36 v5
du36 :: MAlonzo.Code.Codata.Cowriter.T14 -> T10
du36 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Cowriter.C26 v1 -> coe C18
      MAlonzo.Code.Codata.Cowriter.C28 v1 v2
        -> coe
             (C20
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du36 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Codata.Colist._.toCowriter"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T10 -> MAlonzo.Code.Codata.Cowriter.T14
d54 v0 v1 v2 v3 = du54 v3
du54 :: T10 -> MAlonzo.Code.Codata.Cowriter.T14
du54 v0
  = case coe v0 of
      C18 -> coe (MAlonzo.Code.Codata.Cowriter.C26 erased)
      C20 v1 v2
        -> coe
             (MAlonzo.Code.Codata.Cowriter.C28
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du54 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name62 = "Codata.Colist._.[_]"
d62 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T10
d62 v0 v1 v2 = du62 v2
du62 :: AgdaAny -> T10
du62 v0
  = coe
      (C20
         (coe v0) (coe (MAlonzo.Code.Codata.Thunk.C3 (coe (\ v1 -> C18)))))
name70 = "Codata.Colist._.length"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T10 -> MAlonzo.Code.Codata.Conat.T6
d70 v0 v1 v2 v3 = du70 v3
du70 :: T10 -> MAlonzo.Code.Codata.Conat.T6
du70 v0
  = case coe v0 of
      C18 -> coe MAlonzo.Code.Codata.Conat.C10
      C20 v1 v2
        -> coe
             (MAlonzo.Code.Codata.Conat.C12
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 -> du70 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Codata.Colist._.replicate"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Conat.T6 -> AgdaAny -> T10
d80 v0 v1 v2 v3 v4 = du80 v3 v4
du80 :: MAlonzo.Code.Codata.Conat.T6 -> AgdaAny -> T10
du80 v0 v1
  = case coe v0 of
      MAlonzo.Code.Codata.Conat.C10 -> coe C18
      MAlonzo.Code.Codata.Conat.C12 v2
        -> coe
             (C20
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v3 ->
                            du80 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased) (coe v1))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name92 = "Codata.Colist._._++_"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d92 v0 v1 v2 v3 v4 = du92 v3 v4
du92 :: T10 -> T10 -> T10
du92 v0 v1
  = case coe v0 of
      C18 -> coe v1
      C20 v2 v3
        -> coe
             (C20
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du92 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased) (coe v1))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Codata.Colist._.lookup"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Data.Maybe.Base.T22
d104 v0 v1 v2 v3 = du104 v2 v3
du104 :: Integer -> T10 -> MAlonzo.Code.Data.Maybe.Base.T22
du104 v0 v1
  = case coe v1 of
      C18 -> coe MAlonzo.Code.Data.Maybe.Base.C30
      C20 v2 v3
        -> case coe v0 of
             0 -> coe (MAlonzo.Code.Data.Maybe.Base.C28 (coe v2))
             _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe (du104 (coe v4) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))
      _ -> MAlonzo.RTE.mazUnreachableError
name120 = "Codata.Colist._.colookup"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Conat.T6 ->
  T10 -> MAlonzo.Code.Codata.Delay.T10
d120 v0 v1 v2 v3 v4 = du120 v3 v4
du120 ::
  MAlonzo.Code.Codata.Conat.T6 ->
  T10 -> MAlonzo.Code.Codata.Delay.T10
du120 v0 v1
  = case coe v1 of
      C18
        -> coe
             (MAlonzo.Code.Codata.Delay.C18
                (coe MAlonzo.Code.Data.Maybe.Base.C30))
      C20 v2 v3
        -> case coe v0 of
             MAlonzo.Code.Codata.Conat.C10
               -> coe
                    (MAlonzo.Code.Codata.Delay.C18
                       (coe (MAlonzo.Code.Data.Maybe.Base.C28 (coe v2))))
             MAlonzo.Code.Codata.Conat.C12 v4
               -> coe
                    (MAlonzo.Code.Codata.Delay.C20
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe
                                (\ v5 ->
                                   du120
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name138 = "Codata.Colist._.take"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Data.BoundedVec.T8
d138 v0 v1 v2 v3 = du138 v2 v3
du138 :: Integer -> T10 -> MAlonzo.Code.Data.BoundedVec.T8
du138 v0 v1
  = case coe v0 of
      0 -> let v2 = 0 :: Integer in
           coe
             (MAlonzo.Code.Data.BoundedVec.C20
                (coe v2) (coe (0 :: Integer)) (coe MAlonzo.Code.Data.Vec.Base.C28))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C18
               -> coe
                    (MAlonzo.Code.Data.BoundedVec.C20
                       (coe v0) (coe (0 :: Integer)) (coe MAlonzo.Code.Data.Vec.Base.C28))
             C20 v3 v4
               -> coe
                    (MAlonzo.Code.Data.BoundedVec.du36
                       (coe v3)
                       (coe
                          (du138 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
name152 = "Codata.Colist._.cotake"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Conat.T6 ->
  MAlonzo.Code.Codata.Stream.T10 -> T10
d152 v0 v1 v2 v3 v4 = du152 v3 v4
du152 ::
  MAlonzo.Code.Codata.Conat.T6 ->
  MAlonzo.Code.Codata.Stream.T10 -> T10
du152 v0 v1
  = case coe v0 of
      MAlonzo.Code.Codata.Conat.C10 -> coe C18
      MAlonzo.Code.Codata.Conat.C12 v2
        -> case coe v1 of
             MAlonzo.Code.Codata.Stream.C18 v3 v4
               -> coe
                    (C20
                       (coe v3)
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe
                                (\ v5 ->
                                   du152
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased)
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name164 = "Codata.Colist._.fromList"
d164 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T10
d164 v0 v1 v2 = du164 v2
du164 :: [AgdaAny] -> T10
du164 v0
  = case coe v0 of
      [] -> coe C18
      (:) v1 v2
        -> coe
             (C20
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3 (coe (\ v3 -> du164 (coe v2))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name174 = "Codata.Colist._._⁺++_"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T10 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T10
d174 v0 v1 v2 v3 v4 = du174 v3 v4
du174 ::
  MAlonzo.Code.Data.List.NonEmpty.T10 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T10
du174 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.C24 v2 v3
        -> coe
             (C20
                (coe v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du92
                              (coe (du164 (coe v3)))
                              (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name186 = "Codata.Colist._.fromStream"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Stream.T10 -> T10
d186 v0 v1 v2 = du186
du186 :: MAlonzo.Code.Codata.Stream.T10 -> T10
du186 = coe (du152 (coe MAlonzo.Code.Codata.Conat.du16))
name198 = "Codata.Colist._.chunksOf"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Codata.Cowriter.T14
d198 v0 v1 v2 = du198 v2
du198 :: Integer -> T10 -> MAlonzo.Code.Codata.Cowriter.T14
du198 v0
  = coe
      (du212 (coe v0) (coe v0) (coe (\ v1 -> v1)) (coe (\ v1 -> v1)))
name212 = "Codata.Colist._.ChunksOf.chunksOfAcc"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  Integer ->
  (MAlonzo.Code.Data.BoundedVec.T8 ->
   MAlonzo.Code.Data.BoundedVec.T8) ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T10 -> MAlonzo.Code.Codata.Cowriter.T14
d212 v0 v1 v2 v3 v4 v5 v6 v7 = du212 v2 v4 v5 v6 v7
du212 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.BoundedVec.T8 ->
   MAlonzo.Code.Data.BoundedVec.T8) ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T10 -> MAlonzo.Code.Codata.Cowriter.T14
du212 v0 v1 v2 v3 v4
  = case coe v1 of
      0 -> coe
             (MAlonzo.Code.Codata.Cowriter.C28
                (coe v3 MAlonzo.Code.Data.Vec.Base.C28)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v5 ->
                            du212
                              (coe v0) (coe v0) (coe (\ v6 -> v6)) (coe (\ v6 -> v6))
                              (coe v4))))))
      _ -> let v5 = subInt (coe v1) (coe (1 :: Integer)) in
           case coe v4 of
             C18
               -> coe
                    (MAlonzo.Code.Codata.Cowriter.C26
                       (coe
                          v2
                          (MAlonzo.Code.Data.BoundedVec.C20
                             (coe v1) (coe (0 :: Integer))
                             (coe MAlonzo.Code.Data.Vec.Base.C28))))
             C20 v6 v7
               -> coe
                    (du212
                       (coe v0) (coe v5)
                       (coe
                          (\ v8 ->
                             coe v2 (MAlonzo.Code.Data.BoundedVec.du36 (coe v6) (coe v8))))
                       (coe
                          (\ v8 ->
                             coe
                               v3
                               (coe
                                  (\ v9 v10 v11 -> MAlonzo.Code.Data.Vec.Base.C36 v10 v11) erased v6
                                  v8)))
                       (coe MAlonzo.Code.Codata.Thunk.d24 v7 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Codata.Colist._.map"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T10 -> T10
d258 v0 v1 v2 v3 v4 v5 v6 = du258 v5 v6
du258 :: (AgdaAny -> AgdaAny) -> T10 -> T10
du258 v0 v1
  = case coe v1 of
      C18 -> coe v1
      C20 v2 v3
        -> coe
             (C20
                (coe v0 v2)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v4 ->
                            du258 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name272 = "Codata.Colist._.unfold"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> AgdaAny -> T10
d272 v0 v1 v2 v3 v4 v5 v6 = du272 v5 v6
du272 ::
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> AgdaAny -> T10
du272 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Maybe.Base.C28 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
               -> coe
                    (C20
                       (coe v5)
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe (\ v6 -> du272 (coe v0) (coe v4))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Maybe.Base.C30 -> coe C18
      _ -> MAlonzo.RTE.mazUnreachableError
name298 = "Codata.Colist._.scanl"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T10 -> T10
d298 v0 v1 v2 v3 v4 v5 v6 v7 = du298 v5 v6 v7
du298 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T10 -> T10
du298 v0 v1 v2
  = case coe v2 of
      C18
        -> coe
             (C20
                (coe v1) (coe (MAlonzo.Code.Codata.Thunk.C3 (coe (\ v3 -> v2)))))
      C20 v3 v4
        -> coe
             (C20
                (coe v1)
                (coe
                   (MAlonzo.Code.Codata.Thunk.C3
                      (coe
                         (\ v5 ->
                            du298
                              (coe v0) (coe v0 v1 v3)
                              (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name334 = "Codata.Colist._.alignWith"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T10 -> T10 -> T10
d334 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du334 v7 v8 v9
du334 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T10 -> T10 -> T10
du334 v0 v1 v2
  = case coe v1 of
      C18
        -> coe
             (du258
                (coe (\ v3 -> coe v0 (MAlonzo.Code.Data.These.Base.C50 (coe v3))))
                (coe v2))
      C20 v3 v4
        -> case coe v2 of
             C18
               -> coe
                    (du258
                       (coe (\ v5 -> coe v0 (MAlonzo.Code.Data.These.Base.C48 (coe v5))))
                       (coe v1))
             C20 v5 v6
               -> coe
                    (C20
                       (coe v0 (MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe
                                (\ v7 ->
                                   du334
                                     (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name358 = "Codata.Colist._.zipWith"
d358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
d358 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du358 v7 v8 v9
du358 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
du358 v0 v1 v2
  = case coe v1 of
      C18 -> coe v1
      C20 v3 v4
        -> case coe v2 of
             C18 -> coe v2
             C20 v5 v6
               -> coe
                    (C20
                       (coe v0 v3 v5)
                       (coe
                          (MAlonzo.Code.Codata.Thunk.C3
                             (coe
                                (\ v7 ->
                                   du358
                                     (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                                     (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name394 = "Codata.Colist._.align"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d394 v0 v1 v2 v3 v4 = du394
du394 :: T10 -> T10 -> T10
du394 = coe (du334 (coe (\ v0 -> v0)))
name398 = "Codata.Colist._.zip"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d398 v0 v1 v2 v3 v4 = du398
du398 :: T10 -> T10 -> T10
du398 = coe (du358 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32))
name402 = "Codata.Colist._.ap"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d402 v0 v1 v2 v3 v4 = du402
du402 :: T10 -> T10 -> T10
du402 = coe (du358 (coe (\ v0 -> v0)))
