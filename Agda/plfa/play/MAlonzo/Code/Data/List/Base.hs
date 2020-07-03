{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Negation
import qualified MAlonzo.Code.Relation.Unary.Properties

name20 = "Data.List.Base.map"
d20 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d20 v0 v1 v2 v3 v4 v5 = du20 v4 v5
du20 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du20 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v2)
             (coe du20 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name30 = "Data.List.Base.mapMaybe"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
d30 v0 v1 v2 v3 v4 v5 = du30 v4 v5
du30 ::
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
du30 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C26 -> coe du30 (coe v0) (coe v3)
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v5)
                    (coe du30 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name58 = "Data.List.Base._++_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d58 v0 v1 v2 v3 = du58 v2 v3
du58 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du58 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
             (coe du58 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name68 = "Data.List.Base.intersperse"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> [AgdaAny] -> [AgdaAny]
d68 v0 v1 v2 v3 = du68 v2 v3
du68 :: AgdaAny -> [AgdaAny] -> [AgdaAny]
du68 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
                        (coe du68 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v1
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Data.List.Base.intercalate"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
d82 v0 v1 v2 v3 = du82 v2 v3
du82 :: [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
du82 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     du58 (coe v2) (coe du58 (coe v0) (coe du82 (coe v0) (coe v3))) in
           case coe v3 of
             [] -> coe v2
             _ -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
name96 = "Data.List.Base.cartesianProductWith"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du96 v6 v7 v8
du96 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du96 v0 v1 v2
  = case coe v1 of
      [] -> coe v1
      (:) v3 v4
        -> coe
             du58 (coe du20 (coe v0 v3) (coe v2))
             (coe du96 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Data.List.Base.cartesianProduct"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
d108 v0 v1 v2 v3 = du108
du108 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
du108 = coe du96 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name110 = "Data.List.Base.alignWith"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d110 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du110 v6 v7 v8
du110 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du110 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             du20
             (coe
                (\ v3 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C50 (coe v3))))
             (coe v2)
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    du20
                    (coe
                       (\ v5 -> coe v0 (coe MAlonzo.Code.Data.These.Base.C48 (coe v5))))
                    (coe v1)
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                    (coe du110 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name130 = "Data.List.Base.zipWith"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d130 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du130 v6 v7 v8
du130 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du130 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C16 in
    case coe v1 of
      (:) v4 v5
        -> case coe v2 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v4 v6)
                    (coe du130 (coe v0) (coe v5) (coe v7))
             _ -> coe v3
      _ -> coe v3
name144 = "Data.List.Base.unalignWith"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d144 v0 v1 v2 v3 v4 v5 v6 v7 = du144 v6 v7
du144 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du144 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           case coe v4 of
             MAlonzo.Code.Data.These.Base.C48 v5
               -> coe
                    MAlonzo.Code.Data.Product.du158
                    (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v6))
                    (coe du144 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C50 v5
               -> coe
                    MAlonzo.Code.Data.Product.du170
                    (\ v6 v7 ->
                       coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v7))
                    (coe du144 (coe v0) (coe v3))
             MAlonzo.Code.Data.These.Base.C52 v5 v6
               -> coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v7 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v5) (coe v7)))
                    (coe
                       (\ v7 v8 ->
                          coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v6) (coe v8)))
                    (coe du144 (coe v0) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name192 = "Data.List.Base.unzipWith"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d192 v0 v1 v2 v3 v4 v5 v6 v7 = du192 v6 v7
du192 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du192 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du186
             (coe MAlonzo.Code.Agda.Builtin.List.C22)
             (coe (\ v4 v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22))
             (coe v0 v2) (coe du192 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name202 = "Data.List.Base.partitionSumsWith"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d202 v0 v1 v2 v3 v4 v5 v6 = du202 v6
du202 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du202 v0
  = coe
      du144
      (coe (\ v1 -> coe MAlonzo.Code.Data.These.Base.du54 (coe v0 v1)))
name206 = "Data.List.Base.align"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T38]
d206 v0 v1 v2 v3 = du206
du206 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T38]
du206 = coe du110 (coe (\ v0 -> v0))
name208 = "Data.List.Base.zip"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
d208 v0 v1 v2 v3 = du208
du208 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T14]
du208 = coe du130 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name210 = "Data.List.Base.unalign"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Data.These.Base.T38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d210 v0 v1 v2 v3 = du210
du210 ::
  [MAlonzo.Code.Data.These.Base.T38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du210 = coe du144 (coe (\ v0 -> v0))
name212 = "Data.List.Base.unzip"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d212 v0 v1 v2 v3 = du212
du212 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du212 = coe du192 (coe (\ v0 -> v0))
name214 = "Data.List.Base.partitionSums"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [MAlonzo.Code.Data.Sum.Base.T30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d214 v0 v1 v2 v3 = du214
du214 ::
  [MAlonzo.Code.Data.Sum.Base.T30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du214 = coe du202 (coe (\ v0 -> v0))
name216 = "Data.List.Base.foldr"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 v6 = du216 v4 v5 v6
du216 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du216 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe v0 v3 (coe du216 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Data.List.Base.foldl"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d230 v0 v1 v2 v3 v4 v5 v6 = du230 v4 v5 v6
du230 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du230 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe du230 (coe v0) (coe v0 v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name244 = "Data.List.Base.concat"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [[AgdaAny]] -> [AgdaAny]
d244 v0 v1 = du244
du244 :: [[AgdaAny]] -> [AgdaAny]
du244
  = coe du216 (coe du58) (coe MAlonzo.Code.Agda.Builtin.List.C16)
name246 = "Data.List.Base.concatMap"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d246 v0 v1 v2 v3 v4 v5 = du246 v4 v5
du246 :: (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du246 v0 v1 = coe du244 (coe du20 (coe v0) (coe v1))
name250 = "Data.List.Base.null"
d250 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> Bool
d250 v0 v1 v2 = du250 v2
du250 :: [AgdaAny] -> Bool
du250 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C10
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C8
      _ -> MAlonzo.RTE.mazUnreachableError
name256 = "Data.List.Base.and"
d256 :: [Bool] -> Bool
d256
  = coe
      du216 (coe MAlonzo.Code.Data.Bool.Base.d24)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C10)
name258 = "Data.List.Base.or"
d258 :: [Bool] -> Bool
d258
  = coe
      du216 (coe MAlonzo.Code.Data.Bool.Base.d30)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
name260 = "Data.List.Base.any"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d260 v0 v1 v2 v3 = du260 v2 v3
du260 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du260 v0 v1 = coe d258 (coe du20 (coe v0) (coe v1))
name264 = "Data.List.Base.all"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d264 v0 v1 v2 v3 = du264 v2 v3
du264 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du264 v0 v1 = coe d256 (coe du20 (coe v0) (coe v1))
name268 = "Data.List.Base.sum"
d268 :: [Integer] -> Integer
d268 = coe du216 (coe addInt) (coe (0 :: Integer))
name270 = "Data.List.Base.product"
d270 :: [Integer] -> Integer
d270 = coe du216 (coe mulInt) (coe (1 :: Integer))
name272 = "Data.List.Base.length"
d272 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> Integer
d272 v0 v1 = du272
du272 :: [AgdaAny] -> Integer
du272
  = coe
      du216 (coe (\ v0 v1 -> addInt (coe (1 :: Integer)) (coe v1)))
      (coe (0 :: Integer))
name274 = "Data.List.Base.[_]"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> [AgdaAny]
d274 v0 v1 v2 = du274 v2
du274 :: AgdaAny -> [AgdaAny]
du274 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C22 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C16)
name278 = "Data.List.Base.fromMaybe"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
d278 v0 v1 v2 = du278 v2
du278 :: MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
du278 v0
  = case coe v0 of
      MAlonzo.Code.Data.Maybe.Base.C26
        -> coe MAlonzo.Code.Agda.Builtin.List.C16
      MAlonzo.Code.Data.Maybe.Base.C30 v1
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.List.C16)
      _ -> MAlonzo.RTE.mazUnreachableError
name282 = "Data.List.Base.replicate"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> [AgdaAny]
d282 v0 v1 v2 v3 = du282 v2 v3
du282 :: Integer -> AgdaAny -> [AgdaAny]
du282 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe du282 (coe v2) (coe v1))
name290 = "Data.List.Base.inits"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [[AgdaAny]]
d290 v0 v1 v2 = du290 v2
du290 :: [AgdaAny] -> [[AgdaAny]]
du290 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22
             (coe MAlonzo.Code.Agda.Builtin.List.C16)
             (coe
                du20
                (coe
                   (\ v3 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v3)))
                (coe du290 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
name298 = "Data.List.Base.tails"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [[AgdaAny]]
d298 v0 v1 v2 = du298 v2
du298 :: [AgdaAny] -> [[AgdaAny]]
du298 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0) (coe du298 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name304 = "Data.List.Base.scanr"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d304 v0 v1 v2 v3 v4 v5 v6 = du304 v4 v5 v6
du304 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du304 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = coe du304 (coe v0) (coe v1) (coe v4) in
           case coe v5 of
             [] -> coe v5
             (:) v6 v7
               -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v3 v6) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name342 = "Data.List.Base.scanl"
d342 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d342 v0 v1 v2 v3 v4 v5 v6 = du342 v4 v5 v6
du342 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du342 v0 v1 v2
  = case coe v2 of
      [] -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
             (coe du342 (coe v0) (coe v0 v1 v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
name356 = "Data.List.Base.applyUpTo"
d356 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d356 v0 v1 v2 v3 = du356 v2 v3
du356 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du356 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 (0 :: Integer))
             (coe
                du356 (coe (\ v3 -> coe v0 (addInt (coe (1 :: Integer)) (coe v3))))
                (coe v2))
name364 = "Data.List.Base.applyDownFrom"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d364 v0 v1 v2 v3 = du364 v2 v3
du364 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du364 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v0 v2)
             (coe du364 (coe v0) (coe v2))
name376 = "Data.List.Base.tabulate"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> [AgdaAny]
d376 v0 v1 v2 v3 = du376 v2 v3
du376 ::
  Integer -> (MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny) -> [AgdaAny]
du376 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Builtin.List.C22
             (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C10))
             (coe
                du376 (coe v2)
                (coe (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C16 v3))))
