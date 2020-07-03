{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Extrema where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Extrema.Core
import qualified MAlonzo.Code.Data.List.Membership.Propositional
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

name76 = "Data.List.Extrema._._<_"
d76 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> AgdaAny -> ()
d76 = erased
name114 = "Data.List.Extrema.argmin"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d114 v0 v1 v2 v3 v4 v5 v6 = du114 v3 v6
du114 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du114 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du216
      (coe MAlonzo.Code.Data.List.Extrema.Core.du256 v0 v1)
name118 = "Data.List.Extrema.argmax"
d118 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d118 v0 v1 v2 v3 v4 v5 v6 = du118 v3 v6
du118 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du118 v0 v1
  = coe
      MAlonzo.Code.Data.List.Base.du216
      (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1)
name122 = "Data.List.Extrema.min"
d122 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
d122 v0 v1 v2 v3 = du122 v3
du122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
du122 v0 = coe du114 (coe v0) (coe (\ v1 -> v1))
name124 = "Data.List.Extrema.max"
d124 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
d124 v0 v1 v2 v3 = du124 v3
du124 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
du124 v0 = coe du118 (coe v0) (coe (\ v1 -> v1))
name142 = "Data.List.Extrema._.f[argmin]≤v⁺"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d142 v0 v1 v2 v3 v4 v5 v6 v7 = du142 v3 v6 v7
du142 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du142 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Properties.du2634
      (coe MAlonzo.Code.Data.List.Extrema.Core.du256 v0 v1)
      (coe
         MAlonzo.Code.Data.List.Extrema.Core.du274 (coe v0) (coe v1)
         (coe v2))
name152 = "Data.List.Extrema._.f[argmin]<v⁺"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d152 v0 v1 v2 v3 v4 v5 v6 v7 = du152 v3 v6 v7
du152 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du152 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Properties.du2634
      (coe MAlonzo.Code.Data.List.Extrema.Core.du256 v0 v1)
      (coe
         MAlonzo.Code.Data.List.Extrema.Core.du286 (coe v0) (coe v1)
         (coe v2))
name162 = "Data.List.Extrema._.v≤f[argmin]⁺"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d162 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du162 v3 v6 v8 v9
du162 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Properties.du2594
      (coe MAlonzo.Code.Data.List.Extrema.Core.du256 v0 v1)
      (coe MAlonzo.Code.Data.List.Extrema.Core.du298 (coe v0) (coe v1))
      (coe v2) (coe v3)
name172 = "Data.List.Extrema._.v<f[argmin]⁺"
d172 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du172 v3 v6 v8 v9
du172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du172 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Properties.du2594
      (coe MAlonzo.Code.Data.List.Extrema.Core.du256 v0 v1)
      (coe MAlonzo.Code.Data.List.Extrema.Core.du314 (coe v0) (coe v1))
      (coe v2) (coe v3)
name178 = "Data.List.Extrema._.f[argmin]≤f[⊤]"
d178 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d178 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du178 v3 v6 v7 v8
du178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du178 v0 v1 v2 v3
  = coe
      du142 v0 v1 (coe v1 v2) v2 v3
      (coe
         MAlonzo.Code.Data.Sum.Base.C38
         (let v4 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
          let v5 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v4) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du98
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
            (coe v1 v2)))
name190 = "Data.List.Extrema._.f[argmin]≤f[xs]"
d190 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
d190 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du190 v3 v6 v7 v8
du190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
du190 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Properties.du2560
      (coe MAlonzo.Code.Data.List.Extrema.Core.du256 v0 v1)
      (coe
         MAlonzo.Code.Data.List.Extrema.Core.du330 (coe v0) (coe v1)
         (coe v1 (coe du114 v0 v1 v2 v3)))
      (coe v2) (coe v3)
      (let v4 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
       let v5 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.du98
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
         (coe v1 (coe du114 v0 v1 v2 v3)))
name204 = "Data.List.Extrema._.f[argmin]≈f[v]⁺"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
d204 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du204 v3 v6 v7 v8 v9 v10 v11 v12
du204 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
du204 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (MAlonzo.Code.Relation.Binary.Structures.d348
         (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
      (coe v1 (coe du114 v0 v1 v3 v4)) (coe v1 v2)
      (coe
         du142 v0 v1 (coe v1 v2) v3 v4
         (coe
            MAlonzo.Code.Data.Sum.Base.C42
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.du54 v2 v4 v5
               (let v8 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                let v9 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v8) in
                coe
                  MAlonzo.Code.Relation.Binary.Structures.du98
                  (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v9))
                  (coe v1 v2)))))
      (coe du162 v0 v1 v3 v4 v7 v6)
