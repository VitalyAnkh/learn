{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Thunk where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Agda.Primitive

name10 = "Codata.Thunk.Thunk"
d10 a0 a1 a2 = ()
data T10
  = C5 (MAlonzo.Code.Agda.Builtin.Size.T10 AgdaAny -> AgdaAny)
name24 = "Codata.Thunk.Thunk.force"
d24 :: T10 -> MAlonzo.Code.Agda.Builtin.Size.T10 AgdaAny -> AgdaAny
d24 v0
  = case coe v0 of
      C5 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name38 = "Codata.Thunk.Thunk^P"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> ()
d38 = erased
name66 = "Codata.Thunk.Thunk^R"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> ()
d66 = erased
name80 = "Codata.Thunk.Thunk-syntax"
d80 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> ()
d80 = erased
name94 = "Codata.Thunk._.map"
d94 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10
d94 v0 v1 v2 v3 v4 v5 v6 = du94 v4 v6
du94 ::
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> AgdaAny -> AgdaAny) ->
  T10 -> T10
du94 v0 v1 = coe C5 (coe (\ v2 -> coe v0 v2 (coe d24 v1 erased)))
name108 = "Codata.Thunk._.extract"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> T10) -> AgdaAny
d108 v0 v1 v2 = du108 v2
du108 :: (MAlonzo.Code.Agda.Builtin.Size.T8 -> T10) -> AgdaAny
du108 v0 = coe d24 (coe v0 erased) erased
name112 = "Codata.Thunk._.duplicate"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10
d112 v0 v1 v2 v3 = du112 v3
du112 :: T10 -> T10
du112 v0
  = coe C5 (coe (\ v1 -> coe C5 (coe (\ v2 -> coe d24 v0 erased))))
name128 = "Codata.Thunk._._<*>_"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d128 v0 v1 v2 v3 v4 v5 v6 = du128 v5 v6
du128 :: T10 -> T10 -> T10
du128 v0 v1
  = coe C5 (coe (\ v2 -> coe d24 v0 erased (coe d24 v1 erased)))
name142 = "Codata.Thunk._.cofix"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> AgdaAny
d142 v0 v1 v2 v3 = du142 v2 v3
du142 ::
  (MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> AgdaAny
du142 v0 v1
  = coe v0 v1 (coe C5 (coe (\ v2 -> coe du142 (coe v0) erased)))
