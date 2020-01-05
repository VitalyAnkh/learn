{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
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
du30 v0 = coe (MAlonzo.Code.Algebra.Bundles.d24 (coe v0))
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
  = C225 MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
         (AgdaAny -> AgdaAny -> AgdaAny)
name80
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.isRelHomomorphism"
d80 :: T72 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
d80 v0
  = case coe v0 of
      C225 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name82
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism.homo"
d82 :: T72 -> AgdaAny -> AgdaAny -> AgdaAny
d82 v0
  = case coe v0 of
      C225 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name86
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaHomomorphism._.cong"
d86 :: T72 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d86 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.d50
         (coe (d80 (coe v0))))
name90
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism"
d90 a0 a1 a2 a3 a4 a5 a6 = ()
data T90 = C363 T72 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name98
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.isMagmaHomomorphism"
d98 :: T90 -> T72
d98 v0
  = case coe v0 of
      C363 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name100
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism.injective"
d100 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d100 v0
  = case coe v0 of
      C363 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name104
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.homo"
d104 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny
d104 v0 = coe (d82 (coe (d98 (coe v0))))
name106
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.isRelHomomorphism"
d106 :: T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
d106 v0 = coe (d80 (coe (d98 (coe v0))))
name108
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaMonomorphism._.cong"
d108 :: T90 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d108 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.d50
         (coe (d80 (coe (d98 (coe v0))))))
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
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
d110 v0 v1 v2 v3 v4 v5 v6 v7 = du110 v7
du110 ::
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
du110 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.C209
         (coe (d80 (coe (d98 (coe v0))))) (coe (d100 (coe v0))))
name114
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism"
d114 a0 a1 a2 a3 a4 a5 a6 = ()
data T114
  = C689 T90 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name122
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.isMagmaMonomorphism"
d122 :: T114 -> T90
d122 v0
  = case coe v0 of
      C689 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name124
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism.surjective"
d124 :: T114 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d124 v0
  = case coe v0 of
      C689 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name128
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.homo"
d128 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny
d128 v0 = coe (d82 (coe (d98 (coe (d122 (coe v0))))))
name130
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.injective"
d130 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d130 v0 = coe (d100 (coe (d122 (coe v0))))
name132
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isMagmaHomomorphism"
d132 :: T114 -> T72
d132 v0 = coe (d98 (coe (d122 (coe v0))))
name134
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.isRelHomomorphism"
d134 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
d134 v0 = coe (d80 (coe (d98 (coe (d122 (coe v0))))))
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
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
d136 v0 v1 v2 v3 v4 v5 v6 v7 = du136 v7
du136 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
du136 v0 = coe (du110 (coe (d122 (coe v0))))
name138
  = "Algebra.Morphism.Structures.MagmaMorphisms.IsMagmaIsomorphism._.cong"
d138 :: T114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d138 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.d50
         (coe (d80 (coe (d98 (coe (d122 (coe v0))))))))
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
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T92
d140 v0 v1 v2 v3 v4 v5 v6 v7 = du140 v7
du140 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T92
du140 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.C441
         (coe (du110 (coe (d122 (coe v0))))) (coe (d124 (coe v0))))
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
du166 v0 = coe (MAlonzo.Code.Algebra.Bundles.d414 (coe v0))
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
d218 :: T72 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
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
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T92
d234 v0 v1 v2 v3 v4 v5 = du234
du234 ::
  (AgdaAny -> AgdaAny) ->
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T92
du234 = coe (\ v0 v1 -> du140 v1)
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
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
d236 v0 v1 v2 v3 v4 v5 v6 v7 = du236 v7
du236 ::
  T114 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
du236 v0 = coe (du110 (coe (d122 (coe v0))))
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
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
d252 v0 v1 v2 v3 v4 v5 = du252
du252 ::
  (AgdaAny -> AgdaAny) ->
  T90 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
du252 = coe (\ v0 v1 -> du110 v1)
name258
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism"
d258 a0 a1 a2 a3 a4 a5 a6 = ()
data T258 = C1647 T72 AgdaAny
name266
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.isMagmaHomomorphism"
d266 :: T258 -> T72
d266 v0
  = case coe v0 of
      C1647 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name268
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism.ε-homo"
d268 :: T258 -> AgdaAny
d268 v0
  = case coe v0 of
      C1647 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name272
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.homo"
d272 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny
d272 v0 = coe (d82 (coe (d266 (coe v0))))
name274
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.isRelHomomorphism"
d274 ::
  T258 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