name386 = "Data.List.Base.lookup"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
d386 v0 v1 v2 v3 = du386 v2 v3
du386 :: [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny
du386 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v2
             MAlonzo.Code.Data.Fin.Base.C16 v5 -> coe du386 (coe v3) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name398 = "Data.List.Base.upTo"
d398 :: Integer -> [Integer]
d398 = coe du356 (coe (\ v0 -> v0))
name400 = "Data.List.Base.downFrom"
d400 :: Integer -> [Integer]
d400 = coe du364 (coe (\ v0 -> v0))
name404 = "Data.List.Base.allFin"
d404 :: Integer -> [MAlonzo.Code.Data.Fin.Base.T6]
d404 v0 = coe du376 (coe v0) (coe (\ v1 -> v1))
name416 = "Data.List.Base.unfold"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer -> ()) ->
  (Integer -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> [AgdaAny]
d416 v0 v1 v2 v3 v4 v5 v6 = du416 v4 v5 v6
du416 ::
  (Integer -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> [AgdaAny]
du416 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           let v4 = coe v0 v3 v2 in
           case coe v4 of
             MAlonzo.Code.Data.Maybe.Base.C26
               -> coe MAlonzo.Code.Agda.Builtin.List.C16
             MAlonzo.Code.Data.Maybe.Base.C30 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.List.C22 (coe v6)
                           (coe du416 (coe v0) (coe v3) (coe v7))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name456 = "Data.List.Base.uncons"
d456 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d456 v0 v1 v2 = du456 v2
du456 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du456 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.Maybe.Base.C30
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name462 = "Data.List.Base.head"
d462 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d462 v0 v1 v2 = du462 v2
du462 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du462 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name466 = "Data.List.Base.tail"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d466 v0 v1 v2 = du466 v2
du466 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du466 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name470 = "Data.List.Base.take"
d470 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d470 v0 v1 v2 v3 = du470 v2 v3
du470 :: Integer -> [AgdaAny] -> [AgdaAny]
du470 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                    (coe du470 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name482 = "Data.List.Base.drop"
d482 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d482 v0 v1 v2 v3 = du482 v2 v3
du482 :: Integer -> [AgdaAny] -> [AgdaAny]
du482 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe v1
             (:) v3 v4 -> coe du482 (coe v2) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
name494 = "Data.List.Base.splitAt"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d494 v0 v1 v2 v3 = du494 v2 v3
du494 ::
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du494 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
             (:) v3 v4
               -> let v5 = coe du494 (coe v2) (coe v4) in
                  case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v3) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name522 = "Data.List.Base.takeWhile"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d522 v0 v1 v2 v3 v4 v5 = du522 v4 v5
du522 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du522 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du522 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> MAlonzo.RTE.mazUnreachableError
name550 = "Data.List.Base.dropWhile"
d550 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d550 v0 v1 v2 v3 v4 v5 = du550 v4 v5
du550 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du550 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4 then coe du550 (coe v0) (coe v3) else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name578 = "Data.List.Base.filter"
d578 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d578 v0 v1 v2 v3 v4 v5 = du578 v4 v5
du578 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du578 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du578 (coe v0) (coe v3))
             else coe du578 (coe v0) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name606 = "Data.List.Base.partition"
d606 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d606 v0 v1 v2 v3 v4 v5 = du606 v4 v5
du606 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du606 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           let v5 = coe du606 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6)
                            (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name642 = "Data.List.Base.span"
d642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d642 v0 v1 v2 v3 v4 v5 = du642 v4 v5
du642 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du642 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2) in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v5)))
                    (coe (\ v5 v6 -> v6)) (coe du642 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name672 = "Data.List.Base.break"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d672 v0 v1 v2 v3 v4 = du672 v4
du672 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du672 v0
  = coe
      du642 (coe MAlonzo.Code.Relation.Unary.Properties.du74 (coe v0))
name678 = "Data.List.Base.derun"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d678 v0 v1 v2 v3 v4 v5 = du678 v4 v5
du678 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du678 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v3 of
             [] -> coe v1
             (:) v4 v5
               -> let v6 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v2 v4) in
                  let v7 = coe du678 (coe v0) (coe v3) in
                  if coe v6
                    then coe v7
                    else coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name720 = "Data.List.Base.deduplicate"