name230 = "Data.List.Extrema.argmin[xs]≤argmin[ys]⁺"
d230 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d230 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du230 v3 v6 v7 v8 v9 v10 v11 v12 v13
du230 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du230 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du162 v0 v2 v4 v6 (coe du142 v0 v1 (coe v2 v4) v3 v5 v7)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.All.du196
         (coe (\ v9 -> coe du142 v0 v1 (coe v2 v9) v3 v5)) (coe v6)
         (coe v8))
name258 = "Data.List.Extrema.argmin[xs]<argmin[ys]⁺"
d258 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d258 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du258 v3 v6 v7 v8 v9 v10 v11 v12 v13
du258 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du258 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du172 v0 v2 v4 v6 (coe du152 v0 v1 (coe v2 v4) v3 v5 v7)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.All.du196
         (coe (\ v9 -> coe du152 v0 v1 (coe v2 v9) v3 v5)) (coe v6)
         (coe v8))
name274 = "Data.List.Extrema.argmin-sel"
d274 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
d274 v0 v1 v2 v3 v4 v5 v6 = du274 v3 v6
du274 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
du274 v0 v1
  = coe
      MAlonzo.Code.Data.List.Membership.Propositional.Properties.du606
      (coe MAlonzo.Code.Data.List.Extrema.Core.du256 v0 v1)
      (coe MAlonzo.Code.Data.List.Extrema.Core.du262 (coe v0) (coe v1))
name286 = "Data.List.Extrema.argmin-all"
d286 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d286 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du286 v3 v7 v8 v9 v11 v12
du286 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du286 v0 v1 v2 v3 v4 v5
  = let v6 = coe du274 v0 v1 v2 v3 in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7 -> coe v4
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe MAlonzo.Code.Data.List.Relation.Unary.All.du584 v3 v5 v7
      _ -> MAlonzo.RTE.mazUnreachableError
name348 = "Data.List.Extrema._.v≤f[argmax]⁺"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d348 v0 v1 v2 v3 v4 v5 v6 v7 = du348 v3 v6 v7
du348 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du348 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Properties.du2634
      (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1)
      (coe
         MAlonzo.Code.Data.List.Extrema.Core.du358 (coe v0) (coe v1)
         (coe v2))
name358 = "Data.List.Extrema._.v<f[argmax]⁺"
d358 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d358 v0 v1 v2 v3 v4 v5 v6 v7 = du358 v3 v6 v7
du358 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du358 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Properties.du2634
      (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1)
      (coe
         MAlonzo.Code.Data.List.Extrema.Core.du380 (coe v0) (coe v1)
         (coe v2))
name368 = "Data.List.Extrema._.f[argmax]≤v⁺"
d368 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d368 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du368 v3 v6 v8 v9
du368 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du368 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Properties.du2594
      (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1)
      (coe MAlonzo.Code.Data.List.Extrema.Core.du402 (coe v0) (coe v1))
      (coe v2) (coe v3)
name378 = "Data.List.Extrema._.f[argmax]<v⁺"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d378 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du378 v3 v6 v8 v9
du378 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Properties.du2594
      (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1)
      (coe MAlonzo.Code.Data.List.Extrema.Core.du418 (coe v0) (coe v1))
      (coe v2) (coe v3)
name384 = "Data.List.Extrema._.f[⊥]≤f[argmax]"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d384 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du384 v3 v6 v7 v8
du384 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du384 v0 v1 v2 v3
  = coe
      du348 v0 v1 (coe v1 v2) v2 v3
      (coe
         MAlonzo.Code.Data.Sum.Base.C38
         (let v4 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
          let v5 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v4) in
          coe
            MAlonzo.Code.Relation.Binary.Structures.du98
            (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
            (coe v1 v2)))
name396 = "Data.List.Extrema._.f[xs]≤f[argmax]"
d396 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
d396 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du396 v3 v6 v7 v8
du396 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
du396 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Properties.du2560
      (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1)
      (coe
         MAlonzo.Code.Data.List.Extrema.Core.du434 (coe v0) (coe v1)
         (coe v1 (coe du118 v0 v1 v2 v3)))
      (coe v2) (coe v3)
      (let v4 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
       let v5 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v4) in
       coe
         MAlonzo.Code.Relation.Binary.Structures.du98
         (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v5))
         (coe
            v1
            (coe
               MAlonzo.Code.Data.List.Base.du216
               (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1) (coe v2)
               (coe v3))))
