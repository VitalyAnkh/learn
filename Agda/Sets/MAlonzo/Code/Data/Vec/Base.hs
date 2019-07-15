{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
name72 = "Data.Vec.Base.head"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> AgdaAny
d72 v0 v1 v2 v3 = du72 v3
du72 :: T24 -> AgdaAny
du72 v0
  = case coe v0 of
      C36 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Data.Vec.Base.tail"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> T24
d80 v0 v1 v2 v3 = du80 v3
du80 :: T24 -> T24
du80 v0
  = case coe v0 of
      C36 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Data.Vec.Base.lookup"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d88 v0 v1 v2 v3 v4 = du88 v3 v4
du88 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du88 v0 v1
  = case coe v0 of
      C36 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C16 v6 -> coe (du88 (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name102 = "Data.Vec.Base.insert"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
d102 v0 v1 v2 v3 v4 v5 = du102 v3 v4 v5
du102 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
du102 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C10
        -> coe (\ v4 v5 v6 -> C36 v5 v6) erased v2 v0
      MAlonzo.Code.Data.Fin.Base.C16 v4
        -> case coe v0 of
             C36 v6 v7
               -> coe
                    (\ v8 v9 v10 -> C36 v9 v10) erased v6
                    (du102 (coe v7) (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name118 = "Data.Vec.Base.remove"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> T24
d118 v0 v1 v2 v3 v4 = du118 v3 v4
du118 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> T24
du118 v0 v1
  = case coe v0 of
      C36 v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v4
             MAlonzo.Code.Data.Fin.Base.C16 v6
               -> case coe v4 of
                    C36 v8 v9
                      -> coe
                           (\ v10 v11 v12 -> C36 v11 v12) erased v3
                           (du118 (coe (\ v10 v11 v12 -> C36 v11 v12) erased v8 v9) (coe v6))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name132 = "Data.Vec.Base.updateAt"
d132 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24 -> T24
d132 v0 v1 v2 v3 v4 v5 = du132 v3 v4 v5
du132 ::
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24 -> T24
du132 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Fin.Base.C10
        -> case coe v2 of
             C36 v5 v6 -> coe (\ v7 v8 v9 -> C36 v8 v9) erased (coe v1 v5) v6
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C16 v4
        -> case coe v2 of
             C36 v6 v7
               -> coe
                    (\ v8 v9 v10 -> C36 v9 v10) erased v6
                    (du132 (coe v4) (coe v1) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name150 = "Data.Vec.Base._[_]%=_"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24
d150 v0 v1 v2 v3 v4 v5 = du150 v3 v4 v5
du150 ::
  T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> T24
du150 v0 v1 v2 = coe (du132 (coe v1) (coe v2) (coe v0))
name160 = "Data.Vec.Base._[_]≔_"
d160 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
d160 v0 v1 v2 v3 v4 v5 = du160 v3 v4 v5
du160 :: T24 -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> T24
du160 v0 v1 v2 = coe (du150 (coe v0) (coe v1) (coe (\ v3 -> v2)))
name170 = "Data.Vec.Base.map"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (AgdaAny -> AgdaAny) -> T24 -> T24
d170 v0 v1 v2 v3 v4 v5 v6 = du170 v5 v6
du170 :: (AgdaAny -> AgdaAny) -> T24 -> T24
du170 v0 v1
  = case coe v1 of
      C28 -> coe v1
      C36 v3 v4
        -> coe
             (\ v5 v6 v7 -> C36 v6 v7) erased (coe v0 v3)
             (du170 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name184 = "Data.Vec.Base._++_"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d184 v0 v1 v2 v3 v4 v5 = du184 v4 v5
du184 :: T24 -> T24 -> T24
du184 v0 v1
  = case coe v0 of
      C28 -> coe v1
      C36 v3 v4
        -> coe
             (\ v5 v6 v7 -> C36 v6 v7) erased v3 (du184 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name198 = "Data.Vec.Base.concat"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24
d198 v0 v1 v2 v3 v4 = du198 v4
du198 :: T24 -> T24
du198 v0
  = case coe v0 of
      C28 -> coe v0
      C36 v2 v3 -> coe (du184 (coe v2) (coe (du198 (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name208 = "Data.Vec.Base.alignWith"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T24 -> T24 -> T24
d208 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du208 v8 v9 v10
du208 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T24 -> T24 -> T24
du208 v0 v1 v2
  = case coe v1 of
      C28
        -> coe
             (du170
                (coe (\ v3 -> coe v0 (MAlonzo.Code.Data.These.Base.C50 (coe v3))))
                (coe v2))
      C36 v4 v5
        -> case coe v2 of
             C28
               -> coe
                    (du170
                       (coe (\ v6 -> coe v0 (MAlonzo.Code.Data.These.Base.C48 (coe v6))))
                       (coe (\ v6 v7 v8 -> C36 v7 v8) erased v4 v5))
             C36 v7 v8
               -> coe
                    (\ v9 v10 v11 -> C36 v10 v11) erased
                    (coe v0 (MAlonzo.Code.Data.These.Base.C52 (coe v4) (coe v7)))
                    (du208 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name232 = "Data.Vec.Base.restrictWith"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
d232 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du232 v8 v9 v10
du232 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
du232 v0 v1 v2
  = case coe v1 of
      C28 -> coe v1
      C36 v4 v5
        -> case coe v2 of
             C28 -> coe v2
             C36 v7 v8
               -> coe
                    (\ v9 v10 v11 -> C36 v10 v11) erased (coe v0 v4 v7)
                    (du232 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name252 = "Data.Vec.Base.zipWith"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
d252 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du252 v7 v8 v9
du252 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> T24 -> T24
du252 v0 v1 v2
  = case coe v1 of
      C28 -> coe (seq (coe v2) (coe v1))
      C36 v4 v5
        -> case coe v2 of
             C36 v7 v8
               -> coe
                    (\ v9 v10 v11 -> C36 v10 v11) erased (coe v0 v4 v7)
                    (du252 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name268 = "Data.Vec.Base.unzipWith"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d268 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du268 v7 v8
du268 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du268 v0 v1
  = case coe v1 of
      C28 -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1))
      C36 v3 v4
        -> coe
             (MAlonzo.Code.Data.Product.du188
                (coe C36) (coe (\ v5 v6 -> C36)) (coe v0 v3)
                (coe (du268 (coe v0) (coe v4))))
      _ -> MAlonzo.RTE.mazUnreachableError
name282 = "Data.Vec.Base.align"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d282 v0 v1 v2 v3 v4 v5 = du282
du282 :: T24 -> T24 -> T24
du282 = coe (du208 (coe (\ v0 -> v0)))
name288 = "Data.Vec.Base.restrict"
d288 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d288 v0 v1 v2 v3 v4 v5 = du288
du288 :: T24 -> T24 -> T24
du288 = coe (du232 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32))
name292 = "Data.Vec.Base.zip"
d292 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> T24 -> T24
d292 v0 v1 v2 v3 v4 = du292
du292 :: T24 -> T24 -> T24
du292 = coe (du252 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32))
name296 = "Data.Vec.Base.unzip"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d296 v0 v1 v2 v3 v4 = du296
du296 :: T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du296 = coe (du268 (coe (\ v0 -> v0)))
name302 = "Data.Vec.Base._⋎_"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d302 v0 v1 v2 v3 v4 v5 = du302 v4 v5
du302 :: T24 -> T24 -> T24
du302 v0 v1
  = case coe v0 of
      C28 -> coe v1
      C36 v3 v4
        -> coe
             (\ v5 v6 v7 -> C36 v6 v7) erased v3 (du302 (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name314 = "Data.Vec.Base._⊛_"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> T24 -> T24
d314 v0 v1 v2 v3 v4 v5 v6 = du314 v5 v6
du314 :: T24 -> T24 -> T24
du314 v0 v1
  = case coe v0 of
      C28 -> coe v0
      C36 v3 v4
        -> case coe v1 of
             C36 v6 v7
               -> coe
                    (\ v8 v9 v10 -> C36 v9 v10) erased (coe v3 v6)
                    (du314 (coe v4) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Data.Vec.Base._>>=_"
d328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> (AgdaAny -> T24) -> T24
d328 v0 v1 v2 v3 v4 v5 v6 v7 = du328 v6 v7
du328 :: T24 -> (AgdaAny -> T24) -> T24
du328 v0 v1 = coe (du198 (coe (du170 (coe v1) (coe v0))))
name338 = "Data.Vec.Base._⊛*_"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d338 v0 v1 v2 v3 v4 v5 v6 v7 = du338 v6 v7
du338 :: T24 -> T24 -> T24
du338 v0 v1
  = coe (du328 (coe v0) (coe (\ v2 -> du170 (coe v2) (coe v1))))
name350 = "Data.Vec.Base.allPairs"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24 -> T24
d350 v0 v1 v2 v3 v4 v5 v6 v7 = du350 v6 v7
du350 :: T24 -> T24 -> T24
du350 v0 v1
  = coe
      (du338
         (coe (du170 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32) (coe v0)))
         (coe v1))
name368 = "Data.Vec.Base.foldr"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
d368 v0 v1 v2 v3 v4 v5 v6 v7 = du368 v4 v5 v6 v7
du368 ::
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
du368 v0 v1 v2 v3
  = case coe v3 of
      C28 -> coe v2
      C36 v5 v6
        -> let v7 = subInt (coe v0) (coe (1 :: Integer)) in
           coe v1 v7 v5 (du368 (coe v7) (coe v1) (coe v2) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
name388 = "Data.Vec.Base.foldr₁"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d388 v0 v1 v2 v3 v4 = du388 v3 v4
du388 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du388 v0 v1
  = case coe v1 of
      C36 v3 v4
        -> case coe v4 of
             C28 -> coe v3
             C36 v6 v7
               -> coe
                    v0 v3
                    (du388 (coe v0) (coe (\ v8 v9 v10 -> C36 v9 v10) erased v6 v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name414 = "Data.Vec.Base.foldl"
d414 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> ()) ->
  Integer ->
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
d414 v0 v1 v2 v3 v4 v5 v6 v7 = du414 v5 v6 v7
du414 ::
  (Integer -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T24 -> AgdaAny
du414 v0 v1 v2
  = case coe v2 of
      C28 -> coe v1
      C36 v4 v5
        -> coe
             (du414
                (coe (\ v6 -> coe v0 (addInt (coe (1 :: Integer)) (coe v6))))
                (coe v0 (0 :: Integer) v1 v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name436 = "Data.Vec.Base.foldl₁"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
d436 v0 v1 v2 v3 v4 = du436 v3 v4
du436 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T24 -> AgdaAny
du436 v0 v1
  = case coe v1 of
      C36 v3 v4 -> coe (du414 (coe (\ v5 -> v0)) (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name446 = "Data.Vec.Base.sum"
d446 :: Integer -> T24 -> Integer
d446 v0
  = coe (du368 (coe v0) (coe (\ v1 -> addInt)) (coe (0 :: Integer)))
name452 = "Data.Vec.Base.count"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) ->
  Integer -> T24 -> Integer
d452 v0 v1 v2 v3 v4 v5 v6 = du452 v4 v6
du452 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T14) -> T24 -> Integer
du452 v0 v1
  = case coe v1 of
      C28 -> coe (0 :: Integer)
      C36 v3 v4
        -> let v5 = coe v0 v3 in
           case coe v5 of
             MAlonzo.Code.Relation.Nullary.C22 v6
               -> coe
                    (addInt (coe (1 :: Integer)) (coe (du452 (coe v0) (coe v4))))
             MAlonzo.Code.Relation.Nullary.C26 -> coe (du452 (coe v0) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name478 = "Data.Vec.Base.[_]"
d478 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T24
d478 v0 v1 v2 = du478 v2
du478 :: AgdaAny -> T24
du478 v0 = coe (\ v1 v2 v3 -> C36 v2 v3) erased v0 C28
name484 = "Data.Vec.Base.replicate"
d484 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> AgdaAny -> T24
d484 v0 v1 v2 v3 = du484 v2 v3
du484 :: Integer -> AgdaAny -> T24
du484 v0 v1
  = case coe v0 of
      0 -> coe C28
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (\ v3 v4 v5 -> C36 v4 v5) erased v1 (du484 (coe v2) (coe v1))
name494 = "Data.Vec.Base.tabulate"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T24
d494 v0 v1 v2 v3 = du494 v2 v3
du494 ::
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> T24
du494 v0 v1
  = case coe v0 of
      0 -> coe C28
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 v4 v5 -> C36 v4 v5) erased
             (coe v1 (coe (\ v3 -> MAlonzo.Code.Data.Fin.Base.C10) erased))
             (du494
                (coe v2)
                (coe
                   (\ v3 ->
                      coe
                        v1
                        (coe (\ v4 v5 -> MAlonzo.Code.Data.Fin.Base.C16 v5) erased v3))))
name504 = "Data.Vec.Base.allFin"
d504 :: Integer -> T24
d504 v0 = coe (du494 (coe v0) (coe (\ v1 -> v1)))
name516 = "Data.Vec.Base.splitAt"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d516 v0 v1 v2 v3 v4 = du516 v2 v4
du516 :: Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du516 v0 v1
  = case coe v0 of
      0 -> coe
             (MAlonzo.Code.Agda.Builtin.Sigma.C32
                (coe C28)
                (coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) erased)))
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C36 v4 v5
               -> let v6 = du516 (coe v2) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 v9 v10
                             -> coe
                                  (MAlonzo.Code.Agda.Builtin.Sigma.C32
                                     (coe (\ v11 v12 v13 -> C36 v12 v13) erased v4 v7)
                                     (coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v9) erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name542 = "Data.Vec.Base.take"
d542 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24
d542 v0 v1 v2 v3 v4 = du542 v2 v4
du542 :: Integer -> T24 -> T24
du542 v0 v1
  = let v2 = du516 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe (seq (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name562 = "Data.Vec.Base.drop"
d562 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> Integer -> T24 -> T24
d562 v0 v1 v2 v3 v4 = du562 v2 v4
du562 :: Integer -> T24 -> T24
du562 v0 v1
  = let v2 = du516 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name586 = "Data.Vec.Base.group"
d586 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d586 v0 v1 v2 v3 v4 = du586 v2 v3 v4
du586 ::
  Integer -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du586 v0 v1 v2
  = case coe v0 of
      0 -> coe
             (seq
                (coe v2)
                (coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe C28) erased)))
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           let v4 = du516 (coe v1) (coe v2) in
           case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
                      -> let v9 = du586 (coe v3) (coe v1) (coe v7) in
                         case coe v9 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 v10 v11
                             -> coe
                                  (MAlonzo.Code.Agda.Builtin.Sigma.C32
                                     (coe (\ v12 v13 v14 -> C36 v13 v14) erased v5 v10) erased)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name622 = "Data.Vec.Base.split"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d622 v0 v1 v2 v3 = du622 v3
du622 :: T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du622 v0
  = case coe v0 of
      C28 -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v0))
      C36 v2 v3
        -> case coe v3 of
             C28
               -> coe
                    (MAlonzo.Code.Agda.Builtin.Sigma.C32
                       (coe (\ v4 v5 v6 -> C36 v5 v6) erased v2 v3) (coe v3))
             C36 v5 v6
               -> coe
                    (MAlonzo.Code.Data.Product.du150
                       (coe (C36 (coe v2))) (coe (\ v7 -> C36 (coe v5)))
                       (coe (du622 (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name638 = "Data.Vec.Base.toList"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> [AgdaAny]
d638 v0 v1 v2 v3 = du638 v3
du638 :: T24 -> [AgdaAny]
du638 v0
  = case coe v0 of
      C28 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      C36 v2 v3
        -> coe
             (MAlonzo.Code.Agda.Builtin.List.C22
                (coe v2) (coe (du638 (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name646 = "Data.Vec.Base.fromList"
d646 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T24
d646 v0 v1 v2 = du646 v2
du646 :: [AgdaAny] -> T24
du646 v0
  = case coe v0 of
      [] -> coe C28
      (:) v1 v2
        -> coe (\ v3 v4 v5 -> C36 v4 v5) erased v1 (du646 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name654 = "Data.Vec.Base.reverse"
d654 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> T24
d654 v0 v1 v2 = du654
du654 :: T24 -> T24
du654
  = coe
      (du414
         (coe (\ v0 v1 v2 -> coe (\ v3 v4 v5 -> C36 v4 v5) erased v2 v1))
         (coe C28))
name664 = "Data.Vec.Base._∷ʳ_"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> AgdaAny -> T24
d664 v0 v1 v2 v3 v4 = du664 v3 v4
du664 :: T24 -> AgdaAny -> T24
du664 v0 v1
  = case coe v0 of
      C28 -> coe (\ v2 v3 v4 -> C36 v3 v4) erased v1 v0
      C36 v3 v4
        -> coe
             (\ v5 v6 v7 -> C36 v6 v7) erased v3 (du664 (coe v4) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name682 = "Data.Vec.Base.initLast"
d682 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d682 v0 v1 v2 v3 = du682 v2 v3
du682 :: Integer -> T24 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du682 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             C36 v3 v4
               -> coe
                    (seq
                       (coe v4)
                       (coe
                          (MAlonzo.Code.Agda.Builtin.Sigma.C32
                             (coe C28)
                             (coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3) erased)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C36 v4 v5
               -> let v6 = du682 (coe v2) (coe v5) in
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v7 v8
                      -> case coe v8 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 v9 v10
                             -> coe
                                  (MAlonzo.Code.Agda.Builtin.Sigma.C32
                                     (coe (\ v11 v12 v13 -> C36 v12 v13) erased v4 v7)
                                     (coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v9) erased)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name706 = "Data.Vec.Base.init"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> T24
d706 v0 v1 v2 v3 = du706 v2 v3
du706 :: Integer -> T24 -> T24
du706 v0 v1
  = let v2 = du682 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> coe (seq (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name720 = "Data.Vec.Base.last"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> Integer -> T24 -> AgdaAny
d720 v0 v1 v2 v3 = du720 v2 v3
du720 :: Integer -> T24 -> AgdaAny
du720 v0 v1
  = let v2 = du682 (coe v0) (coe v1) in
    case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v5 v6 -> coe v5
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
