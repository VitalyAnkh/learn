{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Extrema.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.LiftedChoice
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Min
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Converse
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Structures

name78 = "Data.List.Extrema.Core._._<_"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> ()
d78 = erased
name140 = "Data.List.Extrema.Core._._⊓_"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
d140 v0 v1 v2 v3 = du140 v3
du140 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> AgdaAny
du140 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1404 (coe v0)
name196 = "Data.List.Extrema.Core.<-transʳ"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d196 v0 v1 v2 v3 v4 v5 v6 = du196 v3 v4 v5 v6
du196 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du268
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d348
               (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d128
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348
            (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
      (let v4 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
       let v5 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.du100
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5)))
      (coe v1) (coe v2) (coe v3)
name198 = "Data.List.Extrema.Core.<-transˡ"
d198 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d198 v0 v1 v2 v3 v4 v5 v6 = du198 v3 v4 v5 v6
du198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du198 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du250
      (let v4
             = coe MAlonzo.Code.Relation.Binary.Bundles.du622 (coe v0) in
       let v5 = coe MAlonzo.Code.Relation.Binary.Bundles.du248 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.d36
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d80
            (coe MAlonzo.Code.Relation.Binary.Bundles.d154 (coe v5))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d126
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d348
               (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d128
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348
            (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
      (let v4 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
       let v5 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.du106
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5)))
      (coe v1) (coe v2) (coe v3)
name214 = "Data.List.Extrema.Core._.lemma₁"
d214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d214 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du214 v3 v6 v7 v8 v9 v10 v11
du214 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du214 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348
            (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
      (coe v1 v3) (coe v1 v2) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2276 (coe v0)
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
name226 = "Data.List.Extrema.Core._.lemma₂"
d226 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d226 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du226 v3 v6 v7 v8 v9 v10 v11
du226 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du226 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d84
      (MAlonzo.Code.Relation.Binary.Structures.d126
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d348
            (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
      (coe v1 v2) (coe v1 v3) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2306 (coe v0)
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
name238 = "Data.List.Extrema.Core._.lemma₃"
d238 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d238 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du238 v3 v6 v7 v8 v9 v10 v11
du238 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du238 v0 v1 v2 v3 v4 v5 v6
  = coe
      du196 v0 (coe v1 v3) (coe v1 v2) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2276 (coe v0)
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
name250 = "Data.List.Extrema.Core._.lemma₄"
d250 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d250 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du250 v3 v6 v7 v8 v9 v10 v11
du250 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du250 v0 v1 v2 v3 v4 v5 v6
  = coe
      du196 v0 (coe v1 v2) (coe v1 v3) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2306 (coe v0)
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
name256 = "Data.List.Extrema.Core.⊓ᴸ"
d256 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d256 v0 v1 v2 v3 v4 v5 = du256 v3
du256 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du256 v0
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du30
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1426 (coe v0))
name258 = "Data.List.Extrema.Core.⊔ᴸ"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d258 v0 v1 v2 v3 v4 v5 = du258 v3
du258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du258 v0
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du30
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du1426
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0)))
name262 = "Data.List.Extrema.Core.⊓ᴸ-sel"
d262 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d262 v0 v1 v2 v3 v4 v5 v6 = du262 v3 v6
du262 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du262 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du136
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254 (coe v0))
      (coe v1)
