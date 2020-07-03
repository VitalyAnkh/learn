{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Morphism.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures

name30 = "Algebra.Morphism.Structures.MagmaMorphisms._._∙_"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 -> AgdaAny -> AgdaAny -> AgdaAny
d30 v0 v1 v2 v3 v4 v5 = du30 v4
du30 ::
  MAlonzo.Code.Algebra.Bundles.T8 -> AgdaAny -> AgdaAny -> AgdaAny
du30 v0 = coe MAlonzo.Code.Algebra.Bundles.d24 (coe v0)
name32 = "Algebra.Morphism.Structures.MagmaMorphisms._._≈_"
d32 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 -> AgdaAny -> AgdaAny -> ()
d32 = erased
name34 = "Algebra.Morphism.Structures.MagmaMorphisms._.Carrier"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 -> ()
d34 = erased
name50
  = "Algebra.Morphism.Structures.MagmaMorphisms._.Homomorphic₂"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d50 = erased
name60 = "Algebra.Morphism.Structures.MagmaMorphisms._.Injective"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 -> (AgdaAny -> AgdaAny) -> ()
d60 = erased
name68 = "Algebra.Morphism.Structures.MagmaMorphisms._.Surjective"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> AgdaAny) -> ()
d68 = erased
name72
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism"
d72 a0 a1 a2 a3 a4 a5 a6 = ()
data T72
  = C769 MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
         (AgdaAny -> AgdaAny -> AgdaAny)
name80
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.isRelHomomorphism"
d80 :: T72 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d80 v0
  = case coe v0 of
      C769 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name82
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.homo"
d82 :: T72 -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0
  = case coe v0 of
      C769 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name86
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism._.cong"
d86 :: T72 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d86 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe v0))
name90
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism"
d90 a0 a1 a2 a3 a4 a5 a6 = ()
data T90 = C1317 T72 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name98
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isMagmaHomomorphism"
d98 :: T90 -> T72
d98 v0
  = case coe v0 of
      C1317 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name100
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.injective"
d100 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0
  = case coe v0 of
      C1317 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name104
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.homo"
d104 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0 = coe d82 (coe d98 (coe v0))
name106
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.isRelHomomorphism"
d106 :: T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d106 v0 = coe d80 (coe d98 (coe v0))
name108
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.cong"
d108 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d98 (coe v0)))
name110
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isRelMonomorphism"
d110 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  (AgdaAny -> AgdaAny) ->
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d110 v0 v1 v2 v3 v4 v5 v6 v7 = du110 v7
du110 ::
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du110 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C1033
      (coe d80 (coe d98 (coe v0))) (coe d100 (coe v0))
name114
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism"
d114 a0 a1 a2 a3 a4 a5 a6 = ()
data T114
  = C2127 T90 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name122
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isMagmaMonomorphism"
d122 :: T114 -> T90
d122 v0
  = case coe v0 of
      C2127 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name124
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.surjective"
d124 :: T114 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d124 v0
  = case coe v0 of
      C2127 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name128
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.homo"
d128 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny
d128 v0 = coe d82 (coe d98 (coe d122 (coe v0)))
name130
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.injective"
d130 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d130 v0 = coe d100 (coe d122 (coe v0))
name132
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isMagmaHomomorphism"
d132 :: T114 -> T72
d132 v0 = coe d98 (coe d122 (coe v0))
name134
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelHomomorphism"
d134 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d134 v0 = coe d80 (coe d98 (coe d122 (coe v0)))
name136
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelMonomorphism"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d136 v0 v1 v2 v3 v4 v5 v6 v7 = du136 v7
du136 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du136 v0 = coe du110 (coe d122 (coe v0))
name138
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.cong"
d138 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d138 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d98 (coe d122 (coe v0))))
name140
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isRelIsomorphism"
d140 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  MAlonzo.Code.Algebra.Bundles.T8 ->
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d140 v0 v1 v2 v3 v4 v5 v6 v7 = du140 v7
du140 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du140 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C2089
      (coe du110 (coe d122 (coe v0))) (coe d124 (coe v0))
name162 = "Algebra.Morphism.Structures.MonoidMorphisms._.Carrier"
d162 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 -> ()
d162 = erased
name166 = "Algebra.Morphism.Structures.MonoidMorphisms._.ε"
d166 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 -> AgdaAny
d166 v0 v1 v2 v3 v4 v5 = du166 v4
du166 :: MAlonzo.Code.Algebra.Bundles.T394 -> AgdaAny
du166 v0 = coe MAlonzo.Code.Algebra.Bundles.d414 (coe v0)
name182
  = "Algebra.Morphism.Structures.MonoidMorphisms._.Homomorphic₀"
d182 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d182 = erased
name196 = "Algebra.Morphism.Structures.MonoidMorphisms._.Injective"
d196 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 -> (AgdaAny -> AgdaAny) -> ()
d196 = erased
name204
  = "Algebra.Morphism.Structures.MonoidMorphisms._.Surjective"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> AgdaAny) -> ()
