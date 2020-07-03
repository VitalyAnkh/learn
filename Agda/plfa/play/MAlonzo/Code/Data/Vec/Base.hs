{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Vec.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Relation.Nullary

name24 = "Data.Vec.Base.Vec"
d24 a0 a1 a2 = ()
data T24 = C28 | C36 AgdaAny T24
name44 = "Data.Vec.Base._[_]=_"
d44 a0 a1 a2 a3 a4 a5 = ()
data T44 = C54 | C68 T44
name72 = "Data.Vec.Base.length"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> Integer
d72 v0 v1 v2 v3 = du72 v2
du72 :: Integer -> Integer
du72 v0 = coe v0
name78 = "Data.Vec.Base.head"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> AgdaAny
d78 v0 v1 v2 v3 = du78 v3
du78 :: T24 -> AgdaAny
du78 v0
  = case coe v0 of
      C36 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name86 = "Data.Vec.Base.tail"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> T24
d86 v0 v1 v2 v3 = du86 v3
du86 :: T24 -> T24
du86 v0
  = case coe v0 of
      C36 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name94 = "Data.Vec.Base.lookup"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d94 v0 v1 v2 v3 v4 = du94 v3 v4
du94 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du94 v0 v1
  = case coe v0 of
      C36 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C16 v6 -> coe du94 (coe v4) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Data.Vec.Base.insert"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
d108 v0 v1 v2 v3 v4 v5 = du108 v3 v4 v5
du108 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
du108 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C10 -> coe C36 v2 v0
      MAlonzo.Code.Data.Fin.Base.C16 v4
        -> case coe v0 of
             C36 v6 v7 -> coe C36 v6 (coe du108 (coe v7) (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name124 = "Data.Vec.Base.remove"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> T24
d124 v0 v1 v2 v3 v4 = du124 v3 v4
du124 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> T24
du124 v0 v1
  = case coe v0 of
      C36 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v4
             MAlonzo.Code.Data.Fin.Base.C16 v6
               -> case coe v4 of
                    C36 v8 v9 -> coe C36 v3 (coe du124 (coe C36 v8 v9) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name138 = "Data.Vec.Base.updateAt"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24 -> T24
d138 v0 v1 v2 v3 v4 v5 = du138 v3 v4 v5
du138 ::
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24 -> T24
du138 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C10
        -> case coe v2 of
             C36 v5 v6 -> coe C36 (coe v1 v5) v6
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C16 v4
        -> case coe v2 of
             C36 v6 v7 -> coe C36 v6 (coe du138 (coe v4) (coe v1) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name156 = "Data.Vec.Base._[_]%=_"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24
d156 v0 v1 v2 v3 v4 v5 = du156 v3 v4 v5
du156 ::
  T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24
du156 v0 v1 v2 = coe du138 (coe v1) (coe v2) (coe v0)
name166 = "Data.Vec.Base._[_]≔_"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
d166 v0 v1 v2 v3 v4 v5 = du166 v3 v4 v5
du166 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
du166 v0 v1 v2 = coe du156 (coe v0) (coe v1) (coe (\ v3 -> v2))
name176 = "Data.Vec.Base.map"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (AgdaAny -> AgdaAny) -> T24 -> T24
d176 v0 v1 v2 v3 v4 v5 v6 = du176 v5 v6
du176 :: (AgdaAny -> AgdaAny) -> T24 -> T24
du176 v0 v1
  = case coe v1 of
      C28 -> coe v1
      C36 v3 v4 -> coe C36 (coe v0 v3) (coe du176 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name190 = "Data.Vec.Base._++_"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d190 v0 v1 v2 v3 v4 v5 = du190 v4 v5
du190 :: T24 -> T24 -> T24
du190 v0 v1
  = case coe v0 of
      C28 -> coe v1
      C36 v3 v4 -> coe C36 v3 (coe du190 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Data.Vec.Base.concat"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24
d204 v0 v1 v2 v3 v4 = du204 v4
du204 :: T24 -> T24
du204 v0
  = case coe v0 of
      C28 -> coe v0
      C36 v2 v3 -> coe du190 (coe v2) (coe du204 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name214 = "Data.Vec.Base.alignWith"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T24 -> T24 -> T24
d214 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du214 v8 v9 v10
du214 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T24 -> T24 -> T24
du214 v0 v1 v2
  = case coe v1 of
      C28
        -> coe
             du176
             (coe
                (\ v3 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C50 (coe v3))))
             (coe v2)
      C36 v4 v5
        -> case coe v2 of
             C28
               -> coe
                    du176
                    (coe
                       (\ v6 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C48 (coe v6))))
                    (coe C36 v4 v5)
             C36 v7 v8
               -> coe
                    C36
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v4) (coe v7)))
                    (coe du214 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name238 = "Data.Vec.Base.restrictWith"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
d238 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du238 v8 v9 v10
du238 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
du238 v0 v1 v2
  = case coe v1 of
      C28 -> coe v1
      C36 v4 v5
        -> case coe v2 of
             C28 -> coe v2
             C36 v7 v8
               -> coe C36 (coe v0 v4 v7) (coe du238 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Data.Vec.Base.zipWith"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
d258 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du258 v7 v8 v9
du258 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
du258 v0 v1 v2
  = case coe v1 of
      C28 -> coe seq (coe v2) (coe v1)
      C36 v4 v5
        -> case coe v2 of
             C36 v7 v8
               -> coe C36 (coe v0 v4 v7) (coe du258 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name274 = "Data.Vec.Base.unzipWith"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d274 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du274 v7 v8
du274 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du274 v0 v1
  = case coe v1 of
      C28 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      C36 v3 v4
        -> coe
             MAlonzo.Code.Data.Product.du186 (coe C36)
             (coe (\ v5 v6 -> coe C36)) (coe v0 v3)
             (coe du274 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name288 = "Data.Vec.Base.align"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d288 v0 v1 v2 v3 v4 v5 = du288
du288 :: T24 -> T24 -> T24
du288 = coe du214 (coe (\ v0 -> v0))
name294 = "Data.Vec.Base.restrict"
d294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d294 v0 v1 v2 v3 v4 v5 = du294
du294 :: T24 -> T24 -> T24
du294 = coe du238 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name298 = "Data.Vec.Base.zip"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> T24 -> T24
d298 v0 v1 v2 v3 v4 = du298
du298 :: T24 -> T24 -> T24
du298 = coe du258 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name302 = "Data.Vec.Base.unzip"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d302 v0 v1 v2 v3 v4 = du302
du302 :: T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du302 = coe du274 (coe (\ v0 -> v0))
name308 = "Data.Vec.Base._⋎_"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d308 v0 v1 v2 v3 v4 v5 = du308 v4 v5
du308 :: T24 -> T24 -> T24
du308 v0 v1
  = case coe v0 of
      C28 -> coe v1
      C36 v3 v4 -> coe C36 v3 (coe du308 (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name320 = "Data.Vec.Base._⊛_"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> T24 -> T24
d320 v0 v1 v2 v3 v4 v5 v6 = du320 v5 v6
du320 :: T24 -> T24 -> T24
du320 v0 v1
  = case coe v0 of
      C28 -> coe v0
      C36 v3 v4
        -> case coe v1 of
             C36 v6 v7 -> coe C36 (coe v3 v6) (coe du320 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name334 = "Data.Vec.Base._>>=_"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> (AgdaAny -> T24) -> T24
d334 v0 v1 v2 v3 v4 v5 v6 v7 = du334 v6 v7
du334 :: T24 -> (AgdaAny -> T24) -> T24
du334 v0 v1 = coe du204 (coe du176 (coe v1) (coe v0))
name344 = "Data.Vec.Base._⊛*_"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d344 v0 v1 v2 v3 v4 v5 v6 v7 = du344 v6 v7
du344 :: T24 -> T24 -> T24
du344 v0 v1
  = coe du334 (coe v0) (coe (\ v2 -> coe du176 (coe v2) (coe v1)))
name356 = "Data.Vec.Base.allPairs"
d356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d356 v0 v1 v2 v3 v4 v5 v6 v7 = du356 v6 v7
du356 :: T24 -> T24 -> T24
du356 v0 v1
  = coe
      du344
      (coe du176 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32) (coe v0))
      (coe v1)
name374 = "Data.Vec.Base.foldr"
d374 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
d374 v0 v1 v2 v3 v4 v5 v6 v7 = du374 v4 v5 v6 v7
du374 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
du374 v0 v1 v2 v3
  = case coe v3 of
      C28 -> coe v2
      C36 v5 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v7 v5 (coe du374 (coe v7) (coe v1) (coe v2) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name394 = "Data.Vec.Base.foldr₁"
d394 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d394 v0 v1 v2 v3 v4 = du394 v3 v4
du394 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du394 v0 v1
  = case coe v1 of
      C36 v3 v4
        -> case coe v4 of
             C28 -> coe v3
             C36 v6 v7 -> coe v0 v3 (coe du394 (coe v0) (coe C36 v6 v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name420 = "Data.Vec.Base.foldl"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
d420 v0 v1 v2 v3 v4 v5 v6 v7 = du420 v5 v6 v7
du420 ::
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
du420 v0 v1 v2
  = case coe v2 of
      C28 -> coe v1
      C36 v4 v5
        -> coe
             du420 (coe (\ v6 -> coe v0 (addInt (coe (1 :: Integer)) (coe v6))))
             (coe v0 (0 :: Integer) v1 v4) (coe v5)
      _ -> MAlonzo.RTE.mazUnreachableError
name442 = "Data.Vec.Base.foldl₁"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d442 v0 v1 v2 v3 v4 = du442 v3 v4
du442 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du442 v0 v1
  = case coe v1 of
      C36 v3 v4 -> coe du420 (coe (\ v5 -> v0)) (coe v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name452 = "Data.Vec.Base.sum"
d452 :: Integer -> T24 -> Integer
d452 v0
  = coe du374 (coe v0) (coe (\ v1 -> addInt)) (coe (0 :: Integer))
name458 = "Data.Vec.Base.count"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  Integer -> T24 -> Integer
d458 v0 v1 v2 v3 v4 v5 v6 = du458 v4 v6
du458 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) -> T24 -> Integer
du458 v0 v1
  = case coe v1 of
      C28 -> coe (0 :: Integer)
      C36 v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
           if coe v5
             then coe addInt (coe (1 :: Integer)) (coe du458 (coe v0) (coe v4))
             else coe du458 (coe v0) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name484 = "Data.Vec.Base.[_]"
d484 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T24
d484 v0 v1 v2 = du484 v2
du484 :: AgdaAny -> T24
du484 v0 = coe C36 v0 (coe C28)
name490 = "Data.Vec.Base.replicate"
d490 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> AgdaAny -> T24
d490 v0 v1 v2 v3 = du490 v2 v3
du490 :: Integer -> AgdaAny -> T24
du490 v0 v1
  = case coe v0 of
      0 -> coe C28
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe C36 v1 (coe du490 (coe v2) (coe v1))
name500 = "Data.Vec.Base.tabulate"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T24
d500 v0 v1 v2 v3 = du500 v2 v3
du500 ::
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T24
du500 v0 v1
  = case coe v0 of
      0 -> coe C28
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             C36 (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C10))
             (coe
                du500 (coe v2)
                (coe (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C16 v3))))
name510 = "Data.Vec.Base.allFin"
d510 :: Integer -> T24
d510 v0 = coe du500 (coe v0) (coe (\ v1 -> v1))
name522 = "Data.Vec.Base.splitAt"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d522 v0 v1 v2 v3 v4 = du522 v2 v4
du522 :: Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du522 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C28)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) erased)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C36 v4 v5
               -> let v6 = coe du522 (coe v2) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 v9 v10
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C36 v4 v7)
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v9) erased)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name548 = "Data.Vec.Base.take"
d548 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24
d548 v0 v1 v2 v3 v4 = du548 v2 v4
du548 :: Integer -> T24 -> T24
du548 v0 v1
  = let v2 = coe du522 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe seq (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name568 = "Data.Vec.Base.drop"
d568 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24
d568 v0 v1 v2 v3 v4 = du568 v2 v4
du568 :: Integer -> T24 -> T24
du568 v0 v1
  = let v2 = coe du522 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name592 = "Data.Vec.Base.group"
d592 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d592 v0 v1 v2 v3 v4 = du592 v2 v3 v4
du592 ::
  Integer -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du592 v0 v1 v2
  = case coe v0 of
      0 -> coe
             seq (coe v2)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C28) erased)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           let v4 = coe du522 (coe v1) (coe v2) in
           case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
                      -> let v9 = coe du592 (coe v3) (coe v1) (coe v7) in
                         case coe v9 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 v10 v11
                             -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C36 v5 v10) erased
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name628 = "Data.Vec.Base.split"
d628 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d628 v0 v1 v2 v3 = du628 v3
du628 :: T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du628 v0
  = case coe v0 of
      C28 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v0)
      C36 v2 v3
        -> case coe v3 of
             C28
               -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C36 v2 v3) (coe v3)
             C36 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du148 (coe C36 (coe v2))
                    (coe (\ v7 -> coe C36 (coe v5))) (coe du628 (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name644 = "Data.Vec.Base.uncons"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d644 v0 v1 v2 v3 = du644 v3
du644 :: T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du644 v0
  = case coe v0 of
      C36 v2 v3
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name652 = "Data.Vec.Base.toList"
d652 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> [AgdaAny]
d652 v0 v1 v2 v3 = du652 v3
du652 :: T24 -> [AgdaAny]
du652 v0
  = case coe v0 of
      C28 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      C36 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe du652 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name660 = "Data.Vec.Base.fromList"
d660 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T24
d660 v0 v1 v2 = du660 v2
du660 :: [AgdaAny] -> T24
du660 v0
  = case coe v0 of
      [] -> coe C28
      (:) v1 v2 -> coe C36 v1 (coe du660 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name668 = "Data.Vec.Base.reverse"
d668 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> T24
d668 v0 v1 v2 = du668
du668 :: T24 -> T24
du668 = coe du420 (coe (\ v0 v1 v2 -> coe C36 v2 v1)) (coe C28)
name678 = "Data.Vec.Base._∷ʳ_"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> AgdaAny -> T24
d678 v0 v1 v2 v3 v4 = du678 v3 v4
du678 :: T24 -> AgdaAny -> T24
du678 v0 v1
  = case coe v0 of
      C28 -> coe C36 v1 v0
      C36 v3 v4 -> coe C36 v3 (coe du678 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name696 = "Data.Vec.Base.initLast"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d696 v0 v1 v2 v3 = du696 v2 v3
du696 :: Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du696 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             C36 v3 v4
               -> coe
                    seq (coe v4)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C28)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3) erased))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C36 v4 v5
               -> let v6 = coe du696 (coe v2) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 v9 v10
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C36 v4 v7)
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v9) erased)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name720 = "Data.Vec.Base.init"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> T24
d720 v0 v1 v2 v3 = du720 v2 v3
du720 :: Integer -> T24 -> T24
du720 v0 v1
  = let v2 = coe du696 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe seq (coe v4) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name734 = "Data.Vec.Base.last"
d734 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> AgdaAny
d734 v0 v1 v2 v3 = du734 v2 v3
du734 :: Integer -> T24 -> AgdaAny
du734 v0 v1
  = let v2 = coe du696 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name750 = "Data.Vec.Base.transpose"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24
d750 v0 v1 v2 v3 v4 = du750 v3 v4
du750 :: Integer -> T24 -> T24
du750 v0 v1
  = case coe v1 of
      C28 -> coe du490 (coe v0) (coe v1)
      C36 v3 v4
        -> coe
             du320 (coe du320 (coe du490 (coe v0) (coe C36)) (coe v3))
             (coe du750 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
