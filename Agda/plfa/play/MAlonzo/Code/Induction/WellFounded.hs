{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Induction.WellFounded where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Induction

name22 = "Induction.WellFounded.WfRec"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> AgdaAny -> ()
d22 = erased
name42 = "Induction.WellFounded.Acc"
d42 a0 a1 a2 a3 a4 = ()
data T42 = C52
name62 = "Induction.WellFounded.acc-inverse"
d62 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> T42 -> AgdaAny -> AgdaAny -> T42
d62 = erased
name70 = "Induction.WellFounded.WellFounded"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d70 = erased
name76 = "Induction.WellFounded.Well-founded"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d76 = erased
name82 = "Induction.WellFounded.Acc-resp-≈"
d82 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T42 -> T42
d82 = erased
name106 = "Induction.WellFounded.Some.wfRecBuilder"
d106 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T42 -> AgdaAny -> AgdaAny -> AgdaAny
d106 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du106 v6 v9
du106 ::
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
du106 v0 v1 = coe v0 v1 (\ v2 v3 -> coe du106 (coe v0) v2)
name120 = "Induction.WellFounded.Some.wfRec"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T42 -> AgdaAny
d120 v0 v1 v2 v3 v4 = du120
du120 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T42 -> AgdaAny
du120
  = coe
      MAlonzo.Code.Induction.du114
      (\ v0 v1 v2 v3 v4 v5 -> coe du106 v1 v4)
name134 = "Induction.WellFounded.Some.unfold-wfRec"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T42 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d134 = erased
name142 = "Induction.WellFounded.Some.wfRec-builder"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T42 -> AgdaAny -> AgdaAny -> AgdaAny
d142 v0 v1 v2 v3 v4 = du142
du142 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> T42 -> AgdaAny -> AgdaAny -> AgdaAny
du142 v0 v1 v2 v3 v4 v5 = coe du106 v1 v4
name156 = "Induction.WellFounded.All.wfRecBuilder"
d156 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d156 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du156 v7
du156 ::
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du156 v0 v1 v2 = coe du106 (coe v0) v1
name164 = "Induction.WellFounded.All.wfRec"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
d164 v0 v1 v2 v3 v4 v5 = du164
du164 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
du164
  = coe MAlonzo.Code.Induction.du54 (\ v0 v1 v2 -> coe du156 v1)
name166 = "Induction.WellFounded.All.wfRec-builder"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d166 v0 v1 v2 v3 v4 v5 = du166
du166 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du166 v0 v1 v2 = coe du156 v1
name200 = "Induction.WellFounded.FixPoint.some-wfRec-irrelevant"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> T42 -> T42 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d200 = erased
name222 = "Induction.WellFounded.FixPoint._.wfRec"
d222 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
d222 v0 v1 v2 v3 v4 v5 v6 v7 = du222
du222 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny
du222 = coe du164
name224 = "Induction.WellFounded.FixPoint._.wfRec-builder"
d224 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d224 v0 v1 v2 v3 v4 v5 v6 v7 = du224
du224 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du224 = coe du166
name226 = "Induction.WellFounded.FixPoint._.wfRecBuilder"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0 v1 v2 v3 v4 v5 v6 v7 = du226
du226 ::
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du226 v0 v1 v2 = coe du156 v1
name234 = "Induction.WellFounded.FixPoint.wfRecBuilder-wfRec"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d234 = erased
name260 = "Induction.WellFounded.FixPoint.unfold-wfRec"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny) ->
  (AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d260 = erased
name282 = "Induction.WellFounded.Subrelation.accessible"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> T42 -> T42
d282 = erased
name290 = "Induction.WellFounded.Subrelation.wellFounded"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> T42) -> AgdaAny -> T42
d290 = erased
name296 = "Induction.WellFounded.Subrelation.well-founded"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> T42) -> AgdaAny -> T42
d296 = erased
name312 = "Induction.WellFounded.InverseImage.accessible"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T42 -> T42
d312 = erased
name320 = "Induction.WellFounded.InverseImage.wellFounded"
d320 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> T42) -> AgdaAny -> T42
d320 = erased
name326 = "Induction.WellFounded.InverseImage.well-founded"
d326 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> T42) -> AgdaAny -> T42
d326 = erased
name338 = "Induction.WellFounded.TransitiveClosure._<⁺_"
d338 a0 a1 a2 a3 a4 a5 = ()
data T338 = C346 AgdaAny | C358 AgdaAny T338 T338
name364 = "Induction.WellFounded.TransitiveClosure.downwardsClosed"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T42 -> T338 -> T42
d364 = erased
name376 = "Induction.WellFounded.TransitiveClosure.accessible"
d376 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> T42 -> T42
d376 = erased
name380 = "Induction.WellFounded.TransitiveClosure.accessible′"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> T42 -> AgdaAny -> T338 -> T42
d380 = erased
name398 = "Induction.WellFounded.TransitiveClosure.wellFounded"
d398 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> T42) -> AgdaAny -> T42
d398 = erased
name404
  = "Induction.WellFounded.TransitiveClosure.downwards-closed"
d404 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T42 -> T338 -> T42
d404 = erased
name406 = "Induction.WellFounded.TransitiveClosure.well-founded"
d406 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> T42) -> AgdaAny -> T42
d406 = erased
name428 = "Induction.WellFounded.Lexicographic._<_"
d428 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T428 = C440 AgdaAny | C450 AgdaAny
name458 = "Induction.WellFounded.Lexicographic.accessible"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T42 -> (AgdaAny -> AgdaAny -> T42) -> T42
d458 = erased
name466 = "Induction.WellFounded.Lexicographic.accessible′"
d466 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  T42 ->
  T42 ->
  (AgdaAny -> AgdaAny -> T42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T428 -> T42
d466 = erased
name488 = "Induction.WellFounded.Lexicographic.wellFounded"
d488 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> AgdaAny -> T42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T42
d488 = erased
name496 = "Induction.WellFounded.Lexicographic.well-founded"
d496 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> T42) ->
  (AgdaAny -> AgdaAny -> T42) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> T42
d496 = erased
name500 = "Induction.WellFounded.Inverse-image.accessible"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T42 -> T42
d500 = erased
name502 = "Induction.WellFounded.Inverse-image.well-founded"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> T42) -> AgdaAny -> T42
d502 = erased
name504 = "Induction.WellFounded.Inverse-image.wellFounded"
d504 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> T42) -> AgdaAny -> T42
d504 = erased
name508 = "Induction.WellFounded.Transitive-closure._<⁺_"
d508 a0 a1 a2 a3 a4 a5 = ()
name512 = "Induction.WellFounded.Transitive-closure.accessible"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> T42 -> T42
d512 = erased
name514 = "Induction.WellFounded.Transitive-closure.accessible′"
d514 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> T42 -> AgdaAny -> T338 -> T42
d514 = erased
name516
  = "Induction.WellFounded.Transitive-closure.downwards-closed"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T42 -> T338 -> T42
d516 = erased
name518
  = "Induction.WellFounded.Transitive-closure.downwardsClosed"
d518 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T42 -> T338 -> T42
d518 = erased
name522 = "Induction.WellFounded.Transitive-closure.well-founded"
d522 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> T42) -> AgdaAny -> T42
d522 = erased
name524 = "Induction.WellFounded.Transitive-closure.wellFounded"
d524 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> T42) -> AgdaAny -> T42
d524 = erased