d204 = erased
name208
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism"
d208 a0 a1 a2 a3 a4 a5 a6 = ()
name210
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism"
d210 a0 a1 a2 a3 a4 a5 a6 = ()
name212
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism"
d212 a0 a1 a2 a3 a4 a5 a6 = ()
name216
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.homo"
d216 :: T72 -> AgdaAny -> AgdaAny -> AgdaAny
d216 = coe d82
name218
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaHomomorphism.isRelHomomorphism"
d218 :: T72 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d218 = coe d80
name230
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism"
d230 :: T114 -> T90
d230 = coe d122
name234
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelIsomorphism"
d234 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d234 v0 v1 v2 v3 v4 v5 = du234
du234 ::
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du234 v0 v1 = coe du140 v1
name236
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.isRelMonomorphism"
d236 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d236 v0 v1 v2 v3 v4 v5 v6 v7 = du236 v7
du236 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du236 v0 = coe du110 (coe d122 (coe v0))
name238
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaIsomorphism.surjective"
d238 :: T114 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d238 = coe d124
name246
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.injective"
d246 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d246 = coe d100
name248
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism"
d248 :: T90 -> T72
d248 = coe d98
name252
  = "Algebra.Morphism.Structures.MonoidMorphisms._.IsMagmaMonomorphism.isRelMonomorphism"
d252 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) ->
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d252 v0 v1 v2 v3 v4 v5 = du252
du252 ::
  (AgdaAny -> AgdaAny) ->
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du252 v0 v1 = coe du110 v1
name258
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism"
d258 a0 a1 a2 a3 a4 a5 a6 = ()
data T258 = C3971 T72 AgdaAny
name266
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.isMagmaHomomorphism"
d266 :: T258 -> T72
d266 v0
  = case coe v0 of
      C3971 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name268
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.ε-homo"
d268 :: T258 -> AgdaAny
d268 v0
  = case coe v0 of
      C3971 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name272
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.homo"
d272 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny
d272 v0 = coe d82 (coe d266 (coe v0))
name274
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.isRelHomomorphism"
d274 ::
  T258 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d274 v0 = coe d80 (coe d266 (coe v0))
name276
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.cong"
d276 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d276 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe v0)))
name280
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism"
d280 a0 a1 a2 a3 a4 a5 a6 = ()
data T280 = C4275 T258 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name288
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMonoidHomomorphism"
d288 :: T280 -> T258
d288 v0
  = case coe v0 of
      C4275 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name290
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.injective"
d290 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0
  = case coe v0 of
      C4275 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name294
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.homo"
d294 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny
d294 v0 = coe d82 (coe d266 (coe d288 (coe v0)))
name296
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isMagmaHomomorphism"
d296 :: T280 -> T72
d296 v0 = coe d266 (coe d288 (coe v0))
name298
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelHomomorphism"
d298 ::
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d298 v0 = coe d80 (coe d266 (coe d288 (coe v0)))
name300
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.ε-homo"
d300 :: T280 -> AgdaAny
d300 v0 = coe d268 (coe d288 (coe v0))
name302
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.cong"
d302 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d288 (coe v0))))
name304
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMagmaMonomorphism"
d304 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> T280 -> T90
d304 v0 v1 v2 v3 v4 v5 v6 v7 = du304 v7
du304 :: T280 -> T90
du304 v0
  = coe C1317 (coe d266 (coe d288 (coe v0))) (coe d290 (coe v0))
name308
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelMonomorphism"
d308 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) ->
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d308 v0 v1 v2 v3 v4 v5 v6 v7 = du308 v7
du308 ::
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du308 v0 = coe du110 (coe du304 (coe v0))
name312
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism"
d312 a0 a1 a2 a3 a4 a5 a6 = ()
data T312
  = C4987 T280 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name320
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMonoidMonomorphism"
d320 :: T312 -> T280
d320 v0
  = case coe v0 of
      C4987 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name322
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.surjective"
d322 :: T312 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d322 v0
  = case coe v0 of
      C4987 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name326
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.homo"
d326 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny
d326 v0 = coe d82 (coe d266 (coe d288 (coe d320 (coe v0))))
name328
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.injective"
d328 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d328 v0 = coe d290 (coe d320 (coe v0))
name330
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaHomomorphism"
d330 :: T312 -> T72
d330 v0 = coe d266 (coe d288 (coe d320 (coe v0)))
name332
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaMonomorphism"
d332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> T312 -> T90
d332 v0 v1 v2 v3 v4 v5 v6 v7 = du332 v7
du332 :: T312 -> T90
du332 v0 = coe du304 (coe d320 (coe v0))
name334
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMonoidHomomorphism"
d334 :: T312 -> T258
d334 v0 = coe d288 (coe d320 (coe v0))
name336
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelHomomorphism"
d336 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d336 v0 = coe d80 (coe d266 (coe d288 (coe d320 (coe v0))))
name338
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelMonomorphism"
d338 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) ->
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d338 v0 v1 v2 v3 v4 v5 v6 v7 = du338 v7
du338 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du338 v0 = let v1 = d320 (coe v0) in coe du110 (coe du304 (coe v1))
name340
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.ε-homo"
d340 :: T312 -> AgdaAny
d340 v0 = coe d268 (coe d288 (coe d320 (coe v0)))
name342
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.cong"
d342 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d342 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d288 (coe d320 (coe v0)))))
name344
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMagmaIsomorphism"
d344 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) -> T312 -> T114
d344 v0 v1 v2 v3 v4 v5 v6 v7 = du344 v7
du344 :: T312 -> T114
du344 v0
  = coe C2127 (coe du304 (coe d320 (coe v0))) (coe d322 (coe v0))
