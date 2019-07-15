{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, Rank2Types,
             PatternSynonyms #-}
module MAlonzo.Code.Algebra.Solver.Ring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra
import qualified MAlonzo.Code.Algebra.Operations.Semiring
import qualified MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing
import qualified MAlonzo.Code.Algebra.Solver.Ring.Lemmas
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Binary
import qualified MAlonzo.Code.Relation.Binary.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reflection

name50 = "Algebra.Solver.Ring.C.Carrier"
d50 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> ()
d50 = erased
name54 = "Algebra.Solver.Ring._._*_"
d54 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  AgdaAny -> AgdaAny -> AgdaAny
d54 v0 v1 v2 v3 v4 v5 v6 = du54 v4
du54 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  AgdaAny -> AgdaAny -> AgdaAny
du54 v0
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
         (coe v0))
name56 = "Algebra.Solver.Ring._._+_"
d56 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  AgdaAny -> AgdaAny -> AgdaAny
d56 v0 v1 v2 v3 v4 v5 v6 = du56 v4
du56 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  AgdaAny -> AgdaAny -> AgdaAny
du56 v0
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
         (coe v0))
name58 = "Algebra.Solver.Ring._._≈_"
d58 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  AgdaAny -> AgdaAny -> ()
d58 = erased
name126 = "Algebra.Solver.Ring._.-_"
d126 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  AgdaAny -> AgdaAny
d126 v0 v1 v2 v3 v4 v5 v6 = du126 v4
du126 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  AgdaAny -> AgdaAny
du126 v0
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196
         (coe v0))
name134 = "Algebra.Solver.Ring._.0#"
d134 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> AgdaAny
d134 v0 v1 v2 v3 v4 v5 v6 = du134 v4
du134 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  AgdaAny
du134 v0
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
         (coe v0))
name136 = "Algebra.Solver.Ring._.1#"
d136 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> AgdaAny
d136 v0 v1 v2 v3 v4 v5 v6 = du136 v4
du136 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  AgdaAny
du136 v0
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
         (coe v0))
name138 = "Algebra.Solver.Ring._.Carrier"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) -> ()
d138 = erased
name246 = "Algebra.Solver.Ring._.Core.Op₂"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> ()
d246 = erased
name260 = "Algebra.Solver.Ring._.⟦_⟧"
d260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  AgdaAny -> AgdaAny
d260 v0 v1 v2 v3 v4 v5 v6 = du260 v5
du260 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  AgdaAny -> AgdaAny
du260 v0
  = coe
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d650
         (coe v0))
name264 = "Algebra.Solver.Ring._._^_"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  AgdaAny -> Integer -> AgdaAny
d264 v0 v1 v2 v3 v4 v5 v6 = du264 v4
du264 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  AgdaAny -> Integer -> AgdaAny
du264 v0
  = coe
      (MAlonzo.Code.Algebra.Operations.Semiring.du182
         (coe
            (MAlonzo.Code.Algebra.du1816
               (coe
                  (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                     (coe v0))))))
name322 = "Algebra.Solver.Ring.Op"
d322 a0 a1 a2 a3 a4 a5 a6 = ()
data T322 = C324 | C326
name330 = "Algebra.Solver.Ring.Polynomial"
d330 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T330
  = C340 T322 T330 T330 | C344 AgdaAny |
    C348 MAlonzo.Code.Data.Fin.Base.T6 | C354 T330 Integer | C358 T330
name362 = "Algebra.Solver.Ring._:+_"
d362 :: T330 -> T330 -> T330
d362 = coe (C340 (coe C324))
name366 = "Algebra.Solver.Ring._:*_"
d366 :: T330 -> T330 -> T330
d366 = coe (C340 (coe C326))
name370 = "Algebra.Solver.Ring._:-_"
d370 :: T330 -> T330 -> T330
d370 v0 v1 = coe (C340 (coe C324) (coe v0) (coe (C358 (coe v1))))
name378 = "Algebra.Solver.Ring._:×_"
d378 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> Integer -> T330 -> T330
d378 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du378 v3 v8 v9
du378 :: MAlonzo.Code.Algebra.T1856 -> Integer -> T330 -> T330
du378 v0 v1 v2
  = case coe v1 of
      0 -> coe (C344 (coe (MAlonzo.Code.Algebra.d1880 (coe v0))))
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (C340 (coe C324) (coe v2) (coe (du378 (coe v0) (coe v3) (coe v2))))
name386 = "Algebra.Solver.Ring.sem"
d386 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  T322 -> AgdaAny -> AgdaAny -> AgdaAny
d386 v0 v1 v2 v3 v4 v5 v6 v7 = du386 v4 v7
du386 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  T322 -> AgdaAny -> AgdaAny -> AgdaAny
du386 v0 v1
  = case coe v1 of
      C324
        -> coe
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                (coe v0))
      C326
        -> coe
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                (coe v0))
      _ -> MAlonzo.RTE.mazUnreachableError
name390 = "Algebra.Solver.Ring.⟦_⟧"
d390 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T330 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d390 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du390 v4 v5 v8 v9
du390 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  T330 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
du390 v0 v1 v2 v3
  = case coe v2 of
      C340 v4 v5 v6
        -> coe
             du386 v0 v4 (du390 (coe v0) (coe v1) (coe v5) (coe v3))
             (du390 (coe v0) (coe v1) (coe v6) (coe v3))
      C344 v4
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d650 v1 v4
      C348 v4 -> coe (MAlonzo.Code.Data.Vec.Base.du88 (coe v3) (coe v4))
      C354 v4 v5
        -> coe
             (MAlonzo.Code.Algebra.Operations.Semiring.du182
                (coe
                   (MAlonzo.Code.Algebra.du1816
                      (coe
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                            (coe v0)))))
                (coe (du390 (coe v0) (coe v1) (coe v4) (coe v3))) (coe v5))
      C358 v4
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v0
             (du390 (coe v0) (coe v1) (coe v4) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name418 = "Algebra.Solver.Ring.HNF"
d418 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T418 = C424 | C428 T418 T420
name420 = "Algebra.Solver.Ring.Normal"
d420 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T420 = C430 AgdaAny | C434 T418
name438 = "Algebra.Solver.Ring.⟦_⟧H"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d438 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C424
        -> coe
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                (coe v4))
      C428 v11 v12
        -> case coe v9 of
             MAlonzo.Code.Data.Vec.Base.C36 v14 v15
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                       (d438
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe v11)
                          (coe
                             (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18) erased
                             v14 v15))
                       v14)
                    (d442
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v12) (coe v15))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name442 = "Algebra.Solver.Ring.⟦_⟧N"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d442 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C430 v10
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d650 v5 v10
      C434 v11
        -> let v12 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (d438
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v12) (coe v11) (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
name460 = "Algebra.Solver.Ring._≈H_"
d460 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T460 = C468 | C480 T460 T464
name464 = "Algebra.Solver.Ring._≈N_"
d464 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T464 = C486 AgdaAny | C494 T460
name498 = "Algebra.Solver.Ring._≟H_"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> T418 -> MAlonzo.Code.Data.Maybe.Base.T22
d498 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C424
        -> case coe v9 of
             C424
               -> coe
                    (MAlonzo.Code.Data.Maybe.Base.C28 (coe (\ v12 -> C468) erased))
             C428 v12 v13 -> coe MAlonzo.Code.Data.Maybe.Base.C30
             _ -> MAlonzo.RTE.mazUnreachableError
      C428 v11 v12
        -> case coe v9 of
             C424 -> coe MAlonzo.Code.Data.Maybe.Base.C30
             C428 v14 v15
               -> let v16 = subInt (coe v7) (coe (1 :: Integer)) in
                  let v17
                        = d498
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v11) (coe v14) in
                  let v18
                        = d502
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v16) (coe v12) (coe v15) in
                  case coe v17 of
                    MAlonzo.Code.Data.Maybe.Base.C28 v19
                      -> case coe v18 of
                           MAlonzo.Code.Data.Maybe.Base.C28 v20
                             -> coe
                                  (MAlonzo.Code.Data.Maybe.Base.C28
                                     (coe
                                        (\ v21 v22 v23 v24 v25 v26 v27 -> C480 v26 v27) erased
                                        erased erased erased erased v19 v20))
                           MAlonzo.Code.Data.Maybe.Base.C30 -> coe v18
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.Maybe.Base.C30
                      -> case coe v18 of
                           MAlonzo.Code.Data.Maybe.Base.C30 -> coe v18
                           _ -> coe v17
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name502 = "Algebra.Solver.Ring._≟N_"
d502 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> T420 -> MAlonzo.Code.Data.Maybe.Base.T22
d502 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C430 v10
        -> case coe v9 of
             C430 v11
               -> let v12 = coe v6 v10 v11 in
                  case coe v12 of
                    MAlonzo.Code.Data.Maybe.Base.C28 v13
                      -> coe
                           (MAlonzo.Code.Data.Maybe.Base.C28
                              (coe (\ v14 v15 v16 -> C486 v16) erased erased v13))
                    MAlonzo.Code.Data.Maybe.Base.C30 -> coe v12
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C434 v11
        -> case coe v9 of
             C434 v13
               -> let v14
                        = d498
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v11) (coe v13) in
                  case coe v14 of
                    MAlonzo.Code.Data.Maybe.Base.C28 v15
                      -> coe
                           (MAlonzo.Code.Data.Maybe.Base.C28
                              (coe (\ v16 v17 v18 v19 -> C494 v19) erased erased erased v15))
                    MAlonzo.Code.Data.Maybe.Base.C30 -> coe v14
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name588 = "Algebra.Solver.Ring.⟦_⟧H-cong"
d588 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T418 -> T418 -> T460 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d588 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v10 of
      C468
        -> let v13
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                     (coe v4) in
           let v14
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe v13) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d414
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v14))))))))
             (d438
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe (\ v15 -> C424) erased) (coe v11))
      C480 v17 v18
        -> case coe v11 of
             MAlonzo.Code.Data.Vec.Base.C36 v20 v21
               -> case coe v8 of
                    C428 v23 v24
                      -> case coe v9 of
                           C428 v26 v27
                             -> let v28
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                          (coe
                                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                (coe v4))) in
                                coe
                                  MAlonzo.Code.Algebra.Structures.d94
                                  (MAlonzo.Code.Algebra.Structures.d126
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d326
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d1210 (coe v28))))))
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                     (d438
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v23)
                                        (coe
                                           (\ v29 v30 v31 -> MAlonzo.Code.Data.Vec.Base.C36 v30 v31)
                                           erased v20 v21))
                                     v20)
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                     (d438
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v26)
                                        (coe
                                           (\ v29 v30 v31 -> MAlonzo.Code.Data.Vec.Base.C36 v30 v31)
                                           erased v20 v21))
                                     v20)
                                  (d442
                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                     (coe v7) (coe v24) (coe v21))
                                  (d442
                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                     (coe v7) (coe v27) (coe v21))
                                  (let v29
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                             (coe
                                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                   (coe v4))) in
                                   coe
                                     MAlonzo.Code.Algebra.Structures.d94
                                     (MAlonzo.Code.Algebra.Structures.d126
                                        (coe
                                           (MAlonzo.Code.Algebra.Structures.d326
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d1212
                                                    (coe v29))))))
                                     (d438
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v23)
                                        (coe
                                           (\ v30 v31 v32 -> MAlonzo.Code.Data.Vec.Base.C36 v31 v32)
                                           erased v20 v21))
                                     (d438
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v26)
                                        (coe
                                           (\ v30 v31 v32 -> MAlonzo.Code.Data.Vec.Base.C36 v31 v32)
                                           erased v20 v21))
                                     v20 v20
                                     (d588
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v23) (coe v26) (coe v17)
                                        (coe
                                           (\ v30 v31 v32 -> MAlonzo.Code.Data.Vec.Base.C36 v31 v32)
                                           erased v20 v21))
                                     (let v30
                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                (coe v4) in
                                      let v31
                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                (coe v30) in
                                      coe
                                        MAlonzo.Code.Relation.Binary.Core.d414
                                        (MAlonzo.Code.Algebra.Structures.d92
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d126
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Structures.d326
                                                       (coe
                                                          (MAlonzo.Code.Algebra.Structures.d1210
                                                             (coe v31))))))))
                                        v20))
                                  (d598
                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                     (coe v7) (coe v24) (coe v27) (coe v18) (coe v21))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name598 = "Algebra.Solver.Ring.⟦_⟧N-cong"
d598 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T420 -> T420 -> T464 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d598 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v10 of
      C486 v14 -> coe v14
      C494 v15
        -> let v16 = subInt (coe v7) (coe (1 :: Integer)) in
           case coe v8 of
             C434 v18
               -> case coe v9 of
                    C434 v20
                      -> coe
                           (d588
                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                              (coe v16) (coe v18) (coe v20) (coe v15) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name616 = "Algebra.Solver.Ring.0H"
d616 ::
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418
d616 v0 v1 v2 = du616
du616 :: T418
du616 = coe (\ v0 -> C424) erased
name620 = "Algebra.Solver.Ring.0N"
d620 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420
d620 v0 v1 v2 v3 v4 v5 v6 v7 = du620 v3 v7
du620 :: MAlonzo.Code.Algebra.T1856 -> Integer -> T420
du620 v0 v1
  = case coe v1 of
      0 -> coe (C430 (coe (MAlonzo.Code.Algebra.d1880 (coe v0))))
      _ -> coe (\ v2 v3 -> C434 v3) erased (coe (\ v2 -> C424) erased)
name626 = "Algebra.Solver.Ring.1H"
d626 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418
d626 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      (\ v8 v9 v10 -> C428 v9 v10) erased (coe (\ v8 -> C424) erased)
      (d630
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7))
name630 = "Algebra.Solver.Ring.1N"
d630 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420
d630 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      0 -> coe (C430 (coe (MAlonzo.Code.Algebra.d1882 (coe v3))))
      _ -> let v8 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (\ v9 v10 -> C434 v10) erased
             (d626
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v8))
name638 = "Algebra.Solver.Ring._*x+HN_"
d638 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> T420 -> T418
d638 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C424
        -> let v11
                 = d502
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v9) (coe (du620 (coe v3) (coe v7))) in
           case coe v11 of
             MAlonzo.Code.Data.Maybe.Base.C28 v12 -> coe (\ v13 -> C424) erased
             MAlonzo.Code.Data.Maybe.Base.C30
               -> coe
                    (\ v12 v13 v14 -> C428 v13 v14) erased (coe (\ v12 -> C424) erased)
                    v9
             _ -> MAlonzo.RTE.mazUnreachableError
      C428 v11 v12
        -> coe
             (\ v13 v14 v15 -> C428 v14 v15) erased
             (coe (\ v13 v14 v15 -> C428 v14 v15) erased v11 v12) v9
      _ -> MAlonzo.RTE.mazUnreachableError
name660 = "Algebra.Solver.Ring._+H_"
d660 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> T418 -> T418
d660 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C424 -> coe v9
      C428 v11 v12
        -> case coe v9 of
             C424 -> coe (\ v14 v15 v16 -> C428 v15 v16) erased v11 v12
             C428 v14 v15
               -> coe
                    (d638
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7)
                       (coe
                          (d660
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v11) (coe v14)))
                       (coe
                          (d664
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v12) (coe v15))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name664 = "Algebra.Solver.Ring._+N_"
d664 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> T420 -> T420
d664 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C430 v10
        -> case coe v9 of
             C430 v11 -> coe (C430 (coe MAlonzo.Code.Algebra.d1874 v3 v10 v11))
             _ -> MAlonzo.RTE.mazUnreachableError
      C434 v11
        -> case coe v9 of
             C434 v13
               -> let v14 = subInt (coe v7) (coe (1 :: Integer)) in
                  coe
                    (\ v15 v16 -> C434 v16) erased
                    (d660
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v14) (coe v11) (coe v13))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name688 = "Algebra.Solver.Ring._*x+H_"
d688 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> T418 -> T418
d688 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C424
        -> case coe v8 of
             C424 -> coe (\ v12 -> C424) erased
             C428 v12 v13
               -> coe
                    (\ v14 v15 v16 -> C428 v15 v16) erased
                    (coe (\ v14 v15 v16 -> C428 v15 v16) erased v12 v13)
                    (du620 (coe v3) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      C428 v11 v12
        -> coe
             (d638
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7)
                (coe
                   (d660
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v11)))
                (coe v12))
      _ -> MAlonzo.RTE.mazUnreachableError
name702 = "Algebra.Solver.Ring._*NH_"
d702 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> T418 -> T418
d702 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      C424 -> coe (\ v11 -> C424) erased
      C428 v11 v12
        -> let v13
                 = d502
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe (du620 (coe v3) (coe v7))) in
           case coe v13 of
             MAlonzo.Code.Data.Maybe.Base.C28 v14 -> coe (\ v15 -> C424) erased
             MAlonzo.Code.Data.Maybe.Base.C30
               -> coe
                    (\ v14 v15 v16 -> C428 v15 v16) erased
                    (d702
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v11))
                    (d714
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v8) (coe v12))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name706 = "Algebra.Solver.Ring._*HN_"
d706 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> T420 -> T418
d706 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C424 -> coe (\ v11 -> C424) erased
      C428 v11 v12
        -> let v13
                 = d502
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v9) (coe (du620 (coe v3) (coe v7))) in
           case coe v13 of
             MAlonzo.Code.Data.Maybe.Base.C28 v14 -> coe (\ v15 -> C424) erased
             MAlonzo.Code.Data.Maybe.Base.C30
               -> coe
                    (\ v14 v15 v16 -> C428 v15 v16) erased
                    (d706
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v11) (coe v9))
                    (d714
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7) (coe v12) (coe v9))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name710 = "Algebra.Solver.Ring._*H_"
d710 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> T418 -> T418
d710 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C424 -> coe (\ v11 -> C424) erased
      C428 v11 v12
        -> case coe v9 of
             C424 -> coe (\ v14 -> C424) erased
             C428 v14 v15
               -> coe
                    (d638
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7)
                       (coe
                          (d688
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7)
                             (coe
                                (d710
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v11) (coe v14)))
                             (coe
                                (d660
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d706
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11) (coe v15)))
                                   (coe
                                      (d702
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12) (coe v14)))))))
                       (coe
                          (d714
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v12) (coe v15))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name714 = "Algebra.Solver.Ring._*N_"
d714 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> T420 -> T420
d714 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C430 v10
        -> case coe v9 of
             C430 v11 -> coe (C430 (coe MAlonzo.Code.Algebra.d1876 v3 v10 v11))
             _ -> MAlonzo.RTE.mazUnreachableError
      C434 v11
        -> case coe v9 of
             C434 v13
               -> let v14 = subInt (coe v7) (coe (1 :: Integer)) in
                  coe
                    (\ v15 v16 -> C434 v16) erased
                    (d710
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v14) (coe v11) (coe v13))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name786 = "Algebra.Solver.Ring._^N_"
d786 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> Integer -> T420
d786 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      0 -> coe
             (d630
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7))
      _ -> let v10 = subInt (coe v9) (coe (1 :: Integer)) in
           coe
             (d714
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8)
                (coe
                   (d786
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v10))))
name796 = "Algebra.Solver.Ring.-H_"
d796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> T418
d796 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      (d702
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7)
         (coe
            (d800
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7)
               (coe
                  (d630
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7)))))
         (coe v8))
name800 = "Algebra.Solver.Ring.-N_"
d800 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> T420
d800 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      C430 v9 -> coe (C430 (coe MAlonzo.Code.Algebra.d1878 v3 v9))
      C434 v10
        -> let v11 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (\ v12 v13 -> C434 v13) erased
             (d796
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v11) (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
name810 = "Algebra.Solver.Ring.normalise-con"
d810 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> T420
d810 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v7 of
      0 -> coe (C430 (coe v8))
      _ -> let v9 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (\ v10 v11 -> C434 v11) erased
             (d638
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v9) (coe (\ v10 -> C424) erased)
                (coe
                   (d810
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v9) (coe v8))))
name820 = "Algebra.Solver.Ring.normalise-var"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> MAlonzo.Code.Data.Fin.Base.T6 -> T420
d820 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.Data.Fin.Base.C10
        -> let v10 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (\ v11 v12 -> C434 v12) erased
             (coe
                (\ v11 v12 v13 -> C428 v12 v13) erased
                (coe
                   (\ v11 v12 v13 -> C428 v12 v13) erased (coe (\ v11 -> C424) erased)
                   (d630
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v10)))
                (du620 (coe v3) (coe v10)))
      MAlonzo.Code.Data.Fin.Base.C16 v10
        -> let v11 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (\ v12 v13 -> C434 v13) erased
             (d638
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v11) (coe (\ v12 -> C424) erased)
                (coe
                   (d820
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v11) (coe v10))))
      _ -> MAlonzo.RTE.mazUnreachableError
