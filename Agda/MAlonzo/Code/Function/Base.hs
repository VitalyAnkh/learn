{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
name74 = "Function.Base.flip"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d74 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du74 v6 v7 v8
du74 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du74 v0 v1 v2 = coe v0 v2 v1
name90 = "Function.Base._$_"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d90 v0 v1 v2 v3 v4 v5 = du90 v4 v5
du90 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du90 v0 v1 = coe v0 v1
name104 = "Function.Base._$!_"
d104 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d104 v0 v1 v2 v3 v4 v5 = du104 v4 v5
du104 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du104 v0 v1 = coe (seq (coe v1) (coe v0 v1))
name114 = "Function.Base._|>_"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d114 v0 v1 v2 v3 v4 v5 = du114 v4 v5
du114 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du114 v0 v1 = coe v1 v0
name134 = "Function.Base._ˢ_"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d134 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du134 v6 v7 v8
du134 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du134 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name150 = "Function.Base._$-"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d150 v0 v1 v2 v3 v4 v5 = du150 v4 v5
du150 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du150 v0 v1 = coe v0 v1
name162 = "Function.Base.λ-"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d162 v0 v1 v2 v3 v4 v5 = du162 v4 v5
du162 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du162 v0 v1 = coe v0 v1
name176 = "Function.Base.case_return_of_"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d176 v0 v1 v2 v3 v4 v5 = du176 v3 v5
du176 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du176 v0 v1 = coe v1 v0
name184 = "Function.Base._∘′_"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d184 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du184 v6 v7 v8
du184 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du184 v0 v1 v2 = coe v0 (coe v1 v2)
name190 = "Function.Base._$′_"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d190 v0 v1 v2 v3 v4 = du190 v4
du190 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du190 v0 = coe v0
name192 = "Function.Base._$!′_"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d192 v0 v1 v2 v3 = du192
du192 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du192 = coe du104
name194 = "Function.Base._|>′_"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d194 v0 v1 v2 v3 v4 v5 = du194 v4 v5
du194 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du194 v0 v1 = coe v1 v0
name196 = "Function.Base.case_of_"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d196 v0 v1 v2 v3 v4 v5 = du196 v4 v5
du196 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du196 v0 v1 = coe v1 v0
name202 = "Function.Base._⟨_⟩_"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d202 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du202 v6 v7 v8
du202 ::
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du202 v0 v1 v2 = coe v1 v0 v2
name210 = "Function.Base._on_"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du210 v6 v7 v8 v9
du210 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du210 v0 v1 v2 v3 = coe v0 (coe v1 v2) (coe v1 v3)
name220 = "Function.Base._-[_]-_"
d220 ::
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
d220 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du220 v10 v11 v12 v13 v14
du220 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du220 v0 v1 v2 v3 v4 = coe v1 (coe v0 v3 v4) (coe v2 v3 v4)
name234 = "Function.Base._∋_"
d234 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny
d234 v0 v1 v2 = du234 v2
du234 :: AgdaAny -> AgdaAny
du234 v0 = coe v0
name242 = "Function.Base.typeOf"
d242 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> ()
d242 = erased
