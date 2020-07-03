{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Codata.Delay where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Size
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Codata.Conat
import qualified MAlonzo.Code.Codata.Thunk
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base

name10 = "Codata.Delay.Delay"
d10 a0 a1 a2 = ()
data T10 = C18 AgdaAny | C20 MAlonzo.Code.Codata.Thunk.T10
name32 = "Codata.Delay._.length"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 ->
  T10 -> MAlonzo.Code.Codata.Conat.T6
d32 v0 v1 v2 v3 = du32 v3
du32 :: T10 -> MAlonzo.Code.Codata.Conat.T6
du32 v0
  = case coe v0 of
      C18 v1 -> coe MAlonzo.Code.Codata.Conat.C10
      C20 v1
        -> coe
             MAlonzo.Code.Codata.Conat.C12
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v2 -> coe du32 (coe MAlonzo.Code.Codata.Thunk.d24 v1 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name40 = "Codata.Delay._.never"
d40 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10
d40 v0 v1 v2 = du40
du40 :: T10
du40
  = coe
      C20 (coe MAlonzo.Code.Codata.Thunk.C5 (coe (\ v0 -> coe du40)))
name44 = "Codata.Delay._.fromMaybe"
d44 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Data.Maybe.Base.T22 -> T10
d44 v0 v1 = du44
du44 :: MAlonzo.Code.Data.Maybe.Base.T22 -> T10
du44 = coe MAlonzo.Code.Data.Maybe.Base.du50 (coe C18) (coe du40)
name46 = "Codata.Delay._.runFor"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> T10 -> MAlonzo.Code.Data.Maybe.Base.T22
d46 v0 v1 v2 v3 = du46 v2 v3
du46 :: Integer -> T10 -> MAlonzo.Code.Data.Maybe.Base.T22
du46 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Maybe.Base.C26
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             C18 v3 -> coe MAlonzo.Code.Data.Maybe.Base.C30 (coe v3)
             C20 v3
               -> coe du46 (coe v2) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased)
             _ -> MAlonzo.RTE.mazUnreachableError
name72 = "Codata.Delay._.map"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10
d72 v0 v1 v2 v3 v4 v5 v6 = du72 v4 v6
du72 :: (AgdaAny -> AgdaAny) -> T10 -> T10
du72 v0 v1
  = case coe v1 of
      C18 v2 -> coe C18 (coe v0 v2)
      C20 v2
        -> coe
             C20
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 ->
                      coe du72 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name86 = "Codata.Delay._.bind"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> (AgdaAny -> T10) -> T10
d86 v0 v1 v2 v3 v4 v5 v6 = du86 v5 v6
du86 :: T10 -> (AgdaAny -> T10) -> T10
du86 v0 v1
  = case coe v0 of
      C18 v2 -> coe v1 v2
      C20 v2
        -> coe
             C20
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe
                   (\ v3 ->
                      coe du86 (coe MAlonzo.Code.Codata.Thunk.d24 v2 erased) (coe v1))))
      _ -> MAlonzo.RTE.mazUnreachableError