name826 = "Algebra.Solver.Ring.normalise"
d826 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T330 -> T420
d826 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      C340 v9 v10 v11
        -> case coe v9 of
             C324
               -> coe
                    (d664
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7)
                       (coe
                          (d826
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v10)))
                       (coe
                          (d826
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v11))))
             C326
               -> coe
                    (d714
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7)
                       (coe
                          (d826
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v10)))
                       (coe
                          (d826
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe v11))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C344 v9
        -> coe
             (d810
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v9))
      C348 v9
        -> coe
             (d820
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v9))
      C354 v9 v10
        -> coe
             (d786
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7)
                (coe
                   (d826
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v9)))
                (coe v10))
      C358 v9
        -> coe
             (d800
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7)
                (coe
                   (d826
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
name848 = "Algebra.Solver.Ring.⟦_⟧↓"
d848 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T330 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d848 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      (d442
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7)
         (coe
            (d826
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
               (coe v7) (coe v8)))
         (coe v9))
name858 = "Algebra.Solver.Ring.0N-homo"
d858 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d858 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d658
                (coe v5))
      MAlonzo.Code.Data.Vec.Base.C36 v10 v11
        -> let v12
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                     (coe v4) in
           let v13
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe v12) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d414
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v13))))))))
             (d442
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe (du620 (coe v3) (coe v7)))
                (coe
                   (\ v14 v15 v16 -> MAlonzo.Code.Data.Vec.Base.C36 v15 v16) erased
                   v10 v11))
      _ -> MAlonzo.RTE.mazUnreachableError
name870 = "Algebra.Solver.Ring.0≈⟦0⟧"
d870 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T420 -> T464 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d870 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = let v11
          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
              (coe v4) in
    let v12
          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
              (coe v11) in
    coe
      MAlonzo.Code.Relation.Binary.Core.d416
      (MAlonzo.Code.Algebra.Structures.d92
         (coe
            (MAlonzo.Code.Algebra.Structures.d126
               (coe
                  (MAlonzo.Code.Algebra.Structures.d326
                     (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v12))))))))
      (d442
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
         (coe v7) (coe v8) (coe v10))
      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
         (coe v4))
      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
         (coe
            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
               (coe
                  (MAlonzo.Code.Relation.Binary.Core.d418
                     (coe
                        (MAlonzo.Code.Relation.Binary.d144
                           (let v13
                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                      (coe v4) in
                            let v14
                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                      (coe v4) in
                            let v15
                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                      (coe v4) in
                            let v16
                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                      (coe v4) in
                            let v17
                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                      (coe v4) in
                            let v18
                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                      (coe v17) in
                            let v19
                                  = MAlonzo.Code.Algebra.Structures.du1298
                                      (coe v13) (coe v14) (coe v15) (coe v16) (coe v18) in
                            let v20 = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                            let v21 = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                            let v22 = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                            coe
                              (MAlonzo.Code.Algebra.Structures.du106
                                 (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v22)))))))))
               (coe
                  (d442
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe v10)))
               (coe
                  (d442
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe (du620 (coe v3) (coe v7))) (coe v10)))
               (coe
                  (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                     (coe v4)))
               (coe
                  (d598
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe (du620 (coe v3) (coe v7))) (coe v9)
                     (coe v10)))
               (coe
                  (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                     (coe
                        (MAlonzo.Code.Relation.Binary.Core.d418
                           (coe
                              (MAlonzo.Code.Relation.Binary.d144
                                 (let v13
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            (coe v4) in
                                  let v14
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            (coe v4) in
                                  let v15
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4) in
                                  let v16
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                            (coe v4) in
                                  let v17
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                            (coe v4) in
                                  let v18
                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                            (coe v17) in
                                  let v19
                                        = MAlonzo.Code.Algebra.Structures.du1298
                                            (coe v13) (coe v14) (coe v15) (coe v16) (coe v18) in
                                  let v20 = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                  let v21 = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                  let v22 = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                  coe
                                    (MAlonzo.Code.Algebra.Structures.du106
                                       (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v22)))))))))
                     (coe
                        (d442
                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                           (coe v7) (coe (du620 (coe v3) (coe v7))) (coe v10)))
                     (coe
                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                           (coe v4)))
                     (coe
                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                           (coe v4)))
                     (coe
                        (d858
                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                           (coe v7) (coe v10)))
                     (let v13
                            = MAlonzo.Code.Relation.Binary.Core.d414
                                (coe
                                   (MAlonzo.Code.Relation.Binary.d144
                                      (let v13
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                 (coe v4) in
                                       let v14
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                 (coe v4) in
                                       let v15
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                 (coe v4) in
                                       let v16
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                 (coe v4) in
                                       let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4) in
                                       let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe v17) in
                                       let v19
                                             = MAlonzo.Code.Algebra.Structures.du1298
                                                 (coe v13) (coe v14) (coe v15) (coe v16)
                                                 (coe v18) in
                                       let v20 = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                       let v21 = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                       let v22 = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                       coe
                                         (MAlonzo.Code.Algebra.Structures.du106
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d126
                                                  (coe v22))))))) in
                      let v14
                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                (coe v4) in
                      coe
                        (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                           (coe v13 v14))))))))
name882 = "Algebra.Solver.Ring.1N-homo"
d882 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d882 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = case coe v8 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> coe
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d660
                (coe v5))
      MAlonzo.Code.Data.Vec.Base.C36 v10 v11
        -> let v12 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v13
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             (coe v4) in
                                   let v14
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             (coe v4) in
                                   let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                             (coe v4) in
                                   let v16
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                             (coe v4) in
                                   let v17
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4) in
                                   let v18
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                             (coe v17) in
                                   let v19
                                         = MAlonzo.Code.Algebra.Structures.du1298
                                             (coe v13) (coe v14) (coe v15) (coe v16) (coe v18) in
                                   let v20 = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                   let v21 = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                   let v22 = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v22)))))))))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                               (coe v4))
                            v10)
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v12)
                            (coe
                               (d630
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v12)))
                            (coe v11)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                               (coe v4))
                            v10)
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                            (coe v4)))
                      (coe
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                            (coe v4)))
                      (let v13
                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                 (coe
                                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                       (coe v4))) in
                       coe
                         MAlonzo.Code.Algebra.Structures.d94
                         (MAlonzo.Code.Algebra.Structures.d126
                            (coe
                               (MAlonzo.Code.Algebra.Structures.d326
                                  (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v13))))))
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                               (coe v4))
                            v10)
                         (coe
                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                               (coe v4))
                            v10)
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v12)
                            (coe
                               (d630
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v12)))
                            (coe v11))
                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                            (coe v4))
                         (let v14
                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                    (coe v4) in
                          let v15
                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                    (coe v14) in
                          coe
                            MAlonzo.Code.Relation.Binary.Core.d414
                            (MAlonzo.Code.Algebra.Structures.d92
                               (coe
                                  (MAlonzo.Code.Algebra.Structures.d126
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d326
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d1210
                                                 (coe v15))))))))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                  (coe v4))
                               v10))
                         (d882
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v12) (coe v11)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v13
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   (coe v4) in
                                         let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   (coe v4) in
                                         let v15
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4) in
                                         let v16
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                   (coe v4) in
                                         let v17
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                   (coe v4) in
                                         let v18
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                   (coe v17) in
                                         let v19
                                               = MAlonzo.Code.Algebra.Structures.du1298
                                                   (coe v13) (coe v14) (coe v15) (coe v16)
                                                   (coe v18) in
                                         let v20
                                               = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                         let v21
                                               = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                         let v22 = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v22)))))))))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                  (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                     (coe v4))
                                  v10)
                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                  (coe v4)))
                            (coe
                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                  (coe v4)))
                            (coe
                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                  (coe v4)))
                            (coe
                               (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du322
                                  (coe v4)
                                  (coe
                                     (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                        (coe v4)))
                                  (coe v10)))
                            (let v13
                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v13
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                        (coe v4) in
                                              let v14
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                        (coe v4) in
                                              let v15
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                        (coe v4) in
                                              let v16
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                        (coe v4) in
                                              let v17
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                        (coe v4) in
                                              let v18
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                        (coe v17) in
                                              let v19
                                                    = MAlonzo.Code.Algebra.Structures.du1298
                                                        (coe v13) (coe v14) (coe v15) (coe v16)
                                                        (coe v18) in
                                              let v20
                                                    = MAlonzo.Code.Algebra.Structures.d1106
                                                        (coe v19) in
                                              let v21
                                                    = MAlonzo.Code.Algebra.Structures.d1018
                                                        (coe v20) in
                                              let v22
                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                        (coe v21) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v22))))))) in
                             let v14
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                       (coe v4) in
                             coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                  (coe v13 v14))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name896 = "Algebra.Solver.Ring.*x+HN≈*x+"
d896 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T418 -> T420 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d896 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C424
        -> case coe v10 of
             MAlonzo.Code.Data.Vec.Base.C36 v13 v14
               -> let v15
                        = d502
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v9) (coe (du620 (coe v3) (coe v7))) in
                  case coe v15 of
                    MAlonzo.Code.Data.Maybe.Base.C28 v16
                      -> coe
                           (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                              (coe
                                 (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                    (coe
                                       (MAlonzo.Code.Relation.Binary.Core.d418
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.d144
                                                (let v17
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                           (coe v4) in
                                                 let v18
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                           (coe v4) in
                                                 let v19
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                           (coe v4) in
                                                 let v20
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                           (coe v4) in
                                                 let v21
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4) in
                                                 let v22
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                           (coe v21) in
                                                 let v23
                                                       = MAlonzo.Code.Algebra.Structures.du1298
                                                           (coe v17) (coe v18) (coe v19) (coe v20)
                                                           (coe v22) in
                                                 let v24
                                                       = MAlonzo.Code.Algebra.Structures.d1106
                                                           (coe v23) in
                                                 let v25
                                                       = MAlonzo.Code.Algebra.Structures.d1018
                                                           (coe v24) in
                                                 let v26
                                                       = MAlonzo.Code.Algebra.Structures.d326
                                                           (coe v25) in
                                                 coe
                                                   (MAlonzo.Code.Algebra.Structures.du106
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d126
                                                            (coe v26)))))))))
                                    (coe
                                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                          (coe v4)))
                                    (coe
                                       (d442
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v9) (coe v14)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                       v4
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                          v4
                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                             (coe v4))
                                          v13)
                                       (d442
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v9) (coe v14)))
                                    (coe
                                       (d870
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v9) (coe v16) (coe v14)))
                                    (coe
                                       (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.Core.d418
                                                (coe
                                                   (MAlonzo.Code.Relation.Binary.d144
                                                      (let v17
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                 (coe v4) in
                                                       let v18
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                 (coe v4) in
                                                       let v19
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                 (coe v4) in
                                                       let v20
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                 (coe v4) in
                                                       let v21
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                 (coe v4) in
                                                       let v22
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                 (coe v21) in
                                                       let v23
                                                             = MAlonzo.Code.Algebra.Structures.du1298
                                                                 (coe v17) (coe v18) (coe v19)
                                                                 (coe v20) (coe v22) in
                                                       let v24
                                                             = MAlonzo.Code.Algebra.Structures.d1106
                                                                 (coe v23) in
                                                       let v25
                                                             = MAlonzo.Code.Algebra.Structures.d1018
                                                                 (coe v24) in
                                                       let v26
                                                             = MAlonzo.Code.Algebra.Structures.d326
                                                                 (coe v25) in
                                                       coe
                                                         (MAlonzo.Code.Algebra.Structures.du106
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d126
                                                                  (coe v26)))))))))
                                          (coe
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v9) (coe v14)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4))
                                                v13)
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v9) (coe v14)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4))
                                                v13)
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v9) (coe v14)))
                                          (let v17
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4))) in
                                           coe
                                             MAlonzo.Code.Relation.Binary.Core.d416
                                             (MAlonzo.Code.Algebra.Structures.d92
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d126
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d326
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d1210
                                                                  (coe v17))))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   v4
                                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                      (coe v4))
                                                   v13)
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v9) (coe v14)))
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v9) (coe v14))
                                             (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du322
                                                (coe v4)
                                                (coe
                                                   (d442
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v9)
                                                      (coe v14)))
                                                (coe v13)))
                                          (let v17
                                                 = MAlonzo.Code.Relation.Binary.Core.d414
                                                     (coe
                                                        (MAlonzo.Code.Relation.Binary.d144
                                                           (let v17
                                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                      (coe v4) in
                                                            let v18
                                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                      (coe v4) in
                                                            let v19
                                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                      (coe v4) in
                                                            let v20
                                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                      (coe v4) in
                                                            let v21
                                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                      (coe v4) in
                                                            let v22
                                                                  = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                      (coe v21) in
                                                            let v23
                                                                  = MAlonzo.Code.Algebra.Structures.du1298
                                                                      (coe v17) (coe v18) (coe v19)
                                                                      (coe v20) (coe v22) in
                                                            let v24
                                                                  = MAlonzo.Code.Algebra.Structures.d1106
                                                                      (coe v23) in
                                                            let v25
                                                                  = MAlonzo.Code.Algebra.Structures.d1018
                                                                      (coe v24) in
                                                            let v26
                                                                  = MAlonzo.Code.Algebra.Structures.d326
                                                                      (coe v25) in
                                                            coe
                                                              (MAlonzo.Code.Algebra.Structures.du106
                                                                 (coe
                                                                    (MAlonzo.Code.Algebra.Structures.d126
                                                                       (coe v26))))))) in
                                           let v18
                                                 = coe
                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                     v4
                                                     (coe
                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                        v4
                                                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                           (coe v4))
                                                        v13)
                                                     (d442
                                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                        (coe v5) (coe v6) (coe v7) (coe v9)
                                                        (coe v14)) in
                                           coe
                                             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                (coe v17 v18))))))))
                    MAlonzo.Code.Data.Maybe.Base.C30
                      -> let v16
                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                   (coe v4) in
                         let v17
                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                   (coe v16) in
                         coe
                           MAlonzo.Code.Relation.Binary.Core.d414
                           (MAlonzo.Code.Algebra.Structures.d92
                              (coe
                                 (MAlonzo.Code.Algebra.Structures.d126
                                    (coe
                                       (MAlonzo.Code.Algebra.Structures.d326
                                          (coe
                                             (MAlonzo.Code.Algebra.Structures.d1210 (coe v17))))))))
                           (d438
                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                              (coe v7)
                              (coe
                                 (\ v18 v19 v20 -> C428 v19 v20) erased (coe (\ v18 -> C424) erased)
                                 v9)
                              (coe
                                 (\ v18 v19 v20 -> MAlonzo.Code.Data.Vec.Base.C36 v19 v20) erased
                                 v13 v14))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      C428 v12 v13
        -> let v14
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                     (coe v4) in
           let v15
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe v14) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d414
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v15))))))))
             (d438
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7)
                (coe
                   (d638
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe (\ v16 v17 v18 -> C428 v17 v18) erased v12 v13)
                      (coe v9)))
                (coe v10))
      _ -> MAlonzo.RTE.mazUnreachableError
