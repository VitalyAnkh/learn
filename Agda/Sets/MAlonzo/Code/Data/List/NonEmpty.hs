{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.NonEmpty where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence

name10 = "Data.List.NonEmpty.List⁺"
d10 a0 a1 = ()
data T10 = C24 AgdaAny [AgdaAny]
name20 = "Data.List.NonEmpty.List⁺.head"
d20 :: T10 -> AgdaAny
d20 v0
  = case coe v0 of
      C24 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name22 = "Data.List.NonEmpty.List⁺.tail"
d22 :: T10 -> [AgdaAny]
d22 v0
  = case coe v0 of
      C24 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name34 = "Data.List.NonEmpty._.uncons"
d34 :: T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d34 v0
  = case coe v0 of
      C24 v1 v2
        -> coe (MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Data.List.NonEmpty._.[_]"
d40 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T10
d40 v0 v1 v2 = du40 v2
du40 :: AgdaAny -> T10
du40 v0
  = coe (C24 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16))
name44 = "Data.List.NonEmpty._._∷⁺_"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T10 -> T10
d44 v0 v1 v2 v3 = du44 v2 v3
du44 :: AgdaAny -> T10 -> T10
du44 v0 v1
  = case coe v1 of
      C24 v2 v3
        -> coe
             (C24
                (coe v0)
                (coe (MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name52 = "Data.List.NonEmpty._.length"
d52 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> Integer
d52 v0 v1 v2 = du52 v2
du52 :: T10 -> Integer
du52 v0
  = case coe v0 of
      C24 v1 v2
        -> coe
             (addInt
                (coe (1 :: Integer)) (coe MAlonzo.Code.Data.List.Base.du258 v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name66 = "Data.List.NonEmpty._.toList"
d66 :: T10 -> [AgdaAny]
d66 v0
  = case coe v0 of
      C24 v1 v2
        -> coe (MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Data.List.NonEmpty._.fromList"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d72 v0 v1 v2 = du72 v2
du72 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du72 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C30
      (:) v1 v2
        -> coe
             (MAlonzo.Code.Data.Maybe.Base.C28 (coe (C24 (coe v1) (coe v2))))
      _ -> MAlonzo.RTE.mazUnreachableError
name80 = "Data.List.NonEmpty._.fromVec"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T10
d80 v0 v1 v2 v3 = du80 v3
du80 :: MAlonzo.Code.Data.Vec.Base.T24 -> T10
du80 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C36 v2 v3
        -> coe
             (C24 (coe v2) (coe (MAlonzo.Code.Data.Vec.Base.du638 (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name88 = "Data.List.NonEmpty._.toVec"
d88 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T10 -> MAlonzo.Code.Data.Vec.Base.T24
d88 v0 v1 v2 = du88 v2
du88 :: T10 -> MAlonzo.Code.Data.Vec.Base.T24
du88 v0
  = case coe v0 of
      C24 v1 v2
        -> coe
             (\ v3 v4 v5 -> MAlonzo.Code.Data.Vec.Base.C36 v4 v5) erased v1
             (MAlonzo.Code.Data.Vec.Base.du646 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name106 = "Data.List.NonEmpty.lift"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T10 -> T10
d106 v0 v1 v2 v3 v4 v5 = du106 v4 v5
du106 ::
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T10 -> T10
du106 v0 v1
  = coe
      (du80
         (coe
            (MAlonzo.Code.Agda.Builtin.Sigma.d30
               (coe
                  v0
                  (MAlonzo.Code.Data.List.Base.du202
                     (coe (\ v2 v3 -> addInt (coe (1 :: Integer)) (coe v3)))
                     (coe (0 :: Integer)) (coe (d22 (coe v1))))
                  (du88 (coe v1))))))
name120 = "Data.List.NonEmpty.map"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> T10 -> T10
d120 v0 v1 v2 v3 v4 v5 = du120 v4 v5
du120 :: (AgdaAny -> AgdaAny) -> T10 -> T10
du120 v0 v1
  = case coe v1 of
      C24 v2 v3
        -> coe
             (C24
                (coe v0 v2)
                (coe (MAlonzo.Code.Data.List.Base.du20 (coe v0) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Data.List.NonEmpty.replicate"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> T10
d134 v0 v1 v2 v3 v4 = du134 v2 v4
du134 :: Integer -> AgdaAny -> T10
du134 v0 v1
  = coe
      (C24
         (coe v1)
         (coe
            (MAlonzo.Code.Data.List.Base.du268
               (coe (MAlonzo.Code.Data.Nat.Base.d62 (coe v0))) (coe v1))))
name150 = "Data.List.NonEmpty.foldr"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T10 -> AgdaAny
d150 v0 v1 v2 v3 v4 v5 v6 = du150 v4 v5 v6
du150 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T10 -> AgdaAny
du150 v0 v1 v2
  = case coe v2 of
      C24 v3 v4 -> coe (du168 (coe v0) (coe v1) (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name168 = "Data.List.NonEmpty._.foldr′"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> [AgdaAny] -> AgdaAny
d168 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du168 v4 v5 v8 v9
du168 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du168 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v1 v2
      (:) v4 v5 -> coe v0 v2 (du168 (coe v0) (coe v1) (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name182 = "Data.List.NonEmpty.foldr₁"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> AgdaAny
d182 v0 v1 v2 = du182 v2
du182 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> AgdaAny
du182 v0 = coe (du150 (coe v0) (coe (\ v1 -> v1)))
name194 = "Data.List.NonEmpty.foldl"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T10 -> AgdaAny
d194 v0 v1 v2 v3 v4 v5 v6 = du194 v4 v5 v6
du194 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T10 -> AgdaAny
du194 v0 v1 v2
  = case coe v2 of
      C24 v3 v4
        -> coe
             (MAlonzo.Code.Data.List.Base.du216 (coe v0) (coe v1 v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name208 = "Data.List.NonEmpty.foldl₁"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> AgdaAny
d208 v0 v1 v2 = du208 v2
du208 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> AgdaAny
du208 v0 = coe (du194 (coe v0) (coe (\ v1 -> v1)))
name220 = "Data.List.NonEmpty._._⁺++⁺_"
d220 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> T10 -> T10
d220 v0 v1 v2 v3 = du220 v2 v3
du220 :: T10 -> T10 -> T10
du220 v0 v1
  = case coe v0 of
      C24 v2 v3
        -> case coe v1 of
             C24 v4 v5
               -> coe
                    (C24
                       (coe v2)
                       (coe
                          (MAlonzo.Code.Data.List.Base.du58
                             (coe v3)
                             (coe (MAlonzo.Code.Agda.Builtin.List.C22 (coe v4) (coe v5))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Data.List.NonEmpty._._⁺++_"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> [AgdaAny] -> T10
d230 v0 v1 v2 v3 = du230 v2 v3
du230 :: T10 -> [AgdaAny] -> T10
du230 v0 v1
  = case coe v0 of
      C24 v2 v3
        -> coe
             (C24
                (coe v2)
                (coe (MAlonzo.Code.Data.List.Base.du58 (coe v3) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name238 = "Data.List.NonEmpty._._++⁺_"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T10 -> T10
d238 v0 v1 v2 v3 = du238 v2 v3
du238 :: [AgdaAny] -> T10 -> T10
du238 v0 v1
  = coe
      (MAlonzo.Code.Data.List.Base.du202 (coe du44) (coe v1) (coe v0))
name244 = "Data.List.NonEmpty._.concat"
d244 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> T10
d244 v0 v1 v2 = du244 v2
du244 :: T10 -> T10
du244 v0
  = case coe v0 of
      C24 v1 v2
        -> coe
             (du230
                (coe v1)
                (coe
                   MAlonzo.Code.Data.List.Base.du230
                   (MAlonzo.Code.Data.List.Base.du20 (coe d66) (coe v2))))
      _ -> MAlonzo.RTE.mazUnreachableError
name258 = "Data.List.NonEmpty.concatMap"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> T10) -> T10 -> T10
d258 v0 v1 v2 v3 v4 v5 = du258 v4 v5
du258 :: (AgdaAny -> T10) -> T10 -> T10
du258 v0 v1 = coe (du244 (coe (du120 (coe v0) (coe v1))))
name266 = "Data.List.NonEmpty.reverse"
d266 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> T10
d266 v0 v1 = du266
du266 :: T10 -> T10
du266
  = coe
      (du106
         (coe
            (\ v0 v1 ->
               MAlonzo.Code.Agda.Builtin.Sigma.C32
                 (coe v0) (coe MAlonzo.Code.Data.Vec.Base.du654 v1))))
name284 = "Data.List.NonEmpty._.alignWith"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T10 -> T10 -> T10
d284 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du284 v6 v7 v8
du284 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T10 -> T10 -> T10
du284 v0 v1 v2
  = case coe v1 of
      C24 v3 v4
        -> case coe v2 of
             C24 v5 v6
               -> coe
                    (C24
                       (coe v0 (MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                       (coe
                          (MAlonzo.Code.Data.List.Base.du96 (coe v0) (coe v4) (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name296 = "Data.List.NonEmpty._.zipWith"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
d296 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du296 v6 v7 v8
du296 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
du296 v0 v1 v2
  = case coe v1 of
      C24 v3 v4
        -> case coe v2 of
             C24 v5 v6
               -> coe
                    (C24
                       (coe v0 v3 v5)
                       (coe
                          (MAlonzo.Code.Data.List.Base.du116 (coe v0) (coe v4) (coe v6))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name308 = "Data.List.NonEmpty._.unalignWith"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  T10 -> MAlonzo.Code.Data.These.Base.T38
d308 v0 v1 v2 v3 v4 v5 v6 = du308 v6
du308 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  T10 -> MAlonzo.Code.Data.These.Base.T38
du308 v0
  = coe
      (du150
         (coe
            (\ v1 ->
               MAlonzo.Code.Data.These.Base.du130
                 (coe du320) (coe du320) (coe v0 v1)))
         (coe
            (\ v1 ->
               MAlonzo.Code.Data.These.Base.du60
                 (coe
                    (\ v2 -> C24 (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
                 (coe
                    (\ v2 -> C24 (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
                 (coe v0 v1))))
name320 = "Data.List.NonEmpty._._.mcons"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.These.Base.T38 -> T10
d320 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du320
du320 :: MAlonzo.Code.Data.These.Base.T38 -> T10
du320
  = coe
      (MAlonzo.Code.Data.These.Base.du92
         (coe
            (\ v0 -> C24 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
         (coe (\ v0 -> v0)) (coe du44))
name322 = "Data.List.NonEmpty._.unzipWith"
d322 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d322 v0 v1 v2 v3 v4 v5 v6 v7 = du322 v6 v7
du322 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du322 v0 v1
  = case coe v1 of
      C24 v2 v3
        -> coe
             (MAlonzo.Code.Data.Product.du188
                (coe C24) (coe (\ v4 v5 -> C24)) (coe v0 v2)
                (coe (MAlonzo.Code.Data.List.Base.du178 (coe v0) (coe v3))))
      _ -> MAlonzo.RTE.mazUnreachableError
name342 = "Data.List.NonEmpty._.align"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> T10 -> T10 -> T10
d342 v0 v1 v2 v3 = du342
du342 :: T10 -> T10 -> T10
du342 = coe (du284 (coe (\ v0 -> v0)))
name344 = "Data.List.NonEmpty._.zip"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> T10 -> T10 -> T10
d344 v0 v1 v2 v3 = du344
du344 :: T10 -> T10 -> T10
du344 = coe (du296 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32))
name346 = "Data.List.NonEmpty._.unalign"
d346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T10 -> MAlonzo.Code.Data.These.Base.T38
d346 v0 v1 v2 v3 = du346
du346 :: T10 -> MAlonzo.Code.Data.These.Base.T38
du346 = coe (du308 (coe (\ v0 -> v0)))
name348 = "Data.List.NonEmpty._.unzip"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d348 v0 v1 v2 v3 = du348
du348 :: T10 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du348 = coe (du322 (coe (\ v0 -> v0)))
name354 = "Data.List.NonEmpty._∷ʳ_"
d354 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> AgdaAny -> T10
d354 v0 v1 v2 v3 = du354 v2 v3
du354 :: [AgdaAny] -> AgdaAny -> T10
du354 v0 v1
  = case coe v0 of
      [] -> coe (C24 (coe v1) (coe v0))
      (:) v2 v3
        -> coe
             (C24
                (coe v2)
                (coe (MAlonzo.Code.Data.List.Base.du708 (coe v3) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name368 = "Data.List.NonEmpty._⁺∷ʳ_"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> AgdaAny -> T10
d368 v0 v1 v2 v3 = du368 v2 v3
du368 :: T10 -> AgdaAny -> T10
du368 v0 v1
  = coe
      (du354
         (coe
            (MAlonzo.Code.Agda.Builtin.List.C22
               (coe (d20 (coe v0))) (coe (d22 (coe v0)))))
         (coe v1))
name378 = "Data.List.NonEmpty.SnocView"
d378 a0 a1 a2 = ()
data T378 = C388 [AgdaAny] AgdaAny
name396 = "Data.List.NonEmpty.snocView"
d396 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> T378
d396 v0 v1 v2 = du396 v2
du396 :: T10 -> T378
du396 v0
  = case coe v0 of
      C24 v1 v2
        -> let v3 = MAlonzo.Code.Data.List.Base.du732 (coe v2) in
           case coe v3 of
             MAlonzo.Code.Data.List.Base.C722
               -> coe (C388 (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1))
             MAlonzo.Code.Data.List.Base.C728 v4 v5
               -> coe
                    (C388
                       (coe (MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v4)))
                       (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name418 = "Data.List.NonEmpty.last"
d418 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> AgdaAny
d418 v0 v1 v2 = du418 v2
du418 :: T10 -> AgdaAny
du418 v0
  = let v1 = du396 (coe v0) in
    case coe v1 of
      C388 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name436 = "Data.List.NonEmpty.split"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) -> [AgdaAny] -> [MAlonzo.Code.Data.Sum.Base.T30]
d436 v0 v1 v2 v3 = du436 v2 v3
du436 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [MAlonzo.Code.Data.Sum.Base.T30]
du436 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = du436 (coe v0) (coe v3) in
           if coe v4
             then let v6
                        = MAlonzo.Code.Agda.Builtin.List.C22
                            (coe
                               (MAlonzo.Code.Data.Sum.Base.C38
                                  (coe
                                     (C24
                                        (coe
                                           (MAlonzo.Code.Agda.Builtin.Sigma.C32
                                              (coe v2)
                                              (coe
                                                 MAlonzo.Code.Function.Equality.d38
                                                 (MAlonzo.Code.Function.Equivalence.d36
                                                    (coe
                                                       (MAlonzo.Code.Data.Bool.Properties.d1908
                                                          (coe v4))))
                                                 erased)))
                                        (coe MAlonzo.Code.Agda.Builtin.List.C16)))))
                            (coe v5) in
                  case coe v5 of
                    (:) v7 v8
                      -> case coe v7 of
                           MAlonzo.Code.Data.Sum.Base.C38 v9
                             -> coe
                                  (MAlonzo.Code.Agda.Builtin.List.C22
                                     (coe
                                        (MAlonzo.Code.Data.Sum.Base.C38
                                           (coe
                                              (du44
                                                 (coe
                                                    (MAlonzo.Code.Agda.Builtin.Sigma.C32
                                                       (coe v2)
                                                       (coe
                                                          MAlonzo.Code.Function.Equality.d38
                                                          (MAlonzo.Code.Function.Equivalence.d36
                                                             (coe
                                                                (MAlonzo.Code.Data.Bool.Properties.d1908
                                                                   (coe v4))))
                                                          erased)))
                                                 (coe v9)))))
                                     (coe v8))
                           _ -> coe v6
                    _ -> coe v6
             else (let v6
                         = MAlonzo.Code.Agda.Builtin.List.C22
                             (coe
                                (MAlonzo.Code.Data.Sum.Base.C42
                                   (coe
                                      (C24
                                         (coe
                                            (MAlonzo.Code.Agda.Builtin.Sigma.C32
                                               (coe v2)
                                               (coe
                                                  MAlonzo.Code.Function.Equality.d38
                                                  (MAlonzo.Code.Function.Equivalence.d36
                                                     (coe
                                                        (MAlonzo.Code.Data.Bool.Properties.d1912
                                                           (coe v4))))
                                                  erased)))
                                         (coe MAlonzo.Code.Agda.Builtin.List.C16)))))
                             (coe v5) in
                   case coe v5 of
                     (:) v7 v8
                       -> case coe v7 of
                            MAlonzo.Code.Data.Sum.Base.C42 v9
                              -> coe
                                   (MAlonzo.Code.Agda.Builtin.List.C22
                                      (coe
                                         (MAlonzo.Code.Data.Sum.Base.C42
                                            (coe
                                               (du44
                                                  (coe
                                                     (MAlonzo.Code.Agda.Builtin.Sigma.C32
                                                        (coe v2)
                                                        (coe
                                                           MAlonzo.Code.Function.Equality.d38
                                                           (MAlonzo.Code.Function.Equivalence.d36
                                                              (coe
                                                                 (MAlonzo.Code.Data.Bool.Properties.d1912
                                                                    (coe v4))))
                                                           erased)))
                                                  (coe v9)))))
                                      (coe v8))
                            _ -> coe v6
                     _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name506 = "Data.List.NonEmpty.flatten"
d506 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> [MAlonzo.Code.Data.Sum.Base.T30] -> [AgdaAny]
d506 v0 v1 v2 v3 v4 v5 v6 = du506 v6
du506 :: [MAlonzo.Code.Data.Sum.Base.T30] -> [AgdaAny]
du506 v0
  = coe
      MAlonzo.Code.Data.List.Base.du230
      (MAlonzo.Code.Data.List.Base.du20
         (coe
            (MAlonzo.Code.Data.Sum.Base.du52
               (coe
                  (\ v1 ->
                     MAlonzo.Code.Agda.Builtin.List.C22
                       (coe
                          (d20
                             (coe (du120 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v1)))))
                       (coe
                          (d22
                             (coe
                                (du120 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v1)))))))
               (coe
                  (\ v1 ->
                     MAlonzo.Code.Agda.Builtin.List.C22
                       (coe
                          (d20
                             (coe (du120 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v1)))))
                       (coe
                          (d22
                             (coe
                                (du120 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v1)))))))))
         (coe v0))
name516 = "Data.List.NonEmpty.flatten-split"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d516 = erased
name582 = "Data.List.NonEmpty.wordsBy"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [T10]
d582 v0 v1 v2 v3 = du582 v2 v3
du582 :: (AgdaAny -> Bool) -> [AgdaAny] -> [T10]
du582 v0 v1
  = coe
      (MAlonzo.Code.Data.List.Base.du30
         (coe
            (MAlonzo.Code.Data.Sum.Base.du52
               (coe (\ v2 -> MAlonzo.Code.Data.Maybe.Base.C30))
               (coe
                  (\ v2 ->
                     MAlonzo.Code.Data.Maybe.Base.C28
                       (coe
                          (du120 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v2)))))))
         (coe (du436 (coe v0) (coe v1))))