name410 = "Data.List.Extrema._.f[argmax]≈f[v]⁺"
d410 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
d410 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du410 v3 v6 v7 v8 v9 v10 v11 v12
du410 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
du410 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d128
      (MAlonzo.Code.Relation.Binary.Structures.d348
         (coe MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0)))
      (coe v1 (coe du118 v0 v1 v3 v4)) (coe v1 v2)
      (coe du368 v0 v1 v3 v4 v7 v6)
      (coe
         du348 v0 v1 (coe v1 v2) v3 v4
         (coe
            MAlonzo.Code.Data.Sum.Base.C42
            (coe
               MAlonzo.Code.Data.List.Membership.Propositional.du54 v2 v4 v5
               (let v8 = MAlonzo.Code.Relation.Binary.Bundles.d596 (coe v0) in
                let v9 = MAlonzo.Code.Relation.Binary.Structures.d348 (coe v8) in
                coe
                  MAlonzo.Code.Relation.Binary.Structures.du98
                  (coe MAlonzo.Code.Relation.Binary.Structures.d126 (coe v9))
                  (coe v1 v2)))))
name436 = "Data.List.Extrema.argmax[xs]≤argmax[ys]⁺"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d436 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du436 v3 v6 v7 v8 v9 v10 v11 v12 v13
du436 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du436 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du368 v0 v1 v3 v5 (coe du348 v0 v2 (coe v1 v3) v4 v6 v7)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.All.du196
         (coe (\ v9 -> coe du348 v0 v2 (coe v1 v9) v4 v6)) (coe v5)
         (coe v8))
name464 = "Data.List.Extrema.argmax[xs]<argmax[ys]⁺"
d464 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d464 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
  = du464 v3 v6 v7 v8 v9 v10 v11 v12 v13
du464 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du464 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du378 v0 v1 v3 v5 (coe du358 v0 v2 (coe v1 v3) v4 v6 v7)
      (coe
         MAlonzo.Code.Data.List.Relation.Unary.All.du196
         (coe (\ v9 -> coe du358 v0 v2 (coe v1 v9) v4 v6)) (coe v5)
         (coe v8))
name480 = "Data.List.Extrema.argmax-sel"
d480 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
d480 v0 v1 v2 v3 v4 v5 v6 = du480 v3 v6
du480 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30
du480 v0 v1
  = coe
      MAlonzo.Code.Data.List.Membership.Propositional.Properties.du606
      (coe MAlonzo.Code.Data.List.Extrema.Core.du258 v0 v1)
      (coe MAlonzo.Code.Data.List.Extrema.Core.du346 (coe v0) (coe v1))
name492 = "Data.List.Extrema.argmax-all"
d492 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d492 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = du492 v3 v7 v9 v10 v11 v12
du492 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du492 v0 v1 v2 v3 v4 v5
  = let v6 = coe du480 v0 v1 v2 v3 in
    case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C38 v7 -> coe v4
      MAlonzo.Code.Data.Sum.Base.C42 v7
        -> coe MAlonzo.Code.Data.List.Relation.Unary.All.du584 v3 v5 v7
      _ -> MAlonzo.RTE.mazUnreachableError
name546 = "Data.List.Extrema.min≤v⁺"
d546 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d546 v0 v1 v2 v3 v4 = du546 v3 v4
du546 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du546 v0 v1 = coe du142 (coe v0) (coe (\ v2 -> v2)) (coe v1)
name556 = "Data.List.Extrema.min<v⁺"
d556 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d556 v0 v1 v2 v3 v4 = du556 v3 v4
du556 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du556 v0 v1 = coe du152 (coe v0) (coe (\ v2 -> v2)) (coe v1)
name566 = "Data.List.Extrema.v≤min⁺"
d566 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d566 v0 v1 v2 v3 v4 v5 v6 = du566 v3 v5 v6
du566 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du566 v0 v1 v2
  = coe du162 (coe v0) (coe (\ v3 -> v3)) (coe v1) (coe v2)