name938 = "Algebra.Solver.Ring.∅*x+HN-homo"
d938 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T420 -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d938 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = let v11
          = d502
              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
              (coe v7) (coe v8) (coe (du620 (coe v3) (coe v7))) in
    case coe v11 of
      MAlonzo.Code.Data.Maybe.Base.C28 v12
        -> coe
             (d870
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v8) (coe v12) (coe v10))
      MAlonzo.Code.Data.Maybe.Base.C30
        -> coe
             (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du322
                (coe v4)
                (coe
                   (d442
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe v8) (coe v10)))
                (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
name972 = "Algebra.Solver.Ring.+H-homo"
d972 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T418 -> T418 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d972 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C424
        -> let v12
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                     (coe v4) in
           let v13
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe v12) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d416
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v13))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                   (coe v4))
                (d438
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7)
                   (coe
                      (d660
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe (\ v14 -> C424) erased) (coe v9)))
                   (coe v10)))
             (d438
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7)
                (coe
                   (d660
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe v7) (coe (\ v14 -> C424) erased) (coe v9)))
                (coe v10))
             (let v14
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                        (coe v4) in
              let v15
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                        (coe v14) in
              coe
                MAlonzo.Code.Algebra.Structures.d328
                (MAlonzo.Code.Algebra.Structures.d1210 (coe v15))
                (d438
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7)
                   (coe
                      (d660
                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                         (coe v7) (coe (\ v16 -> C424) erased) (coe v9)))
                   (coe v10)))
      C428 v12 v13
        -> case coe v9 of
             C424
               -> let v15
                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                            (coe v4) in
                  let v16
                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                            (coe v15) in
                  coe
                    MAlonzo.Code.Relation.Binary.Core.d416
                    (MAlonzo.Code.Algebra.Structures.d92
                       (coe
                          (MAlonzo.Code.Algebra.Structures.d126
                             (coe
                                (MAlonzo.Code.Algebra.Structures.d326
                                   (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v16))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                       (d438
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7)
                          (coe
                             (d660
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe (\ v17 v18 v19 -> C428 v18 v19) erased v12 v13)
                                (coe (\ v17 -> C424) erased)))
                          (coe v10))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                          (coe v4)))
                    (d438
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7)
                       (coe
                          (d660
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe (\ v17 v18 v19 -> C428 v18 v19) erased v12 v13)
                             (coe (\ v17 -> C424) erased)))
                       (coe v10))
                    (let v17
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                               (coe v4) in
                     let v18
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                               (coe v4) in
                     let v19
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                               (coe v4) in
                     let v20
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                               (coe v4) in
                     let v21
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                               (coe v4) in
                     let v22
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                               (coe v21) in
                     let v23
                           = MAlonzo.Code.Algebra.Structures.du1298
                               (coe v17) (coe v18) (coe v19) (coe v20) (coe v22) in
                     let v24 = MAlonzo.Code.Algebra.Structures.d1106 (coe v23) in
                     coe
                       MAlonzo.Code.Algebra.Structures.du356 v17 v19
                       (MAlonzo.Code.Algebra.Structures.d1018 (coe v24))
                       (d438
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7)
                          (coe
                             (d660
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe (\ v25 v26 v27 -> C428 v26 v27) erased v12 v13)
                                (coe (\ v25 -> C424) erased)))
                          (coe v10)))
             C428 v15 v16
               -> case coe v10 of
                    MAlonzo.Code.Data.Vec.Base.C36 v18 v19
                      -> coe
                           (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                              (coe
                                 (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                    (coe
                                       (MAlonzo.Code.Relation.Binary.Core.d418
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.d144
                                                (let v20
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                           (coe v4) in
                                                 let v21
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                           (coe v4) in
                                                 let v22
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                           (coe v4) in
                                                 let v23
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                           (coe v4) in
                                                 let v24
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4) in
                                                 let v25
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                           (coe v24) in
                                                 let v26
                                                       = MAlonzo.Code.Algebra.Structures.du1298
                                                           (coe v20) (coe v21) (coe v22) (coe v23)
                                                           (coe v25) in
                                                 let v27
                                                       = MAlonzo.Code.Algebra.Structures.d1106
                                                           (coe v26) in
                                                 let v28
                                                       = MAlonzo.Code.Algebra.Structures.d1018
                                                           (coe v27) in
                                                 let v29
                                                       = MAlonzo.Code.Algebra.Structures.d326
                                                           (coe v28) in
                                                 coe
                                                   (MAlonzo.Code.Algebra.Structures.du106
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d126
                                                            (coe v29)))))))))
                                    (coe
                                       (d438
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7)
                                          (coe
                                             (d638
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d660
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe v15)))
                                                (coe
                                                   (d664
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v13)
                                                      (coe v16)))))
                                          (coe
                                             (\ v20 v21 v22 ->
                                                MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                             erased v18 v19)))
                                    (coe
                                       (d438
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7)
                                          (coe
                                             (\ v20 v21 v22 -> C428 v21 v22) erased
                                             (d660
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v12) (coe v15))
                                             (d664
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v16)))
                                          (coe
                                             (\ v20 v21 v22 ->
                                                MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                             erased v18 v19)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                       v4
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                          v4
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             v4
                                             (d438
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v12)
                                                (coe
                                                   (\ v20 v21 v22 ->
                                                      MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                   erased v18 v19))
                                             v18)
                                          (d442
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v13) (coe v19)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                          v4
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             v4
                                             (d438
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v15)
                                                (coe
                                                   (\ v20 v21 v22 ->
                                                      MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                   erased v18 v19))
                                             v18)
                                          (d442
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v16) (coe v19))))
                                    (coe
                                       (d896
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7)
                                          (coe
                                             (d660
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v12) (coe v15)))
                                          (coe
                                             (d664
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v16)))
                                          (coe
                                             (\ v20 v21 v22 ->
                                                MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                             erased v18 v19)))
                                    (coe
                                       (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.Core.d418
                                                (coe
                                                   (MAlonzo.Code.Relation.Binary.d144
                                                      (let v20
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                 (coe v4) in
                                                       let v21
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                 (coe v4) in
                                                       let v22
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                 (coe v4) in
                                                       let v23
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                 (coe v4) in
                                                       let v24
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                 (coe v4) in
                                                       let v25
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                 (coe v24) in
                                                       let v26
                                                             = MAlonzo.Code.Algebra.Structures.du1298
                                                                 (coe v20) (coe v21) (coe v22)
                                                                 (coe v23) (coe v25) in
                                                       let v27
                                                             = MAlonzo.Code.Algebra.Structures.d1106
                                                                 (coe v26) in
                                                       let v28
                                                             = MAlonzo.Code.Algebra.Structures.d1018
                                                                 (coe v27) in
                                                       let v29
                                                             = MAlonzo.Code.Algebra.Structures.d326
                                                                 (coe v28) in
                                                       coe
                                                         (MAlonzo.Code.Algebra.Structures.du106
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d126
                                                                  (coe v29)))))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (d438
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7)
                                                   (coe
                                                      (d660
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v12) (coe v15)))
                                                   (coe
                                                      (\ v20 v21 v22 ->
                                                         MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                      erased v18 v19))
                                                v18)
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d664
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v13)
                                                      (coe v16)))
                                                (coe v19)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe
                                                         (\ v20 v21 v22 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                         erased v18 v19))
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v15)
                                                      (coe
                                                         (\ v20 v21 v22 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                         erased v18 v19)))
                                                v18)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                v4
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v13) (coe v19))
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v16) (coe v19))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   v4
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe
                                                         (\ v20 v21 v22 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                         erased v18 v19))
                                                   v18)
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v13) (coe v19)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   v4
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v15)
                                                      (coe
                                                         (\ v20 v21 v22 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                         erased v18 v19))
                                                   v18)
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v16) (coe v19))))
                                          (let v20
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4))) in
                                           coe
                                             MAlonzo.Code.Algebra.Structures.d94
                                             (MAlonzo.Code.Algebra.Structures.d126
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d326
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d1210
                                                            (coe v20))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (d438
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7)
                                                   (coe
                                                      (d660
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v12) (coe v15)))
                                                   (coe
                                                      (\ v21 v22 v23 ->
                                                         MAlonzo.Code.Data.Vec.Base.C36 v22 v23)
                                                      erased v18 v19))
                                                v18)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe
                                                         (\ v21 v22 v23 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v22 v23)
                                                         erased v18 v19))
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v15)
                                                      (coe
                                                         (\ v21 v22 v23 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v22 v23)
                                                         erased v18 v19)))
                                                v18)
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d664
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v13)
                                                      (coe v16)))
                                                (coe v19))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                v4
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v13) (coe v19))
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v16) (coe v19)))
                                             (let v21
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                              (coe v4))) in
                                              coe
                                                MAlonzo.Code.Algebra.Structures.d94
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d326
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d1212
                                                               (coe v21))))))
                                                (d438
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7)
                                                   (coe
                                                      (d660
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v12) (coe v15)))
                                                   (coe
                                                      (\ v22 v23 v24 ->
                                                         MAlonzo.Code.Data.Vec.Base.C36 v23 v24)
                                                      erased v18 v19))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe
                                                         (\ v22 v23 v24 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v23 v24)
                                                         erased v18 v19))
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v15)
                                                      (coe
                                                         (\ v22 v23 v24 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v23 v24)
                                                         erased v18 v19)))
                                                v18 v18
                                                (d972
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v12) (coe v15)
                                                   (coe
                                                      (\ v22 v23 v24 ->
                                                         MAlonzo.Code.Data.Vec.Base.C36 v23 v24)
                                                      erased v18 v19))
                                                (let v22
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4) in
                                                 let v23
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                           (coe v22) in
                                                 coe
                                                   MAlonzo.Code.Relation.Binary.Core.d414
                                                   (MAlonzo.Code.Algebra.Structures.d92
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d126
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d326
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d1210
                                                                        (coe v23))))))))
                                                   v18))
                                             (d982
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v16)
                                                (coe v19)))
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                (coe
                                                   (MAlonzo.Code.Relation.Binary.Core.d418
                                                      (coe
                                                         (MAlonzo.Code.Relation.Binary.d144
                                                            (let v20
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                       (coe v4) in
                                                             let v21
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                       (coe v4) in
                                                             let v22
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                       (coe v4) in
                                                             let v23
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                       (coe v4) in
                                                             let v24
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                       (coe v4) in
                                                             let v25
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                       (coe v24) in
                                                             let v26
                                                                   = MAlonzo.Code.Algebra.Structures.du1298
                                                                       (coe v20) (coe v21) (coe v22)
                                                                       (coe v23) (coe v25) in
                                                             let v27
                                                                   = MAlonzo.Code.Algebra.Structures.d1106
                                                                       (coe v26) in
                                                             let v28
                                                                   = MAlonzo.Code.Algebra.Structures.d1018
                                                                       (coe v27) in
                                                             let v29
                                                                   = MAlonzo.Code.Algebra.Structures.d326
                                                                       (coe v28) in
                                                             coe
                                                               (MAlonzo.Code.Algebra.Structures.du106
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                                        (coe v29)))))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19))
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v15)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19)))
                                                      v18)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                      v4
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19))
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19))
                                                         v18)
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v15)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19))
                                                         v18)
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19))
                                                         v18)
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v15)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19))
                                                         v18)
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19))))
                                                (coe
                                                   (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du226
                                                      (coe v4)
                                                      (coe
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19)))
                                                      (coe
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v15)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19)))
                                                      (coe
                                                         (d442
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v13) (coe v19)))
                                                      (coe
                                                         (d442
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v16) (coe v19)))
                                                      (coe v18)))
                                                (let v20
                                                       = MAlonzo.Code.Relation.Binary.Core.d414
                                                           (coe
                                                              (MAlonzo.Code.Relation.Binary.d144
                                                                 (let v20
                                                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                            (coe v4) in
                                                                  let v21
                                                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                            (coe v4) in
                                                                  let v22
                                                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                            (coe v4) in
                                                                  let v23
                                                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                            (coe v4) in
                                                                  let v24
                                                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                            (coe v4) in
                                                                  let v25
                                                                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                            (coe v24) in
                                                                  let v26
                                                                        = MAlonzo.Code.Algebra.Structures.du1298
                                                                            (coe v20) (coe v21)
                                                                            (coe v22) (coe v23)
                                                                            (coe v25) in
                                                                  let v27
                                                                        = MAlonzo.Code.Algebra.Structures.d1106
                                                                            (coe v26) in
                                                                  let v28
                                                                        = MAlonzo.Code.Algebra.Structures.d1018
                                                                            (coe v27) in
                                                                  let v29
                                                                        = MAlonzo.Code.Algebra.Structures.d326
                                                                            (coe v28) in
                                                                  coe
                                                                    (MAlonzo.Code.Algebra.Structures.du106
                                                                       (coe
                                                                          (MAlonzo.Code.Algebra.Structures.d126
                                                                             (coe v29))))))) in
                                                 let v21
                                                       = coe
                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                           v4
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                              v4
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                 v4
                                                                 (d438
                                                                    (coe v0) (coe v1) (coe v2)
                                                                    (coe v3) (coe v4) (coe v5)
                                                                    (coe v6) (coe v7) (coe v12)
                                                                    (coe
                                                                       (\ v21 v22 v23 ->
                                                                          MAlonzo.Code.Data.Vec.Base.C36
                                                                            v22 v23)
                                                                       erased v18 v19))
                                                                 v18)
                                                              (d442
                                                                 (coe v0) (coe v1) (coe v2) (coe v3)
                                                                 (coe v4) (coe v5) (coe v6) (coe v7)
                                                                 (coe v13) (coe v19)))
                                                           (coe
                                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                              v4
                                                              (coe
                                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                 v4
                                                                 (d438
                                                                    (coe v0) (coe v1) (coe v2)
                                                                    (coe v3) (coe v4) (coe v5)
                                                                    (coe v6) (coe v7) (coe v15)
                                                                    (coe
                                                                       (\ v21 v22 v23 ->
                                                                          MAlonzo.Code.Data.Vec.Base.C36
                                                                            v22 v23)
                                                                       erased v18 v19))
                                                                 v18)
                                                              (d442
                                                                 (coe v0) (coe v1) (coe v2) (coe v3)
                                                                 (coe v4) (coe v5) (coe v6) (coe v7)
                                                                 (coe v16) (coe v19))) in
                                                 coe
                                                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                      (coe v20 v21))))))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name982 = "Algebra.Solver.Ring.+N-homo"
d982 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T420 -> T420 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d982 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C430 v11
        -> case coe v9 of
             C430 v12
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d652 v5 v11
                    v12
             _ -> MAlonzo.RTE.mazUnreachableError
      C434 v12
        -> case coe v9 of
             C434 v14
               -> let v15 = subInt (coe v7) (coe (1 :: Integer)) in
                  coe
                    (d972
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v15) (coe v12) (coe v14) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1026 = "Algebra.Solver.Ring.*x+H-homo"
d1026 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T418 ->
  T418 -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1026 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v8 of
      C424
        -> case coe v9 of
             C424
               -> let v14
                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                            (coe
                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                  (coe v4))) in
                  coe
                    MAlonzo.Code.Relation.Binary.Core.d416
                    (MAlonzo.Code.Algebra.Structures.d92
                       (coe
                          (MAlonzo.Code.Algebra.Structures.d126
                             (coe
                                (MAlonzo.Code.Algebra.Structures.d326
                                   (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v14))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                       (coe
                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                             (coe v4))
                          v10)
                       (d438
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7)
                          (coe
                             (d688
                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                (coe v7) (coe (\ v15 -> C424) erased)
                                (coe (\ v15 -> C424) erased)))
                          (coe
                             (\ v15 v16 v17 -> MAlonzo.Code.Data.Vec.Base.C36 v16 v17) erased
                             v10 v11)))
                    (d438
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v7)
                       (coe
                          (d688
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7) (coe (\ v15 -> C424) erased)
                             (coe (\ v15 -> C424) erased)))
                       (coe
                          (\ v15 v16 v17 -> MAlonzo.Code.Data.Vec.Base.C36 v16 v17) erased
                          v10 v11))
                    (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du322
                       (coe v4)
                       (coe
                          (d438
                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                             (coe v7)
                             (coe
                                (d688
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe (\ v15 -> C424) erased)
                                   (coe (\ v15 -> C424) erased)))
                             (coe
                                (\ v15 v16 v17 -> MAlonzo.Code.Data.Vec.Base.C36 v16 v17) erased
                                v10 v11)))
                       (coe v10))
             C428 v14 v15
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v16) (coe v17) (coe v18) (coe v19)
                                                    (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v24) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v25)))))))))
                             (coe
                                (d438
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d638
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7)
                                         (coe
                                            (d660
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe (\ v16 -> C424) erased)
                                               (coe v14)))
                                         (coe v15)))
                                   (coe
                                      (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                      erased v10 v11)))
                             (coe
                                (d438
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (\ v16 v17 v18 -> C428 v17 v18) erased
                                      (d660
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe (\ v16 -> C424) erased) (coe v14))
                                      v15)
                                   (coe
                                      (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                      erased v10 v11)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe (\ v16 -> C424) erased)
                                      (coe
                                         (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                         erased v10 v11))
                                   v10)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v14)
                                         (coe
                                            (\ v16 v17 v18 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v15) (coe v11))))
                             (coe
                                (d896
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d660
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe (\ v16 -> C424) erased) (coe v14)))
                                   (coe v15)
                                   (coe
                                      (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                      erased v10 v11)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v16
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v20) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v16) (coe v17) (coe v18) (coe v19)
                                                          (coe v21) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v23) in
                                                let v25
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v24) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v25)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe
                                               (d660
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe (\ v16 -> C424) erased) (coe v14)))
                                            (coe
                                               (\ v16 v17 v18 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                               erased v10 v11))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v15) (coe v11)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe (\ v16 -> C424) erased)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11))
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11)))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v15) (coe v11)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe (\ v16 -> C424) erased)
                                            (coe
                                               (\ v16 v17 v18 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                               erased v10 v11))
                                         v10)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v15) (coe v11))))
                                   (let v16
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe
                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4))) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.d94
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1210
                                                     (coe v16))))))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe
                                               (d660
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe (\ v17 -> C424) erased) (coe v14)))
                                            (coe
                                               (\ v17 v18 v19 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                               erased v10 v11))
                                         v10)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe (\ v17 -> C424) erased)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11))
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11)))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v15) (coe v11))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v15) (coe v11))
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                       (coe v4))) in
                                       coe
                                         MAlonzo.Code.Algebra.Structures.d94
                                         (MAlonzo.Code.Algebra.Structures.d126
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d326
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d1212
                                                        (coe v17))))))
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe
                                               (d660
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe (\ v18 -> C424) erased) (coe v14)))
                                            (coe
                                               (\ v18 v19 v20 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                               erased v10 v11))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe (\ v18 -> C424) erased)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11))
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11)))
                                         v10 v10
                                         (d972
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe (\ v18 -> C424) erased) (coe v14)
                                            (coe
                                               (\ v18 v19 v20 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                               erased v10 v11))
                                         (let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v18) in
                                          coe
                                            MAlonzo.Code.Relation.Binary.Core.d414
                                            (MAlonzo.Code.Algebra.Structures.d92
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d326
                                                           (coe
                                                              (MAlonzo.Code.Algebra.Structures.d1210
                                                                 (coe v19))))))))
                                            v10))
                                      (let v17
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4) in
                                       let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe v17) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.Core.d414
                                         (MAlonzo.Code.Algebra.Structures.d92
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d126
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d326
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d1210
                                                              (coe v18))))))))
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v15) (coe v11))))
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.Core.d418
                                               (coe
                                                  (MAlonzo.Code.Relation.Binary.d144
                                                     (let v16
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                (coe v4) in
                                                      let v17
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                (coe v4) in
                                                      let v18
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                (coe v4) in
                                                      let v19
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                (coe v4) in
                                                      let v20
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                (coe v4) in
                                                      let v21
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                (coe v20) in
                                                      let v22
                                                            = MAlonzo.Code.Algebra.Structures.du1298
                                                                (coe v16) (coe v17) (coe v18)
                                                                (coe v19) (coe v21) in
                                                      let v23
                                                            = MAlonzo.Code.Algebra.Structures.d1106
                                                                (coe v22) in
                                                      let v24
                                                            = MAlonzo.Code.Algebra.Structures.d1018
                                                                (coe v23) in
                                                      let v25
                                                            = MAlonzo.Code.Algebra.Structures.d326
                                                                (coe v24) in
                                                      coe
                                                        (MAlonzo.Code.Algebra.Structures.du106
                                                           (coe
                                                              (MAlonzo.Code.Algebra.Structures.d126
                                                                 (coe v25)))))))))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                  v4
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7)
                                                     (coe (\ v16 -> C424) erased)
                                                     (coe
                                                        (\ v16 v17 v18 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                        erased v10 v11))
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v14)
                                                     (coe
                                                        (\ v16 v17 v18 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                        erased v10 v11)))
                                               v10)
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v15) (coe v11)))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (d438
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe (\ v16 -> C424) erased)
                                                  (coe
                                                     (\ v16 v17 v18 ->
                                                        MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                     erased v10 v11))
                                               v10)
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                  v4
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v14)
                                                     (coe
                                                        (\ v16 v17 v18 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                        erased v10 v11))
                                                  v10)
                                               (d442
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v15) (coe v11))))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (d438
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe (\ v16 -> C424) erased)
                                                  (coe
                                                     (\ v16 v17 v18 ->
                                                        MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                     erased v10 v11))
                                               v10)
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                  v4
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v14)
                                                     (coe
                                                        (\ v16 v17 v18 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                        erased v10 v11))
                                                  v10)
                                               (d442
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v15) (coe v11))))
                                         (coe
                                            (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du206
                                               (coe v4)
                                               (coe
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7)
                                                     (coe (\ v16 -> C424) erased)
                                                     (coe
                                                        (\ v16 v17 v18 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                        erased v10 v11)))
                                               (coe
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v14)
                                                     (coe
                                                        (\ v16 v17 v18 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                        erased v10 v11)))
                                               (coe
                                                  (d442
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v15)
                                                     (coe v11)))
                                               (coe v10)))
                                         (let v16
                                                = MAlonzo.Code.Relation.Binary.Core.d414
                                                    (coe
                                                       (MAlonzo.Code.Relation.Binary.d144
                                                          (let v16
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                     (coe v4) in
                                                           let v17
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     (coe v4) in
                                                           let v18
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                     (coe v4) in
                                                           let v19
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                     (coe v4) in
                                                           let v20
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                     (coe v4) in
                                                           let v21
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                     (coe v20) in
                                                           let v22
                                                                 = MAlonzo.Code.Algebra.Structures.du1298
                                                                     (coe v16) (coe v17) (coe v18)
                                                                     (coe v19) (coe v21) in
                                                           let v23
                                                                 = MAlonzo.Code.Algebra.Structures.d1106
                                                                     (coe v22) in
                                                           let v24
                                                                 = MAlonzo.Code.Algebra.Structures.d1018
                                                                     (coe v23) in
                                                           let v25
                                                                 = MAlonzo.Code.Algebra.Structures.d326
                                                                     (coe v24) in
                                                           coe
                                                             (MAlonzo.Code.Algebra.Structures.du106
                                                                (coe
                                                                   (MAlonzo.Code.Algebra.Structures.d126
                                                                      (coe v25))))))) in
                                          let v17
                                                = coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    v4
                                                    (coe
                                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                       v4
                                                       (d438
                                                          (coe v0) (coe v1) (coe v2) (coe v3)
                                                          (coe v4) (coe v5) (coe v6) (coe v7)
                                                          (coe (\ v17 -> C424) erased)
                                                          (coe
                                                             (\ v17 v18 v19 ->
                                                                MAlonzo.Code.Data.Vec.Base.C36
                                                                  v18 v19)
                                                             erased v10 v11))
                                                       v10)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                       v4
                                                       (coe
                                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          v4
                                                          (d438
                                                             (coe v0) (coe v1) (coe v2) (coe v3)
                                                             (coe v4) (coe v5) (coe v6) (coe v7)
                                                             (coe v14)
                                                             (coe
                                                                (\ v17 v18 v19 ->
                                                                   MAlonzo.Code.Data.Vec.Base.C36
                                                                     v18 v19)
                                                                erased v10 v11))
                                                          v10)
                                                       (d442
                                                          (coe v0) (coe v1) (coe v2) (coe v3)
                                                          (coe v4) (coe v5) (coe v6) (coe v7)
                                                          (coe v15) (coe v11))) in
                                          coe
                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                               (coe v16 v17))))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C428 v13 v14
        -> case coe v9 of
             C424
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v16) (coe v17) (coe v18) (coe v19)
                                                    (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v24) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v25)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe (\ v16 v17 v18 -> C428 v17 v18) erased v13 v14)
                                      (coe
                                         (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                         erased v10 v11))
                                   v10)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe (du620 (coe v3) (coe v7))) (coe v11)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe (\ v16 v17 v18 -> C428 v17 v18) erased v13 v14)
                                      (coe
                                         (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                         erased v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe (\ v16 v17 v18 -> C428 v17 v18) erased v13 v14)
                                      (coe
                                         (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                         erased v10 v11))
                                   v10)
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4)))
                             (let v16
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                              (coe v4))) in
                              coe
                                MAlonzo.Code.Algebra.Structures.d94
                                (MAlonzo.Code.Algebra.Structures.d126
                                   (coe
                                      (MAlonzo.Code.Algebra.Structures.d326
                                         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v16))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe (\ v17 v18 v19 -> C428 v18 v19) erased v13 v14)
                                      (coe
                                         (\ v17 v18 v19 -> MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                         erased v10 v11))
                                   v10)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe (\ v17 v18 v19 -> C428 v18 v19) erased v13 v14)
                                      (coe
                                         (\ v17 v18 v19 -> MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                         erased v10 v11))
                                   v10)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe (du620 (coe v3) (coe v7))) (coe v11))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4))
                                (let v17
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                           (coe v4) in
                                 let v18
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                           (coe v17) in
                                 coe
                                   MAlonzo.Code.Relation.Binary.Core.d414
                                   (MAlonzo.Code.Algebra.Structures.d92
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d126
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d326
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d1210
                                                        (coe v18))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7)
                                         (coe (\ v19 v20 v21 -> C428 v20 v21) erased v13 v14)
                                         (coe
                                            (\ v19 v20 v21 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v20 v21)
                                            erased v10 v11))
                                      v10))
                                (d858
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v11)))
                             (let v16
                                    = MAlonzo.Code.Relation.Binary.Core.d414
                                        (coe
                                           (MAlonzo.Code.Relation.Binary.d144
                                              (let v16
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         (coe v4) in
                                               let v17
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         (coe v4) in
                                               let v18
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                         (coe v4) in
                                               let v19
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                         (coe v4) in
                                               let v20
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                         (coe v4) in
                                               let v21
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                         (coe v20) in
                                               let v22
                                                     = MAlonzo.Code.Algebra.Structures.du1298
                                                         (coe v16) (coe v17) (coe v18) (coe v19)
                                                         (coe v21) in
                                               let v23
                                                     = MAlonzo.Code.Algebra.Structures.d1106
                                                         (coe v22) in
                                               let v24
                                                     = MAlonzo.Code.Algebra.Structures.d1018
                                                         (coe v23) in
                                               let v25
                                                     = MAlonzo.Code.Algebra.Structures.d326
                                                         (coe v24) in
                                               coe
                                                 (MAlonzo.Code.Algebra.Structures.du106
                                                    (coe
                                                       (MAlonzo.Code.Algebra.Structures.d126
                                                          (coe v25))))))) in
                              let v17
                                    = coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                        v4
                                        (coe
                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                           v4
                                           (d438
                                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                              (coe v6) (coe v7)
                                              (coe (\ v17 v18 v19 -> C428 v18 v19) erased v13 v14)
                                              (coe
                                                 (\ v17 v18 v19 ->
                                                    MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                 erased v10 v11))
                                           v10)
                                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                           (coe v4)) in
                              coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                   (coe v16 v17))))))
             C428 v16 v17
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v18) (coe v19) (coe v20) (coe v21)
                                                    (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v24) in
                                          let v26
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v25) in
                                          let v27
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v26) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v27)))))))))
                             (coe
                                (d438
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d638
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7)
                                         (coe
                                            (d660
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7)
                                               (coe (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                               (coe v16)))
                                         (coe v17)))
                                   (coe
                                      (\ v18 v19 v20 -> MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                      erased v10 v11)))
                             (coe
                                (d438
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (\ v18 v19 v20 -> C428 v19 v20) erased
                                      (d660
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7)
                                         (coe (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                         (coe v16))
                                      v17)
                                   (coe
                                      (\ v18 v19 v20 -> MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                      erased v10 v11)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                      (coe
                                         (\ v18 v19 v20 -> MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                         erased v10 v11))
                                   v10)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v16)
                                         (coe
                                            (\ v18 v19 v20 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v17) (coe v11))))
                             (coe
                                (d896
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d660
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7)
                                         (coe (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                         (coe v16)))
                                   (coe v17)
                                   (coe
                                      (\ v18 v19 v20 -> MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                      erased v10 v11)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v18) (coe v19) (coe v20) (coe v21)
                                                          (coe v23) in
                                                let v25
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v24) in
                                                let v26
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v25) in
                                                let v27
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v26) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v27)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe
                                               (d660
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe
                                                     (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                                  (coe v16)))
                                            (coe
                                               (\ v18 v19 v20 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                               erased v10 v11))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v17) (coe v11)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7)
                                               (coe (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11))
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v16)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11)))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v17) (coe v11)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                            (coe
                                               (\ v18 v19 v20 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                               erased v10 v11))
                                         v10)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v16)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v17) (coe v11))))
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe
                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4))) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.d94
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1210
                                                     (coe v18))))))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe
                                               (d660
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe
                                                     (\ v19 v20 v21 -> C428 v20 v21) erased v13 v14)
                                                  (coe v16)))
                                            (coe
                                               (\ v19 v20 v21 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v20 v21)
                                               erased v10 v11))
                                         v10)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7)
                                               (coe (\ v19 v20 v21 -> C428 v20 v21) erased v13 v14)
                                               (coe
                                                  (\ v19 v20 v21 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v20 v21)
                                                  erased v10 v11))
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v16)
                                               (coe
                                                  (\ v19 v20 v21 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v20 v21)
                                                  erased v10 v11)))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v17) (coe v11))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v17) (coe v11))
                                      (let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                       (coe v4))) in
                                       coe
                                         MAlonzo.Code.Algebra.Structures.d94
                                         (MAlonzo.Code.Algebra.Structures.d126
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d326
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d1212
                                                        (coe v19))))))
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe
                                               (d660
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe
                                                     (\ v20 v21 v22 -> C428 v21 v22) erased v13 v14)
                                                  (coe v16)))
                                            (coe
                                               (\ v20 v21 v22 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                               erased v10 v11))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7)
                                               (coe (\ v20 v21 v22 -> C428 v21 v22) erased v13 v14)
                                               (coe
                                                  (\ v20 v21 v22 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                  erased v10 v11))
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v16)
                                               (coe
                                                  (\ v20 v21 v22 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                  erased v10 v11)))
                                         v10 v10
                                         (d972
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7)
                                            (coe (\ v20 v21 v22 -> C428 v21 v22) erased v13 v14)
                                            (coe v16)
                                            (coe
                                               (\ v20 v21 v22 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                               erased v10 v11))
                                         (let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v20) in
                                          coe
                                            MAlonzo.Code.Relation.Binary.Core.d414
                                            (MAlonzo.Code.Algebra.Structures.d92
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d326
                                                           (coe
                                                              (MAlonzo.Code.Algebra.Structures.d1210
                                                                 (coe v21))))))))
                                            v10))
                                      (let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4) in
                                       let v20
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe v19) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.Core.d414
                                         (MAlonzo.Code.Algebra.Structures.d92
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d126
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d326
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d1210
                                                              (coe v20))))))))
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v17) (coe v11))))
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.Core.d418
                                               (coe
                                                  (MAlonzo.Code.Relation.Binary.d144
                                                     (let v18
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                (coe v4) in
                                                      let v19
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                (coe v4) in
                                                      let v20
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                (coe v4) in
                                                      let v21
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                (coe v4) in
                                                      let v22
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                (coe v4) in
                                                      let v23
                                                            = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                (coe v22) in
                                                      let v24
                                                            = MAlonzo.Code.Algebra.Structures.du1298
                                                                (coe v18) (coe v19) (coe v20)
                                                                (coe v21) (coe v23) in
                                                      let v25
                                                            = MAlonzo.Code.Algebra.Structures.d1106
                                                                (coe v24) in
                                                      let v26
                                                            = MAlonzo.Code.Algebra.Structures.d1018
                                                                (coe v25) in
                                                      let v27
                                                            = MAlonzo.Code.Algebra.Structures.d326
                                                                (coe v26) in
                                                      coe
                                                        (MAlonzo.Code.Algebra.Structures.du106
                                                           (coe
                                                              (MAlonzo.Code.Algebra.Structures.d126
                                                                 (coe v27)))))))))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                  v4
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7)
                                                     (coe
                                                        (\ v18 v19 v20 -> C428 v19 v20) erased v13
                                                        v14)
                                                     (coe
                                                        (\ v18 v19 v20 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                        erased v10 v11))
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v16)
                                                     (coe
                                                        (\ v18 v19 v20 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                        erased v10 v11)))
                                               v10)
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v17) (coe v11)))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (d438
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe
                                                     (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                                  (coe
                                                     (\ v18 v19 v20 ->
                                                        MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                     erased v10 v11))
                                               v10)
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                  v4
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v16)
                                                     (coe
                                                        (\ v18 v19 v20 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                        erased v10 v11))
                                                  v10)
                                               (d442
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v17) (coe v11))))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (d438
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7)
                                                  (coe
                                                     (\ v18 v19 v20 -> C428 v19 v20) erased v13 v14)
                                                  (coe
                                                     (\ v18 v19 v20 ->
                                                        MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                     erased v10 v11))
                                               v10)
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                               v4
                                               (coe
                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                  v4
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v16)
                                                     (coe
                                                        (\ v18 v19 v20 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                        erased v10 v11))
                                                  v10)
                                               (d442
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v17) (coe v11))))
                                         (coe
                                            (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du206
                                               (coe v4)
                                               (coe
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7)
                                                     (coe
                                                        (\ v18 v19 v20 -> C428 v19 v20) erased v13
                                                        v14)
                                                     (coe
                                                        (\ v18 v19 v20 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                        erased v10 v11)))
                                               (coe
                                                  (d438
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v16)
                                                     (coe
                                                        (\ v18 v19 v20 ->
                                                           MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                        erased v10 v11)))
                                               (coe
                                                  (d442
                                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                     (coe v5) (coe v6) (coe v7) (coe v17)
                                                     (coe v11)))
                                               (coe v10)))
                                         (let v18
                                                = MAlonzo.Code.Relation.Binary.Core.d414
                                                    (coe
                                                       (MAlonzo.Code.Relation.Binary.d144
                                                          (let v18
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                     (coe v4) in
                                                           let v19
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     (coe v4) in
                                                           let v20
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                     (coe v4) in
                                                           let v21
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                     (coe v4) in
                                                           let v22
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                     (coe v4) in
                                                           let v23
                                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                     (coe v22) in
                                                           let v24
                                                                 = MAlonzo.Code.Algebra.Structures.du1298
                                                                     (coe v18) (coe v19) (coe v20)
                                                                     (coe v21) (coe v23) in
                                                           let v25
                                                                 = MAlonzo.Code.Algebra.Structures.d1106
                                                                     (coe v24) in
                                                           let v26
                                                                 = MAlonzo.Code.Algebra.Structures.d1018
                                                                     (coe v25) in
                                                           let v27
                                                                 = MAlonzo.Code.Algebra.Structures.d326
                                                                     (coe v26) in
                                                           coe
                                                             (MAlonzo.Code.Algebra.Structures.du106
                                                                (coe
                                                                   (MAlonzo.Code.Algebra.Structures.d126
                                                                      (coe v27))))))) in
                                          let v19
                                                = coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    v4
                                                    (coe
                                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                       v4
                                                       (d438
                                                          (coe v0) (coe v1) (coe v2) (coe v3)
                                                          (coe v4) (coe v5) (coe v6) (coe v7)
                                                          (coe
                                                             (\ v19 v20 v21 -> C428 v20 v21) erased
                                                             v13 v14)
                                                          (coe
                                                             (\ v19 v20 v21 ->
                                                                MAlonzo.Code.Data.Vec.Base.C36
                                                                  v20 v21)
                                                             erased v10 v11))
                                                       v10)
                                                    (coe
                                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                       v4
                                                       (coe
                                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          v4
                                                          (d438
                                                             (coe v0) (coe v1) (coe v2) (coe v3)
                                                             (coe v4) (coe v5) (coe v6) (coe v7)
                                                             (coe v16)
                                                             (coe
                                                                (\ v19 v20 v21 ->
                                                                   MAlonzo.Code.Data.Vec.Base.C36
                                                                     v20 v21)
                                                                erased v10 v11))
                                                          v10)
                                                       (d442
                                                          (coe v0) (coe v1) (coe v2) (coe v3)
                                                          (coe v4) (coe v5) (coe v6) (coe v7)
                                                          (coe v17) (coe v11))) in
                                          coe
                                            (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                               (coe v18 v19))))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1056 = "Algebra.Solver.Ring.*NH-homo"