name100 = "Codata.Delay._.unfold"
d100 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10
d100 v0 v1 v2 v3 v4 v5 v6 = du100 v4 v5
du100 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30) -> AgdaAny -> T10
du100 v0 v1
  = let v2 = coe v0 v1 in
    case coe v2 of
      MAlonzo.Code.Data.Sum.Base.C38 v3
        -> coe
             C20
             (coe
                MAlonzo.Code.Codata.Thunk.C5
                (coe (\ v4 -> coe du100 (coe v0) (coe v3))))
      MAlonzo.Code.Data.Sum.Base.C42 v3 -> coe C18 (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
name142 = "Codata.Delay._.zipWith"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d142 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du142 v6 v8 v9
du142 :: (AgdaAny -> AgdaAny -> AgdaAny) -> T10 -> T10 -> T10
du142 v0 v1 v2
  = case coe v1 of
      C18 v3 -> coe du72 (coe v0 v3) (coe v2)
      C20 v3
        -> case coe v2 of
             C18 v4 -> coe du72 (coe (\ v5 -> coe v0 v5 v4)) (coe v1)
             C20 v4
               -> coe
                    C20
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v5 ->
                             coe
                               du142 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name168 = "Codata.Delay._.alignWith"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d168 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du168 v6 v8 v9
du168 ::
  (MAlonzo.Code.Data.These.Base.T38 -> AgdaAny) -> T10 -> T10 -> T10
du168 v0 v1 v2
  = case coe v1 of
      C18 v3
        -> case coe v2 of
             C18 v4
               -> coe
                    C18
                    (coe v0 (coe MAlonzo.Code.Data.These.Base.C52 (coe v3) (coe v4)))
             C20 v4
               -> coe C18 (coe v0 (coe MAlonzo.Code.Data.These.Base.C48 (coe v3)))
             _ -> MAlonzo.RTE.mazUnreachableError
      C20 v3
        -> case coe v2 of
             C18 v4
               -> coe C18 (coe v0 (coe MAlonzo.Code.Data.These.Base.C50 (coe v4)))
             C20 v4
               -> coe
                    C20
                    (coe
                       MAlonzo.Code.Codata.Thunk.C5
                       (coe
                          (\ v5 ->
                             coe
                               du168 (coe v0) (coe MAlonzo.Code.Codata.Thunk.d24 v3 erased)
                               (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name206 = "Codata.Delay._.zip"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d206 v0 v1 v2 v3 v4 = du206
du206 :: T10 -> T10 -> T10
du206 = coe du142 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32)
name210 = "Codata.Delay._.align"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Size.T8 -> T10 -> T10 -> T10
d210 v0 v1 v2 v3 v4 = du210
du210 :: T10 -> T10 -> T10
du210 = coe du168 (coe (\ v0 -> v0))
name220 = "Codata.Delay._._⇓"
d220 a0 a1 a2 = ()
data T220 = C224 | C228 T220
name232 = "Codata.Delay._.extract"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T10 -> T220 -> AgdaAny
d232 v0 v1 v2 v3 = du232 v2 v3
du232 :: T10 -> T220 -> AgdaAny
du232 v0 v1
  = case coe v1 of
      C224
        -> case coe v0 of
             C18 v3 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      C228 v3
        -> case coe v0 of
             C20 v4
               -> coe du232 (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name238 = "Codata.Delay._.¬never⇓"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T220 -> MAlonzo.Code.Data.Empty.T4
d238 = erased
name244 = "Codata.Delay._.length-⇓"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> T10 -> T220 -> MAlonzo.Code.Codata.Conat.T120
d244 v0 v1 v2 v3 = du244 v2 v3
du244 :: T10 -> T220 -> MAlonzo.Code.Codata.Conat.T120
du244 v0 v1
  = case coe v1 of
      C224 -> coe MAlonzo.Code.Codata.Conat.C122
      C228 v3
        -> case coe v0 of
             C20 v4
               -> coe
                    MAlonzo.Code.Codata.Conat.C126
                    (coe du244 (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name266 = "Codata.Delay._.map-⇓"
d266 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> T10 -> T220 -> T220
d266 v0 v1 v2 v3 v4 v5 v6 = du266 v5 v6
du266 :: T10 -> T220 -> T220
du266 v0 v1
  = case coe v1 of
      C224 -> coe C224
      C228 v3
        -> case coe v0 of
             C20 v4
               -> coe
                    C228
                    (coe du266 (coe MAlonzo.Code.Codata.Thunk.d24 v4 erased) (coe v3))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name282 = "Codata.Delay._.bind-⇓"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> T10 -> T220 -> (AgdaAny -> T10) -> T220 -> T220
d282 v0 v1 v2 v3 v4 v5 v6 v7 = du282 v4 v5 v7
du282 :: T10 -> T220 -> T220 -> T220
du282 v0 v1 v2
  = case coe v1 of
      C224 -> coe v2
      C228 v4
        -> case coe v0 of
             C20 v5
               -> coe
                    C228
                    (coe
                       du282 (coe MAlonzo.Code.Codata.Thunk.d24 v5 erased) (coe v4)
                       (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
