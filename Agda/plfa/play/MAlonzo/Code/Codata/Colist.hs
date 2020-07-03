{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Colist where

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
import qualified MAlonzo.Code.Codata.Cowriter
import qualified MAlonzo.Code.Codata.Delay
import qualified MAlonzo.Code.Codata.Stream
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Data.List.NonEmpty
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Bounded.Base

name28 = "Codata.Colist.Colist"
d28 a0 a1 a2 = ()
data T28 = C34 | C36 AgdaAny MAlonzo.Code.Codata.Thunk.T10
name38 = "Codata.Colist.fromCowriter"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Cowriter.T30 -> T28
d38 v0 v1 v2 v3 v4 v5 = du38 v5
du38 :: MAlonzo.Code.Codata.Cowriter.T30 -> T28
du38 v0
  = case coe v0 of
      MAlonzo.Code.Codata.Cowriter.C38 v1 -> coe C34
      MAlonzo.Code.Codata.Cowriter.C40 v1 v2
        -> coe
             C36 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du38 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name46 = "Codata.Colist.toCowriter"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T28 -> MAlonzo.Code.Codata.Cowriter.T30
d46 v0 v1 v2 v3 = du46 v3
du46 :: T28 -> MAlonzo.Code.Codata.Cowriter.T30
du46 v0
  = case coe v0 of
      C34
        -> coe
             MAlonzo.Code.Codata.Cowriter.C38
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
      C36 v1 v2
        -> coe
             MAlonzo.Code.Codata.Cowriter.C40 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du46 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Codata.Colist.[_]"
d54 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T28
d54 v0 v1 v2 = du54 v2
du54 :: AgdaAny -> T28
du54 v0
  = coe
      C36 (coe v0)
      (coe MAlonzo.Code.Codata.Thunk.C5 (coe (\ v1 -> coe C34)))
name60 = "Codata.Colist.length"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T28 -> MAlonzo.Code.Codata.Conat.T6
d60 v0 v1 v2 v3 = du60 v3
du60 :: T28 -> MAlonzo.Code.Codata.Conat.T6
du60 v0
  = case coe v0 of
      C34 -> coe MAlonzo.Code.Codata.Conat.C10
      C36 v1 v2
        -> coe
             MAlonzo.Code.Codata.Conat.C12
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du60 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name68 = "Codata.Colist.replicate"
d68 ::
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Codata.Conat.T6 -> AgdaAny -> T28
d68 v0 v1 v2 v3 v4 = du68 v3 v4
du68 :: MAlonzo.Code.Codata.Conat.T6 -> AgdaAny -> T28
du68 v0 v1
  = case coe v0 of
      MAlonzo.Code.Codata.Conat.C10 -> coe C34
      MAlonzo.Code.Codata.Conat.C12 v2
        -> coe
             C36 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 ->
                      coe du68 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name78 = "Codata.Colist._++_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T28 -> T28 -> T28
d78 v0 v1 v2 v3 v4 = du78 v3 v4
du78 :: T28 -> T28 -> T28
du78 v0 v1
  = case coe v0 of
      C34 -> coe v1
      C36 v2 v3
        -> coe
             C36 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du78 (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name90 = "Codata.Colist.lookup"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T28 -> MAlonzo.Code.Data.Maybe.Base.T22
d90 v0 v1 v2 v3 = du90 v2 v3
du90 :: Integer -> T28 -> MAlonzo.Code.Data.Maybe.Base.T22
du90 v0 v1
  = case coe v1 of
      C34 -> coe MAlonzo.Code.Data.Maybe.Base.C26
      C36 v2 v3
        -> case coe v0 of
             0 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2)
             _ -> let v4 = subInt (coe v0) (coe (1 :: Integer)) in
                  coe du90 (coe v4) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name104 = "Codata.Colist.colookup"
d104 ::
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Codata.Conat.T6 ->
  T28 -> MAlonzo.Code.Codata.Delay.T10
d104 v0 v1 v2 v3 v4 = du104 v3 v4
du104 ::
  MAlonzo.Code.Codata.Conat.T6 ->
  T28 -> MAlonzo.Code.Codata.Delay.T10
du104 v0 v1
  = case coe v1 of
      C34
        -> coe
             MAlonzo.Code.Codata.Delay.C18
             (coe MAlonzo.Code.Data.Maybe.Base.C26)
      C36 v2 v3
        -> case coe v0 of
             MAlonzo.Code.Codata.Conat.C10
               -> coe
                    MAlonzo.Code.Codata.Delay.C18
                    (coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2))
             MAlonzo.Code.Codata.Conat.C12 v4
               -> coe
                    MAlonzo.Code.Codata.Delay.C20
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v5 ->
                             coe
                               du104 (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name122 = "Codata.Colist.take"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T28 -> MAlonzo.Code.Data.Vec.Bounded.Base.T118
d122 v0 v1 v2 v3 = du122 v2 v3
du122 :: Integer -> T28 -> MAlonzo.Code.Data.Vec.Bounded.Base.T118
du122 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer)
             (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C34
               -> coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer)
                    (coe MAlonzo.Code.Data.Vec.Base.C28)
             C36 v3 v4
               -> coe
                    MAlonzo.Code.Data.Vec.Bounded.Base.du308 (coe v3)
                    (coe du122 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))
             _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Codata.Colist.cotake"