name348
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelIsomorphism"
d348 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  MAlonzo.Code.Algebra.Bundles.T394 ->
  (AgdaAny -> AgdaAny) ->
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d348 v0 v1 v2 v3 v4 v5 v6 v7 = du348 v7
du348 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du348 v0 = coe du140 (coe du344 (coe v0))
name366 = "Algebra.Morphism.Structures.GroupMorphisms._._⁻¹"
d366 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 -> AgdaAny -> AgdaAny
d366 v0 v1 v2 v3 v4 v5 = du366 v4
du366 :: MAlonzo.Code.Algebra.Bundles.T742 -> AgdaAny -> AgdaAny
du366 v0 = coe MAlonzo.Code.Algebra.Bundles.d766 (coe v0)
name372 = "Algebra.Morphism.Structures.GroupMorphisms._.Carrier"
d372 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 -> ()
d372 = erased
name400
  = "Algebra.Morphism.Structures.GroupMorphisms._.Homomorphic₁"
d400 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d400 = erased
name412 = "Algebra.Morphism.Structures.GroupMorphisms._.Injective"
d412 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 -> (AgdaAny -> AgdaAny) -> ()
d412 = erased
name420 = "Algebra.Morphism.Structures.GroupMorphisms._.Surjective"
d420 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> AgdaAny) -> ()
d420 = erased
name424
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism"
d424 a0 a1 a2 a3 a4 a5 a6 = ()
name426
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism"
d426 a0 a1 a2 a3 a4 a5 a6 = ()
name428
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism"
d428 a0 a1 a2 a3 a4 a5 a6 = ()
name432
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.homo"
d432 :: T72 -> AgdaAny -> AgdaAny -> AgdaAny
d432 = coe d82
name434
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaHomomorphism.isRelHomomorphism"
d434 :: T72 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d434 = coe d80
name446
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isMagmaMonomorphism"
d446 :: T114 -> T90
d446 = coe d122
name450
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelIsomorphism"
d450 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d450 v0 v1 v2 v3 v4 v5 = du450
du450 ::
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du450 v0 v1 = coe du140 v1
name452
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.isRelMonomorphism"
d452 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d452 v0 v1 v2 v3 v4 v5 v6 v7 = du452 v7
du452 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du452 v0 = coe du110 (coe d122 (coe v0))
name454
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaIsomorphism.surjective"
d454 :: T114 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d454 = coe d124
name462
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.injective"
d462 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d462 = coe d100
name464
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isMagmaHomomorphism"
d464 :: T90 -> T72
d464 = coe d98
name468
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMagmaMonomorphism.isRelMonomorphism"
d468 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d468 v0 v1 v2 v3 v4 v5 = du468
du468 ::
  (AgdaAny -> AgdaAny) ->
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du468 v0 v1 = coe du110 v1
name474
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism"
d474 a0 a1 a2 a3 a4 a5 a6 = ()
name476
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism"
d476 a0 a1 a2 a3 a4 a5 a6 = ()
name478
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism"
d478 a0 a1 a2 a3 a4 a5 a6 = ()
name484
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.isMagmaHomomorphism"
d484 :: T258 -> T72
d484 = coe d266
name488
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidHomomorphism.ε-homo"
d488 :: T258 -> AgdaAny
d488 = coe d268
name500
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaIsomorphism"
d500 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) -> T312 -> T114
d500 v0 v1 v2 v3 v4 v5 = du500
du500 :: (AgdaAny -> AgdaAny) -> T312 -> T114
du500 v0 v1 = coe du344 v1
name502
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMagmaMonomorphism"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) -> T312 -> T90
d502 v0 v1 v2 v3 v4 v5 v6 v7 = du502 v7
du502 :: T312 -> T90
du502 v0 = coe du304 (coe d320 (coe v0))
name506
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isMonoidMonomorphism"
d506 :: T312 -> T280
d506 = coe d320
name510
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelIsomorphism"
d510 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d510 v0 v1 v2 v3 v4 v5 v6 v7 = du510 v7
du510 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du510 v0 = coe du140 (coe du344 (coe v0))
name512
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.isRelMonomorphism"
d512 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d512 v0 v1 v2 v3 v4 v5 v6 v7 = du512 v7
du512 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du512 v0 = let v1 = d320 (coe v0) in coe du110 (coe du304 (coe v1))
name514
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidIsomorphism.surjective"
d514 :: T312 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d514 = coe d322
name524
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.injective"
d524 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d524 = coe d290
name528
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMagmaMonomorphism"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) -> T280 -> T90
d528 v0 v1 v2 v3 v4 v5 = du528
du528 :: (AgdaAny -> AgdaAny) -> T280 -> T90
du528 v0 v1 = coe du304 v1
name530
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isMonoidHomomorphism"
d530 :: T280 -> T258
d530 = coe d288
name534
  = "Algebra.Morphism.Structures.GroupMorphisms._.IsMonoidMonomorphism.isRelMonomorphism"