name274 = "Data.List.Extrema.Core.⊓ᴸ-presᵒ-≤v"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d274 v0 v1 v2 v3 v4 v5 v6 v7 = du274 v3 v6 v7
du274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du274 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du420
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254 (coe v0))
      (coe v1)
      (coe
         (\ v3 v4 ->
            coe du214 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
      (coe
         (\ v3 v4 ->
            coe du226 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
name286 = "Data.List.Extrema.Core.⊓ᴸ-presᵒ-<v"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d286 v0 v1 v2 v3 v4 v5 v6 v7 = du286 v3 v6 v7
du286 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du286 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du420
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254 (coe v0))
      (coe v1)
      (coe
         (\ v3 v4 ->
            coe du238 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
      (coe
         (\ v3 v4 ->
            coe du250 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
name298 = "Data.List.Extrema.Core.⊓ᴸ-presᵇ-v≤"
d298 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d298 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du298 v3 v6 v8 v9
du298 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du298 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du540
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254 (coe v0))
      (coe v1) (coe v2) (coe v3)
name314 = "Data.List.Extrema.Core.⊓ᴸ-presᵇ-v<"
d314 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d314 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du314 v3 v6 v8 v9
du314 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du314 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du540
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254 (coe v0))
      (coe v1) (coe v2) (coe v3)
name330 = "Data.List.Extrema.Core.⊓ᴸ-forcesᵇ-v≤"
d330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d330 v0 v1 v2 v3 v4 v5 v6 v7 = du330 v3 v6 v7
du330 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du330 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du582
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254 (coe v0))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d84
              (MAlonzo.Code.Relation.Binary.Structures.d126
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d348
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
              v2 (coe v1 v3) (coe v1 v4) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2306 (coe v0)
                 (coe v1 v3) (coe v1 v4) (coe v6))))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d84
              (MAlonzo.Code.Relation.Binary.Structures.d126
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d348
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
              v2 (coe v1 v4) (coe v1 v3) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2276 (coe v0)
                 (coe v1 v3) (coe v1 v4) (coe v6))))
name346 = "Data.List.Extrema.Core.⊔ᴸ-sel"
d346 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
d346 v0 v1 v2 v3 v4 v5 v6 = du346 v3 v6
du346 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30
du346 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du136
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0)))
      (coe v1)
name358 = "Data.List.Extrema.Core.⊔ᴸ-presᵒ-v≤"
d358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d358 v0 v1 v2 v3 v4 v5 v6 v7 = du358 v3 v6 v7
du358 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du358 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du420
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d84
              (MAlonzo.Code.Relation.Binary.Structures.d126
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d348
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
              v2 (coe v1 v3) (coe v1 v4) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2276
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d84
              (MAlonzo.Code.Relation.Binary.Structures.d126
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d348
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
              v2 (coe v1 v4) (coe v1 v3) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2306
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
name380 = "Data.List.Extrema.Core.⊔ᴸ-presᵒ-v<"
d380 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d380 v0 v1 v2 v3 v4 v5 v6 v7 = du380 v3 v6 v7
du380 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du380 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du420
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              du198 v0 v2 (coe v1 v3) (coe v1 v4) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2276
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              du198 v0 v2 (coe v1 v4) (coe v1 v3) v5
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2306
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))))
name402 = "Data.List.Extrema.Core.⊔ᴸ-presᵇ-≤v"
d402 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d402 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du402 v3 v6 v8 v9
du402 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du402 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du540
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0)))
      (coe v1) (coe v2) (coe v3)
name418 = "Data.List.Extrema.Core.⊔ᴸ-presᵇ-<v"
d418 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d418 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du418 v3 v6 v8 v9
du418 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du418 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du540
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0)))
      (coe v1) (coe v2) (coe v3)
name434 = "Data.List.Extrema.Core.⊔ᴸ-forcesᵇ-≤v"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d434 v0 v1 v2 v3 v4 v5 v6 v7 = du434 v3 v6 v7
du434 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du434 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du582
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2254
         (coe
            MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d84
              (MAlonzo.Code.Relation.Binary.Structures.d126
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d348
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
              (coe v1 v4) (coe v1 v3) v2
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2306
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))
              v5))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.d84
              (MAlonzo.Code.Relation.Binary.Structures.d126
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d348
                    (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0))))
              (coe v1 v3) (coe v1 v4) v2
              (coe
                 MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du2276
                 (coe
                    MAlonzo.Code.Relation.Binary.Construct.Converse.du736 (coe v0))
                 (coe v1 v3) (coe v1 v4) (coe v6))
              v5))
