{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
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

name22 = "Data.List.NonEmpty.List⁺"
d22 a0 a1 = ()
data T22 = C34 AgdaAny [AgdaAny]
name30 = "Data.List.NonEmpty.List⁺.head"
d30 :: T22 -> AgdaAny
d30 v0
  = case coe v0 of
      C34 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name32 = "Data.List.NonEmpty.List⁺.tail"
d32 :: T22 -> [AgdaAny]
d32 v0
  = case coe v0 of
      C34 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name36 = "Data.List.NonEmpty.uncons"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T22 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d36 v0 v1 v2 = du36 v2
du36 :: T22 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du36 v0
  = case coe v0 of
      C34 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name42 = "Data.List.NonEmpty.[_]"
d42 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T22
d42 v0 v1 v2 = du42 v2
du42 :: AgdaAny -> T22
du42 v0 = coe C34 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16)
name46 = "Data.List.NonEmpty._∷⁺_"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> T22 -> T22
d46 v0 v1 v2 v3 = du46 v2 v3
du46 :: AgdaAny -> T22 -> T22
du46 v0 v1
  = case coe v1 of
      C34 v2 v3
        -> coe
             C34 (coe v0)
             (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v2) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name54 = "Data.List.NonEmpty.length"
d54 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> Integer
d54 v0 v1 v2 = du54 v2
du54 :: T22 -> Integer
du54 v0
  = case coe v0 of
      C34 v1 v2
        -> coe
             addInt (coe (1 :: Integer))
             (coe MAlonzo.Code.Data.List.Base.du272 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name60 = "Data.List.NonEmpty.toList"
d60 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> [AgdaAny]
d60 v0 v1 v2 = du60 v2
du60 :: T22 -> [AgdaAny]
du60 v0
  = case coe v0 of
      C34 v1 v2
        -> coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name66 = "Data.List.NonEmpty.fromList"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
d66 v0 v1 v2 = du66 v2
du66 :: [AgdaAny] -> MAlonzo.Code.Data.Maybe.Base.T22
du66 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Data.Maybe.Base.C26
      (:) v1 v2
        -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe C34 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name74 = "Data.List.NonEmpty.fromVec"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> T22
d74 v0 v1 v2 v3 = du74 v3
du74 :: MAlonzo.Code.Data.Vec.Base.T24 -> T22
du74 v0
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C36 v2 v3
        -> coe C34 (coe v2) (coe MAlonzo.Code.Data.Vec.Base.du652 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name82 = "Data.List.NonEmpty.toVec"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T22 -> MAlonzo.Code.Data.Vec.Base.T24
d82 v0 v1 v2 = du82 v2
du82 :: T22 -> MAlonzo.Code.Data.Vec.Base.T24
du82 v0
  = case coe v0 of
      C34 v1 v2
        -> coe
             MAlonzo.Code.Data.Vec.Base.C36 v1
             (coe MAlonzo.Code.Data.Vec.Base.du660 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
name92 = "Data.List.NonEmpty.lift"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T22 -> T22
d92 v0 v1 v2 v3 v4 v5 = du92 v4 v5
du92 ::
  (Integer ->
   MAlonzo.Code.Data.Vec.Base.T24 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T22 -> T22
du92 v0 v1
  = coe
      du74
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d30
         (coe
            v0
            (coe
               MAlonzo.Code.Data.List.Base.du216
               (coe (\ v2 v3 -> addInt (coe (1 :: Integer)) (coe v3)))
               (coe (0 :: Integer)) (coe d32 (coe v1)))
            (coe du82 (coe v1))))
name98 = "Data.List.NonEmpty.map"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> T22 -> T22
d98 v0 v1 v2 v3 v4 v5 = du98 v4 v5
du98 :: (AgdaAny -> AgdaAny) -> T22 -> T22
du98 v0 v1
  = case coe v1 of
      C34 v2 v3
        -> coe
             C34 (coe v0 v2)
             (coe MAlonzo.Code.Data.List.Base.du20 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name108 = "Data.List.NonEmpty.replicate"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T12 ->
   MAlonzo.Code.Data.Empty.T4) ->
  AgdaAny -> T22
d108 v0 v1 v2 v3 v4 = du108 v2 v4
du108 :: Integer -> AgdaAny -> T22
du108 v0 v1
  = coe
      C34 (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du282
         (coe MAlonzo.Code.Data.Nat.Base.d82 (coe v0)) (coe v1))
name116 = "Data.List.NonEmpty.foldr"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T22 -> AgdaAny
d116 v0 v1 v2 v3 v4 v5 v6 = du116 v4 v5 v6
du116 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T22 -> AgdaAny
du116 v0 v1 v2
  = case coe v2 of
      C34 v3 v4 -> coe du134 (coe v0) (coe v1) (coe v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name134 = "Data.List.NonEmpty._.foldr′"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> [AgdaAny] -> AgdaAny
d134 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du134 v4 v5 v8 v9
du134 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du134 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v1 v2
      (:) v4 v5
        -> coe v0 v2 (coe du134 (coe v0) (coe v1) (coe v4) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
name144 = "Data.List.NonEmpty.foldr₁"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> AgdaAny
d144 v0 v1 v2 = du144 v2
du144 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> AgdaAny
du144 v0 = coe du116 (coe v0) (coe (\ v1 -> v1))
name148 = "Data.List.NonEmpty.foldl"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T22 -> AgdaAny
d148 v0 v1 v2 v3 v4 v5 v6 = du148 v4 v5 v6
du148 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> T22 -> AgdaAny
du148 v0 v1 v2
  = case coe v2 of
      C34 v3 v4
        -> coe
             MAlonzo.Code.Data.List.Base.du230 (coe v0) (coe v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name158 = "Data.List.NonEmpty.foldl₁"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> AgdaAny
d158 v0 v1 v2 = du158 v2
du158 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> AgdaAny
du158 v0 = coe du148 (coe v0) (coe (\ v1 -> v1))
name162 = "Data.List.NonEmpty._⁺++⁺_"
d162 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22 -> T22
d162 v0 v1 v2 v3 = du162 v2 v3
du162 :: T22 -> T22 -> T22
du162 v0 v1
  = case coe v0 of
      C34 v2 v3
        -> case coe v1 of
             C34 v4 v5
               -> coe
                    C34 (coe v2)
                    (coe
                       MAlonzo.Code.Data.List.Base.du58 (coe v3)
                       (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v4) (coe v5)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name172 = "Data.List.NonEmpty._⁺++_"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> [AgdaAny] -> T22
d172 v0 v1 v2 v3 = du172 v2 v3
du172 :: T22 -> [AgdaAny] -> T22
du172 v0 v1
  = case coe v0 of
      C34 v2 v3
        -> coe
             C34 (coe v2)
             (coe MAlonzo.Code.Data.List.Base.du58 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name180 = "Data.List.NonEmpty._++⁺_"
d180 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> T22 -> T22
d180 v0 v1 v2 v3 = du180 v2 v3
du180 :: [AgdaAny] -> T22 -> T22
du180 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du216 (coe du46) (coe v1) (coe v0)
name186 = "Data.List.NonEmpty.concat"
d186 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22
d186 v0 v1 v2 = du186 v2
du186 :: T22 -> T22
du186 v0
  = case coe v0 of
      C34 v1 v2
        -> coe
             du172 (coe v1)
             (coe
                MAlonzo.Code.Data.List.Base.du244
                (coe MAlonzo.Code.Data.List.Base.du20 (coe du60) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
name192 = "Data.List.NonEmpty.concatMap"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> T22) -> T22 -> T22
d192 v0 v1 v2 v3 v4 v5 = du192 v4 v5
du192 :: (AgdaAny -> T22) -> T22 -> T22
du192 v0 v1 = coe du186 (coe du98 (coe v0) (coe v1))
name196 = "Data.List.NonEmpty.reverse"
d196 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22
d196 v0 v1 = du196
du196 :: T22 -> T22
du196
  = coe
      du92
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0)
              (coe MAlonzo.Code.Data.Vec.Base.du668 v1)))
name198 = "Data.List.NonEmpty.alignWith"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T22 -> T22 -> T22
d198 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du198 v6 v7 v8
du198 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T22 -> T22 -> T22
du198 v0 v1 v2
  = case coe v1 of
      C34 v3 v4
        -> case coe v2 of
             C34 v5 v6
               -> coe
                    C34
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v5)))
                    (coe MAlonzo.Code.Data.List.Base.du110 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name210 = "Data.List.NonEmpty.zipWith"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> T22 -> T22
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du210 v6 v7 v8
du210 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T22 -> T22 -> T22
du210 v0 v1 v2
  = case coe v1 of
      C34 v3 v4
        -> case coe v2 of
             C34 v5 v6
               -> coe
                    C34 (coe v0 v3 v5)
                    (coe MAlonzo.Code.Data.List.Base.du130 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name222 = "Data.List.NonEmpty.unalignWith"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  T22 -> MAlonzo.Code.Data.These.Base.T38
d222 v0 v1 v2 v3 v4 v5 v6 = du222 v6
du222 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  T22 -> MAlonzo.Code.Data.These.Base.T38
du222 v0
  = coe
      du116
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.These.Base.du130 (coe du234) (coe du234)
              (coe v0 v1)))
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.These.Base.du60
              (coe
                 (\ v2 ->
                    coe C34 (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
              (coe
                 (\ v2 ->
                    coe C34 (coe v2) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
              (coe v0 v1)))
name234 = "Data.List.NonEmpty._.mcons"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T38) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.These.Base.T38 -> T22
d234 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du234
du234 :: MAlonzo.Code.Data.These.Base.T38 -> T22
du234
  = coe
      MAlonzo.Code.Data.These.Base.du92
      (coe
         (\ v0 ->
            coe C34 (coe v0) (coe MAlonzo.Code.Agda.Builtin.List.C16)))
      (coe (\ v0 -> v0)) (coe du46)
name236 = "Data.List.NonEmpty.unzipWith"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T22 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d236 v0 v1 v2 v3 v4 v5 v6 v7 = du236 v6 v7
du236 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14) ->
  T22 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du236 v0 v1
  = case coe v1 of
      C34 v2 v3
        -> coe
             MAlonzo.Code.Data.Product.du186 (coe C34)
             (coe (\ v4 v5 -> coe C34)) (coe v0 v2)
             (coe MAlonzo.Code.Data.List.Base.du192 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name244 = "Data.List.NonEmpty.align"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22 -> T22
d244 v0 v1 v2 v3 = du244
du244 :: T22 -> T22 -> T22
du244 = coe du198 (coe (\ v0 -> v0))
name246 = "Data.List.NonEmpty.zip"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T22 -> T22
d246 v0 v1 v2 v3 = du246
du246 :: T22 -> T22 -> T22
du246 = coe du210 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name248 = "Data.List.NonEmpty.unalign"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T22 -> MAlonzo.Code.Data.These.Base.T38
d248 v0 v1 v2 v3 = du248
du248 :: T22 -> MAlonzo.Code.Data.These.Base.T38
du248 = coe du222 (coe (\ v0 -> v0))
name250 = "Data.List.NonEmpty.unzip"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T22 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d250 v0 v1 v2 v3 = du250
du250 :: T22 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du250 = coe du236 (coe (\ v0 -> v0))
name252 = "Data.List.NonEmpty._∷ʳ_"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> [AgdaAny] -> AgdaAny -> T22
d252 v0 v1 v2 v3 = du252 v2 v3
du252 :: [AgdaAny] -> AgdaAny -> T22
du252 v0 v1
  = case coe v0 of
      [] -> coe C34 (coe v1) (coe v0)
      (:) v2 v3
        -> coe
             C34 (coe v2)
             (coe MAlonzo.Code.Data.List.Base.du778 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name262 = "Data.List.NonEmpty._⁺∷ʳ_"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> AgdaAny -> T22
d262 v0 v1 v2 v3 = du262 v2 v3
du262 :: T22 -> AgdaAny -> T22
du262 v0 v1 = coe du252 (coe du60 (coe v0)) (coe v1)
name272 = "Data.List.NonEmpty.SnocView"
d272 a0 a1 a2 = ()
data T272 = C280 [AgdaAny] AgdaAny
name284 = "Data.List.NonEmpty.snocView"
d284 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> T272
d284 v0 v1 v2 = du284 v2
du284 :: T22 -> T272
du284 v0
  = case coe v0 of
      C34 v1 v2
        -> let v3 = coe MAlonzo.Code.Data.List.Base.du812 (coe v2) in
           case coe v3 of
             MAlonzo.Code.Data.List.Base.C802
               -> coe C280 (coe MAlonzo.Code.Agda.Builtin.List.C16) (coe v1)
             MAlonzo.Code.Data.List.Base.C808 v4 v5
               -> coe
                    C280 (coe MAlonzo.Code.Agda.Builtin.List.C22 (coe v1) (coe v4))
                    (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name302 = "Data.List.NonEmpty.last"
d302 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> T22 -> AgdaAny
d302 v0 v1 v2 = du302 v2
du302 :: T22 -> AgdaAny
du302 v0
  = let v1 = coe du284 (coe v0) in
    case coe v1 of
      C280 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name316 = "Data.List.NonEmpty.split"
d316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) -> [AgdaAny] -> [MAlonzo.Code.Data.Sum.Base.T30]
d316 v0 v1 v2 v3 = du316 v2 v3
du316 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [MAlonzo.Code.Data.Sum.Base.T30]
du316 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           let v5 = coe du316 (coe v0) (coe v3) in
           if coe v4
             then let v6
                        = coe
                            MAlonzo.Code.Agda.Builtin.List.C22
                            (coe
                               MAlonzo.Code.Data.Sum.Base.C38
                               (coe
                                  C34
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2)
                                     (coe
                                        MAlonzo.Code.Function.Equality.d38
                                        (MAlonzo.Code.Function.Equivalence.d36
                                           (coe MAlonzo.Code.Data.Bool.Properties.d2022 (coe v4)))
                                        erased))
                                  (coe MAlonzo.Code.Agda.Builtin.List.C16)))
                            (coe v5) in
                  case coe v5 of
                    (:) v7 v8
                      -> case coe v7 of
                           MAlonzo.Code.Data.Sum.Base.C38 v9
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C22
                                  (coe
                                     MAlonzo.Code.Data.Sum.Base.C38
                                     (coe
                                        du46
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2)
                                           (coe
                                              MAlonzo.Code.Function.Equality.d38
                                              (MAlonzo.Code.Function.Equivalence.d36
                                                 (coe
                                                    MAlonzo.Code.Data.Bool.Properties.d2022
                                                    (coe v4)))
                                              erased))
                                        (coe v9)))
                                  (coe v8)
                           _ -> coe v6
                    _ -> coe v6
             else (let v6
                         = coe
                             MAlonzo.Code.Agda.Builtin.List.C22
                             (coe
                                MAlonzo.Code.Data.Sum.Base.C42
                                (coe
                                   C34
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2)
                                      (coe
                                         MAlonzo.Code.Function.Equality.d38
                                         (MAlonzo.Code.Function.Equivalence.d36
                                            (coe MAlonzo.Code.Data.Bool.Properties.d2026 (coe v4)))
                                         erased))
                                   (coe MAlonzo.Code.Agda.Builtin.List.C16)))
                             (coe v5) in
                   case coe v5 of
                     (:) v7 v8
                       -> case coe v7 of
                            MAlonzo.Code.Data.Sum.Base.C42 v9
                              -> coe
                                   MAlonzo.Code.Agda.Builtin.List.C22
                                   (coe
                                      MAlonzo.Code.Data.Sum.Base.C42
                                      (coe
                                         du46
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v2)
                                            (coe
                                               MAlonzo.Code.Function.Equality.d38
                                               (MAlonzo.Code.Function.Equivalence.d36
                                                  (coe
                                                     MAlonzo.Code.Data.Bool.Properties.d2026
                                                     (coe v4)))
                                               erased))
                                         (coe v9)))
                                   (coe v8)
                            _ -> coe v6
                     _ -> coe v6)
      _ -> MAlonzo.RTE.mazUnreachableError