d1056 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T420 ->
  T418 -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v9 of
      C424
        -> let v13
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                     (coe v4) in
           let v14
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe v13) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d416
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v14))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                (d442
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v11))
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                   (coe v4)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                (coe v4))
             (let v15
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                        (coe v4) in
              let v16
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                        (coe v4) in
              let v17
                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                        (coe v4) in
              coe
                MAlonzo.Code.Algebra.Structures.du1294 v15 v16
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                   (coe v17))
                (d442
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v8) (coe v11)))
      C428 v13 v14
        -> let v15
                 = d502
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v8) (coe (du620 (coe v3) (coe v7))) in
           case coe v15 of
             MAlonzo.Code.Data.Maybe.Base.C28 v16
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v17) (coe v18) (coe v19) (coe v20)
                                                    (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v24) in
                                          let v26
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v25) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v26)))))))))
                             (coe
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v17 v18 v19 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v11))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v17 v18 v19 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11))))
                             (let v17
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                        (coe v4) in
                              let v18
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                        (coe v17) in
                              coe
                                MAlonzo.Code.Relation.Binary.Core.d416
                                (MAlonzo.Code.Algebra.Structures.d92
                                   (coe
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1210
                                                     (coe v18))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                      (coe v4))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v13)
                                            (coe
                                               (\ v19 v20 v21 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v20 v21)
                                               erased v10 v11))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v14) (coe v11))))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4))
                                (coe
                                   MAlonzo.Code.Algebra.Structures.d1216
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                      (coe
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                            (coe v4))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v13)
                                            (coe
                                               (\ v19 v20 v21 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v20 v21)
                                               erased v10 v11))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v14) (coe v11)))))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v21) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v17) (coe v18) (coe v19) (coe v20)
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v23) in
                                                let v25
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v24) in
                                                let v26
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v25) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v26)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                         (coe v4))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11))))
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe
                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4))) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.d94
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1212
                                                     (coe v17))))))
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                         (coe v4))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (d870
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v16) (coe v11))
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4) in
                                       let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe v18) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.Core.d414
                                         (MAlonzo.Code.Algebra.Structures.d92
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d126
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d326
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d1210
                                                              (coe v19))))))))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (d438
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v13)
                                                  (coe
                                                     (\ v20 v21 v22 ->
                                                        MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                     erased v10 v11))
                                               v10)
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14) (coe v11)))))
                                   (let v17
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v21) in
                                                     let v23
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v17) (coe v18) (coe v19)
                                                               (coe v20) (coe v22) in
                                                     let v24
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v23) in
                                                     let v25
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v24) in
                                                     let v26
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v25) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v26))))))) in
                                    let v18
                                          = coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                              v4
                                              (d442
                                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                 (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                 v4
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    v4
                                                    (d438
                                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                       (coe v5) (coe v6) (coe v7) (coe v13)
                                                       (coe
                                                          (\ v18 v19 v20 ->
                                                             MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                          erased v10 v11))
                                                    v10)
                                                 (d442
                                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                    (coe v5) (coe v6) (coe v7) (coe v14)
                                                    (coe v11))) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v17 v18))))))))
             MAlonzo.Code.Data.Maybe.Base.C30
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v16) (coe v17) (coe v18) (coe v19)
                                                    (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v24) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v25)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7)
                                      (coe
                                         (d702
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v13)))
                                      (coe
                                         (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                         erased v10 v11))
                                   v10)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d714
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)))
                                   (coe v11)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v16 v17 v18 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                            erased v10 v11)))
                                   v10)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v11))
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v11))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v16 v17 v18 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11))))
                             (let v16
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                              (coe v4))) in
                              coe
                                MAlonzo.Code.Algebra.Structures.d94
                                (MAlonzo.Code.Algebra.Structures.d126
                                   (coe
                                      (MAlonzo.Code.Algebra.Structures.d326
                                         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v16))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7)
                                      (coe
                                         (d702
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v13)))
                                      (coe
                                         (\ v17 v18 v19 -> MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                         erased v10 v11))
                                   v10)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v17 v18 v19 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                            erased v10 v11)))
                                   v10)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d714
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v14)))
                                   (coe v11))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v11))
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11)))
                                (let v17
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                           (coe
                                              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4))) in
                                 coe
                                   MAlonzo.Code.Algebra.Structures.d94
                                   (MAlonzo.Code.Algebra.Structures.d126
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d326
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d1212 (coe v17))))))
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7)
                                      (coe
                                         (d702
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v13)))
                                      (coe
                                         (\ v18 v19 v20 -> MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                         erased v10 v11))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v18 v19 v20 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                            erased v10 v11)))
                                   v10 v10
                                   (d1056
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v8) (coe v13) (coe v10) (coe v11))
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                              (coe v4) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe v18) in
                                    coe
                                      MAlonzo.Code.Relation.Binary.Core.d414
                                      (MAlonzo.Code.Algebra.Structures.d92
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d126
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d326
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d1210
                                                           (coe v19))))))))
                                      v10))
                                (d1088
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v8) (coe v14) (coe v11)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v16
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v20) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v16) (coe v17) (coe v18) (coe v19)
                                                          (coe v21) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v23) in
                                                let v25
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v24) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v25)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v11))
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11)))
                                         v10)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v8) (coe v11))
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v8) (coe v11))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11))))
                                   (coe
                                      (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du270
                                         (coe v4)
                                         (coe
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v8) (coe v11)))
                                         (coe
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11)))
                                         (coe
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14) (coe v11)))
                                         (coe v10)))
                                   (let v16
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v16
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v20) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v16) (coe v17) (coe v18)
                                                               (coe v19) (coe v21) in
                                                     let v23
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v22) in
                                                     let v24
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v23) in
                                                     let v25
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v24) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v25))))))) in
                                    let v17
                                          = coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                              v4
                                              (d442
                                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                 (coe v5) (coe v6) (coe v7) (coe v8) (coe v11))
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                 v4
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    v4
                                                    (d438
                                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                       (coe v5) (coe v6) (coe v7) (coe v13)
                                                       (coe
                                                          (\ v17 v18 v19 ->
                                                             MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                          erased v10 v11))
                                                    v10)
                                                 (d442
                                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                    (coe v5) (coe v6) (coe v7) (coe v14)
                                                    (coe v11))) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v16 v17))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1068 = "Algebra.Solver.Ring.*HN-homo"
d1068 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T418 ->
  T420 -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1068 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11
  = case coe v8 of
      C424
        -> let v13
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                     (coe v4) in
           let v14
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe v13) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d416
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v14))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                   (coe v4))
                (d442
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v9) (coe v11)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                (coe v4))
             (coe
                MAlonzo.Code.Algebra.Structures.d1216
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                   (coe
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                         (coe v4))))
                (d442
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v9) (coe v11)))
      C428 v13 v14
        -> let v15
                 = d502
                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                     (coe v7) (coe v9) (coe (du620 (coe v3) (coe v7))) in
           case coe v15 of
             MAlonzo.Code.Data.Maybe.Base.C28 v16
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v17) (coe v18) (coe v19) (coe v20)
                                                    (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v24) in
                                          let v26
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v25) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v26)))))))))
                             (coe
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v17 v18 v19 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11)))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v17 v18 v19 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11)))
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v9) (coe v11)))
                             (let v17
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                        (coe v4) in
                              let v18
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                        (coe v17) in
                              coe
                                MAlonzo.Code.Relation.Binary.Core.d416
                                (MAlonzo.Code.Algebra.Structures.d92
                                   (coe
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1210
                                                     (coe v18))))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v13)
                                            (coe
                                               (\ v19 v20 v21 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v20 v21)
                                               erased v10 v11))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v14) (coe v11)))
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                      (coe v4)))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4))
                                (let v19
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                           (coe v4) in
                                 let v20
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                           (coe v4) in
                                 let v21
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                           (coe v4) in
                                 coe
                                   MAlonzo.Code.Algebra.Structures.du1294 v19 v20
                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                      (coe v21))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d438
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v13)
                                            (coe
                                               (\ v22 v23 v24 ->
                                                  MAlonzo.Code.Data.Vec.Base.C36 v23 v24)
                                               erased v10 v11))
                                         v10)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v14) (coe v11)))))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v21) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v17) (coe v18) (coe v19) (coe v20)
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v23) in
                                                let v25
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v24) in
                                                let v26
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v25) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v26)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                         (coe v4)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v17 v18 v19 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11)))
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe
                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4))) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.d94
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1212
                                                     (coe v17))))))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v18 v19 v20 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                         (coe v4))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11))
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4) in
                                       let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe v18) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.Core.d414
                                         (MAlonzo.Code.Algebra.Structures.d92
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d126
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d326
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d1210
                                                              (coe v19))))))))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (d438
                                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                  (coe v5) (coe v6) (coe v7) (coe v13)
                                                  (coe
                                                     (\ v20 v21 v22 ->
                                                        MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                     erased v10 v11))
                                               v10)
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14) (coe v11))))
                                      (d870
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v16) (coe v11)))
                                   (let v17
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v21) in
                                                     let v23
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v17) (coe v18) (coe v19)
                                                               (coe v20) (coe v22) in
                                                     let v24
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v23) in
                                                     let v25
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v24) in
                                                     let v26
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v25) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v26))))))) in
                                    let v18
                                          = coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                              v4
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                 v4
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    v4
                                                    (d438
                                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                       (coe v5) (coe v6) (coe v7) (coe v13)
                                                       (coe
                                                          (\ v18 v19 v20 ->
                                                             MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                                          erased v10 v11))
                                                    v10)
                                                 (d442
                                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                    (coe v5) (coe v6) (coe v7) (coe v14) (coe v11)))
                                              (d442
                                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                 (coe v5) (coe v6) (coe v7) (coe v9) (coe v11)) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v17 v18))))))))
             MAlonzo.Code.Data.Maybe.Base.C30
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v16) (coe v17) (coe v18) (coe v19)
                                                    (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v24) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v25)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7)
                                      (coe
                                         (d706
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v13) (coe v9)))
                                      (coe
                                         (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                         erased v10 v11))
                                   v10)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d714
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v14) (coe v9)))
                                   (coe v11)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v16 v17 v18 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                            erased v10 v11))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11)))
                                   v10)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11))
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v9) (coe v11))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v16 v17 v18 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                            erased v10 v11))
                                      v10)
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11)))
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v9) (coe v11)))
                             (let v16
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                              (coe v4))) in
                              coe
                                MAlonzo.Code.Algebra.Structures.d94
                                (MAlonzo.Code.Algebra.Structures.d126
                                   (coe
                                      (MAlonzo.Code.Algebra.Structures.d326
                                         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v16))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7)
                                      (coe
                                         (d706
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v13) (coe v9)))
                                      (coe
                                         (\ v17 v18 v19 -> MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                         erased v10 v11))
                                   v10)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v17 v18 v19 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                            erased v10 v11))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11)))
                                   v10)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d714
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v14) (coe v9)))
                                   (coe v11))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v14) (coe v11))
                                   (d442
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v9) (coe v11)))
                                (let v17
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                           (coe
                                              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4))) in
                                 coe
                                   MAlonzo.Code.Algebra.Structures.d94
                                   (MAlonzo.Code.Algebra.Structures.d126
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d326
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d1212 (coe v17))))))
                                   (d438
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7)
                                      (coe
                                         (d706
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v13) (coe v9)))
                                      (coe
                                         (\ v18 v19 v20 -> MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                         erased v10 v11))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d438
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v13)
                                         (coe
                                            (\ v18 v19 v20 ->
                                               MAlonzo.Code.Data.Vec.Base.C36 v19 v20)
                                            erased v10 v11))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11)))
                                   v10 v10
                                   (d1068
                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                      (coe v7) (coe v13) (coe v9) (coe v10) (coe v11))
                                   (let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                              (coe v4) in
                                    let v19
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe v18) in
                                    coe
                                      MAlonzo.Code.Relation.Binary.Core.d414
                                      (MAlonzo.Code.Algebra.Structures.d92
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d126
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d326
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d1210
                                                           (coe v19))))))))
                                      v10))
                                (d1088
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7) (coe v14) (coe v9) (coe v11)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v16
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v20) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v16) (coe v17) (coe v18) (coe v19)
                                                          (coe v21) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v23) in
                                                let v25
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v24) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v25)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11))
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v9) (coe v11)))
                                         v10)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11))
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v9) (coe v11))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11))
                                            v10)
                                         (d442
                                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                            (coe v6) (coe v7) (coe v14) (coe v11)))
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v9) (coe v11)))
                                   (coe
                                      (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du246
                                         (coe v4)
                                         (coe
                                            (d438
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v13)
                                               (coe
                                                  (\ v16 v17 v18 ->
                                                     MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                                  erased v10 v11)))
                                         (coe
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v14) (coe v11)))
                                         (coe
                                            (d442
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v9) (coe v11)))
                                         (coe v10)))
                                   (let v16
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v16
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v20) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v16) (coe v17) (coe v18)
                                                               (coe v19) (coe v21) in
                                                     let v23
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v22) in
                                                     let v24
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v23) in
                                                     let v25
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v24) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v25))))))) in
                                    let v17
                                          = coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                              v4
                                              (coe
                                                 MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                 v4
                                                 (coe
                                                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    v4
                                                    (d438
                                                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                       (coe v5) (coe v6) (coe v7) (coe v13)
                                                       (coe
                                                          (\ v17 v18 v19 ->
                                                             MAlonzo.Code.Data.Vec.Base.C36 v18 v19)
                                                          erased v10 v11))
                                                    v10)
                                                 (d442
                                                    (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                    (coe v5) (coe v6) (coe v7) (coe v14) (coe v11)))
                                              (d442
                                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                 (coe v5) (coe v6) (coe v7) (coe v9) (coe v11)) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v16 v17))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1078 = "Algebra.Solver.Ring.*H-homo"