d534 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d534 v0 v1 v2 v3 v4 v5 v6 v7 = du534 v7
du534 ::
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du534 v0 = coe du110 (coe du304 (coe v0))
name542
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism"
d542 a0 a1 a2 a3 a4 a5 a6 = ()
data T542 = C7453 T258 (AgdaAny -> AgdaAny)
name550
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.isMonoidHomomorphism"
d550 :: T542 -> T258
d550 v0
  = case coe v0 of
      C7453 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name552
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism.⁻¹-homo"
d552 :: T542 -> AgdaAny -> AgdaAny
d552 v0
  = case coe v0 of
      C7453 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name556
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.homo"
d556 :: T542 -> AgdaAny -> AgdaAny -> AgdaAny
d556 v0 = coe d82 (coe d266 (coe d550 (coe v0)))
name558
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isMagmaHomomorphism"
d558 :: T542 -> T72
d558 v0 = coe d266 (coe d550 (coe v0))
name560
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.isRelHomomorphism"
d560 ::
  T542 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d560 v0 = coe d80 (coe d266 (coe d550 (coe v0)))
name562
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.ε-homo"
d562 :: T542 -> AgdaAny
d562 v0 = coe d268 (coe d550 (coe v0))
name564
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupHomomorphism._.cong"
d564 :: T542 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d564 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe v0))))
name568
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism"
d568 a0 a1 a2 a3 a4 a5 a6 = ()
data T568 = C7819 T542 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name576
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isGroupHomomorphism"
d576 :: T568 -> T542
d576 v0
  = case coe v0 of
      C7819 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name578
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.injective"
d578 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d578 v0
  = case coe v0 of
      C7819 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name582
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMagmaHomomorphism"
d582 :: T568 -> T72
d582 v0 = coe d266 (coe d550 (coe d576 (coe v0)))
name584
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isMonoidHomomorphism"
d584 :: T568 -> T258
d584 v0 = coe d550 (coe d576 (coe v0))
name586
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelHomomorphism"
d586 ::
  T568 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d586 v0 = coe d80 (coe d266 (coe d550 (coe d576 (coe v0))))
name588
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.ε-homo"
d588 :: T568 -> AgdaAny
d588 v0 = coe d268 (coe d550 (coe d576 (coe v0)))
name590
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.⁻¹-homo"
d590 :: T568 -> AgdaAny -> AgdaAny
d590 v0 = coe d552 (coe d576 (coe v0))
name592
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.homo"
d592 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny
d592 v0 = coe d82 (coe d266 (coe d550 (coe d576 (coe v0))))
name594
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.cong"
d594 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d594 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe d576 (coe v0)))))
name596
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism.isMonoidMonomorphism"
d596 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) -> T568 -> T280
d596 v0 v1 v2 v3 v4 v5 v6 v7 = du596 v7
du596 :: T568 -> T280
du596 v0
  = coe C4275 (coe d550 (coe d576 (coe v0))) (coe d578 (coe v0))
name600
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupMonomorphism._.isRelMonomorphism"
d600 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T568 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d600 v0 v1 v2 v3 v4 v5 v6 v7 = du600 v7
du600 ::
  T568 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du600 v0
  = let v1 = coe du596 (coe v0) in coe du110 (coe du304 (coe v1))
name604
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism"
d604 a0 a1 a2 a3 a4 a5 a6 = ()
data T604
  = C8595 T568 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name612
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isGroupMonomorphism"
d612 :: T604 -> T568
d612 v0
  = case coe v0 of
      C8595 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name614
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.surjective"
d614 :: T604 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d614 v0
  = case coe v0 of
      C8595 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name618
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.injective"
d618 :: T604 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d618 v0 = coe d578 (coe d612 (coe v0))
name620
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isGroupHomomorphism"
d620 :: T604 -> T542
d620 v0 = coe d576 (coe d612 (coe v0))
name622
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMagmaHomomorphism"
d622 :: T604 -> T72
d622 v0 = coe d266 (coe d550 (coe d576 (coe d612 (coe v0))))
name624
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidHomomorphism"
d624 :: T604 -> T258
d624 v0 = coe d550 (coe d576 (coe d612 (coe v0)))
name626
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isMonoidMonomorphism"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) -> T604 -> T280
d626 v0 v1 v2 v3 v4 v5 v6 v7 = du626 v7
du626 :: T604 -> T280
du626 v0 = coe du596 (coe d612 (coe v0))
name628
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelHomomorphism"
d628 ::
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d628 v0
  = coe d80 (coe d266 (coe d550 (coe d576 (coe d612 (coe v0)))))
name630
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelMonomorphism"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d630 v0 v1 v2 v3 v4 v5 v6 v7 = du630 v7
du630 ::
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du630 v0
  = let v1 = d612 (coe v0) in
    let v2 = coe du596 (coe v1) in coe du110 (coe du304 (coe v2))
name632
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.ε-homo"
d632 :: T604 -> AgdaAny
d632 v0 = coe d268 (coe d550 (coe d576 (coe d612 (coe v0))))
name634
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.⁻¹-homo"
d634 :: T604 -> AgdaAny -> AgdaAny
d634 v0 = coe d552 (coe d576 (coe d612 (coe v0)))
name636
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.homo"
d636 :: T604 -> AgdaAny -> AgdaAny -> AgdaAny
d636 v0
  = coe d82 (coe d266 (coe d550 (coe d576 (coe d612 (coe v0)))))
name638
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.cong"
d638 :: T604 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d638 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe d576 (coe d612 (coe v0))))))
name640
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism.isMonoidIsomorphism"
d640 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) -> T604 -> T312
d640 v0 v1 v2 v3 v4 v5 v6 v7 = du640 v7
du640 :: T604 -> T312
du640 v0
  = coe C4987 (coe du596 (coe d612 (coe v0))) (coe d614 (coe v0))
