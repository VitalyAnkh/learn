{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

name24 = "Function.Base.id"
d24 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny
d24 v0 v1 v2 = du24 v2
du24 :: AgdaAny -> AgdaAny
du24 v0 = coe v0
name28 = "Function.Base.const"
d28 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d28 v0 v1 v2 v3 v4 v5 = du28 v4
du28 :: AgdaAny -> AgdaAny
du28 v0 = coe v0
name52 = "Function.Base._∘_"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d52 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du52 v6 v7 v8
du52 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du52 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name90 = "Function.Base._∘₂_"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d90 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du90 v8 v9 v10 v11
du90 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du90 v0 v1 v2 v3 = coe v0 v2 v3 (coe v1 v2 v3)
name114 = "Function.Base.flip"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d114 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du114 v6 v7 v8
du114 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du114 v0 v1 v2 = coe v0 v2 v1
name130 = "Function.Base._$_"
d130 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d130 v0 v1 v2 v3 v4 v5 = du130 v4 v5
du130 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du130 v0 v1 = coe v0 v1
name144 = "Function.Base._$!_"
d144 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d144 v0 v1 v2 v3 v4 v5 = du144 v4 v5
du144 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du144 v0 v1 = coe seq (coe v1) (coe v0 v1)
name154 = "Function.Base._|>_"
d154 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d154 v0 v1 v2 v3 v4 v5 = du154 v4 v5
du154 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du154 v0 v1 = coe v1 v0
name174 = "Function.Base._ˢ_"
d174 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d174 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du174 v6 v7 v8
du174 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du174 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name190 = "Function.Base._$-"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d190 v0 v1 v2 v3 v4 v5 = du190 v4 v5
du190 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du190 v0 v1 = coe v0 v1
name202 = "Function.Base.λ-"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d202 v0 v1 v2 v3 v4 v5 = du202 v4 v5
du202 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du202 v0 v1 = coe v0 v1
name216 = "Function.Base.case_return_of_"
d216 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d216 v0 v1 v2 v3 v4 v5 = du216 v3 v5
du216 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du216 v0 v1 = coe v1 v0
name224 = "Function.Base._∘′_"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d224 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du224 v6 v7 v8
du224 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du224 v0 v1 v2 = coe v0 (coe v1 v2)
name230 = "Function.Base._∘₂′_"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d230 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du230 v8 v9 v10 v11
du230 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du230 v0 v1 v2 v3 = coe v0 (coe v1 v2 v3)
name236 = "Function.Base._$′_"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d236 v0 v1 v2 v3 v4 = du236 v4
du236 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du236 v0 = coe v0
name238 = "Function.Base._$!′_"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d238 v0 v1 v2 v3 = du238
du238 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du238 = coe du144
name240 = "Function.Base._|>′_"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d240 v0 v1 v2 v3 v4 v5 = du240 v4 v5
du240 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du240 v0 v1 = coe v1 v0
name242 = "Function.Base.case_of_"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d242 v0 v1 v2 v3 v4 v5 = du242 v4 v5
du242 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du242 v0 v1 = coe v1 v0
name248 = "Function.Base._⟨_⟩_"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d248 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du248 v6 v7 v8
du248 ::
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du248 v0 v1 v2 = coe v1 v0 v2
name256 = "Function.Base._on_"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d256 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du256 v6 v7 v8 v9
du256 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du256 v0 v1 v2 v3 = coe v0 (coe v1 v2) (coe v1 v3)
name266 = "Function.Base._-[_]-_"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d266 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du266 v10 v11 v12 v13 v14
du266 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du266 v0 v1 v2 v3 v4 = coe v1 (coe v0 v3 v4) (coe v2 v3 v4)
name280 = "Function.Base._∋_"
d280 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny
d280 v0 v1 v2 = du280 v2
du280 :: AgdaAny -> AgdaAny
du280 v0 = coe v0
name288 = "Function.Base.typeOf"
d288 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> ()
d288 = erased
name294 = "Function.Base.it"
d294 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny
d294 v0 v1 v2 = du294 v2
du294 :: AgdaAny -> AgdaAny
du294 v0 = coe v0