d1078 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T418 -> T418 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1078 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C424
        -> let v12
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe
                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                           (coe v4))) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d416
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v12))))))))
             (coe
                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                   (coe v4))
                (d438
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v9) (coe v10)))
             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                (coe v4))
             (coe
                MAlonzo.Code.Algebra.Structures.d1216
                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                   (coe
                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                         (coe v4))))
                (d438
                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                   (coe v7) (coe v9) (coe v10)))
      C428 v12 v13
        -> case coe v9 of
             C424
               -> let v15
                        = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                            (coe
                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                  (coe v4))) in
                  coe
                    MAlonzo.Code.Relation.Binary.Core.d416
                    (MAlonzo.Code.Algebra.Structures.d92
                       (coe
                          (MAlonzo.Code.Algebra.Structures.d126
                             (coe
                                (MAlonzo.Code.Algebra.Structures.d326
                                   (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v15))))))))
                    (coe
                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                       (d438
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe (\ v16 v17 v18 -> C428 v17 v18) erased v12 v13)
                          (coe v10))
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                          (coe v4)))
                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                       (coe v4))
                    (let v16
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                               (coe v4) in
                     let v17
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                               (coe v4) in
                     let v18
                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                               (coe v4) in
                     coe
                       MAlonzo.Code.Algebra.Structures.du1294 v16 v17
                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                          (coe v18))
                       (d438
                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                          (coe v7) (coe (\ v19 v20 v21 -> C428 v20 v21) erased v12 v13)
                          (coe v10)))
             C428 v15 v16
               -> case coe v10 of
                    MAlonzo.Code.Data.Vec.Base.C36 v18 v19
                      -> coe
                           (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                              (coe
                                 (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                    (coe
                                       (MAlonzo.Code.Relation.Binary.Core.d418
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.d144
                                                (let v20
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                           (coe v4) in
                                                 let v21
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                           (coe v4) in
                                                 let v22
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                           (coe v4) in
                                                 let v23
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                           (coe v4) in
                                                 let v24
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4) in
                                                 let v25
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                           (coe v24) in
                                                 let v26
                                                       = MAlonzo.Code.Algebra.Structures.du1298
                                                           (coe v20) (coe v21) (coe v22) (coe v23)
                                                           (coe v25) in
                                                 let v27
                                                       = MAlonzo.Code.Algebra.Structures.d1106
                                                           (coe v26) in
                                                 let v28
                                                       = MAlonzo.Code.Algebra.Structures.d1018
                                                           (coe v27) in
                                                 let v29
                                                       = MAlonzo.Code.Algebra.Structures.d326
                                                           (coe v28) in
                                                 coe
                                                   (MAlonzo.Code.Algebra.Structures.du106
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d126
                                                            (coe v29)))))))))
                                    (coe
                                       (d438
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7)
                                          (coe
                                             (d638
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d688
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7)
                                                      (coe
                                                         (d710
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12) (coe v15)))
                                                      (coe
                                                         (d660
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d706
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe v16)))
                                                            (coe
                                                               (d702
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v13)
                                                                  (coe v15)))))))
                                                (coe
                                                   (d714
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v13)
                                                      (coe v16)))))
                                          (coe
                                             (\ v20 v21 v22 ->
                                                MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                             erased v18 v19)))
                                    (coe
                                       (d438
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7)
                                          (coe
                                             (\ v20 v21 v22 -> C428 v21 v22) erased
                                             (d688
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d710
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe v15)))
                                                (coe
                                                   (d660
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7)
                                                      (coe
                                                         (d706
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12) (coe v16)))
                                                      (coe
                                                         (d702
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v13) (coe v15))))))
                                             (d714
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v16)))
                                          (coe
                                             (\ v20 v21 v22 ->
                                                MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                             erased v18 v19)))
                                    (coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                       v4
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                          v4
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             v4
                                             (d438
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v12)
                                                (coe
                                                   (\ v20 v21 v22 ->
                                                      MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                   erased v18 v19))
                                             v18)
                                          (d442
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v13) (coe v19)))
                                       (coe
                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                          v4
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             v4
                                             (d438
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v15)
                                                (coe
                                                   (\ v20 v21 v22 ->
                                                      MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                   erased v18 v19))
                                             v18)
                                          (d442
                                             (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                             (coe v6) (coe v7) (coe v16) (coe v19))))
                                    (coe
                                       (d896
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7)
                                          (coe
                                             (d688
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d710
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe v15)))
                                                (coe
                                                   (d660
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7)
                                                      (coe
                                                         (d706
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12) (coe v16)))
                                                      (coe
                                                         (d702
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v13) (coe v15)))))))
                                          (coe
                                             (d714
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v16)))
                                          (coe
                                             (\ v20 v21 v22 ->
                                                MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                             erased v18 v19)))
                                    (coe
                                       (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.Core.d418
                                                (coe
                                                   (MAlonzo.Code.Relation.Binary.d144
                                                      (let v20
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                 (coe v4) in
                                                       let v21
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                 (coe v4) in
                                                       let v22
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                 (coe v4) in
                                                       let v23
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                 (coe v4) in
                                                       let v24
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                 (coe v4) in
                                                       let v25
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                 (coe v24) in
                                                       let v26
                                                             = MAlonzo.Code.Algebra.Structures.du1298
                                                                 (coe v20) (coe v21) (coe v22)
                                                                 (coe v23) (coe v25) in
                                                       let v27
                                                             = MAlonzo.Code.Algebra.Structures.d1106
                                                                 (coe v26) in
                                                       let v28
                                                             = MAlonzo.Code.Algebra.Structures.d1018
                                                                 (coe v27) in
                                                       let v29
                                                             = MAlonzo.Code.Algebra.Structures.d326
                                                                 (coe v28) in
                                                       coe
                                                         (MAlonzo.Code.Algebra.Structures.du106
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d126
                                                                  (coe v29)))))))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (d438
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7)
                                                   (coe
                                                      (d688
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe
                                                            (d710
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v15)))
                                                         (coe
                                                            (d660
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d706
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16)))
                                                               (coe
                                                                  (d702
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15)))))))
                                                   (coe
                                                      (\ v20 v21 v22 ->
                                                         MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                      erased v18 v19))
                                                v18)
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d714
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v13)
                                                      (coe v16)))
                                                (coe v19)))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (d438
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe
                                                            (d710
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v15)))
                                                         (coe
                                                            (\ v20 v21 v22 ->
                                                               MAlonzo.Code.Data.Vec.Base.C36
                                                                 v21 v22)
                                                            erased v18 v19))
                                                      v18)
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7)
                                                      (coe
                                                         (d660
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d706
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe v16)))
                                                            (coe
                                                               (d702
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v13)
                                                                  (coe v15)))))
                                                      (coe
                                                         (\ v20 v21 v22 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                         erased v18 v19)))
                                                v18)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v13) (coe v19))
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v16) (coe v19))))
                                          (coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             v4
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   v4
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v12)
                                                      (coe
                                                         (\ v20 v21 v22 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                         erased v18 v19))
                                                   v18)
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v13) (coe v19)))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   v4
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v15)
                                                      (coe
                                                         (\ v20 v21 v22 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v21 v22)
                                                         erased v18 v19))
                                                   v18)
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v16) (coe v19))))
                                          (let v20
                                                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4))) in
                                           coe
                                             MAlonzo.Code.Algebra.Structures.d94
                                             (MAlonzo.Code.Algebra.Structures.d126
                                                (coe
                                                   (MAlonzo.Code.Algebra.Structures.d326
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d1210
                                                            (coe v20))))))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (d438
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7)
                                                   (coe
                                                      (d688
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe
                                                            (d710
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v15)))
                                                         (coe
                                                            (d660
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d706
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16)))
                                                               (coe
                                                                  (d702
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15)))))))
                                                   (coe
                                                      (\ v21 v22 v23 ->
                                                         MAlonzo.Code.Data.Vec.Base.C36 v22 v23)
                                                      erased v18 v19))
                                                v18)
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (d438
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe
                                                            (d710
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v15)))
                                                         (coe
                                                            (\ v21 v22 v23 ->
                                                               MAlonzo.Code.Data.Vec.Base.C36
                                                                 v22 v23)
                                                            erased v18 v19))
                                                      v18)
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7)
                                                      (coe
                                                         (d660
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d706
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe v16)))
                                                            (coe
                                                               (d702
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v13)
                                                                  (coe v15)))))
                                                      (coe
                                                         (\ v21 v22 v23 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v22 v23)
                                                         erased v18 v19)))
                                                v18)
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7)
                                                (coe
                                                   (d714
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7) (coe v13)
                                                      (coe v16)))
                                                (coe v19))
                                             (coe
                                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                v4
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v13) (coe v19))
                                                (d442
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7) (coe v16) (coe v19)))
                                             (let v21
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                              (coe v4))) in
                                              coe
                                                MAlonzo.Code.Algebra.Structures.d94
                                                (MAlonzo.Code.Algebra.Structures.d126
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d326
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d1212
                                                               (coe v21))))))
                                                (d438
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7)
                                                   (coe
                                                      (d688
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe
                                                            (d710
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v15)))
                                                         (coe
                                                            (d660
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d706
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16)))
                                                               (coe
                                                                  (d702
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15)))))))
                                                   (coe
                                                      (\ v22 v23 v24 ->
                                                         MAlonzo.Code.Data.Vec.Base.C36 v23 v24)
                                                      erased v18 v19))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (d438
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe
                                                            (d710
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v15)))
                                                         (coe
                                                            (\ v22 v23 v24 ->
                                                               MAlonzo.Code.Data.Vec.Base.C36
                                                                 v23 v24)
                                                            erased v18 v19))
                                                      v18)
                                                   (d438
                                                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                      (coe v5) (coe v6) (coe v7)
                                                      (coe
                                                         (d660
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d706
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe v16)))
                                                            (coe
                                                               (d702
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v13)
                                                                  (coe v15)))))
                                                      (coe
                                                         (\ v22 v23 v24 ->
                                                            MAlonzo.Code.Data.Vec.Base.C36 v23 v24)
                                                         erased v18 v19)))
                                                v18 v18
                                                (d1026
                                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                   (coe v5) (coe v6) (coe v7)
                                                   (coe
                                                      (d710
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v12) (coe v15)))
                                                   (coe
                                                      (d660
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe
                                                            (d706
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v16)))
                                                         (coe
                                                            (d702
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v13) (coe v15)))))
                                                   (coe v18) (coe v19))
                                                (let v22
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                           (coe v4) in
                                                 let v23
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                           (coe v22) in
                                                 coe
                                                   MAlonzo.Code.Relation.Binary.Core.d414
                                                   (MAlonzo.Code.Algebra.Structures.d92
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d126
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d326
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d1210
                                                                        (coe v23))))))))
                                                   v18))
                                             (d1088
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v13) (coe v16)
                                                (coe v19)))
                                          (coe
                                             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                (coe
                                                   (MAlonzo.Code.Relation.Binary.Core.d418
                                                      (coe
                                                         (MAlonzo.Code.Relation.Binary.d144
                                                            (let v20
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                       (coe v4) in
                                                             let v21
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                       (coe v4) in
                                                             let v22
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                       (coe v4) in
                                                             let v23
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                       (coe v4) in
                                                             let v24
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                       (coe v4) in
                                                             let v25
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                       (coe v24) in
                                                             let v26
                                                                   = MAlonzo.Code.Algebra.Structures.du1298
                                                                       (coe v20) (coe v21) (coe v22)
                                                                       (coe v23) (coe v25) in
                                                             let v27
                                                                   = MAlonzo.Code.Algebra.Structures.d1106
                                                                       (coe v26) in
                                                             let v28
                                                                   = MAlonzo.Code.Algebra.Structures.d1018
                                                                       (coe v27) in
                                                             let v29
                                                                   = MAlonzo.Code.Algebra.Structures.d326
                                                                       (coe v28) in
                                                             coe
                                                               (MAlonzo.Code.Algebra.Structures.du106
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                                        (coe v29)))))))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d710
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v20 v21 v22 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v21 v22)
                                                                  erased v18 v19))
                                                            v18)
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d660
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7)
                                                                  (coe
                                                                     (d706
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe v16)))
                                                                  (coe
                                                                     (d702
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v15)))))
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19)))
                                                      v18)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19))
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe
                                                                     (\ v20 v21 v22 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v21 v22)
                                                                     erased v18 v19))
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v15)
                                                                  (coe
                                                                     (\ v20 v21 v22 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v21 v22)
                                                                     erased v18 v19)))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d706
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16)))
                                                               (coe
                                                                  (\ v20 v21 v22 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v21 v22)
                                                                  erased v18 v19))
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d702
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v20 v21 v22 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v21 v22)
                                                                  erased v18 v19))))
                                                      v18)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19))
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19))))
                                                (coe
                                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   v4
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v12)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19))
                                                         v18)
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v15)
                                                            (coe
                                                               (\ v20 v21 v22 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v21 v22)
                                                               erased v18 v19))
                                                         v18)
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19))))
                                                (let v20
                                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                           (coe
                                                              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                 (coe v4))) in
                                                 coe
                                                   MAlonzo.Code.Algebra.Structures.d94
                                                   (MAlonzo.Code.Algebra.Structures.d126
                                                      (coe
                                                         (MAlonzo.Code.Algebra.Structures.d326
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d1210
                                                                  (coe v20))))))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d710
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v21 v22 v23 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v22 v23)
                                                                  erased v18 v19))
                                                            v18)
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d660
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7)
                                                                  (coe
                                                                     (d706
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe v16)))
                                                                  (coe
                                                                     (d702
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v15)))))
                                                            (coe
                                                               (\ v21 v22 v23 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v22 v23)
                                                               erased v18 v19)))
                                                      v18)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe
                                                                     (\ v21 v22 v23 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v22 v23)
                                                                     erased v18 v19))
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v15)
                                                                  (coe
                                                                     (\ v21 v22 v23 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v22 v23)
                                                                     erased v18 v19)))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d706
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16)))
                                                               (coe
                                                                  (\ v21 v22 v23 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v22 v23)
                                                                  erased v18 v19))
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d702
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v21 v22 v23 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v22 v23)
                                                                  erased v18 v19))))
                                                      v18)
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19))
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19)))
                                                   (coe
                                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                      v4
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v13) (coe v19))
                                                      (d442
                                                         (coe v0) (coe v1) (coe v2) (coe v3)
                                                         (coe v4) (coe v5) (coe v6) (coe v7)
                                                         (coe v16) (coe v19)))
                                                   (let v21
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                              (coe
                                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                    (coe v4))) in
                                                    coe
                                                      MAlonzo.Code.Algebra.Structures.d94
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d326
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d1212
                                                                     (coe v21))))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d710
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v22 v23 v24 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v23 v24)
                                                                  erased v18 v19))
                                                            v18)
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d660
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7)
                                                                  (coe
                                                                     (d706
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe v16)))
                                                                  (coe
                                                                     (d702
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v15)))))
                                                            (coe
                                                               (\ v22 v23 v24 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v23 v24)
                                                               erased v18 v19)))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe
                                                                     (\ v22 v23 v24 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v23 v24)
                                                                     erased v18 v19))
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v15)
                                                                  (coe
                                                                     (\ v22 v23 v24 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v23 v24)
                                                                     erased v18 v19)))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d706
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16)))
                                                               (coe
                                                                  (\ v22 v23 v24 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v23 v24)
                                                                  erased v18 v19))
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d702
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v22 v23 v24 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v23 v24)
                                                                  erased v18 v19))))
                                                      v18 v18
                                                      (let v22
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                 (coe
                                                                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                       (coe v4))) in
                                                       coe
                                                         MAlonzo.Code.Algebra.Structures.d94
                                                         (MAlonzo.Code.Algebra.Structures.d126
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d326
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d1210
                                                                        (coe v22))))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d710
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v23 v24 v25 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v24 v25)
                                                                  erased v18 v19))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe
                                                                     (\ v23 v24 v25 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v24 v25)
                                                                     erased v18 v19))
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v15)
                                                                  (coe
                                                                     (\ v23 v24 v25 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v24 v25)
                                                                     erased v18 v19)))
                                                            v18)
                                                         (d438
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d660
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7)
                                                                  (coe
                                                                     (d706
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe v16)))
                                                                  (coe
                                                                     (d702
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v15)))))
                                                            (coe
                                                               (\ v23 v24 v25 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v24 v25)
                                                               erased v18 v19))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                            v4
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d706
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16)))
                                                               (coe
                                                                  (\ v23 v24 v25 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v24 v25)
                                                                  erased v18 v19))
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d702
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v23 v24 v25 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v24 v25)
                                                                  erased v18 v19)))
                                                         (let v23
                                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                    (coe
                                                                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                          (coe v4))) in
                                                          coe
                                                            MAlonzo.Code.Algebra.Structures.d94
                                                            (MAlonzo.Code.Algebra.Structures.d126
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d326
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d1212
                                                                           (coe v23))))))
                                                            (d438
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe
                                                                  (d710
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v15)))
                                                               (coe
                                                                  (\ v24 v25 v26 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v25 v26)
                                                                  erased v18 v19))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe
                                                                     (\ v24 v25 v26 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v25 v26)
                                                                     erased v18 v19))
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v15)
                                                                  (coe
                                                                     (\ v24 v25 v26 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v25 v26)
                                                                     erased v18 v19)))
                                                            v18 v18
                                                            (d1078
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v12) (coe v15)
                                                               (coe
                                                                  (\ v24 v25 v26 ->
                                                                     MAlonzo.Code.Data.Vec.Base.C36
                                                                       v25 v26)
                                                                  erased v18 v19))
                                                            (let v24
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                       (coe v4) in
                                                             let v25
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                       (coe v24) in
                                                             coe
                                                               MAlonzo.Code.Relation.Binary.Core.d414
                                                               (MAlonzo.Code.Algebra.Structures.d92
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                                        (coe
                                                                           (MAlonzo.Code.Algebra.Structures.d326
                                                                              (coe
                                                                                 (MAlonzo.Code.Algebra.Structures.d1210
                                                                                    (coe v25))))))))
                                                               v18))
                                                         (d972
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe
                                                               (d706
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe v16)))
                                                            (coe
                                                               (d702
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v13)
                                                                  (coe v15)))
                                                            (coe
                                                               (\ v23 v24 v25 ->
                                                                  MAlonzo.Code.Data.Vec.Base.C36
                                                                    v24 v25)
                                                               erased v18 v19)))
                                                      (let v22
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                 (coe v4) in
                                                       let v23
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                 (coe v22) in
                                                       coe
                                                         MAlonzo.Code.Relation.Binary.Core.d414
                                                         (MAlonzo.Code.Algebra.Structures.d92
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d126
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d326
                                                                        (coe
                                                                           (MAlonzo.Code.Algebra.Structures.d1210
                                                                              (coe v23))))))))
                                                         v18))
                                                   (let v21
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                              (coe v4) in
                                                    let v22
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                              (coe v21) in
                                                    coe
                                                      MAlonzo.Code.Relation.Binary.Core.d414
                                                      (MAlonzo.Code.Algebra.Structures.d92
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d126
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d326
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d1210
                                                                           (coe v22))))))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (d442
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v13) (coe v19))
                                                         (d442
                                                            (coe v0) (coe v1) (coe v2) (coe v3)
                                                            (coe v4) (coe v5) (coe v6) (coe v7)
                                                            (coe v16) (coe v19)))))
                                                (coe
                                                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                      (coe
                                                         (MAlonzo.Code.Relation.Binary.Core.d418
                                                            (coe
                                                               (MAlonzo.Code.Relation.Binary.d144
                                                                  (let v20
                                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                             (coe v4) in
                                                                   let v21
                                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                             (coe v4) in
                                                                   let v22
                                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                             (coe v4) in
                                                                   let v23
                                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                             (coe v4) in
                                                                   let v24
                                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                             (coe v4) in
                                                                   let v25
                                                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                             (coe v24) in
                                                                   let v26
                                                                         = MAlonzo.Code.Algebra.Structures.du1298
                                                                             (coe v20) (coe v21)
                                                                             (coe v22) (coe v23)
                                                                             (coe v25) in
                                                                   let v27
                                                                         = MAlonzo.Code.Algebra.Structures.d1106
                                                                             (coe v26) in
                                                                   let v28
                                                                         = MAlonzo.Code.Algebra.Structures.d1018
                                                                             (coe v27) in
                                                                   let v29
                                                                         = MAlonzo.Code.Algebra.Structures.d326
                                                                             (coe v28) in
                                                                   coe
                                                                     (MAlonzo.Code.Algebra.Structures.du106
                                                                        (coe
                                                                           (MAlonzo.Code.Algebra.Structures.d126
                                                                              (coe v29)))))))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d706
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v12) (coe v16)))
                                                                     (coe
                                                                        (\ v20 v21 v22 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v21 v22)
                                                                        erased v18 v19))
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d702
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v13) (coe v15)))
                                                                     (coe
                                                                        (\ v20 v21 v22 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v21 v22)
                                                                        erased v18 v19))))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v13) (coe v19))
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v16) (coe v19))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19))
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v16)
                                                                        (coe v19)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19)))))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v13) (coe v19))
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v16) (coe v19))))
                                                      (coe
                                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         v4
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v12)
                                                                  (coe
                                                                     (\ v20 v21 v22 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v21 v22)
                                                                     erased v18 v19))
                                                               v18)
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v13) (coe v19)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d438
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v15)
                                                                  (coe
                                                                     (\ v20 v21 v22 ->
                                                                        MAlonzo.Code.Data.Vec.Base.C36
                                                                          v21 v22)
                                                                     erased v18 v19))
                                                               v18)
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v16) (coe v19))))
                                                      (let v20
                                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                 (coe
                                                                    (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                       (coe v4))) in
                                                       coe
                                                         MAlonzo.Code.Algebra.Structures.d94
                                                         (MAlonzo.Code.Algebra.Structures.d126
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Structures.d326
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d1210
                                                                        (coe v20))))))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v21 v22 v23 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v22 v23)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v21 v22 v23 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v22 v23)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d706
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v12) (coe v16)))
                                                                     (coe
                                                                        (\ v21 v22 v23 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v22 v23)
                                                                        erased v18 v19))
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d702
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v13) (coe v15)))
                                                                     (coe
                                                                        (\ v21 v22 v23 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v22 v23)
                                                                        erased v18 v19))))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v21 v22 v23 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v22 v23)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v21 v22 v23 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v22 v23)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v21 v22 v23 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v22 v23)
                                                                           erased v18 v19))
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v16)
                                                                        (coe v19)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v21 v22 v23 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v22 v23)
                                                                           erased v18 v19)))))
                                                            v18)
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v13) (coe v19))
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v16) (coe v19)))
                                                         (coe
                                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                            v4
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v13) (coe v19))
                                                            (d442
                                                               (coe v0) (coe v1) (coe v2) (coe v3)
                                                               (coe v4) (coe v5) (coe v6) (coe v7)
                                                               (coe v16) (coe v19)))
                                                         (let v21
                                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                    (coe
                                                                       (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                          (coe v4))) in
                                                          coe
                                                            MAlonzo.Code.Algebra.Structures.d94
                                                            (MAlonzo.Code.Algebra.Structures.d126
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d326
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d1212
                                                                           (coe v21))))))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v22 v23 v24 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v23 v24)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v22 v23 v24 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v23 v24)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d706
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v12) (coe v16)))
                                                                     (coe
                                                                        (\ v22 v23 v24 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v23 v24)
                                                                        erased v18 v19))
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d702
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v13) (coe v15)))
                                                                     (coe
                                                                        (\ v22 v23 v24 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v23 v24)
                                                                        erased v18 v19))))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v22 v23 v24 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v23 v24)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v22 v23 v24 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v23 v24)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v22 v23 v24 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v23 v24)
                                                                           erased v18 v19))
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v16)
                                                                        (coe v19)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v22 v23 v24 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v23 v24)
                                                                           erased v18 v19)))))
                                                            v18 v18
                                                            (let v22
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                       (coe
                                                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                             (coe v4))) in
                                                             coe
                                                               MAlonzo.Code.Algebra.Structures.d94
                                                               (MAlonzo.Code.Algebra.Structures.d126
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d326
                                                                        (coe
                                                                           (MAlonzo.Code.Algebra.Structures.d1210
                                                                              (coe v22))))))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v23 v24 v25 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v24 v25)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v23 v24 v25 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v24 v25)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v23 v24 v25 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v24 v25)
                                                                           erased v18 v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v23 v24 v25 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v24 v25)
                                                                           erased v18 v19)))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d706
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v12) (coe v16)))
                                                                     (coe
                                                                        (\ v23 v24 v25 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v24 v25)
                                                                        erased v18 v19))
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d702
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v13) (coe v15)))
                                                                     (coe
                                                                        (\ v23 v24 v25 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v24 v25)
                                                                        erased v18 v19)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v23 v24 v25 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v24 v25)
                                                                           erased v18 v19))
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v16)
                                                                        (coe v19)))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v23 v24 v25 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v24 v25)
                                                                           erased v18 v19))))
                                                               (let v23
                                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                          (coe v4) in
                                                                let v24
                                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                          (coe v23) in
                                                                coe
                                                                  MAlonzo.Code.Relation.Binary.Core.d414
                                                                  (MAlonzo.Code.Algebra.Structures.d92
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Structures.d326
                                                                                 (coe
                                                                                    (MAlonzo.Code.Algebra.Structures.d1210
                                                                                       (coe
                                                                                          v24))))))))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                        v4
                                                                        (d438
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v12)
                                                                           (coe
                                                                              (\ v25 v26 v27 ->
                                                                                 MAlonzo.Code.Data.Vec.Base.C36
                                                                                   v26 v27)
                                                                              erased v18 v19))
                                                                        (d438
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v15)
                                                                           (coe
                                                                              (\ v25 v26 v27 ->
                                                                                 MAlonzo.Code.Data.Vec.Base.C36
                                                                                   v26 v27)
                                                                              erased v18 v19)))
                                                                     v18))
                                                               (let v23
                                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                          (coe
                                                                             (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                                (coe v4))) in
                                                                coe
                                                                  MAlonzo.Code.Algebra.Structures.d94
                                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d326
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Structures.d1210
                                                                                 (coe v23))))))
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d706
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v12) (coe v16)))
                                                                     (coe
                                                                        (\ v24 v25 v26 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v25 v26)
                                                                        erased v18 v19))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v24 v25 v26 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v25 v26)
                                                                           erased v18 v19))
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v16)
                                                                        (coe v19)))
                                                                  (d438
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7)
                                                                     (coe
                                                                        (d702
                                                                           (coe v0) (coe v1)
                                                                           (coe v2) (coe v3)
                                                                           (coe v4) (coe v5)
                                                                           (coe v6) (coe v7)
                                                                           (coe v13) (coe v15)))
                                                                     (coe
                                                                        (\ v24 v25 v26 ->
                                                                           MAlonzo.Code.Data.Vec.Base.C36
                                                                             v25 v26)
                                                                        erased v18 v19))
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v19))
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v24 v25 v26 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v25 v26)
                                                                           erased v18 v19)))
                                                                  (d1068
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v12)
                                                                     (coe v16) (coe v18) (coe v19))
                                                                  (d1056
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v15) (coe v18)
                                                                     (coe v19))))
                                                            (let v22
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                       (coe v4) in
                                                             let v23
                                                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                       (coe v22) in
                                                             coe
                                                               MAlonzo.Code.Relation.Binary.Core.d414
                                                               (MAlonzo.Code.Algebra.Structures.d92
                                                                  (coe
                                                                     (MAlonzo.Code.Algebra.Structures.d126
                                                                        (coe
                                                                           (MAlonzo.Code.Algebra.Structures.d326
                                                                              (coe
                                                                                 (MAlonzo.Code.Algebra.Structures.d1210
                                                                                    (coe v23))))))))
                                                               v18))
                                                         (let v21
                                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                    (coe v4) in
                                                          let v22
                                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                    (coe v21) in
                                                          coe
                                                            MAlonzo.Code.Relation.Binary.Core.d414
                                                            (MAlonzo.Code.Algebra.Structures.d92
                                                               (coe
                                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                                     (coe
                                                                        (MAlonzo.Code.Algebra.Structures.d326
                                                                           (coe
                                                                              (MAlonzo.Code.Algebra.Structures.d1210
                                                                                 (coe v22))))))))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (d442
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v13)
                                                                  (coe v19))
                                                               (d442
                                                                  (coe v0) (coe v1) (coe v2)
                                                                  (coe v3) (coe v4) (coe v5)
                                                                  (coe v6) (coe v7) (coe v16)
                                                                  (coe v19)))))
                                                      (coe
                                                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                                            (coe
                                                               (MAlonzo.Code.Relation.Binary.Core.d418
                                                                  (coe
                                                                     (MAlonzo.Code.Relation.Binary.d144
                                                                        (let v20
                                                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                                   (coe v4) in
                                                                         let v21
                                                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                                   (coe v4) in
                                                                         let v22
                                                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                                   (coe v4) in
                                                                         let v23
                                                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                                   (coe v4) in
                                                                         let v24
                                                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                                   (coe v4) in
                                                                         let v25
                                                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                                   (coe v24) in
                                                                         let v26
                                                                               = MAlonzo.Code.Algebra.Structures.du1298
                                                                                   (coe v20)
                                                                                   (coe v21)
                                                                                   (coe v22)
                                                                                   (coe v23)
                                                                                   (coe v25) in
                                                                         let v27
                                                                               = MAlonzo.Code.Algebra.Structures.d1106
                                                                                   (coe v26) in
                                                                         let v28
                                                                               = MAlonzo.Code.Algebra.Structures.d1018
                                                                                   (coe v27) in
                                                                         let v29
                                                                               = MAlonzo.Code.Algebra.Structures.d326
                                                                                   (coe v28) in
                                                                         coe
                                                                           (MAlonzo.Code.Algebra.Structures.du106
                                                                              (coe
                                                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                                                    (coe
                                                                                       v29)))))))))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                     v4
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                        v4
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                           v4
                                                                           (d438
                                                                              (coe v0) (coe v1)
                                                                              (coe v2) (coe v3)
                                                                              (coe v4) (coe v5)
                                                                              (coe v6) (coe v7)
                                                                              (coe v12)
                                                                              (coe
                                                                                 (\ v20 v21 v22 ->
                                                                                    MAlonzo.Code.Data.Vec.Base.C36
                                                                                      v21 v22)
                                                                                 erased v18 v19))
                                                                           (d438
                                                                              (coe v0) (coe v1)
                                                                              (coe v2) (coe v3)
                                                                              (coe v4) (coe v5)
                                                                              (coe v6) (coe v7)
                                                                              (coe v15)
                                                                              (coe
                                                                                 (\ v20 v21 v22 ->
                                                                                    MAlonzo.Code.Data.Vec.Base.C36
                                                                                      v21 v22)
                                                                                 erased v18 v19)))
                                                                        v18)
                                                                     (coe
                                                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                        v4
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                           v4
                                                                           (d438
                                                                              (coe v0) (coe v1)
                                                                              (coe v2) (coe v3)
                                                                              (coe v4) (coe v5)
                                                                              (coe v6) (coe v7)
                                                                              (coe v12)
                                                                              (coe
                                                                                 (\ v20 v21 v22 ->
                                                                                    MAlonzo.Code.Data.Vec.Base.C36
                                                                                      v21 v22)
                                                                                 erased v18 v19))
                                                                           (d442
                                                                              (coe v0) (coe v1)
                                                                              (coe v2) (coe v3)
                                                                              (coe v4) (coe v5)
                                                                              (coe v6) (coe v7)
                                                                              (coe v16) (coe v19)))
                                                                        (coe
                                                                           MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                           v4
                                                                           (d442
                                                                              (coe v0) (coe v1)
                                                                              (coe v2) (coe v3)
                                                                              (coe v4) (coe v5)
                                                                              (coe v6) (coe v7)
                                                                              (coe v13) (coe v19))
                                                                           (d438
                                                                              (coe v0) (coe v1)
                                                                              (coe v2) (coe v3)
                                                                              (coe v4) (coe v5)
                                                                              (coe v6) (coe v7)
                                                                              (coe v15)
                                                                              (coe
                                                                                 (\ v20 v21 v22 ->
                                                                                    MAlonzo.Code.Data.Vec.Base.C36
                                                                                      v21 v22)
                                                                                 erased v18 v19)))))
                                                                  v18)
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                  v4
                                                                  (d442
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v19))
                                                                  (d442
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v16)
                                                                     (coe v19))))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19))
                                                                     v18)
                                                                  (d442
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v19)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19))
                                                                     v18)
                                                                  (d442
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v16)
                                                                     (coe v19))))
                                                            (coe
                                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               v4
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19))
                                                                     v18)
                                                                  (d442
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v13)
                                                                     (coe v19)))
                                                               (coe
                                                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                  v4
                                                                  (coe
                                                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                     v4
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19))
                                                                     v18)
                                                                  (d442
                                                                     (coe v0) (coe v1) (coe v2)
                                                                     (coe v3) (coe v4) (coe v5)
                                                                     (coe v6) (coe v7) (coe v16)
                                                                     (coe v19))))
                                                            (coe
                                                               (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du290
                                                                  (coe v4)
                                                                  (coe
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v12)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19)))
                                                                  (coe
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v13)
                                                                        (coe v19)))
                                                                  (coe
                                                                     (d438
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v15)
                                                                        (coe
                                                                           (\ v20 v21 v22 ->
                                                                              MAlonzo.Code.Data.Vec.Base.C36
                                                                                v21 v22)
                                                                           erased v18 v19)))
                                                                  (coe
                                                                     (d442
                                                                        (coe v0) (coe v1) (coe v2)
                                                                        (coe v3) (coe v4) (coe v5)
                                                                        (coe v6) (coe v7) (coe v16)
                                                                        (coe v19)))
                                                                  (coe v18)))
                                                            (let v20
                                                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                                                       (coe
                                                                          (MAlonzo.Code.Relation.Binary.d144
                                                                             (let v20
                                                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                                        (coe v4) in
                                                                              let v21
                                                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                                        (coe v4) in
                                                                              let v22
                                                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                                                        (coe v4) in
                                                                              let v23
                                                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                                                        (coe v4) in
                                                                              let v24
                                                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                                                        (coe v4) in
                                                                              let v25
                                                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                                                        (coe v24) in
                                                                              let v26
                                                                                    = MAlonzo.Code.Algebra.Structures.du1298
                                                                                        (coe v20)
                                                                                        (coe v21)
                                                                                        (coe v22)
                                                                                        (coe v23)
                                                                                        (coe v25) in
                                                                              let v27
                                                                                    = MAlonzo.Code.Algebra.Structures.d1106
                                                                                        (coe v26) in
                                                                              let v28
                                                                                    = MAlonzo.Code.Algebra.Structures.d1018
                                                                                        (coe v27) in
                                                                              let v29
                                                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                                                        (coe v28) in
                                                                              coe
                                                                                (MAlonzo.Code.Algebra.Structures.du106
                                                                                   (coe
                                                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                                                         (coe
                                                                                            v29))))))) in
                                                             let v21
                                                                   = coe
                                                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                       v4
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                          v4
                                                                          (coe
                                                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                             v4
                                                                             (d438
                                                                                (coe v0) (coe v1)
                                                                                (coe v2) (coe v3)
                                                                                (coe v4) (coe v5)
                                                                                (coe v6) (coe v7)
                                                                                (coe v12)
                                                                                (coe
                                                                                   (\ v21 v22 v23 ->
                                                                                      MAlonzo.Code.Data.Vec.Base.C36
                                                                                        v22 v23)
                                                                                   erased v18 v19))
                                                                             v18)
                                                                          (d442
                                                                             (coe v0) (coe v1)
                                                                             (coe v2) (coe v3)
                                                                             (coe v4) (coe v5)
                                                                             (coe v6) (coe v7)
                                                                             (coe v13) (coe v19)))
                                                                       (coe
                                                                          MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                                          v4
                                                                          (coe
                                                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                                             v4
                                                                             (d438
                                                                                (coe v0) (coe v1)
                                                                                (coe v2) (coe v3)
                                                                                (coe v4) (coe v5)
                                                                                (coe v6) (coe v7)
                                                                                (coe v15)
                                                                                (coe
                                                                                   (\ v21 v22 v23 ->
                                                                                      MAlonzo.Code.Data.Vec.Base.C36
                                                                                        v22 v23)
                                                                                   erased v18 v19))
                                                                             v18)
                                                                          (d442
                                                                             (coe v0) (coe v1)
                                                                             (coe v2) (coe v3)
                                                                             (coe v4) (coe v5)
                                                                             (coe v6) (coe v7)
                                                                             (coe v16)
                                                                             (coe v19))) in
                                                             coe
                                                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                                                  (coe v20 v21))))))))))))))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1088 = "Algebra.Solver.Ring.*N-homo"