name576 = "Data.List.Extrema.v<min⁺"
d576 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d576 v0 v1 v2 v3 v4 v5 v6 = du576 v3 v5 v6
du576 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du576 v0 v1 v2
  = coe du172 (coe v0) (coe (\ v3 -> v3)) (coe v1) (coe v2)
name582 = "Data.List.Extrema.min≤⊤"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
d582 v0 v1 v2 v3 = du582 v3
du582 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
du582 v0 = coe du178 (coe v0) (coe (\ v1 -> v1))
name590 = "Data.List.Extrema.min≤xs"
d590 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
d590 v0 v1 v2 v3 = du590 v3
du590 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
du590 v0 = coe du190 (coe v0) (coe (\ v1 -> v1))
name600 = "Data.List.Extrema.min≈v⁺"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
d600 v0 v1 v2 v3 v4 v5 v6 = du600 v3 v4 v5 v6
du600 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
du600 v0 v1 v2 v3
  = coe du204 (coe v0) (coe (\ v4 -> v4)) (coe v1) (coe v2) (coe v3)
name616 = "Data.List.Extrema.min[xs]≤min[ys]⁺"
d616 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d616 v0 v1 v2 v3 = du616 v3
du616 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du616 v0 = coe du230 (coe v0) (coe (\ v1 -> v1)) (coe (\ v1 -> v1))
name632 = "Data.List.Extrema.min[xs]<min[ys]⁺"
d632 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d632 v0 v1 v2 v3 = du632 v3
du632 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du632 v0 = coe du258 (coe v0) (coe (\ v1 -> v1)) (coe (\ v1 -> v1))
name642 = "Data.List.Extrema.max≤v⁺"
d642 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d642 v0 v1 v2 v3 v4 v5 v6 = du642 v3 v5 v6
du642 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du642 v0 v1 v2
  = coe du368 (coe v0) (coe (\ v3 -> v3)) (coe v1) (coe v2)
name652 = "Data.List.Extrema.max<v⁺"
d652 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d652 v0 v1 v2 v3 v4 v5 v6 = du652 v3 v5 v6
du652 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du652 v0 v1 v2
  = coe du378 (coe v0) (coe (\ v3 -> v3)) (coe v1) (coe v2)
name662 = "Data.List.Extrema.v≤max⁺"
d662 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
d662 v0 v1 v2 v3 v4 = du662 v3 v4
du662 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T30 -> AgdaAny
du662 v0 v1 = coe du348 (coe v0) (coe (\ v2 -> v2)) (coe v1)
name672 = "Data.List.Extrema.v<max⁺"
d672 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d672 v0 v1 v2 v3 v4 = du672 v3 v4
du672 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du672 v0 v1 = coe du358 (coe v0) (coe (\ v2 -> v2)) (coe v1)
name678 = "Data.List.Extrema.⊥≤max"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
d678 v0 v1 v2 v3 = du678 v3
du678 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny -> [AgdaAny] -> AgdaAny
du678 v0 = coe du384 (coe v0) (coe (\ v1 -> v1))
name686 = "Data.List.Extrema.xs≤max"
d686 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
d686 v0 v1 v2 v3 = du686 v3
du686 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Data.List.Relation.Unary.All.T34
du686 v0 = coe du396 (coe v0) (coe (\ v1 -> v1))
name696 = "Data.List.Extrema.max≈v⁺"
d696 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
d696 v0 v1 v2 v3 v4 v5 v6 = du696 v3 v4 v5 v6
du696 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T26 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny -> AgdaAny
du696 v0 v1 v2 v3
  = coe du410 (coe v0) (coe (\ v4 -> v4)) (coe v1) (coe v2) (coe v3)
name712 = "Data.List.Extrema.max[xs]≤max[ys]⁺"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
d712 v0 v1 v2 v3 v4 = du712 v3 v4
du712 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 -> AgdaAny
du712 v0 v1
  = coe du436 (coe v0) (coe (\ v2 -> v2)) (coe (\ v2 -> v2)) (coe v1)
name728 = "Data.List.Extrema.max[xs]<max[ys]⁺"
d728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d728 v0 v1 v2 v3 v4 = du728 v3 v4
du728 ::
  MAlonzo.Code.Relation.Binary.Bundles.T574 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Sum.Base.T30 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du728 v0 v1
  = coe du464 (coe v0) (coe (\ v2 -> v2)) (coe (\ v2 -> v2)) (coe v1)
