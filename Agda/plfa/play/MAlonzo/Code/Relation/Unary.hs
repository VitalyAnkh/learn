{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Unary where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary

name26 = "Relation.Unary.Pred"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> ()
d26 = erased
name32 = "Relation.Unary.∅"
d32 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> ()
d32 = erased
name36 = "Relation.Unary.｛_｝"
d36 ::
  MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> AgdaAny -> ()
d36 = erased
name42 = "Relation.Unary.U"
d42 :: MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny -> ()
d42 = erased
name46 = "Relation.Unary._∈_"
d46 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> AgdaAny -> (AgdaAny -> ()) -> ()
d46 = erased
name52 = "Relation.Unary._∉_"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> AgdaAny -> (AgdaAny -> ()) -> ()
d52 = erased
name58 = "Relation.Unary._⊆_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d58 = erased
name66 = "Relation.Unary._⊇_"
d66 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d66 = erased
name72 = "Relation.Unary._⊈_"
d72 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d72 = erased
name78 = "Relation.Unary._⊉_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d78 = erased
name84 = "Relation.Unary._⊂_"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d84 = erased
name90 = "Relation.Unary._⊃_"
d90 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d90 = erased
name96 = "Relation.Unary._⊄_"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d96 = erased
name102 = "Relation.Unary._⊅_"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d102 = erased
name108 = "Relation.Unary._⊆′_"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d108 = erased
name116 = "Relation.Unary._⊇′_"
d116 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d116 = erased
name122 = "Relation.Unary._⊈′_"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d122 = erased
name128 = "Relation.Unary._⊉′_"
d128 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d128 = erased
name134 = "Relation.Unary._⊂′_"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d134 = erased
name140 = "Relation.Unary._⊃′_"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d140 = erased
name146 = "Relation.Unary._⊄′_"
d146 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d146 = erased
name152 = "Relation.Unary._⊅′_"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d152 = erased
name158 = "Relation.Unary.Empty"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> ()
d158 = erased
name164 = "Relation.Unary.Satisfiable"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> ()
d164 = erased
name170 = "Relation.Unary.Universal"
d170 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> ()
d170 = erased
name176 = "Relation.Unary.IUniversal"
d176 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> ()
d176 = erased
name182 = "Relation.Unary.Decidable"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> ()
d182 = erased
name190 = "Relation.Unary.⌊_⌋"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Relation.Nullary.T32) -> AgdaAny -> ()
d190 = erased
name196 = "Relation.Unary.Irrelevant"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> ()
d196 = erased
name206 = "Relation.Unary.Recomputable"
d206 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> ()
d206 = erased
name212 = "Relation.Unary.∁"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> ()) -> AgdaAny -> ()
d212 = erased
name218 = "Relation.Unary._⇒_"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> ()
d218 = erased
name226 = "Relation.Unary._∪_"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> ()
d226 = erased
name234 = "Relation.Unary._∩_"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> AgdaAny -> ()
d234 = erased
name246 = "Relation.Unary.⋃"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d246 = erased
name260 = "Relation.Unary.⋂"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d260 = erased
name270 = "Relation.Unary._≬_"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> ()
d270 = erased
name278 = "Relation.Unary._⊢_"
d278 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> ()) -> AgdaAny -> ()
d278 = erased
name286 = "Relation.Unary._⟨×⟩_"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d286 = erased
name296 = "Relation.Unary._⟨⊎⟩_"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> MAlonzo.Code.Data.Sum.Base.T30 -> ()
d296 = erased
name302 = "Relation.Unary._⟨⊙⟩_"
d302 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d302 = erased
name312 = "Relation.Unary._⟨→⟩_"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d312 = erased
name324 = "Relation.Unary._⟨·⟩_"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
d324 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du324 v8 v9
du324 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> AgdaAny
du324 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v2 v3
        -> coe v3 (MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v0)) v2
      _ -> MAlonzo.RTE.mazUnreachableError
name334 = "Relation.Unary._~"
d334 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d334 = erased
name338 = "Relation.Unary._⟨∘⟩_"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d338 = erased
name350 = "Relation.Unary._//_"
d350 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d350 = erased
name364 = "Relation.Unary._\\\\_"
d364 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 -> ()
d364 = erased