d1088 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T420 -> T420 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1088 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v8 of
      C430 v11
        -> case coe v9 of
             C430 v12
               -> coe
                    MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d654 v5 v11
                    v12
             _ -> MAlonzo.RTE.mazUnreachableError
      C434 v12
        -> case coe v9 of
             C434 v14
               -> let v15 = subInt (coe v7) (coe (1 :: Integer)) in
                  coe
                    (d1078
                       (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                       (coe v15) (coe v12) (coe v14) (coe v10))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1214 = "Algebra.Solver.Ring.^N-homo"
d1214 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  T420 -> Integer -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1214 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = case coe v9 of
      0 -> coe
             (d882
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v10))
      _ -> let v11 = subInt (coe v9) (coe (1 :: Integer)) in
           coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v12
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             (coe v4) in
                                   let v13
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             (coe v4) in
                                   let v14
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                             (coe v4) in
                                   let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                             (coe v4) in
                                   let v16
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4) in
                                   let v17
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                             (coe v16) in
                                   let v18
                                         = MAlonzo.Code.Algebra.Structures.du1298
                                             (coe v12) (coe v13) (coe v14) (coe v15) (coe v17) in
                                   let v19 = MAlonzo.Code.Algebra.Structures.d1106 (coe v18) in
                                   let v20 = MAlonzo.Code.Algebra.Structures.d1018 (coe v19) in
                                   let v21 = MAlonzo.Code.Algebra.Structures.d326 (coe v20) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v21)))))))))
                      (coe
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d714
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8)
                                  (coe
                                     (d786
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v11)))))
                            (coe v10)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v10))
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d786
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v11)))
                            (coe v10)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8) (coe v10))
                         (MAlonzo.Code.Algebra.Operations.Semiring.du182
                            (coe
                               (MAlonzo.Code.Algebra.du1816
                                  (coe
                                     (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                        (coe v4)))))
                            (coe
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v10)))
                            (coe v11)))
                      (coe
                         (d1088
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               (d786
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v11)))
                            (coe v10)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v12
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   (coe v4) in
                                         let v13
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   (coe v4) in
                                         let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4) in
                                         let v15
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                   (coe v4) in
                                         let v16
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                   (coe v4) in
                                         let v17
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                   (coe v16) in
                                         let v18
                                               = MAlonzo.Code.Algebra.Structures.du1298
                                                   (coe v12) (coe v13) (coe v14) (coe v15)
                                                   (coe v17) in
                                         let v19
                                               = MAlonzo.Code.Algebra.Structures.d1106 (coe v18) in
                                         let v20
                                               = MAlonzo.Code.Algebra.Structures.d1018 (coe v19) in
                                         let v21 = MAlonzo.Code.Algebra.Structures.d326 (coe v20) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v21)))))))))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v10))
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d786
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v11)))
                                  (coe v10)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v10))
                               (MAlonzo.Code.Algebra.Operations.Semiring.du182
                                  (coe
                                     (MAlonzo.Code.Algebra.du1816
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                              (coe v4)))))
                                  (coe
                                     (d442
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v10)))
                                  (coe v11)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v10))
                               (MAlonzo.Code.Algebra.Operations.Semiring.du182
                                  (coe
                                     (MAlonzo.Code.Algebra.du1816
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                              (coe v4)))))
                                  (coe
                                     (d442
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v10)))
                                  (coe v11)))
                            (let v12
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                       (coe
                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4))) in
                             coe
                               MAlonzo.Code.Algebra.Structures.d94
                               (MAlonzo.Code.Algebra.Structures.d126
                                  (coe
                                     (MAlonzo.Code.Algebra.Structures.d326
                                        (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v12))))))
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v10))
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v10))
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d786
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v11)))
                                  (coe v10))
                               (MAlonzo.Code.Algebra.Operations.Semiring.du182
                                  (coe
                                     (MAlonzo.Code.Algebra.du1816
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                              (coe v4)))))
                                  (coe
                                     (d442
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8) (coe v10)))
                                  (coe v11))
                               (let v13
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                          (coe v4) in
                                let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                          (coe v13) in
                                coe
                                  MAlonzo.Code.Relation.Binary.Core.d414
                                  (MAlonzo.Code.Algebra.Structures.d92
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d126
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d326
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Structures.d1210
                                                       (coe v14))))))))
                                  (d442
                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                     (coe v7) (coe v8) (coe v10)))
                               (d1214
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8) (coe v11) (coe v10)))
                            (let v12
                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v12
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                        (coe v4) in
                                              let v13
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                        (coe v4) in
                                              let v14
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                        (coe v4) in
                                              let v15
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                        (coe v4) in
                                              let v16
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                        (coe v4) in
                                              let v17
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                        (coe v16) in
                                              let v18
                                                    = MAlonzo.Code.Algebra.Structures.du1298
                                                        (coe v12) (coe v13) (coe v14) (coe v15)
                                                        (coe v17) in
                                              let v19
                                                    = MAlonzo.Code.Algebra.Structures.d1106
                                                        (coe v18) in
                                              let v20
                                                    = MAlonzo.Code.Algebra.Structures.d1018
                                                        (coe v19) in
                                              let v21
                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                        (coe v20) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v21))))))) in
                             let v13
                                   = coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                       v4
                                       (d442
                                          (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                          (coe v6) (coe v7) (coe v8) (coe v10))
                                       (MAlonzo.Code.Algebra.Operations.Semiring.du182
                                          (coe
                                             (MAlonzo.Code.Algebra.du1816
                                                (coe
                                                   (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                                      (coe v4)))))
                                          (coe
                                             (d442
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8) (coe v10)))
                                          (coe v11)) in
                             coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                  (coe v12 v13))))))))