d274 v0 = coe (d80 (coe (d266 (coe v0))))
name276
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidHomomorphism._.cong"
d276 :: T258 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d276 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.d50
         (coe (d80 (coe (d266 (coe v0))))))
name280
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism"
d280 a0 a1 a2 a3 a4 a5 a6 = ()
data T280 = C1845 T258 (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
name288
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.isMonoidHomomorphism"
d288 :: T280 -> T258
d288 v0
  = case coe v0 of
      C1845 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name290
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism.injective"
d290 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d290 v0
  = case coe v0 of
      C1845 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name294
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.homo"
d294 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny
d294 v0 = coe (d82 (coe (d266 (coe (d288 (coe v0))))))
name296
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isMagmaHomomorphism"
d296 :: T280 -> T72
d296 v0 = coe (d266 (coe (d288 (coe v0))))
name298
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.isRelHomomorphism"
d298 ::
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
d298 v0 = coe (d80 (coe (d266 (coe (d288 (coe v0))))))
name300
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.ε-homo"
d300 :: T280 -> AgdaAny
d300 v0 = coe (d268 (coe (d288 (coe v0))))
name302
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidMonomorphism._.cong"
d302 :: T280 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d302 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.d50
         (coe (d80 (coe (d266 (coe (d288 (coe v0))))))))
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
  = coe
      (C363 (coe (d266 (coe (d288 (coe v0))))) (coe (d290 (coe v0))))
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
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
d308 v0 v1 v2 v3 v4 v5 v6 v7 = du308 v7
du308 ::
  T280 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
du308 v0 = coe (du110 (coe (du304 (coe v0))))
name312
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism"
d312 a0 a1 a2 a3 a4 a5 a6 = ()
data T312
  = C2239 T280 (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14)
name320
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.isMonoidMonomorphism"
d320 :: T312 -> T280
d320 v0
  = case coe v0 of
      C2239 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name322
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism.surjective"
d322 :: T312 -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d322 v0
  = case coe v0 of
      C2239 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
name326
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.homo"
d326 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny
d326 v0 = coe (d82 (coe (d266 (coe (d288 (coe (d320 (coe v0))))))))
name328
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.injective"
d328 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d328 v0 = coe (d290 (coe (d320 (coe v0))))
name330
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMagmaHomomorphism"
d330 :: T312 -> T72
d330 v0 = coe (d266 (coe (d288 (coe (d320 (coe v0))))))
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
du332 v0 = coe (du304 (coe (d320 (coe v0))))
name334
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isMonoidHomomorphism"
d334 :: T312 -> T258
d334 v0 = coe (d288 (coe (d320 (coe v0))))
name336
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.isRelHomomorphism"
d336 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T40
d336 v0 = coe (d80 (coe (d266 (coe (d288 (coe (d320 (coe v0))))))))
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
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
d338 v0 v1 v2 v3 v4 v5 v6 v7 = du338 v7
du338 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T62
du338 v0
  = let v1 = d320 (coe v0) in coe (du110 (coe (du304 (coe v1))))
name340
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.ε-homo"
d340 :: T312 -> AgdaAny
d340 v0 = coe (d268 (coe (d288 (coe (d320 (coe v0))))))
name342
  = "Algebra.Morphism.Structures.MonoidMorphisms.IsMonoidIsomorphism._.cong"
d342 :: T312 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d342 v0
  = coe
      (MAlonzo.Code.Relation.Binary.Morphism.Structures.d50
         (coe (d80 (coe (d266 (coe (d288 (coe (d320 (coe v0))))))))))
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
  = coe
      (C689 (coe (du304 (coe (d320 (coe v0))))) (coe (d322 (coe v0))))
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
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T92
d348 v0 v1 v2 v3 v4 v5 v6 v7 = du348 v7
du348 ::
  T312 -> MAlonzo.Code.Relation.Binary.Morphism.Structures.T92
du348 v0 = coe (du140 (coe (du344 (coe v0))))
