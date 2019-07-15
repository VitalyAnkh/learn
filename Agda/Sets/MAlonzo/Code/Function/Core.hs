{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive

name24 = "Function.Core.Fun₁"
d24 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d24 = erased
name28 = "Function.Core.Fun₂"
d28 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d28 = erased
name32 = "Function.Core.id"
d32 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny
d32 v0 v1 v2 = du32 v2
du32 :: AgdaAny -> AgdaAny
du32 v0 = coe v0
name36 = "Function.Core.const"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d36 v0 v1 v2 v3 v4 v5 = du36 v4
du36 :: AgdaAny -> AgdaAny
du36 v0 = coe v0
name60 = "Function.Core._∘_"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d60 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du60 v6 v7 v8
du60 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du60 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name82 = "Function.Core.flip"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du82 v6 v7 v8
du82 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du82 v0 v1 v2 = coe v0 v2 v1
name98 = "Function.Core._$_"
d98 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d98 v0 v1 v2 v3 v4 v5 = du98 v4 v5
du98 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du98 v0 v1 = coe v0 v1
name112 = "Function.Core._$!_"
d112 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d112 v0 v1 v2 v3 v4 v5 = du112 v4 v5
du112 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du112 v0 v1 = coe (seq (coe v1) (coe v0 v1))
name122 = "Function.Core._|>_"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d122 v0 v1 v2 v3 v4 v5 = du122 v4 v5
du122 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du122 v0 v1 = coe v1 v0
name142 = "Function.Core._ˢ_"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d142 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du142 v6 v7 v8
du142 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du142 v0 v1 v2 = coe v0 v2 (coe v1 v2)
name158 = "Function.Core._$-"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d158 v0 v1 v2 v3 v4 v5 = du158 v4 v5
du158 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du158 v0 v1 = coe v0 v1
name170 = "Function.Core.λ-"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d170 v0 v1 v2 v3 v4 v5 = du170 v4 v5
du170 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du170 v0 v1 = coe v0 v1
name184 = "Function.Core.case_return_of_"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> AgdaAny
d184 v0 v1 v2 v3 v4 v5 = du184 v3 v5
du184 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du184 v0 v1 = coe v1 v0
name192 = "Function.Core._∘′_"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d192 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du192 v6 v7 v8
du192 ::
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du192 v0 v1 v2 = coe v0 (coe v1 v2)
name198 = "Function.Core._$′_"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d198 v0 v1 v2 v3 v4 = du198 v4
du198 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du198 v0 = coe v0
name200 = "Function.Core._$!′_"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d200 v0 v1 v2 v3 = du200
du200 :: (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du200 = coe du112
name202 = "Function.Core._|>′_"
d202 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d202 v0 v1 v2 v3 v4 v5 = du202 v4 v5
du202 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du202 v0 v1 = coe v1 v0
name204 = "Function.Core.case_of_"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
d204 v0 v1 v2 v3 v4 v5 = du204 v4 v5
du204 :: AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny
du204 v0 v1 = coe v1 v0
name210 = "Function.Core._⟨_⟩_"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d210 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du210 v6 v7 v8
du210 ::
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du210 v0 v1 v2 = coe v1 v0 v2
name218 = "Function.Core._on_"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d218 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du218 v6 v7 v8 v9
du218 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du218 v0 v1 v2 v3 = coe v0 (coe v1 v2) (coe v1 v3)
name228 = "Function.Core._-[_]-_"
d228 ::
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
d228 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13 v14
  = du228 v10 v11 v12 v13 v14
du228 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du228 v0 v1 v2 v3 v4 = coe v1 (coe v0 v3 v4) (coe v2 v3 v4)
name242 = "Function.Core._∋_"
d242 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny
d242 v0 v1 v2 = du242 v2
du242 :: AgdaAny -> AgdaAny
du242 v0 = coe v0
name250 = "Function.Core.typeOf"
d250 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> ()
d250 = erased