name1232 = "Algebra.Solver.Ring.-H‿-homo"
d1232 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T418 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1232 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Vec.Base.C36 v11 v12
        -> coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v13
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             (coe v4) in
                                   let v14
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             (coe v4) in
                                   let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                             (coe v4) in
                                   let v16
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                             (coe v4) in
                                   let v17
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4) in
                                   let v18
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                             (coe v17) in
                                   let v19
                                         = MAlonzo.Code.Algebra.Structures.du1298
                                             (coe v13) (coe v14) (coe v15) (coe v16) (coe v18) in
                                   let v20 = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                   let v21 = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                   let v22 = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v22)))))))))
                      (coe
                         (d438
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d702
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d800
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7)
                                        (coe
                                           (d630
                                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                              (coe v6) (coe v7)))))
                                  (coe v8)))
                            (coe
                               (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15) erased
                               v11 v12)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d800
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d630
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7)))))
                            (coe v12))
                         (d438
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15) erased
                               v11 v12)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                         (d438
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7) (coe v8)
                            (coe
                               (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15) erased
                               v11 v12)))
                      (coe
                         (d1056
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d800
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d630
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7)))))
                            (coe v8) (coe v11) (coe v12)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v13
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   (coe v4) in
                                         let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   (coe v4) in
                                         let v15
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4) in
                                         let v16
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                   (coe v4) in
                                         let v17
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                   (coe v4) in
                                         let v18
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                   (coe v17) in
                                         let v19
                                               = MAlonzo.Code.Algebra.Structures.du1298
                                                   (coe v13) (coe v14) (coe v15) (coe v16)
                                                   (coe v18) in
                                         let v20
                                               = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                         let v21
                                               = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                         let v22 = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v22)))))))))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d800
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7)
                                        (coe
                                           (d630
                                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                              (coe v6) (coe v7)))))
                                  (coe v12))
                               (d438
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8)
                                  (coe
                                     (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15)
                                     erased v11 v12)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                                  (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                     (coe v4)))
                               (d438
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8)
                                  (coe
                                     (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15)
                                     erased v11 v12)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                               (d438
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8)
                                  (coe
                                     (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15)
                                     erased v11 v12)))
                            (let v13
                                   = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                       (coe
                                          (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4))) in
                             coe
                               MAlonzo.Code.Algebra.Structures.d94
                               (MAlonzo.Code.Algebra.Structures.d126
                                  (coe
                                     (MAlonzo.Code.Algebra.Structures.d326
                                        (coe (MAlonzo.Code.Algebra.Structures.d1212 (coe v13))))))
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d800
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7)
                                        (coe
                                           (d630
                                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                              (coe v6) (coe v7)))))
                                  (coe v12))
                               (coe
                                  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                                  (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                     (coe v4)))
                               (d438
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8)
                                  (coe
                                     (\ v14 v15 v16 -> MAlonzo.Code.Data.Vec.Base.C36 v15 v16)
                                     erased v11 v12))
                               (d438
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v8)
                                  (coe
                                     (\ v14 v15 v16 -> MAlonzo.Code.Data.Vec.Base.C36 v15 v16)
                                     erased v11 v12))
                               (let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                          (coe v4) in
                                let v15
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                          (coe v14) in
                                coe
                                  MAlonzo.Code.Relation.Binary.Core.d418
                                  (MAlonzo.Code.Algebra.Structures.d92
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d126
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d326
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Structures.d1210
                                                       (coe v15))))))))
                                  (d442
                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                     (coe v7)
                                     (coe
                                        (d800
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7)
                                           (coe
                                              (d630
                                                 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                 (coe v5) (coe v6) (coe v7)))))
                                     (coe v12))
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                                     (d442
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7)
                                        (coe
                                           (d630
                                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                              (coe v6) (coe v7)))
                                        (coe v12)))
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                                     (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                        (coe v4)))
                                  (d1240
                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                     (coe v7)
                                     (coe
                                        (d630
                                           (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                           (coe v6) (coe v7)))
                                     (coe v12))
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d64
                                     (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                        (coe v4))
                                     (d442
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7)
                                        (coe
                                           (d630
                                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                              (coe v6) (coe v7)))
                                        (coe v12))
                                     (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                        (coe v4))
                                     (d882
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v12))))
                               (let v14
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                          (coe v4) in
                                let v15
                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                          (coe v14) in
                                coe
                                  MAlonzo.Code.Relation.Binary.Core.d414
                                  (MAlonzo.Code.Algebra.Structures.d92
                                     (coe
                                        (MAlonzo.Code.Algebra.Structures.d126
                                           (coe
                                              (MAlonzo.Code.Algebra.Structures.d326
                                                 (coe
                                                    (MAlonzo.Code.Algebra.Structures.d1210
                                                       (coe v15))))))))
                                  (d438
                                     (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                     (coe v7) (coe v8)
                                     (coe
                                        (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                        erased v11 v12))))
                            (coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.Core.d418
                                        (coe
                                           (MAlonzo.Code.Relation.Binary.d144
                                              (let v13
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                         (coe v4) in
                                               let v14
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                         (coe v4) in
                                               let v15
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                         (coe v4) in
                                               let v16
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                         (coe v4) in
                                               let v17
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                         (coe v4) in
                                               let v18
                                                     = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                         (coe v17) in
                                               let v19
                                                     = MAlonzo.Code.Algebra.Structures.du1298
                                                         (coe v13) (coe v14) (coe v15) (coe v16)
                                                         (coe v18) in
                                               let v20
                                                     = MAlonzo.Code.Algebra.Structures.d1106
                                                         (coe v19) in
                                               let v21
                                                     = MAlonzo.Code.Algebra.Structures.d1018
                                                         (coe v20) in
                                               let v22
                                                     = MAlonzo.Code.Algebra.Structures.d326
                                                         (coe v21) in
                                               coe
                                                 (MAlonzo.Code.Algebra.Structures.du106
                                                    (coe
                                                       (MAlonzo.Code.Algebra.Structures.d126
                                                          (coe v22)))))))))
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                     (coe
                                        MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196
                                        v4
                                        (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                           (coe v4)))
                                     (d438
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8)
                                        (coe
                                           (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15)
                                           erased v11 v12)))
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                                     (d438
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8)
                                        (coe
                                           (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15)
                                           erased v11 v12)))
                                  (coe
                                     MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                                     (d438
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v8)
                                        (coe
                                           (\ v13 v14 v15 -> MAlonzo.Code.Data.Vec.Base.C36 v14 v15)
                                           erased v11 v12)))
                                  (coe
                                     (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du330
                                        (coe v4)
                                        (coe
                                           (d438
                                              (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                              (coe v6) (coe v7) (coe v8)
                                              (coe
                                                 (\ v13 v14 v15 ->
                                                    MAlonzo.Code.Data.Vec.Base.C36 v14 v15)
                                                 erased v11 v12)))))
                                  (let v13
                                         = MAlonzo.Code.Relation.Binary.Core.d414
                                             (coe
                                                (MAlonzo.Code.Relation.Binary.d144
                                                   (let v13
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                              (coe v4) in
                                                    let v14
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                              (coe v4) in
                                                    let v15
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                              (coe v4) in
                                                    let v16
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                              (coe v4) in
                                                    let v17
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                              (coe v4) in
                                                    let v18
                                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                              (coe v17) in
                                                    let v19
                                                          = MAlonzo.Code.Algebra.Structures.du1298
                                                              (coe v13) (coe v14) (coe v15)
                                                              (coe v16) (coe v18) in
                                                    let v20
                                                          = MAlonzo.Code.Algebra.Structures.d1106
                                                              (coe v19) in
                                                    let v21
                                                          = MAlonzo.Code.Algebra.Structures.d1018
                                                              (coe v20) in
                                                    let v22
                                                          = MAlonzo.Code.Algebra.Structures.d326
                                                              (coe v21) in
                                                    coe
                                                      (MAlonzo.Code.Algebra.Structures.du106
                                                         (coe
                                                            (MAlonzo.Code.Algebra.Structures.d126
                                                               (coe v22))))))) in
                                   let v14
                                         = coe
                                             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196
                                             v4
                                             (d438
                                                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                                                (coe v5) (coe v6) (coe v7) (coe v8)
                                                (coe
                                                   (\ v14 v15 v16 ->
                                                      MAlonzo.Code.Data.Vec.Base.C36 v15 v16)
                                                   erased v11 v12)) in
                                   coe
                                     (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                        (coe v13 v14))))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1240 = "Algebra.Solver.Ring.-N‿-homo"
d1240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T420 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1240 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C430 v10
        -> coe
             MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d656 v5 v10
      C434 v11
        -> let v12 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (d1232
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v12) (coe v11) (coe v9))
      _ -> MAlonzo.RTE.mazUnreachableError
name1260 = "Algebra.Solver.Ring.correct-con"
d1260 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1260 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v9 of
      MAlonzo.Code.Data.Vec.Base.C28
        -> let v10
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                     (coe v4) in
           let v11
                 = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                     (coe v10) in
           coe
             MAlonzo.Code.Relation.Binary.Core.d414
             (MAlonzo.Code.Algebra.Structures.d92
                (coe
                   (MAlonzo.Code.Algebra.Structures.d126
                      (coe
                         (MAlonzo.Code.Algebra.Structures.d326
                            (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v11))))))))
             (d442
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe (0 :: Integer))
                (coe
                   (d810
                      (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                      (coe (0 :: Integer)) (coe v8)))
                (coe v9))
      MAlonzo.Code.Data.Vec.Base.C36 v11 v12
        -> let v13 = subInt (coe v7) (coe (1 :: Integer)) in
           coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v14
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             (coe v4) in
                                   let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             (coe v4) in
                                   let v16
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                             (coe v4) in
                                   let v17
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                             (coe v4) in
                                   let v18
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4) in
                                   let v19
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                             (coe v18) in
                                   let v20
                                         = MAlonzo.Code.Algebra.Structures.du1298
                                             (coe v14) (coe v15) (coe v16) (coe v17) (coe v19) in
                                   let v21 = MAlonzo.Code.Algebra.Structures.d1106 (coe v20) in
                                   let v22 = MAlonzo.Code.Algebra.Structures.d1018 (coe v21) in
                                   let v23 = MAlonzo.Code.Algebra.Structures.d326 (coe v22) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v23)))))))))
                      (coe
                         (d438
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v13)
                            (coe
                               (d638
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v13) (coe (\ v14 -> C424) erased)
                                  (coe
                                     (d810
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v13) (coe v8)))))
                            (coe
                               (\ v14 v15 v16 -> MAlonzo.Code.Data.Vec.Base.C36 v15 v16) erased
                               v11 v12)))
                      (coe
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v13)
                            (coe
                               (d810
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v13) (coe v8)))
                            (coe v12)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d650 v5 v8)
                      (coe
                         (d938
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v13)
                            (coe
                               (d810
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v13) (coe v8)))
                            (coe v11) (coe v12)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   (coe v4) in
                                         let v15
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   (coe v4) in
                                         let v16
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4) in
                                         let v17
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                   (coe v4) in
                                         let v18
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                   (coe v4) in
                                         let v19
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                   (coe v18) in
                                         let v20
                                               = MAlonzo.Code.Algebra.Structures.du1298
                                                   (coe v14) (coe v15) (coe v16) (coe v17)
                                                   (coe v19) in
                                         let v21
                                               = MAlonzo.Code.Algebra.Structures.d1106 (coe v20) in
                                         let v22
                                               = MAlonzo.Code.Algebra.Structures.d1018 (coe v21) in
                                         let v23 = MAlonzo.Code.Algebra.Structures.d326 (coe v22) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v23)))))))))
                            (coe
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v13)
                                  (coe
                                     (d810
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v13) (coe v8)))
                                  (coe v12)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d650 v5 v8)
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d650 v5 v8)
                            (coe
                               (d1260
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v13) (coe v8) (coe v12)))
                            (let v14
                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v14
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                        (coe v4) in
                                              let v15
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                        (coe v4) in
                                              let v16
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                        (coe v4) in
                                              let v17
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                        (coe v4) in
                                              let v18
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                        (coe v4) in
                                              let v19
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                        (coe v18) in
                                              let v20
                                                    = MAlonzo.Code.Algebra.Structures.du1298
                                                        (coe v14) (coe v15) (coe v16) (coe v17)
                                                        (coe v19) in
                                              let v21
                                                    = MAlonzo.Code.Algebra.Structures.d1106
                                                        (coe v20) in
                                              let v22
                                                    = MAlonzo.Code.Algebra.Structures.d1018
                                                        (coe v21) in
                                              let v23
                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                        (coe v22) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v23))))))) in
                             let v15
                                   = coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d650
                                       v5 v8 in
                             coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                  (coe v14 v15))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1276 = "Algebra.Solver.Ring.correct-var"
d1276 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T6 ->
  MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1276 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      MAlonzo.Code.Data.Fin.Base.C10
        -> case coe v9 of
             MAlonzo.Code.Data.Vec.Base.C36 v12 v13
               -> let v14 = subInt (coe v7) (coe (1 :: Integer)) in
                  coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v15
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v19) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v15) (coe v16) (coe v17) (coe v18)
                                                    (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v23) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v24)))))))))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v14)
                                         (coe
                                            (d630
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v14)))
                                         (coe v13)))
                                   v12)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v14) (coe (du620 (coe v3) (coe v14))) (coe v13)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                         (coe v4)))
                                   v12)
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4)))
                             (coe v12)
                             (let v15
                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                              (coe v4))) in
                              coe
                                MAlonzo.Code.Algebra.Structures.d94
                                (MAlonzo.Code.Algebra.Structures.d126
                                   (coe
                                      (MAlonzo.Code.Algebra.Structures.d326
                                         (coe (MAlonzo.Code.Algebra.Structures.d1210 (coe v15))))))
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v14)
                                         (coe
                                            (d630
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v14)))
                                         (coe v13)))
                                   v12)
                                (coe
                                   MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                         (coe v4)))
                                   v12)
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v14) (coe (du620 (coe v3) (coe v14))) (coe v13))
                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                   (coe v4))
                                (let v16
                                       = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                           (coe
                                              (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4))) in
                                 coe
                                   MAlonzo.Code.Algebra.Structures.d94
                                   (MAlonzo.Code.Algebra.Structures.d126
                                      (coe
                                         (MAlonzo.Code.Algebra.Structures.d326
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d1212 (coe v16))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v14)
                                         (coe
                                            (d630
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v14)))
                                         (coe v13)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                         (coe v4)))
                                   v12 v12
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe
                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4))) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.d94
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1210
                                                     (coe v17))))))
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                            (coe v4))
                                         v12)
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v14)
                                         (coe
                                            (d630
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v14)))
                                         (coe v13))
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                         (coe v4))
                                      (let v18
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                 (coe v4) in
                                       let v19
                                             = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                 (coe v18) in
                                       coe
                                         MAlonzo.Code.Relation.Binary.Core.d414
                                         (MAlonzo.Code.Algebra.Structures.d92
                                            (coe
                                               (MAlonzo.Code.Algebra.Structures.d126
                                                  (coe
                                                     (MAlonzo.Code.Algebra.Structures.d326
                                                        (coe
                                                           (MAlonzo.Code.Algebra.Structures.d1210
                                                              (coe v19))))))))
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                            v4
                                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                               (coe v4))
                                            v12))
                                      (d882
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v14) (coe v13)))
                                   (let v17
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                              (coe v4) in
                                    let v18
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe v17) in
                                    coe
                                      MAlonzo.Code.Relation.Binary.Core.d414
                                      (MAlonzo.Code.Algebra.Structures.d92
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d126
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d326
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d1210
                                                           (coe v18))))))))
                                      v12))
                                (d858
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v14) (coe v13)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v15
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v16
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v19) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v15) (coe v16) (coe v17) (coe v18)
                                                          (coe v20) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v21) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v23) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v24)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (coe
                                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                         v4
                                         (coe
                                            MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                            v4
                                            (coe
                                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                               v4
                                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                  (coe v4))
                                               v12)
                                            (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                               (coe v4)))
                                         v12)
                                      (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                         (coe v4)))
                                   (coe v12) (coe v12)
                                   (coe
                                      (MAlonzo.Code.Algebra.Solver.Ring.Lemmas.du314
                                         (coe v4) (coe v12)))
                                   (let v15
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v15
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v16
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v19) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v15) (coe v16) (coe v17)
                                                               (coe v18) (coe v20) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v21) in
                                                     let v23
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v22) in
                                                     let v24
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v23) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v24))))))) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v15 v12))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C16 v11
        -> case coe v9 of
             MAlonzo.Code.Data.Vec.Base.C36 v13 v14
               -> let v15 = subInt (coe v7) (coe (1 :: Integer)) in
                  coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v16) (coe v17) (coe v18) (coe v19)
                                                    (coe v21) in
                                          let v23
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v22) in
                                          let v24
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v23) in
                                          let v25
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v24) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v25)))))))))
                             (coe
                                (d438
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v15)
                                   (coe
                                      (d638
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v15) (coe (\ v16 -> C424) erased)
                                         (coe
                                            (d820
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v15) (coe v11)))))
                                   (coe
                                      (\ v16 v17 v18 -> MAlonzo.Code.Data.Vec.Base.C36 v17 v18)
                                      erased v13 v14)))
                             (coe
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v15)
                                   (coe
                                      (d820
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v15) (coe v11)))
                                   (coe v14)))
                             (coe (MAlonzo.Code.Data.Vec.Base.du88 (coe v14) (coe v11)))
                             (coe
                                (d938
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v15)
                                   (coe
                                      (d820
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v15) (coe v11)))
                                   (coe v13) (coe v14)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v16
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v20) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v16) (coe v17) (coe v18) (coe v19)
                                                          (coe v21) in
                                                let v23
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v22) in
                                                let v24
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v23) in
                                                let v25
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v24) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v25)))))))))
                                   (coe
                                      (d442
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v15)
                                         (coe
                                            (d820
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v15) (coe v11)))
                                         (coe v14)))
                                   (coe (MAlonzo.Code.Data.Vec.Base.du88 (coe v14) (coe v11)))
                                   (coe (MAlonzo.Code.Data.Vec.Base.du88 (coe v14) (coe v11)))
                                   (coe
                                      (d1276
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v15) (coe v11) (coe v14)))
                                   (let v16
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v16
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v20) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v16) (coe v17) (coe v18)
                                                               (coe v19) (coe v21) in
                                                     let v23
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v22) in
                                                     let v24
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v23) in
                                                     let v25
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v24) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v25))))))) in
                                    let v17 = MAlonzo.Code.Data.Vec.Base.du88 (coe v14) (coe v11) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v16 v17))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name1294 = "Algebra.Solver.Ring.correct"
