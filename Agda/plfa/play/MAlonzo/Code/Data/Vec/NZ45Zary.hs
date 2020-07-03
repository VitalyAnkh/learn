{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.Vec.NZ45Zary where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Function.Equivalence

name24 = "Data.Vec.N-ary.N-ary-level"
d24 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer -> MAlonzo.Code.Agda.Primitive.T4
d24 v0 v1 v2
  = case coe v2 of
      0 -> coe v1
      _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             MAlonzo.Code.Agda.Primitive.d16 v0 (d24 (coe v0) (coe v1) (coe v3))
name38 = "Data.Vec.N-ary.N-ary"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> Integer -> () -> () -> ()
d38 = erased
name52 = "Data.Vec.N-ary.curryⁿ"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
d52 v0 v1 v2 v3 v4 v5 = du52 v4 v5
du52 ::
  Integer -> (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
du52 v0 v1
  = case coe v0 of
      0 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 ->
                coe
                  du52 (coe v2)
                  (coe (\ v4 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C36 v3 v4))))
name64 = "Data.Vec.N-ary._$ⁿ_"
d64 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d64 v0 v1 v2 v3 v4 v5 v6 = du64 v5 v6
du64 :: AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
du64 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C28 -> coe v0
      MAlonzo.Code.Data.Vec.Base.C36 v3 v4
        -> coe du64 (coe v0 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name84 = "Data.Vec.N-ary._.∀ⁿ"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> Integer -> AgdaAny -> ()
d84 = erased
name96 = "Data.Vec.N-ary._.∀ⁿʰ"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> Integer -> AgdaAny -> ()
d96 = erased
name108 = "Data.Vec.N-ary._.∃ⁿ"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> Integer -> AgdaAny -> ()
d108 = erased
name126 = "Data.Vec.N-ary.Eq"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  Integer -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d126 = erased
name146 = "Data.Vec.N-ary.Eqʰ"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  Integer -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d146 = erased
name164 = "Data.Vec.N-ary.left-inverse"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d164 = erased
name178 = "Data.Vec.N-ary.right-inverse"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> Integer -> AgdaAny -> AgdaAny
d178 v0 v1 v2 v3 v4 v5 = du178 v4
du178 :: Integer -> AgdaAny
du178 v0
  = case coe v0 of
      0 -> erased
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (\ v2 -> coe du178 (coe v1))
name194 = "Data.Vec.N-ary.uncurry-∀ⁿ"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
d194 v0 v1 v2 v3 v4 = du194 v3
du194 :: Integer -> MAlonzo.Code.Function.Equivalence.T16
du194 v0
  = coe
      MAlonzo.Code.Function.Equivalence.du56 (coe du214 (coe v0))
      (coe du232 (coe v0))
name214 = "Data.Vec.N-ary._.⇒"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  AgdaAny ->
  Integer ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d214 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du214 v5 v7 v8
du214 ::
  Integer -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
du214 v0 v1 v2
  = case coe v0 of
      0 -> coe seq (coe v2) (coe v1)
      _ -> let v3 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v2 of
             MAlonzo.Code.Data.Vec.Base.C36 v5 v6
               -> coe du214 (coe v3) (coe v1 v5) (coe v6)
             _ -> MAlonzo.RTE.mazUnreachableError
name232 = "Data.Vec.N-ary._.⇐"
d232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  AgdaAny ->
  Integer ->
  AgdaAny -> (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
d232 v0 v1 v2 v3 v4 v5 v6 v7 = du232 v5 v7
du232 ::
  Integer -> (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
du232 v0 v1
  = case coe v0 of
      0 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 ->
                coe
                  du232 (coe v2)
                  (coe (\ v4 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C36 v3 v4))))
name248 = "Data.Vec.N-ary.uncurry-∃ⁿ"
d248 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
d248 v0 v1 v2 v3 v4 = du248 v3
du248 :: Integer -> MAlonzo.Code.Function.Equivalence.T16
du248 v0
  = coe
      MAlonzo.Code.Function.Equivalence.du56 (coe du268 (coe v0))
      (coe du284 (coe v0))
name268 = "Data.Vec.N-ary._.⇒"
d268 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  AgdaAny ->
  Integer ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d268 v0 v1 v2 v3 v4 v5 v6 v7 = du268 v5 v7
du268 :: Integer -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du268 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C32
             (coe MAlonzo.Code.Data.Vec.Base.C28) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
               -> coe
                    MAlonzo.Code.Data.Product.du148
                    (coe MAlonzo.Code.Data.Vec.Base.C36 (coe v3)) (coe (\ v5 v6 -> v6))
                    (coe du268 (coe v2) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
name284 = "Data.Vec.N-ary._.⇐"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  Integer ->
  AgdaAny ->
  Integer ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d284 v0 v1 v2 v3 v4 v5 v6 v7 = du284 v5 v7
du284 :: Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du284 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
               -> coe seq (coe v2) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           case coe v1 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
               -> case coe v3 of
                    MAlonzo.Code.Data.Vec.Base.C36 v6 v7
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v6)
                           (coe
                              du284 (coe v2)
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v7) (coe v4)))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
name316 = "Data.Vec.N-ary._.curryⁿ-cong"
d316 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
d316 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du316 v8 v11
du316 ::
  Integer -> (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
du316 v0 v1
  = case coe v0 of
      0 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 ->
                coe
                  du316 (coe v2)
                  (coe (\ v4 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C36 v3 v4))))
name344 = "Data.Vec.N-ary._.curryⁿ-cong⁻¹"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d344 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du344 v11 v12
du344 :: AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
du344 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C28 -> coe v0
      MAlonzo.Code.Data.Vec.Base.C36 v3 v4
        -> coe du344 (coe v0 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name370 = "Data.Vec.N-ary._.appⁿ-cong"
d370 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d370 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 = du370 v11 v12
du370 :: AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
du370 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C28 -> coe v0
      MAlonzo.Code.Data.Vec.Base.C36 v3 v4
        -> coe du370 (coe v0 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
name396 = "Data.Vec.N-ary._.appⁿ-cong⁻¹"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  AgdaAny ->
  AgdaAny -> (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
d396 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du396 v8 v11
du396 ::
  Integer -> (MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny) -> AgdaAny
du396 v0 v1
  = case coe v0 of
      0 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C28)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (\ v3 ->
                coe
                  du396 (coe v2)
                  (coe (\ v4 -> coe v1 (coe MAlonzo.Code.Data.Vec.Base.C36 v3 v4))))
name424 = "Data.Vec.N-ary.Eq-to-Eqʰ"
d424 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d424 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du424 v7 v11
du424 :: Integer -> AgdaAny -> AgdaAny
du424 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (\ v3 -> coe du424 (coe v2) (coe v1 v3))
name444 = "Data.Vec.N-ary.Eqʰ-to-Eq"
d444 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  Integer ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d444 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du444 v7 v11
du444 :: Integer -> AgdaAny -> AgdaAny
du444 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (\ v3 -> coe du444 (coe v2) (coe v1 v3))