d134 ::
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Codata.Conat.T6 ->
  MAlonzo.Code.Codata.Stream.T10 -> T28
d134 v0 v1 v2 v3 v4 = du134 v3 v4
du134 ::
  MAlonzo.Code.Codata.Conat.T6 ->
  MAlonzo.Code.Codata.Stream.T10 -> T28
du134 v0 v1
  = case coe v0 of
      MAlonzo.Code.Codata.Conat.C10 -> coe C34
      MAlonzo.Code.Codata.Conat.C12 v2
        -> case coe v1 of
             MAlonzo.Code.Codata.Stream.C18 v3 v4
               -> coe
                    C36 (coe v3)
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v5 ->
                             coe
                               du134 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name146 = "Codata.Colist.drop"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T28 -> T28
d146 v0 v1 v2 v3 = du146 v2 v3
du146 :: Integer -> T28 -> T28
du146 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C34 -> coe v1
             C36 v3 v4
               -> coe du146 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Codata.Colist.fromList"
d158 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T28
d158 v0 v1 v2 = du158 v2
du158 :: [AgdaAny] -> T28
du158 v0
  = case coe v0 of
      [] -> coe C34
      (:) v1 v2
        -> coe
             C36 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5 (coe (\ v3 -> coe du158 (coe v2))))
      _ -> MAlonzo.RTE.mazUnreachableError
name166 = "Codata.Colist.fromList⁺"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.List.NonEmpty.T22 -> T28
d166 v0 v1 v2 = du166 v2
du166 :: MAlonzo.Code.Data.List.NonEmpty.T22 -> T28
du166 v0
  = coe du158 (coe MAlonzo.Code.Data.List.NonEmpty.du60 (coe v0))
name168 = "Codata.Colist._⁺++_"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T28
d168 v0 v1 v2 v3 v4 = du168 v3 v4
du168 ::
  MAlonzo.Code.Data.List.NonEmpty.T22 ->
  MAlonzo.Code.Codata.Thunk.T10 -> T28
du168 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.List.NonEmpty.C34 v2 v3
        -> coe
             C36 (coe v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe
                        du78 (coe du158 (coe v3))
                        (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name178 = "Codata.Colist.concat"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T28 -> T28
d178 v0 v1 v2 v3 = du178 v3
du178 :: T28 -> T28
du178 v0
  = case coe v0 of
      C34 -> coe v0
      C36 v1 v2
        -> coe
             du168 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 -> coe du178 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name186 = "Codata.Colist.fromStream"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Codata.Stream.T10 -> T28
d186 v0 v1 v2 = du186
du186 :: MAlonzo.Code.Codata.Stream.T10 -> T28
du186 = coe du134 (coe MAlonzo.Code.Codata.Conat.du16)
name192 = "Codata.Colist.ChunksOf.chunksOf"
d192 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T28 -> MAlonzo.Code.Codata.Cowriter.T30
d192 v0 v1 v2 v3 = du192 v0 v1
du192 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  T28 -> MAlonzo.Code.Codata.Cowriter.T30
du192 v0 v1
  = coe
      du200 (coe v0) (coe v1) (coe v0) (coe (\ v2 -> v2))
      (coe (\ v2 -> v2))
name200 = "Codata.Colist.ChunksOf.chunksOfAcc"
d200 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
   MAlonzo.Code.Data.Vec.Bounded.Base.T118) ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T28 -> MAlonzo.Code.Codata.Cowriter.T30
d200 v0 v1 v2 v3 v4 v5 v6 v7 = du200 v0 v1 v4 v5 v6 v7
du200 ::
  Integer ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Bounded.Base.T118 ->
   MAlonzo.Code.Data.Vec.Bounded.Base.T118) ->
  (MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Data.Vec.Base.T24) ->
  T28 -> MAlonzo.Code.Codata.Cowriter.T30
