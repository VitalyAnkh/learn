{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Related where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bijection
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Injection
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.LeftInverse
import qualified MAlonzo.Code.Function.Surjection
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

name12 = "Function.Related._←_"
d12 a0 a1 a2 a3 = ()
newtype T12 = C26 (AgdaAny -> AgdaAny)
name24 = "Function.Related._←_.app-←"
d24 :: T12 -> AgdaAny -> AgdaAny
d24 v0
  = case coe v0 of
      C26 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name36 = "Function.Related._↢_"
d36 a0 a1 a2 a3 = ()
newtype T36 = C50 MAlonzo.Code.Function.Injection.T88
name48 = "Function.Related._↢_.app-↢"
d48 :: T36 -> MAlonzo.Code.Function.Injection.T88
d48 v0
  = case coe v0 of
      C50 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
name52 = "Function.Related.Kind"
d52 = ()
data T52 = C54 | C56 | C58 | C60 | C62 | C64 | C66 | C68
name74 = "Function.Related._∼[_]_"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> T52 -> () -> ()
d74 = erased
name112 = "Function.Related.Related"
d112 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> ()
d112 = erased
name130 = "Function.Related.↔⇒"
d130 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58 -> AgdaAny
d130 v0 v1 v2 v3 v4 = du130 v0
du130 :: T52 -> MAlonzo.Code.Function.Inverse.T58 -> AgdaAny
du130 v0
  = case coe v0 of
      C54
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Inverse.d78 (coe v1)))
      C56
        -> coe
             (\ v1 ->
                coe
                  C26
                  (coe
                     MAlonzo.Code.Function.Equality.d38
                     (coe MAlonzo.Code.Function.Inverse.d80 (coe v1))))
      C58
        -> coe
             (\ v1 ->
                let v2
                      = coe
                          MAlonzo.Code.Function.Inverse.du98
                          (coe
                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                          (coe v1) in
                coe
                  MAlonzo.Code.Function.Surjection.du92
                  (coe MAlonzo.Code.Function.Bijection.du100 (coe v2)))
      C60
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.LeftInverse.du186
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                  (coe MAlonzo.Code.Function.Inverse.du90 (coe v1)))
      C62
        -> coe
             (\ v1 ->
                coe
                  C50
                  (coe
                     MAlonzo.Code.Function.LeftInverse.du186
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                     (coe
                        MAlonzo.Code.Function.Inverse.du90
                        (coe MAlonzo.Code.Function.Inverse.du226 (coe v1)))))
      C64 -> coe MAlonzo.Code.Function.Inverse.du90
      C66
        -> coe
             (\ v1 ->
                coe
                  MAlonzo.Code.Function.Bijection.du100
                  (coe
                     MAlonzo.Code.Function.Inverse.du98
                     (coe
                        MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                     (coe v1)))
      C68 -> coe (\ v1 -> v1)
      _ -> MAlonzo.RTE.mazUnreachableError
name140 = "Function.Related.≡⇒"
d140 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d140 v0 v1 v2 v3 v4 = du140 v0
du140 :: T52 -> AgdaAny
du140 v0
  = coe
      du130 v0
      (coe
         MAlonzo.Code.Function.Inverse.du186
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250))
name142 = "Function.Related.Symmetric-kind"
d142 = ()
data T142 = C144 | C146
name148 = "Function.Related.⌊_⌋"
d148 :: T142 -> T52
d148 v0
  = case coe v0 of
      C144 -> coe C58
      C146 -> coe C68
      _ -> MAlonzo.RTE.mazUnreachableError
name150 = "Function.Related.Forward-kind"
d150 = ()
data T150 = C152 | C154 | C156 | C158 | C160 | C162
name164 = "Function.Related.⌊_⌋→"
d164 :: T150 -> T52
d164 v0
  = case coe v0 of
      C152 -> coe C54
      C154 -> coe C58
      C156 -> coe C60
      C158 -> coe C64
      C160 -> coe C66
      C162 -> coe C68
      _ -> MAlonzo.RTE.mazUnreachableError
name176 = "Function.Related.⇒→"
d176 ::
  T150 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d176 v0 v1 v2 v3 v4 = du176 v0