d1294 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T330 -> MAlonzo.Code.Data.Vec.Base.T24 -> AgdaAny
d1294 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = case coe v8 of
      C340 v10 v11 v12
        -> case coe v10 of
             C324
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v13
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v14
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v15
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v17) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v13) (coe v14) (coe v15) (coe v16)
                                                    (coe v18) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v22)))))))))
                             (coe
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d664
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7)
                                         (coe
                                            (d826
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v11)))
                                         (coe
                                            (d826
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v12)))))
                                   (coe v9)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11)))
                                   (coe v9))
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12)))
                                   (coe v9)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                (du390 (coe v4) (coe v5) (coe v12) (coe v9)))
                             (coe
                                (d982
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11)))
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12)))
                                   (coe v9)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v13
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v14
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v15
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v16
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v17) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v13) (coe v14) (coe v15) (coe v16)
                                                          (coe v18) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v19) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v20) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v21) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v22)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11) (coe v9))
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12) (coe v9)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v12) (coe v9)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192 v4
                                      (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v12) (coe v9)))
                                   (let v13
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe
                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4))) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.d94
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1210
                                                     (coe v13))))))
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v12) (coe v9))
                                      (d1294
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11) (coe v9))
                                      (d1294
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12) (coe v9)))
                                   (let v13
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v13
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v14
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v15
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v16
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v17) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v13) (coe v14) (coe v15)
                                                               (coe v16) (coe v18) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v19) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v20) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v21) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v22))))))) in
                                    let v14
                                          = coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                              v4 (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                              (du390 (coe v4) (coe v5) (coe v12) (coe v9)) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v13 v14))))))))
             C326
               -> coe
                    (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                       (coe
                          (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                             (coe
                                (MAlonzo.Code.Relation.Binary.Core.d418
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.d144
                                         (let v13
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                    (coe v4) in
                                          let v14
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                    (coe v4) in
                                          let v15
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                    (coe v4) in
                                          let v16
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                    (coe v4) in
                                          let v17
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4) in
                                          let v18
                                                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                    (coe v17) in
                                          let v19
                                                = MAlonzo.Code.Algebra.Structures.du1298
                                                    (coe v13) (coe v14) (coe v15) (coe v16)
                                                    (coe v18) in
                                          let v20
                                                = MAlonzo.Code.Algebra.Structures.d1106 (coe v19) in
                                          let v21
                                                = MAlonzo.Code.Algebra.Structures.d1018 (coe v20) in
                                          let v22
                                                = MAlonzo.Code.Algebra.Structures.d326 (coe v21) in
                                          coe
                                            (MAlonzo.Code.Algebra.Structures.du106
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d126
                                                     (coe v22)))))))))
                             (coe
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d714
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7)
                                         (coe
                                            (d826
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v11)))
                                         (coe
                                            (d826
                                               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                               (coe v6) (coe v7) (coe v12)))))
                                   (coe v9)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11)))
                                   (coe v9))
                                (d442
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12)))
                                   (coe v9)))
                             (coe
                                MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                (du390 (coe v4) (coe v5) (coe v12) (coe v9)))
                             (coe
                                (d1088
                                   (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                   (coe v7)
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11)))
                                   (coe
                                      (d826
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12)))
                                   (coe v9)))
                             (coe
                                (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                                   (coe
                                      (MAlonzo.Code.Relation.Binary.Core.d418
                                         (coe
                                            (MAlonzo.Code.Relation.Binary.d144
                                               (let v13
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                          (coe v4) in
                                                let v14
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                          (coe v4) in
                                                let v15
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                          (coe v4) in
                                                let v16
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                          (coe v4) in
                                                let v17
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                          (coe v4) in
                                                let v18
                                                      = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                          (coe v17) in
                                                let v19
                                                      = MAlonzo.Code.Algebra.Structures.du1298
                                                          (coe v13) (coe v14) (coe v15) (coe v16)
                                                          (coe v18) in
                                                let v20
                                                      = MAlonzo.Code.Algebra.Structures.d1106
                                                          (coe v19) in
                                                let v21
                                                      = MAlonzo.Code.Algebra.Structures.d1018
                                                          (coe v20) in
                                                let v22
                                                      = MAlonzo.Code.Algebra.Structures.d326
                                                          (coe v21) in
                                                coe
                                                  (MAlonzo.Code.Algebra.Structures.du106
                                                     (coe
                                                        (MAlonzo.Code.Algebra.Structures.d126
                                                           (coe v22)))))))))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11) (coe v9))
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12) (coe v9)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v12) (coe v9)))
                                   (coe
                                      MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194 v4
                                      (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v12) (coe v9)))
                                   (let v13
                                          = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                              (coe
                                                 (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                    (coe v4))) in
                                    coe
                                      MAlonzo.Code.Algebra.Structures.d94
                                      (MAlonzo.Code.Algebra.Structures.d126
                                         (coe
                                            (MAlonzo.Code.Algebra.Structures.d326
                                               (coe
                                                  (MAlonzo.Code.Algebra.Structures.d1212
                                                     (coe v13))))))
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                      (d848
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12) (coe v9))
                                      (du390 (coe v4) (coe v5) (coe v12) (coe v9))
                                      (d1294
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v11) (coe v9))
                                      (d1294
                                         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                         (coe v6) (coe v7) (coe v12) (coe v9)))
                                   (let v13
                                          = MAlonzo.Code.Relation.Binary.Core.d414
                                              (coe
                                                 (MAlonzo.Code.Relation.Binary.d144
                                                    (let v13
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                               (coe v4) in
                                                     let v14
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                               (coe v4) in
                                                     let v15
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                               (coe v4) in
                                                     let v16
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                               (coe v4) in
                                                     let v17
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                               (coe v4) in
                                                     let v18
                                                           = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                               (coe v17) in
                                                     let v19
                                                           = MAlonzo.Code.Algebra.Structures.du1298
                                                               (coe v13) (coe v14) (coe v15)
                                                               (coe v16) (coe v18) in
                                                     let v20
                                                           = MAlonzo.Code.Algebra.Structures.d1106
                                                               (coe v19) in
                                                     let v21
                                                           = MAlonzo.Code.Algebra.Structures.d1018
                                                               (coe v20) in
                                                     let v22
                                                           = MAlonzo.Code.Algebra.Structures.d326
                                                               (coe v21) in
                                                     coe
                                                       (MAlonzo.Code.Algebra.Structures.du106
                                                          (coe
                                                             (MAlonzo.Code.Algebra.Structures.d126
                                                                (coe v22))))))) in
                                    let v14
                                          = coe
                                              MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                              v4 (du390 (coe v4) (coe v5) (coe v11) (coe v9))
                                              (du390 (coe v4) (coe v5) (coe v12) (coe v9)) in
                                    coe
                                      (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                         (coe v13 v14))))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      C344 v10
        -> coe
             (d1260
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v10) (coe v9))
      C348 v10
        -> coe
             (d1276
                (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                (coe v7) (coe v10) (coe v9))
      C354 v10 v11
        -> coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v12
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             (coe v4) in
                                   let v13
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             (coe v4) in
                                   let v14
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                             (coe v4) in
                                   let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                             (coe v4) in
                                   let v16
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4) in
                                   let v17
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                             (coe v16) in
                                   let v18
                                         = MAlonzo.Code.Algebra.Structures.du1298
                                             (coe v12) (coe v13) (coe v14) (coe v15) (coe v17) in
                                   let v19 = MAlonzo.Code.Algebra.Structures.d1106 (coe v18) in
                                   let v20 = MAlonzo.Code.Algebra.Structures.d1018 (coe v19) in
                                   let v21 = MAlonzo.Code.Algebra.Structures.d326 (coe v20) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v21)))))))))
                      (coe
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d786
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d826
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v10)))
                                  (coe v11)))
                            (coe v9)))
                      (coe
                         (MAlonzo.Code.Algebra.Operations.Semiring.du182
                            (coe
                               (MAlonzo.Code.Algebra.du1816
                                  (coe
                                     (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                        (coe v4)))))
                            (coe
                               (d442
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d826
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v10)))
                                  (coe v9)))
                            (coe v11)))
                      (coe
                         (MAlonzo.Code.Algebra.Operations.Semiring.du182
                            (coe
                               (MAlonzo.Code.Algebra.du1816
                                  (coe
                                     (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                        (coe v4)))))
                            (coe (du390 (coe v4) (coe v5) (coe v10) (coe v9))) (coe v11)))
                      (coe
                         (d1214
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d826
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v10)))
                            (coe v11) (coe v9)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v12
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   (coe v4) in
                                         let v13
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   (coe v4) in
                                         let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4) in
                                         let v15
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                   (coe v4) in
                                         let v16
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                   (coe v4) in
                                         let v17
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                   (coe v16) in
                                         let v18
                                               = MAlonzo.Code.Algebra.Structures.du1298
                                                   (coe v12) (coe v13) (coe v14) (coe v15)
                                                   (coe v17) in
                                         let v19
                                               = MAlonzo.Code.Algebra.Structures.d1106 (coe v18) in
                                         let v20
                                               = MAlonzo.Code.Algebra.Structures.d1018 (coe v19) in
                                         let v21 = MAlonzo.Code.Algebra.Structures.d326 (coe v20) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v21)))))))))
                            (coe
                               (MAlonzo.Code.Algebra.Operations.Semiring.du182
                                  (coe
                                     (MAlonzo.Code.Algebra.du1816
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                              (coe v4)))))
                                  (coe
                                     (d848
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v10) (coe v9)))
                                  (coe v11)))
                            (coe
                               (MAlonzo.Code.Algebra.Operations.Semiring.du182
                                  (coe
                                     (MAlonzo.Code.Algebra.du1816
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                              (coe v4)))))
                                  (coe (du390 (coe v4) (coe v5) (coe v10) (coe v9))) (coe v11)))
                            (coe
                               (MAlonzo.Code.Algebra.Operations.Semiring.du182
                                  (coe
                                     (MAlonzo.Code.Algebra.du1816
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                              (coe v4)))))
                                  (coe (du390 (coe v4) (coe v5) (coe v10) (coe v9))) (coe v11)))
                            (coe
                               (MAlonzo.Code.Algebra.Operations.Semiring.du224
                                  (coe
                                     (MAlonzo.Code.Algebra.du1816
                                        (coe
                                           (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                              (coe v4)))))
                                  (coe
                                     (d848
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v10) (coe v9)))
                                  (coe (du390 (coe v4) (coe v5) (coe v10) (coe v9))) (coe v11)
                                  (coe
                                     (d1294
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v10) (coe v9)))))
                            (let v12
                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v12
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                        (coe v4) in
                                              let v13
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                        (coe v4) in
                                              let v14
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                        (coe v4) in
                                              let v15
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                        (coe v4) in
                                              let v16
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                        (coe v4) in
                                              let v17
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                        (coe v16) in
                                              let v18
                                                    = MAlonzo.Code.Algebra.Structures.du1298
                                                        (coe v12) (coe v13) (coe v14) (coe v15)
                                                        (coe v17) in
                                              let v19
                                                    = MAlonzo.Code.Algebra.Structures.d1106
                                                        (coe v18) in
                                              let v20
                                                    = MAlonzo.Code.Algebra.Structures.d1018
                                                        (coe v19) in
                                              let v21
                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                        (coe v20) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v21))))))) in
                             let v13
                                   = MAlonzo.Code.Algebra.Operations.Semiring.du182
                                       (coe
                                          (MAlonzo.Code.Algebra.du1816
                                             (coe
                                                (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.du296
                                                   (coe v4)))))
                                       (coe (du390 (coe v4) (coe v5) (coe v10) (coe v9)))
                                       (coe v11) in
                             coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                  (coe v12 v13))))))))
      C358 v10
        -> coe
             (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.d40
                (coe
                   (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                      (coe
                         (MAlonzo.Code.Relation.Binary.Core.d418
                            (coe
                               (MAlonzo.Code.Relation.Binary.d144
                                  (let v11
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                             (coe v4) in
                                   let v12
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                             (coe v4) in
                                   let v13
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                             (coe v4) in
                                   let v14
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                             (coe v4) in
                                   let v15
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                             (coe v4) in
                                   let v16
                                         = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                             (coe v15) in
                                   let v17
                                         = MAlonzo.Code.Algebra.Structures.du1298
                                             (coe v11) (coe v12) (coe v13) (coe v14) (coe v16) in
                                   let v18 = MAlonzo.Code.Algebra.Structures.d1106 (coe v17) in
                                   let v19 = MAlonzo.Code.Algebra.Structures.d1018 (coe v18) in
                                   let v20 = MAlonzo.Code.Algebra.Structures.d326 (coe v19) in
                                   coe
                                     (MAlonzo.Code.Algebra.Structures.du106
                                        (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v20)))))))))
                      (coe
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d800
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7)
                                  (coe
                                     (d826
                                        (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5)
                                        (coe v6) (coe v7) (coe v10)))))
                            (coe v9)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                         (d442
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d826
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v10)))
                            (coe v9)))
                      (coe
                         MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                         (du390 (coe v4) (coe v5) (coe v10) (coe v9)))
                      (coe
                         (d1240
                            (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                            (coe v7)
                            (coe
                               (d826
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v10)))
                            (coe v9)))
                      (coe
                         (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du50
                            (coe
                               (MAlonzo.Code.Relation.Binary.Core.d418
                                  (coe
                                     (MAlonzo.Code.Relation.Binary.d144
                                        (let v11
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                   (coe v4) in
                                         let v12
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                   (coe v4) in
                                         let v13
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                   (coe v4) in
                                         let v14
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                   (coe v4) in
                                         let v15
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                   (coe v4) in
                                         let v16
                                               = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                   (coe v15) in
                                         let v17
                                               = MAlonzo.Code.Algebra.Structures.du1298
                                                   (coe v11) (coe v12) (coe v13) (coe v14)
                                                   (coe v16) in
                                         let v18
                                               = MAlonzo.Code.Algebra.Structures.d1106 (coe v17) in
                                         let v19
                                               = MAlonzo.Code.Algebra.Structures.d1018 (coe v18) in
                                         let v20 = MAlonzo.Code.Algebra.Structures.d326 (coe v19) in
                                         coe
                                           (MAlonzo.Code.Algebra.Structures.du106
                                              (coe
                                                 (MAlonzo.Code.Algebra.Structures.d126
                                                    (coe v20)))))))))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                               (d848
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v10) (coe v9)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                               (du390 (coe v4) (coe v5) (coe v10) (coe v9)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196 v4
                               (du390 (coe v4) (coe v5) (coe v10) (coe v9)))
                            (coe
                               MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d64
                               (MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                  (coe v4))
                               (d848
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v10) (coe v9))
                               (du390 (coe v4) (coe v5) (coe v10) (coe v9))
                               (d1294
                                  (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)
                                  (coe v7) (coe v10) (coe v9)))
                            (let v11
                                   = MAlonzo.Code.Relation.Binary.Core.d414
                                       (coe
                                          (MAlonzo.Code.Relation.Binary.d144
                                             (let v11
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                                                        (coe v4) in
                                              let v12
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                                                        (coe v4) in
                                              let v13
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                                                        (coe v4) in
                                              let v14
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                                                        (coe v4) in
                                              let v15
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                                                        (coe v4) in
                                              let v16
                                                    = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                                                        (coe v15) in
                                              let v17
                                                    = MAlonzo.Code.Algebra.Structures.du1298
                                                        (coe v11) (coe v12) (coe v13) (coe v14)
                                                        (coe v16) in
                                              let v18
                                                    = MAlonzo.Code.Algebra.Structures.d1106
                                                        (coe v17) in
                                              let v19
                                                    = MAlonzo.Code.Algebra.Structures.d1018
                                                        (coe v18) in
                                              let v20
                                                    = MAlonzo.Code.Algebra.Structures.d326
                                                        (coe v19) in
                                              coe
                                                (MAlonzo.Code.Algebra.Structures.du106
                                                   (coe
                                                      (MAlonzo.Code.Algebra.Structures.d126
                                                         (coe v20))))))) in
                             let v12
                                   = coe
                                       MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d196
                                       v4 (du390 (coe v4) (coe v5) (coe v10) (coe v9)) in
                             coe
                               (MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.C34
                                  (coe v11 v12))))))))
      _ -> MAlonzo.RTE.mazUnreachableError
name1328 = "Algebra.Solver.Ring._._⊜_"
d1328 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> T330 -> T330 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
d1328 v0 v1 v2 v3 v4 v5 v6 v7 = du1328
du1328 :: T330 -> T330 -> MAlonzo.Code.Agda.Builtin.Sigma.T14
du1328 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32
name1330 = "Algebra.Solver.Ring._.prove"
d1330 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T24 ->
  T330 -> T330 -> AgdaAny -> AgdaAny
d1330 v0 v1 v2 v3 v4 v5 v6
  = coe
      (MAlonzo.Code.Relation.Binary.Reflection.du90
         (let v7
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                    (coe v4) in
          let v8
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                    (coe v4) in
          let v9
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                    (coe v4) in
          let v10
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                    (coe v4) in
          let v11
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                    (coe v4) in
          let v12
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                    (coe v11) in
          let v13
                = MAlonzo.Code.Algebra.Structures.du1298
                    (coe v7) (coe v8) (coe v9) (coe v10) (coe v12) in
          let v14 = MAlonzo.Code.Algebra.Structures.d1106 (coe v13) in
          let v15 = MAlonzo.Code.Algebra.Structures.d1018 (coe v14) in
          let v16 = MAlonzo.Code.Algebra.Structures.d326 (coe v15) in
          coe
            (MAlonzo.Code.Algebra.Structures.du106
               (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v16)))))
         (coe (\ v7 v8 v9 -> du390 (coe v4) (coe v5) v8 v9))
         (coe
            (d848
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)))
         (coe
            (d1294
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6))))
name1332 = "Algebra.Solver.Ring._.solve"
d1332 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.T1856 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T166 ->
  MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.T326 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Maybe.Base.T22) ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny
d1332 v0 v1 v2 v3 v4 v5 v6
  = coe
      (MAlonzo.Code.Relation.Binary.Reflection.du114
         (let v7
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d192
                    (coe v4) in
          let v8
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d194
                    (coe v4) in
          let v9
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d198
                    (coe v4) in
          let v10
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d200
                    (coe v4) in
          let v11
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d202
                    (coe v4) in
          let v12
                = MAlonzo.Code.Algebra.Solver.Ring.AlmostCommutativeRing.d62
                    (coe v11) in
          let v13
                = MAlonzo.Code.Algebra.Structures.du1298
                    (coe v7) (coe v8) (coe v9) (coe v10) (coe v12) in
          let v14 = MAlonzo.Code.Algebra.Structures.d1106 (coe v13) in
          let v15 = MAlonzo.Code.Algebra.Structures.d1018 (coe v14) in
          let v16 = MAlonzo.Code.Algebra.Structures.d326 (coe v15) in
          coe
            (MAlonzo.Code.Algebra.Structures.du106
               (coe (MAlonzo.Code.Algebra.Structures.d126 (coe v16)))))
         (coe (\ v7 -> C348))
         (coe (\ v7 v8 v9 -> du390 (coe v4) (coe v5) v8 v9))
         (coe
            (d848
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6)))
         (coe
            (d1294
               (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5) (coe v6))))