d720 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
d720 v0 v1 v2 v3 v4 v5 = du720 v4 v5
du720 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny]
du720 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
             (coe
                du578
                (coe
                   (\ v4 ->
                      coe MAlonzo.Code.Relation.Nullary.Negation.du52 (coe v0 v2 v4)))
                (coe du720 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
name732 = "Data.List.Base._[_]%=_"
d732 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> [AgdaAny]
d732 v0 v1 v2 v3 v4 = du732 v2 v3 v4
du732 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T6 -> (AgdaAny -> AgdaAny) -> [AgdaAny]
du732 v0 v1 v2
  = case coe v0 of
      (:) v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10
               -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2 v3) (coe v4)
             MAlonzo.Code.Data.Fin.Base.C16 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                    (coe du732 (coe v4) (coe v6) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name750 = "Data.List.Base._[_]∷=_"
d750 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> [AgdaAny]
d750 v0 v1 v2 v3 v4 = du750 v2 v3 v4
du750 ::
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> AgdaAny -> [AgdaAny]
du750 v0 v1 v2 = coe du732 (coe v0) (coe v1) (coe (\ v3 -> v2))
name760 = "Data.List.Base._─_"
d760 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> [AgdaAny]
d760 v0 v1 v2 v3 = du760 v2 v3
du760 :: [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T6 -> [AgdaAny]
du760 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C10 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C16 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du760 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name772 = "Data.List.Base.reverseAcc"
d772 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d772 v0 v1 = du772
du772 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du772
  = coe
      du230
      (coe
         (\ v0 v1 ->
            coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v0)))
name774 = "Data.List.Base.reverse"
d774 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> [AgdaAny]
d774 v0 v1 = du774
du774 :: [AgdaAny] -> [AgdaAny]
du774 = coe du772 (coe MAlonzo.Code.Agda.Builtin.List.C16)
name776 = "Data.List.Base._ʳ++_"
d776 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d776 v0 v1 v2 v3 = du776 v2 v3
du776 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du776 v0 v1 = coe du772 v1 v0
name778 = "Data.List.Base._∷ʳ_"
d778 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> AgdaAny -> [AgdaAny]
d778 v0 v1 v2 v3 = du778 v2 v3
du778 :: [AgdaAny] -> AgdaAny -> [AgdaAny]
du778 v0 v1
  = coe
      du58 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C16))