du176 :: T150 -> AgdaAny -> AgdaAny -> AgdaAny
du176 v0
  = case coe v0 of
      C152 -> coe (\ v1 -> v1)
      C154
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Equivalence.d34 (coe v1)))
      C156
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Injection.d106 (coe v1)))
      C158
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.LeftInverse.d102 (coe v1)))
      C160
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Surjection.d72 (coe v1)))
      C162
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Inverse.d78 (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
name178 = "Function.Related.Backward-kind"
d178 = ()
data T178 = C180 | C182 | C184 | C186 | C188 | C190
name192 = "Function.Related.⌊_⌋←"
d192 :: T178 -> T52
d192 v0
  = case coe v0 of
      C180 -> coe C56
      C182 -> coe C58
      C184 -> coe C62
      C186 -> coe C64
      C188 -> coe C66
      C190 -> coe C68
      _ -> MAlonzo.RTE.mazUnreachableError
name204 = "Function.Related.⇒←"
d204 ::
  T178 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d204 v0 v1 v2 v3 v4 = du204 v0
du204 :: T178 -> AgdaAny -> AgdaAny -> AgdaAny
du204 v0
  = case coe v0 of
      C180 -> coe d24
      C182
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Equivalence.d36 (coe v1)))
      C184
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Injection.d106 (coe d48 (coe v1))))
      C186
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.LeftInverse.d104 (coe v1)))
      C188
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe
                     MAlonzo.Code.Function.Surjection.d38
                     (coe MAlonzo.Code.Function.Surjection.d74 (coe v1))))
      C190
        -> coe
             (\ v1 ->
                MAlonzo.Code.Function.Equality.d38
                  (coe MAlonzo.Code.Function.Inverse.d80 (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
name206 = "Function.Related.Equivalence-kind"
d206 = ()
data T206 = C208 | C210 | C212 | C214
name216 = "Function.Related.⌊_⌋⇔"
d216 :: T206 -> T52
d216 v0
  = case coe v0 of
      C208 -> coe C58
      C210 -> coe C64
      C212 -> coe C66
      C214 -> coe C68
      _ -> MAlonzo.RTE.mazUnreachableError
name228 = "Function.Related.⇒⇔"
d228 ::
  T206 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
d228 v0 v1 v2 v3 v4 = du228 v0
du228 :: T206 -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
du228 v0
  = case coe v0 of
      C208 -> coe (\ v1 -> v1)
      C210 -> coe MAlonzo.Code.Function.LeftInverse.du188
      C212 -> coe MAlonzo.Code.Function.Surjection.du92
      C214
        -> coe
             (\ v1 ->
                let v2
                      = coe
                          MAlonzo.Code.Function.Inverse.du98
                          (coe
                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                          (coe v1) in
                coe
                  MAlonzo.Code.Function.Surjection.du92
                  (coe MAlonzo.Code.Function.Bijection.du100 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
name230 = "Function.Related.⇔⌊_⌋"
d230 :: T142 -> T206
d230 v0
  = case coe v0 of
      C144 -> coe C208
      C146 -> coe C214
      _ -> MAlonzo.RTE.mazUnreachableError
name232 = "Function.Related.→⌊_⌋"
d232 :: T206 -> T150
d232 v0
  = case coe v0 of
      C208 -> coe C154
      C210 -> coe C158
      C212 -> coe C160
      C214 -> coe C162
      _ -> MAlonzo.RTE.mazUnreachableError
name234 = "Function.Related.←⌊_⌋"
d234 :: T206 -> T178
d234 v0
  = case coe v0 of
      C208 -> coe C182
      C210 -> coe C186
      C212 -> coe C188
      C214 -> coe C190
      _ -> MAlonzo.RTE.mazUnreachableError
name236 = "Function.Related._op"
d236 :: T52 -> T52
d236 v0
  = case coe v0 of
      C54 -> coe C56
      C56 -> coe C54
      C58 -> coe v0
      C60 -> coe C62
      C62 -> coe C60
      C64 -> coe C66
      C66 -> coe C64
      C68 -> coe v0
      _ -> MAlonzo.RTE.mazUnreachableError
name248 = "Function.Related.reverse"
d248 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> AgdaAny -> AgdaAny
d248 v0 v1 v2 v3 v4 = du248 v0
du248 :: T52 -> AgdaAny -> AgdaAny
du248 v0
  = case coe v0 of
      C54 -> coe C26
      C56 -> coe d24
      C58 -> coe MAlonzo.Code.Function.Equivalence.du100
      C60 -> coe C50
      C62 -> coe d48
      C64 -> coe MAlonzo.Code.Function.Surjection.du106
      C66 -> coe MAlonzo.Code.Function.Surjection.du82
      C68 -> coe MAlonzo.Code.Function.Inverse.du226
      _ -> MAlonzo.RTE.mazUnreachableError
name254 = "Function.Related.K-refl"
d254 :: T52 -> MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny
d254 v0 v1 v2 = du254 v0
du254 :: T52 -> AgdaAny
du254 v0
  = case coe v0 of
      C54 -> coe (\ v1 -> v1)
      C56 -> coe C26 (coe (\ v1 -> v1))
      C58 -> coe MAlonzo.Code.Function.Equivalence.du66
      C60 -> coe MAlonzo.Code.Function.Injection.du152
      C62 -> coe C50 (coe MAlonzo.Code.Function.Injection.du152)
      C64
        -> coe
             MAlonzo.Code.Function.LeftInverse.du258
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      C66
        -> coe
             MAlonzo.Code.Function.Surjection.du168
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      C68
        -> coe
             MAlonzo.Code.Function.Inverse.du186
             (coe
                MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
      _ -> MAlonzo.RTE.mazUnreachableError
name260 = "Function.Related.K-reflexive"
d260 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny
d260 v0 v1 v2 v3 v4 = du260 v0
du260 :: T52 -> AgdaAny
du260 v0 = coe du254 (coe v0)
name270 = "Function.Related.K-trans"
d270 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d270 v0 v1 v2 v3 v4 v5 v6 = du270 v0
du270 :: T52 -> AgdaAny -> AgdaAny -> AgdaAny
du270 v0
  = case coe v0 of
      C54 -> coe (\ v1 v2 v3 -> coe v2 (coe v1 v3))
      C56
        -> coe
             (\ v1 v2 -> coe C26 (coe (\ v3 -> coe d24 v1 (coe d24 v2 v3))))
      C58
        -> coe
             (\ v1 v2 ->
                coe MAlonzo.Code.Function.Equivalence.du82 (coe v2) (coe v1))
      C60
        -> coe
             (\ v1 v2 ->
                coe MAlonzo.Code.Function.Injection.du172 (coe v2) (coe v1))
      C62
        -> coe
             (\ v1 v2 ->
                coe
                  C50
                  (coe
                     MAlonzo.Code.Function.Injection.du172 (coe d48 (coe v1))
                     (coe d48 (coe v2))))
      C64
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.LeftInverse.du282
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                  (coe v2) (coe v1))
      C66
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Surjection.du196
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                  (coe v2) (coe v1))
      C68
        -> coe
             (\ v1 v2 ->
                coe
                  MAlonzo.Code.Function.Inverse.du208
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                  (coe
                     MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du250)
                  (coe v2) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
name286 = "Function.Related.SK-sym"
d286 ::
  T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> AgdaAny -> AgdaAny
d286 v0 v1 v2 v3 v4 = du286 v0
du286 :: T142 -> AgdaAny -> AgdaAny
du286 v0
  = case coe v0 of
      C144 -> coe MAlonzo.Code.Function.Equivalence.du100
      C146 -> coe MAlonzo.Code.Function.Inverse.du226
      _ -> MAlonzo.RTE.mazUnreachableError
name292 = "Function.Related.SK-isEquivalence"
d292 ::
  T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T26
d292 v0 v1 = du292 v0
du292 :: T142 -> MAlonzo.Code.Relation.Binary.Structures.T26
du292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C483
      (\ v1 -> coe du254 (coe d148 (coe v0)))
      (\ v1 v2 -> coe du286 (coe v0))
      (\ v1 v2 v3 -> coe du270 (coe d148 (coe v0)))
name300 = "Function.Related.SK-setoid"
d300 ::
  T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d300 v0 v1 = du300 v0
du300 :: T142 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501 (coe du292 (coe v0))
name310 = "Function.Related.K-isPreorder"
d310 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Structures.T70
d310 v0 v1 = du310 v0
du310 :: T52 -> MAlonzo.Code.Relation.Binary.Structures.T70
du310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C2113
      (coe du292 (coe C146)) (\ v1 v2 -> coe du130 (coe v0))
      (\ v1 v2 v3 -> coe du270 (coe v0))
name318 = "Function.Related.K-preorder"
d318 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d318 v0 v1 = du318 v0
du318 :: T52 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509 (coe du310 (coe v0))
name340 = "Function.Related.EquationalReasoning._∼⟨_⟩_"
d340 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d340 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du340 v0 v7 v8
du340 :: T52 -> AgdaAny -> AgdaAny -> AgdaAny
du340 v0 v1 v2 = coe du270 v0 v1 v2
name360 = "Function.Related.EquationalReasoning._↔⟨_⟩_"
d360 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58 -> AgdaAny -> AgdaAny
d360 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du360 v0 v7 v8
du360 ::
  T52 -> MAlonzo.Code.Function.Inverse.T58 -> AgdaAny -> AgdaAny
du360 v0 v1 v2 = coe du340 (coe v0) (coe du130 v0 v1) (coe v2)
name378 = "Function.Related.EquationalReasoning._↔⟨⟩_"
d378 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> AgdaAny -> AgdaAny
d378 v0 v1 v2 v3 v4 v5 = du378 v5
du378 :: AgdaAny -> AgdaAny
du378 v0 = coe v0
name396 = "Function.Related.EquationalReasoning._≡⟨_⟩_"
d396 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Equality.T12 -> AgdaAny -> AgdaAny
d396 v0 v1 v2 v3 v4 v5 v6 v7 = du396 v0 v7
du396 :: T52 -> AgdaAny -> AgdaAny
du396 v0 v1 = coe du340 (coe v0) (coe du140 (coe v0)) (coe v1)
name410 = "Function.Related.EquationalReasoning._∎"
d410 :: T52 -> MAlonzo.Code.Agda.Primitive.T4 -> () -> AgdaAny
d410 v0 v1 v2 = du410 v0
du410 :: T52 -> AgdaAny
du410 v0 = coe du254 (coe v0)
name414 = "Function.Related.EquationalReasoning.sym"
d414 ::
  T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 -> () -> () -> AgdaAny -> AgdaAny
d414 v0 v1 v2 v3 v4 = coe du286 v0
name422 = "Function.Related.InducedRelation₁"
d422 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d422 = erased
name438 = "Function.Related.InducedPreorder₁"
d438 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> MAlonzo.Code.Relation.Binary.Bundles.T132
d438 v0 v1 v2 v3 v4 = du438 v0
du438 :: T52 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du438 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C2113
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du242)
         (coe (\ v1 v2 v3 -> coe du130 v0 (coe du260 (coe C68))))
         (coe (\ v1 v2 v3 -> coe du270 (coe v0))))
name502 = "Function.Related.InducedEquivalence₁"
d502 ::
  T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> MAlonzo.Code.Relation.Binary.Bundles.T44
d502 v0 v1 v2 v3 v4 = du502 v0
du502 :: T142 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du502 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C483
         (coe (\ v1 -> coe du254 (coe d148 (coe v0))))
         (coe (\ v1 v2 -> coe du286 (coe v0)))
         (coe (\ v1 v2 v3 -> coe du270 (coe d148 (coe v0)))))
name518 = "Function.Related.InducedRelation₂"
d518 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d518 = erased
name540 = "Function.Related.InducedPreorder₂"
d540 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d540 v0 v1 v2 v3 v4 v5 v6 = du540 v0
du540 :: T52 -> MAlonzo.Code.Relation.Binary.Bundles.T132
du540 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C1509
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C2113
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du242)
         (coe (\ v1 v2 v3 v4 -> coe du130 v0 (coe du260 (coe C68))))
         (coe
            (\ v1 v2 v3 v4 v5 v6 -> coe du270 v0 (coe v4 v6) (coe v5 v6))))
name616 = "Function.Related.InducedEquivalence₂"
d616 ::
  T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d616 v0 v1 v2 v3 v4 v5 v6 = du616 v0
du616 :: T142 -> MAlonzo.Code.Relation.Binary.Bundles.T44
du616 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C501
      (coe
         MAlonzo.Code.Relation.Binary.Structures.C483
         (coe (\ v1 v2 -> coe du254 (coe d148 (coe v0))))
         (coe (\ v1 v2 v3 v4 -> coe du286 v0 (coe v3 v4)))
         (coe
            (\ v1 v2 v3 v4 v5 v6 ->
               coe du270 (d148 (coe v0)) (coe v4 v6) (coe v5 v6))))
name654 = "Function.Related.preorder"
d654 ::
  T52 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T132
d654 v0 v1 = coe du318 v0
name656 = "Function.Related.setoid"
d656 ::
  T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Relation.Binary.Bundles.T44
d656 v0 v1 = coe du300 v0