name382 = "Data.List.NonEmpty.flatten"
d382 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> [MAlonzo.Code.Data.Sum.Base.T30] -> [AgdaAny]
d382 v0 v1 v2 v3 v4 v5 v6 = du382 v6
du382 :: [MAlonzo.Code.Data.Sum.Base.T30] -> [AgdaAny]
du382 v0
  = coe
      MAlonzo.Code.Data.List.Base.du244
      (coe
         MAlonzo.Code.Data.List.Base.du20
         (coe
            MAlonzo.Code.Data.Sum.Base.du52
            (coe
               (\ v1 ->
                  coe
                    du60
                    (coe du98 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v1))))
            (coe
               (\ v1 ->
                  coe
                    du60
                    (coe du98 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v1)))))
         (coe v0))
name388 = "Data.List.NonEmpty.flatten-split"
d388 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d388 = erased
name450 = "Data.List.NonEmpty.wordsBy"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [T22]
d450 v0 v1 v2 v3 = du450 v2 v3
du450 :: (AgdaAny -> Bool) -> [AgdaAny] -> [T22]
du450 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du30
      (coe
         MAlonzo.Code.Data.Sum.Base.du52
         (coe (\ v2 -> coe MAlonzo.Code.Data.Maybe.Base.C26))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Data.Maybe.Base.C30
                 (coe du98 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28) (coe v2)))))
      (coe du316 (coe v0) (coe v1))
