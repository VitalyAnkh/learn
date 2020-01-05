{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Relation.Binary.Definitions where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Empty

name26 = "Relation.Binary.Definitions.Reflexive"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d26 = erased
name32 = "Relation.Binary.Definitions.Sym"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d32 = erased
name38 = "Relation.Binary.Definitions.Symmetric"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d38 = erased
name42 = "Relation.Binary.Definitions.Trans"
d42 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d42 = erased
name56 = "Relation.Binary.Definitions.TransFlip"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d56 = erased
name70 = "Relation.Binary.Definitions.Transitive"
d70 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d70 = erased
name74 = "Relation.Binary.Definitions.Antisym"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d74 = erased
name86 = "Relation.Binary.Definitions.Antisymmetric"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d86 = erased
name92 = "Relation.Binary.Definitions.Irreflexive"
d92 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d92 = erased
name102 = "Relation.Binary.Definitions.Asymmetric"
d102 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d102 = erased
name110 = "Relation.Binary.Definitions.Connex"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d110 = erased
name120 = "Relation.Binary.Definitions.Total"
d120 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d120 = erased
name136 = "Relation.Binary.Definitions.Tri"
d136 a0 a1 a2 a3 a4 a5 = ()
data T136 = C150 AgdaAny | C158 AgdaAny | C166 AgdaAny
name168 = "Relation.Binary.Definitions.Trichotomous"
d168 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d168 = erased
name178 = "Relation.Binary.Definitions._._>_"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d178 = erased
name184 = "Relation.Binary.Definitions.Max"
d184 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d184 = erased
name192 = "Relation.Binary.Definitions.Maximum"
d192 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d192 = erased
name194 = "Relation.Binary.Definitions.Min"
d194 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d194 = erased
name198 = "Relation.Binary.Definitions.Minimum"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> ()
d198 = erased
name200 = "Relation.Binary.Definitions._⟶_Respects_"
d200 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d200 = erased
name212 = "Relation.Binary.Definitions._Respects_"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d212 = erased
name218 = "Relation.Binary.Definitions._Respectsʳ_"
d218 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d218 = erased
name228 = "Relation.Binary.Definitions._Respectsˡ_"
d228 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d228 = erased
name236 = "Relation.Binary.Definitions._Respects₂_"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d236 = erased
name244 = "Relation.Binary.Definitions.Substitutive"
d244 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Agda.Primitive.T4 -> ()
d244 = erased
name254 = "Relation.Binary.Definitions.Decidable"
d254 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d254 = erased
name262 = "Relation.Binary.Definitions.WeaklyDecidable"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d262 = erased
name270 = "Relation.Binary.Definitions.Irrelevant"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d270 = erased
name282 = "Relation.Binary.Definitions.Recomputable"
d282 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d282 = erased
name290 = "Relation.Binary.Definitions.Universal"
d290 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 -> (AgdaAny -> AgdaAny -> ()) -> ()
d290 = erased
name310 = "Relation.Binary.Definitions.NonEmpty"
d310 a0 a1 a2 a3 a4 a5 = ()
data T310 = C330 AgdaAny AgdaAny AgdaAny
name324 = "Relation.Binary.Definitions.NonEmpty.x"
d324 :: T310 -> AgdaAny
d324 v0
  = case coe v0 of
      C330 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name326 = "Relation.Binary.Definitions.NonEmpty.y"
d326 :: T310 -> AgdaAny
d326 v0
  = case coe v0 of
      C330 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name328 = "Relation.Binary.Definitions.NonEmpty.proof"
d328 :: T310 -> AgdaAny
d328 v0
  = case coe v0 of
      C330 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
name332 = "Relation.Binary.Definitions.Conn"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> ()) -> ()
d332 = erased