name784 = "Data.List.Base._?∷_"
d784 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [AgdaAny]
d784 v0 v1 = du784
du784 :: MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny] -> [AgdaAny]
du784
  = coe
      MAlonzo.Code.Data.Maybe.Base.du62
      (coe MAlonzo.Code.Agda.Builtin.List.C22) (\ v0 -> v0)
name786 = "Data.List.Base._∷ʳ?_"
d786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
d786 v0 v1 v2 v3 = du786 v2 v3
du786 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22 -> [AgdaAny]
du786 v0 v1
  = coe MAlonzo.Code.Data.Maybe.Base.du62 (coe du778 (coe v0)) v0 v1
name798 = "Data.List.Base.InitLast"
d798 a0 a1 a2 = ()
data T798 = C802 | C808 [AgdaAny] AgdaAny
name812 = "Data.List.Base.initLast"
d812 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T798
d812 v0 v1 v2 = du812 v2
du812 :: [AgdaAny] -> T798
du812 v0
  = case coe v0 of
      [] -> coe C802
      (:) v1 v2
        -> let v3 = coe du812 (coe v2) in
           case coe v3 of
             C802 -> coe C808 (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
             C808 v4 v5
               -> coe
                    C808 (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v4))
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name836 = "Data.List.Base.wordsBy"
d836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]]
d836 v0 v1 v2 v3 v4 = du836 v4
du836 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]]
du836 v0
  = coe du854 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16)