name644
  = "Algebra.Morphism.Structures.GroupMorphisms.IsGroupIsomorphism._.isRelIsomorphism"
d644 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  MAlonzo.Code.Algebra.Bundles.T742 ->
  (AgdaAny -> AgdaAny) ->
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d644 v0 v1 v2 v3 v4 v5 v6 v7 = du644 v7
du644 ::
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du644 v0
  = let v1 = coe du640 (coe v0) in coe du140 (coe du344 (coe v1))
name678 = "Algebra.Morphism.Structures.RingMorphisms._.Carrier"
d678 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> ()
d678 = erased
name702
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism"
d702 a0 a1 a2 a3 a4 a5 a6 = ()
name704
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism"
d704 a0 a1 a2 a3 a4 a5 a6 = ()
name706
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism"
d706 a0 a1 a2 a3 a4 a5 a6 = ()
name710
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.homo"
d710 :: T542 -> AgdaAny -> AgdaAny -> AgdaAny
d710 v0 = coe d82 (coe d266 (coe d550 (coe v0)))
name712
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMagmaHomomorphism"
d712 :: T542 -> T72
d712 v0 = coe d266 (coe d550 (coe v0))
name714
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isMonoidHomomorphism"
d714 :: T542 -> T258
d714 = coe d550
name716
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.isRelHomomorphism"
d716 ::
  T542 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d716 v0 = coe d80 (coe d266 (coe d550 (coe v0)))
name718
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.ε-homo"
d718 :: T542 -> AgdaAny
d718 v0 = coe d268 (coe d550 (coe v0))
name720
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.⁻¹-homo"
d720 :: T542 -> AgdaAny -> AgdaAny
d720 = coe d552
name722
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupHomomorphism.cong"
d722 :: T542 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d722 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe v0))))
name726
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.injective"
d726 :: T604 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d726 v0 = coe d578 (coe d612 (coe v0))
name728
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupHomomorphism"
d728 :: T604 -> T542
d728 v0 = coe d576 (coe d612 (coe v0))
name730
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isGroupMonomorphism"
d730 :: T604 -> T568
d730 = coe d612
name732
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMagmaHomomorphism"
d732 :: T604 -> T72
d732 v0 = coe d266 (coe d550 (coe d576 (coe d612 (coe v0))))
name734
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidHomomorphism"
d734 :: T604 -> T258
d734 v0 = coe d550 (coe d576 (coe d612 (coe v0)))
name736
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidIsomorphism"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T604 -> T312
d736 v0 v1 v2 v3 v4 v5 = du736
du736 :: (AgdaAny -> AgdaAny) -> T604 -> T312
du736 v0 v1 = coe du640 v1
name738
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isMonoidMonomorphism"
d738 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T604 -> T280
d738 v0 v1 v2 v3 v4 v5 v6 v7 = du738 v7
du738 :: T604 -> T280
du738 v0 = coe du596 (coe d612 (coe v0))
name740
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelHomomorphism"
d740 ::
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d740 v0
  = coe d80 (coe d266 (coe d550 (coe d576 (coe d612 (coe v0)))))
name742
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelIsomorphism"
d742 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d742 v0 v1 v2 v3 v4 v5 v6 v7 = du742 v7
du742 ::
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du742 v0
  = let v1 = coe du640 (coe v0) in coe du140 (coe du344 (coe v1))
name744
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.isRelMonomorphism"
d744 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d744 v0 v1 v2 v3 v4 v5 v6 v7 = du744 v7
du744 ::
  T604 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du744 v0
  = let v1 = d612 (coe v0) in
    let v2 = coe du596 (coe v1) in coe du110 (coe du304 (coe v2))
name746
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.surjective"
d746 :: T604 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d746 = coe d614
name748
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.ε-homo"
d748 :: T604 -> AgdaAny
d748 v0 = coe d268 (coe d550 (coe d576 (coe d612 (coe v0))))
name750
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.⁻¹-homo"
d750 :: T604 -> AgdaAny -> AgdaAny
d750 v0 = coe d552 (coe d576 (coe d612 (coe v0)))
name752
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.homo"
d752 :: T604 -> AgdaAny -> AgdaAny -> AgdaAny
d752 v0
  = coe d82 (coe d266 (coe d550 (coe d576 (coe d612 (coe v0)))))
name754
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupIsomorphism.cong"
d754 :: T604 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d754 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe d576 (coe d612 (coe v0))))))
name758
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.injective"
d758 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d758 = coe d578
name760
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isGroupHomomorphism"
d760 :: T568 -> T542
d760 = coe d576
name762
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMagmaHomomorphism"
d762 :: T568 -> T72
d762 v0 = coe d266 (coe d550 (coe d576 (coe v0)))
name764
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidHomomorphism"
d764 :: T568 -> T258
d764 v0 = coe d550 (coe d576 (coe v0))
name766
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isMonoidMonomorphism"
d766 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T568 -> T280
d766 v0 v1 v2 v3 v4 v5 = du766
du766 :: (AgdaAny -> AgdaAny) -> T568 -> T280
du766 v0 v1 = coe du596 v1
name768
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelHomomorphism"
d768 ::
  T568 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d768 v0 = coe d80 (coe d266 (coe d550 (coe d576 (coe v0))))