du200 v0 v1 v2 v3 v4 v5
  = case coe v2 of
      0 -> coe
             MAlonzo.Code.Codata.Cowriter.C40
             (coe v4 (coe MAlonzo.Code.Data.Vec.Base.C28))
             (coe
                MAlonzo.Code.Codata.Thunk.C5 (coe (\ v6 -> coe du192 v0 v1 v5)))
      _ -> let v6 = subInt (coe v2) (coe (1 :: Integer)) in
           case coe v5 of
             C34
               -> coe
                    MAlonzo.Code.Codata.Cowriter.C38
                    (coe
                       v3
                       (coe
                          MAlonzo.Code.Data.Vec.Bounded.Base.C136 (0 :: Integer)
                          (coe MAlonzo.Code.Data.Vec.Base.C28)))
             C36 v7 v8
               -> coe
                    du200 (coe v0) (coe v1) (coe v6)
                    (coe
                       (\ v9 ->
                          coe
                            v3
                            (coe MAlonzo.Code.Data.Vec.Bounded.Base.du308 (coe v7) (coe v9))))
                    (coe (\ v9 -> coe v4 (coe MAlonzo.Code.Data.Vec.Base.C36 v7 v9)))
                    (coe MAlonzo.Code.Codata.Thunk.d24 v8 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
name232 = "Codata.Colist.map"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny) -> T28 -> T28
d232 v0 v1 v2 v3 v4 v5 v6 = du232 v5 v6
du232 :: (AgdaAny -> AgdaAny) -> T28 -> T28
du232 v0 v1
  = case coe v1 of
      C34 -> coe v1
      C36 v2 v3
        -> coe
             C36 (coe v0 v2)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v4 ->
                      coe du232 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name244 = "Codata.Colist.unfold"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> AgdaAny -> T28
d244 v0 v1 v2 v3 v4 v5 v6 = du244 v5 v6
du244 ::
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> AgdaAny -> T28
du244 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Maybe.Base.C26 -> coe C34
      MAlonzo.Code.Data.Maybe.Base.C30 v3
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v4 v5
               -> coe
                    C36 (coe v5)
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe (\ v6 -> coe du244 (coe v0) (coe v4))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Codata.Colist.scanl"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T28 -> T28
d268 v0 v1 v2 v3 v4 v5 v6 v7 = du268 v5 v6 v7
du268 :: (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T28 -> T28
du268 v0 v1 v2
  = case coe v2 of
      C34
        -> coe
             C36 (coe v1) (coe MAlonzo.Code.Codata.Thunk.C5 (coe (\ v3 -> v2)))
      C36 v3 v4
        -> coe
             C36 (coe v1)
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v5 ->
                      coe
                        du268 (coe v0) (coe v0 v1 v3)
                        (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Codata.Colist.alignWith"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T28 -> T28 -> T28
d286 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du286 v7 v8 v9
du286 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T28 -> T28 -> T28
du286 v0 v1 v2
  = case coe v1 of
      C34
        -> coe
             du232
             (coe
                (\ v3 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C50 (coe v3))))
             (coe v2)
      C36 v3 v4
        -> case coe v2 of
             C34
               -> coe
                    du232
                    (coe
                       (\ v5 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C48 (coe v5))))
                    (coe v1)
             C36 v5 v6
               -> coe
                    C36
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v7 ->
                             coe
                               du286 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name308 = "Codata.Colist.zipWith"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T28 -> T28 -> T28
d308 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du308 v7 v8 v9
du308 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T28 -> T28 -> T28
du308 v0 v1 v2
  = case coe v1 of
      C34 -> coe v1
      C36 v3 v4
        -> case coe v2 of
             C34 -> coe v2
             C36 v5 v6
               -> coe
                    C36 (coe v0 v3 v5)
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v7 ->
                             coe
                               du308 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v6 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name330 = "Codata.Colist.align"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T28 -> T28 -> T28
d330 v0 v1 v2 v3 v4 = du330
du330 :: T28 -> T28 -> T28
du330 = coe du286 (coe (\ v0 -> v0))
name332 = "Codata.Colist.zip"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T28 -> T28 -> T28
d332 v0 v1 v2 v3 v4 = du332
du332 :: T28 -> T28 -> T28
du332 = coe du308 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name334 = "Codata.Colist.ap"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T28 -> T28 -> T28
d334 v0 v1 v2 v3 v4 = du334
du334 :: T28 -> T28 -> T28
du334 = coe du308 (coe (\ v0 -> v0))
