{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Relation.Unary.Any where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Sum

name26 = "Data.List.Relation.Unary.Any.Any"
d26 a0 a1 a2 a3 a4 = ()
data T26 = C38 AgdaAny | C46 T26
name62 = "Data.List.Relation.Unary.Any._.head"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] -> (T26 -> MAlonzo.Code.Data.Empty.T4) -> T26 -> AgdaAny
d62 v0 v1 v2 v3 v4 v5 v6 v7 = du62 v2 v7
du62 :: MAlonzo.Code.Agda.Primitive.T4 -> T26 -> AgdaAny
du62 v0 v1
  = case coe v1 of
      C38 v4 -> coe v4
      C46 v4 -> coe MAlonzo.Code.Data.Empty.d10 v0 erased erased
      _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Data.List.Relation.Unary.Any._.tail"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] -> (AgdaAny -> MAlonzo.Code.Data.Empty.T4) -> T26 -> T26
d72 v0 v1 v2 v3 v4 v5 v6 v7 = du72 v7
du72 :: T26 -> T26
du72 v0
  = case coe v0 of
      C38 v3 -> coe MAlonzo.Code.Data.Empty.d10 () erased erased
      C46 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name96 = "Data.List.Relation.Unary.Any._.map"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> [AgdaAny] -> T26 -> T26
d96 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du96 v6 v7 v8
du96 :: (AgdaAny -> AgdaAny -> AgdaAny) -> [AgdaAny] -> T26 -> T26
du96 v0 v1 v2
  = case coe v2 of
      C38 v5
        -> case coe v1 of
             (:) v6 v7 -> coe C38 (coe v0 v6 v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      C46 v5
        -> case coe v1 of
             (:) v6 v7 -> coe C46 (coe du96 (coe v0) (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name118 = "Data.List.Relation.Unary.Any._.index"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> T26 -> MAlonzo.Code.Data.Fin.Base.T6
d118 v0 v1 v2 v3 v4 v5 = du118 v4 v5
du118 :: [AgdaAny] -> T26 -> MAlonzo.Code.Data.Fin.Base.T6
du118 v0 v1
  = case coe v1 of
      C38 v4 -> coe MAlonzo.Code.Data.Fin.Base.C10
      C46 v4
        -> case coe v0 of
             (:) v5 v6
               -> coe MAlonzo.Code.Data.Fin.Base.C16 (coe du118 (coe v6) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name126 = "Data.List.Relation.Unary.Any._.lookup"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> [AgdaAny] -> T26 -> AgdaAny
d126 v0 v1 v2 v3 v4 v5 = du126 v4 v5
du126 :: [AgdaAny] -> T26 -> AgdaAny
du126 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du386 (coe v0)
      (coe du118 (coe v0) (coe v1))
name134 = "Data.List.Relation.Unary.Any._._∷=_"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> [AgdaAny] -> T26 -> AgdaAny -> [AgdaAny]
d134 v0 v1 v2 v3 v4 v5 v6 = du134 v4 v5 v6
du134 :: [AgdaAny] -> T26 -> AgdaAny -> [AgdaAny]
du134 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Base.du750 (coe v0)
      (coe du118 (coe v0) (coe v1)) (coe v2)
name144 = "Data.List.Relation.Unary.Any._._─_"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> [AgdaAny] -> T26 -> [AgdaAny]
d144 v0 v1 v2 v3 v4 v5 = du144 v4 v5
du144 :: [AgdaAny] -> T26 -> [AgdaAny]
du144 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du760 (coe v0)
      (coe du118 (coe v0) (coe v1))
name152 = "Data.List.Relation.Unary.Any._.satisfied"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d152 v0 v1 v2 v3 v4 v5 = du152 v4 v5
du152 :: [AgdaAny] -> T26 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du152 v0 v1
  = case coe v1 of
      C38 v4
        -> case coe v0 of
             (:) v5 v6
               -> coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v5) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      C46 v4
        -> case coe v0 of
             (:) v5 v6 -> coe du152 (coe v6) (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name172 = "Data.List.Relation.Unary.Any._.toSum"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny -> [AgdaAny] -> T26 -> MAlonzo.Code.Data.Sum.Base.T30
d172 v0 v1 v2 v3 v4 v5 v6 = du172 v6
du172 :: T26 -> MAlonzo.Code.Data.Sum.Base.T30
du172 v0
  = case coe v0 of
      C38 v3 -> coe MAlonzo.Code.Data.Sum.Base.C38 (coe v3)
      C46 v3 -> coe MAlonzo.Code.Data.Sum.Base.C42 (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name178 = "Data.List.Relation.Unary.Any._.fromSum"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> T26
d178 v0 v1 v2 v3 v4 v5 v6 = du178 v6
du178 :: MAlonzo.Code.Data.Sum.Base.T30 -> T26
du178 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C38 v1 -> coe C38 v1
      MAlonzo.Code.Data.Sum.Base.C42 v1 -> coe C46 v1
      _ -> MAlonzo.RTE.mazUnreachableError
name194 = "Data.List.Relation.Unary.Any._.any"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
d194 v0 v1 v2 v3 v4 v5 = du194 v4 v5
du194 ::
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.T32
du194 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Relation.Nullary.C46
             (coe MAlonzo.Code.Agda.Builtin.Bool.C8)
             (coe MAlonzo.Code.Relation.Nullary.C26)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du168 (coe du178)
             (coe
                MAlonzo.Code.Relation.Nullary.Sum.du32 (coe v0 v2)
                (coe du194 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Data.List.Relation.Unary.Any._.satisfiable"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d204 v0 v1 v2 v3 v4 = du204 v4
du204 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du204 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe
                MAlonzo.Code.Agda.Builtin.List.C22 (coe v1)
                (coe MAlonzo.Code.Agda.Builtin.List.C16))
             (coe C38 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
name11737 = "Data.List.Relation.Unary.Any._..absurdlambda"
d11737 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) ->
  T26 -> MAlonzo.Code.Data.Empty.T4
d11737 = erased