name770
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.isRelMonomorphism"
d770 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T568 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d770 v0 v1 v2 v3 v4 v5 v6 v7 = du770 v7
du770 ::
  T568 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du770 v0
  = let v1 = coe du596 (coe v0) in coe du110 (coe du304 (coe v1))
name772
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.ε-homo"
d772 :: T568 -> AgdaAny
d772 v0 = coe d268 (coe d550 (coe d576 (coe v0)))
name774
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.⁻¹-homo"
d774 :: T568 -> AgdaAny -> AgdaAny
d774 v0 = coe d552 (coe d576 (coe v0))
name776
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.homo"
d776 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny
d776 v0 = coe d82 (coe d266 (coe d550 (coe d576 (coe v0))))
name778
  = "Algebra.Morphism.Structures.RingMorphisms.+.IsGroupMonomorphism.cong"
d778 :: T568 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d778 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe d576 (coe v0)))))
name782
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism"
d782 a0 a1 a2 a3 a4 a5 a6 = ()
name784
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism"
d784 a0 a1 a2 a3 a4 a5 a6 = ()
name786
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism"
d786 a0 a1 a2 a3 a4 a5 a6 = ()
name790
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.homo"
d790 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny
d790 v0 = coe d82 (coe d266 (coe v0))
name792
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isMagmaHomomorphism"
d792 :: T258 -> T72
d792 = coe d266
name794
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.isRelHomomorphism"
d794 ::
  T258 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d794 v0 = coe d80 (coe d266 (coe v0))
name796
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.ε-homo"
d796 :: T258 -> AgdaAny
d796 = coe d268
name798
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidHomomorphism.cong"
d798 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d798 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe v0)))
name802
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.homo"
d802 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny
d802 v0 = coe d82 (coe d266 (coe d288 (coe d320 (coe v0))))
name804
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.injective"
d804 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d804 v0 = coe d290 (coe d320 (coe v0))
name806
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaHomomorphism"
d806 :: T312 -> T72
d806 v0 = coe d266 (coe d288 (coe d320 (coe v0)))
name808
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaIsomorphism"
d808 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T312 -> T114
d808 v0 v1 v2 v3 v4 v5 = du808
du808 :: (AgdaAny -> AgdaAny) -> T312 -> T114
du808 v0 v1 = coe du344 v1
name810
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMagmaMonomorphism"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T312 -> T90
d810 v0 v1 v2 v3 v4 v5 v6 v7 = du810 v7
du810 :: T312 -> T90
du810 v0 = coe du304 (coe d320 (coe v0))
name812
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidHomomorphism"
d812 :: T312 -> T258
d812 v0 = coe d288 (coe d320 (coe v0))
name814
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isMonoidMonomorphism"
d814 :: T312 -> T280
d814 = coe d320
name816
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelHomomorphism"
d816 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d816 v0 = coe d80 (coe d266 (coe d288 (coe d320 (coe v0))))
name818
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelIsomorphism"
d818 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d818 v0 v1 v2 v3 v4 v5 v6 v7 = du818 v7
du818 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du818 v0 = coe du140 (coe du344 (coe v0))
name820
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.isRelMonomorphism"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d820 v0 v1 v2 v3 v4 v5 v6 v7 = du820 v7
du820 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du820 v0 = let v1 = d320 (coe v0) in coe du110 (coe du304 (coe v1))
name822
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.surjective"
d822 :: T312 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d822 = coe d322
name824
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.ε-homo"
d824 :: T312 -> AgdaAny
d824 v0 = coe d268 (coe d288 (coe d320 (coe v0)))
name826
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidIsomorphism.cong"
d826 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d826 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d288 (coe d320 (coe v0)))))
name830
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.homo"
d830 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny
d830 v0 = coe d82 (coe d266 (coe d288 (coe v0)))
name832
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.injective"
d832 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d832 = coe d290
name834
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaHomomorphism"
d834 :: T280 -> T72
d834 v0 = coe d266 (coe d288 (coe v0))
name836
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMagmaMonomorphism"
d836 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T280 -> T90
d836 v0 v1 v2 v3 v4 v5 = du836
du836 :: (AgdaAny -> AgdaAny) -> T280 -> T90
du836 v0 v1 = coe du304 v1
name838
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isMonoidHomomorphism"
d838 :: T280 -> T258
d838 = coe d288
name840
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelHomomorphism"
d840 ::
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d840 v0 = coe d80 (coe d266 (coe d288 (coe v0)))
name842
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.isRelMonomorphism"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d842 v0 v1 v2 v3 v4 v5 v6 v7 = du842 v7
du842 ::
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du842 v0 = coe du110 (coe du304 (coe v0))
name844
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.ε-homo"
d844 :: T280 -> AgdaAny
d844 v0 = coe d268 (coe d288 (coe v0))
name846
  = "Algebra.Morphism.Structures.RingMorphisms.*.IsMonoidMonomorphism.cong"