name846 = "Data.List.Base._.cons"
d846 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
d846 v0 v1 v2 v3 v4 v5 v6 = du846 v5 v6
du846 :: [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
du846 v0 v1
  = let v2
          = coe MAlonzo.Code.Agda.Builtin.List.C22 (coe du774 v0) (coe v1) in
    case coe v0 of
      [] -> coe v1
      _ -> coe v2
name854 = "Data.List.Base._.go"
d854 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
d854 v0 v1 v2 v3 v4 v5 v6 = du854 v4 v5 v6
du854 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
du854 v0 v1 v2
  = case coe v2 of
      [] -> coe du846 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = MAlonzo.Code.Relation.Nullary.d42 (coe v0 v3) in
           if coe v5
             then coe
                    du846 (coe v1)
                    (coe
                       du854 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v4))
             else coe
                    du854 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v3) (coe v1)) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name880 = "Data.List.Base.gfilter"
d880 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  [AgdaAny] -> [AgdaAny]
d880 v0 v1 v2 v3 v4 v5 = coe du30 v4 v5
name882 = "Data.List.Base.boolFilter"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d882 v0 v1 v2 = du882 v2
du882 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du882 v0
  = coe
      du30
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.Bool.Base.du42 (coe v0 v1)
              (coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v1))
              (coe MAlonzo.Code.Data.Maybe.Base.C26)))
name888 = "Data.List.Base.boolPartition"
d888 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d888 v0 v1 v2 v3 = du888 v2 v3
du888 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du888 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du888 (coe v0) (coe v3) in
           if coe v4
             then case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32
                           (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v6)) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError
             else (case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6)
                            (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v7))
                     _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
name922 = "Data.List.Base.boolTakeWhile"
d922 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d922 v0 v1 v2 v3 = du922 v2 v3
du922 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du922 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
                    (coe du922 (coe v0) (coe v3))
             else coe MAlonzo.Code.Agda.Builtin.List.C16
      _ -> MAlonzo.RTE.mazUnreachableError
name948 = "Data.List.Base.boolDropWhile"
d948 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d948 v0 v1 v2 v3 = du948 v2 v3
du948 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du948 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4 then coe du948 (coe v0) (coe v3) else coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name974 = "Data.List.Base.boolSpan"
d974 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d974 v0 v1 v2 v3 = du974 v2 v3
du974 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du974 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           if coe v4
             then coe
                    MAlonzo.Code.Data.Product.du148
                    (coe
                       (\ v5 -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v5)))
                    (coe (\ v5 v6 -> v6)) (coe du974 (coe v0) (coe v3))
             else coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32
                    (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name1002 = "Data.List.Base.boolBreak"
d1002 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1002 v0 v1 v2 = du1002 v2
du1002 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1002 v0
  = coe
      du974 (coe (\ v1 -> MAlonzo.Code.Data.Bool.Base.d22 (coe v0 v1)))
name1010 = "Data.List.Base._∷ʳ'_"
d1010 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> AgdaAny -> T798
d1010 v0 v1 = du1010
du1010 :: [AgdaAny] -> AgdaAny -> T798
du1010 = coe C808