d846 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d846 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d288 (coe v0))))
name864 = "Algebra.Morphism.Structures.RingMorphisms._.Injective"
d864 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 -> (AgdaAny -> AgdaAny) -> ()
d864 = erased
name872 = "Algebra.Morphism.Structures.RingMorphisms._.Surjective"
d872 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> (AgdaAny -> AgdaAny) -> ()
d872 = erased
name876
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism"
d876 a0 a1 a2 a3 a4 a5 a6 = ()
data T876 = C11147 T542 T258
name884
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.+-isGroupHomomorphism"
d884 :: T876 -> T542
d884 v0
  = case coe v0 of
      C11147 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name886
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism.*-isMonoidHomomorphism"
d886 :: T876 -> T258
d886 v0
  = case coe v0 of
      C11147 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name890
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.homo"
d890 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
d890 v0 = coe d82 (coe d266 (coe d550 (coe d884 (coe v0))))
name892
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.ε-homo"
d892 :: T876 -> AgdaAny
d892 v0 = coe d268 (coe d550 (coe d884 (coe v0)))
name894
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMagmaHomomorphism"
d894 :: T876 -> T72
d894 v0 = coe d266 (coe d550 (coe d884 (coe v0)))
name896
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMonoidHomomorphism"
d896 :: T876 -> T258
d896 v0 = coe d550 (coe d884 (coe v0))
name898
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isRelHomomorphism"
d898 ::
  T876 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d898 v0 = coe d80 (coe d266 (coe d550 (coe d884 (coe v0))))
name900
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.⁻¹-homo"
d900 :: T876 -> AgdaAny -> AgdaAny
d900 v0 = coe d552 (coe d884 (coe v0))
name902
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.cong"
d902 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d902 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe d884 (coe v0)))))
name906
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.homo"
d906 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny
d906 v0 = coe d82 (coe d266 (coe d886 (coe v0)))
name908
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.ε-homo"
d908 :: T876 -> AgdaAny
d908 v0 = coe d268 (coe d886 (coe v0))
name910
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isMagmaHomomorphism"
d910 :: T876 -> T72
d910 v0 = coe d266 (coe d886 (coe v0))
name912
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.isRelHomomorphism"
d912 ::
  T876 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d912 v0 = coe d80 (coe d266 (coe d886 (coe v0)))
name914
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingHomomorphism._.cong"
d914 :: T876 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d914 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d886 (coe v0))))
name918
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism"
d918 a0 a1 a2 a3 a4 a5 a6 = ()
data T918 = C11781 T876 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name926
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.isRingHomomorphism"
d926 :: T918 -> T876
d926 v0
  = case coe v0 of
      C11781 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name928
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.injective"
d928 :: T918 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d928 v0
  = case coe v0 of
      C11781 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name932
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.homo"
d932 :: T918 -> AgdaAny -> AgdaAny -> AgdaAny
d932 v0 = coe d82 (coe d266 (coe d886 (coe d926 (coe v0))))
name934
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.*-isMonoidHomomorphism"
d934 :: T918 -> T258
d934 v0 = coe d886 (coe d926 (coe v0))
name936
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.homo"
d936 :: T918 -> AgdaAny -> AgdaAny -> AgdaAny
d936 v0
  = coe d82 (coe d266 (coe d550 (coe d884 (coe d926 (coe v0)))))
name938
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.+-isGroupHomomorphism"
d938 :: T918 -> T542
d938 v0 = coe d884 (coe d926 (coe v0))
name940
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.ε-homo"
d940 :: T918 -> AgdaAny
d940 v0 = coe d268 (coe d550 (coe d884 (coe d926 (coe v0))))
name942
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.ε-homo"
d942 :: T918 -> AgdaAny
d942 v0 = coe d268 (coe d886 (coe d926 (coe v0)))
name944
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaHomomorphism"
d944 :: T918 -> T72
d944 v0 = coe d266 (coe d550 (coe d884 (coe d926 (coe v0))))
name946
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMagmaHomomorphism"
d946 :: T918 -> T72
d946 v0 = coe d266 (coe d886 (coe d926 (coe v0)))
name948
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isMonoidHomomorphism"
d948 :: T918 -> T258
d948 v0 = coe d550 (coe d884 (coe d926 (coe v0)))
name950
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelHomomorphism"
d950 ::
  T918 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d950 v0
  = coe d80 (coe d266 (coe d550 (coe d884 (coe d926 (coe v0)))))
name952
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelHomomorphism"
d952 ::
  T918 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d952 v0 = coe d80 (coe d266 (coe d886 (coe d926 (coe v0))))
name954
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.⁻¹-homo"
d954 :: T918 -> AgdaAny -> AgdaAny
d954 v0 = coe d552 (coe d884 (coe d926 (coe v0)))
name956
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.cong"
d956 :: T918 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d956 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d550 (coe d884 (coe d926 (coe v0))))))
name958
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.cong"
d958 :: T918 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d958 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d886 (coe d926 (coe v0)))))
name960
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.+-isGroupMonomorphism"
d960 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T918 -> T568
d960 v0 v1 v2 v3 v4 v5 v6 v7 = du960 v7
du960 :: T918 -> T568
du960 v0
  = coe C7819 (coe d884 (coe d926 (coe v0))) (coe d928 (coe v0))
name962
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism.*-isMonoidMonomorphism"
d962 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T918 -> T280
d962 v0 v1 v2 v3 v4 v5 v6 v7 = du962 v7
du962 :: T918 -> T280
du962 v0
  = coe C4275 (coe d886 (coe d926 (coe v0))) (coe d928 (coe v0))
name966
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingMonomorphism._.isRelMonomorphism"
d966 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T918 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d966 v0 v1 v2 v3 v4 v5 v6 v7 = du966 v7
du966 ::
  T918 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du966 v0
  = let v1 = coe du962 (coe v0) in coe du110 (coe du304 (coe v1))
name970
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism"
d970 a0 a1 a2 a3 a4 a5 a6 = ()
data T970
  = C13009 T918 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name978
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.isRingMonomorphism"
d978 :: T970 -> T918
d978 v0
  = case coe v0 of
      C13009 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name980
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.surjective"
d980 :: T970 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d980 v0
  = case coe v0 of
      C13009 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name984
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.homo"
d984 :: T970 -> AgdaAny -> AgdaAny -> AgdaAny
d984 v0
  = coe d82 (coe d266 (coe d886 (coe d926 (coe d978 (coe v0)))))
name986
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidHomomorphism"
d986 :: T970 -> T258
d986 v0 = coe d886 (coe d926 (coe d978 (coe v0)))
name988
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.*-isMonoidMonomorphism"
d988 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T970 -> T280
d988 v0 v1 v2 v3 v4 v5 v6 v7 = du988 v7
du988 :: T970 -> T280
du988 v0 = coe du962 (coe d978 (coe v0))
name990
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.homo"
d990 :: T970 -> AgdaAny -> AgdaAny -> AgdaAny
d990 v0
  = coe
      d82 (coe d266 (coe d550 (coe d884 (coe d926 (coe d978 (coe v0))))))
name992
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupHomomorphism"
d992 :: T970 -> T542
d992 v0 = coe d884 (coe d926 (coe d978 (coe v0)))
name994
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.+-isGroupMonomorphism"
d994 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T970 -> T568
d994 v0 v1 v2 v3 v4 v5 v6 v7 = du994 v7
du994 :: T970 -> T568
du994 v0 = coe du960 (coe d978 (coe v0))
name996
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.ε-homo"
d996 :: T970 -> AgdaAny
d996 v0
  = coe d268 (coe d550 (coe d884 (coe d926 (coe d978 (coe v0)))))
name998
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.ε-homo"
d998 :: T970 -> AgdaAny
d998 v0 = coe d268 (coe d886 (coe d926 (coe d978 (coe v0))))
name1000
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.injective"
d1000 :: T970 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1000 v0 = coe d928 (coe d978 (coe v0))
name1002
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaHomomorphism"
d1002 :: T970 -> T72
d1002 v0
  = coe d266 (coe d550 (coe d884 (coe d926 (coe d978 (coe v0)))))
name1004
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMagmaHomomorphism"
d1004 :: T970 -> T72
d1004 v0 = coe d266 (coe d886 (coe d926 (coe d978 (coe v0))))
name1006
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isMonoidHomomorphism"
d1006 :: T970 -> T258
d1006 v0 = coe d550 (coe d884 (coe d926 (coe d978 (coe v0))))
name1008
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelHomomorphism"
d1008 ::
  T970 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d1008 v0
  = coe
      d80 (coe d266 (coe d550 (coe d884 (coe d926 (coe d978 (coe v0))))))
name1010
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelHomomorphism"
d1010 ::
  T970 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T42
d1010 v0
  = coe d80 (coe d266 (coe d886 (coe d926 (coe d978 (coe v0)))))
name1012
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelMonomorphism"
d1012 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T970 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
d1012 v0 v1 v2 v3 v4 v5 v6 v7 = du1012 v7
du1012 ::
  T970 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T64
du1012 v0
  = let v1 = d978 (coe v0) in
    let v2 = coe du962 (coe v1) in coe du110 (coe du304 (coe v2))
name1014
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRingHomomorphism"
d1014 :: T970 -> T876
d1014 v0 = coe d926 (coe d978 (coe v0))
name1016
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.⁻¹-homo"
d1016 :: T970 -> AgdaAny -> AgdaAny
d1016 v0 = coe d552 (coe d884 (coe d926 (coe d978 (coe v0))))
name1018
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.cong"
d1018 :: T970 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1018 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe
         d80
         (coe d266 (coe d550 (coe d884 (coe d926 (coe d978 (coe v0)))))))
name1020
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.cong"
d1020 :: T970 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d1020 v0
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.d52
      (coe d80 (coe d266 (coe d886 (coe d926 (coe d978 (coe v0))))))
name1022
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.+-isGroupIsomorphism"
d1022 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T970 -> T604
d1022 v0 v1 v2 v3 v4 v5 v6 v7 = du1022 v7
du1022 :: T970 -> T604
du1022 v0
  = coe C8595 (coe du960 (coe d978 (coe v0))) (coe d980 (coe v0))
name1024
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism.*-isMonoidIsomorphism"
d1024 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) -> T970 -> T312
d1024 v0 v1 v2 v3 v4 v5 v6 v7 = du1024 v7
du1024 :: T970 -> T312
du1024 v0
  = coe C4987 (coe du962 (coe d978 (coe v0))) (coe d980 (coe v0))
name1028
  = "Algebra.Morphism.Structures.RingMorphisms.IsRingIsomorphism._.isRelIsomorphism"
d1028 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  MAlonzo.Code.Algebra.Bundles.T1998 ->
  (AgdaAny -> AgdaAny) ->
  T970 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
d1028 v0 v1 v2 v3 v4 v5 v6 v7 = du1028 v7
du1028 ::
  T970 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T94
du1028 v0
  = let v1 = coe du1024 (coe v0) in coe du140 (coe du344 (coe v1))
