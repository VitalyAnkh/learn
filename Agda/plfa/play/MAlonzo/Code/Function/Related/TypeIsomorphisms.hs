{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Function.Related.TypeIsomorphisms where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Algebra.Structures.Biased
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Empty.Polymorphic
import qualified MAlonzo.Code.Data.Product
import qualified MAlonzo.Code.Data.Product.Function.NonDependent.Propositional
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Function.Propositional
import qualified MAlonzo.Code.Function.Equality
import qualified MAlonzo.Code.Function.Equivalence
import qualified MAlonzo.Code.Function.Inverse
import qualified MAlonzo.Code.Function.Related
import qualified MAlonzo.Code.Level
import qualified MAlonzo.Code.Relation.Nullary
import qualified MAlonzo.Code.Relation.Nullary.Reflects

name22 = "Function.Related.TypeIsomorphisms.Σ-assoc"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d22 v0 v1 v2 v3 v4 v5 = du22
du22 :: MAlonzo.Code.Function.Inverse.T58
du22
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
                -> case coe v1 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3)
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v4) (coe v2))
                     _ -> MAlonzo.RTE.mazUnreachableError
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d28 (coe v0))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d28
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d30
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d30 (coe v0)))))
      erased erased
name52 = "Function.Related.TypeIsomorphisms.×-comm"
d52 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58
d52 v0 v1 v2 v3 = du52
du52 :: MAlonzo.Code.Function.Inverse.T58
du52
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Product.du250)
      (coe MAlonzo.Code.Data.Product.du250) erased erased
name60 = "Function.Related.TypeIsomorphisms.×-identityˡ"
d60 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d60 v0 v1 = du60
du60 :: MAlonzo.Code.Function.Inverse.T58
du60
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30)
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32
              (coe
                 MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))
              (coe v0)))
      erased erased
name68 = "Function.Related.TypeIsomorphisms.×-identityʳ"
d68 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d68 v0 v1 = du68
du68 :: MAlonzo.Code.Function.Inverse.T58
du68
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28)
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0)
              (coe
                 MAlonzo.Code.Level.C20 (coe MAlonzo.Code.Agda.Builtin.Unit.C8))))
      erased erased
name78 = "Function.Related.TypeIsomorphisms.×-identity"
d78 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d78 v0 = du78
du78 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du78
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v0 -> coe du60)
      (\ v0 -> coe du68)
name84 = "Function.Related.TypeIsomorphisms.×-zeroˡ"
d84 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d84 v0 v1 = du84 v0
du84 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Function.Inverse.T58
du84 v0
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d28)
      (coe
         MAlonzo.Code.Data.Product.du132 (coe (\ v1 -> v1))
         (coe MAlonzo.Code.Data.Empty.Polymorphic.d20 v0 v0 erased))
      erased erased
name96 = "Function.Related.TypeIsomorphisms.×-zeroʳ"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d96 v0 v1 = du96 v0
du96 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Function.Inverse.T58
du96 v0
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d30)
      (coe
         MAlonzo.Code.Data.Product.du132
         (coe MAlonzo.Code.Data.Empty.Polymorphic.d20 v0 v0 erased)
         (coe (\ v1 -> v1)))
      erased erased
name108 = "Function.Related.TypeIsomorphisms.×-zero"
d108 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d108 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v1 -> coe du84 (coe v0))
      (\ v1 -> coe du96 (coe v0))
name114 = "Function.Related.TypeIsomorphisms.⊎-assoc"
d114 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> MAlonzo.Code.Function.Inverse.T58
d114 v0 v1 v2 v3 = du114
du114 :: MAlonzo.Code.Function.Inverse.T58
du114
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (coe
            MAlonzo.Code.Data.Sum.Base.du66
            (coe MAlonzo.Code.Data.Sum.Base.C38)
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C42
                 (coe MAlonzo.Code.Data.Sum.Base.C38 (coe v0))))
         (\ v0 ->
            coe
              MAlonzo.Code.Data.Sum.Base.C42
              (coe MAlonzo.Code.Data.Sum.Base.C42 (coe v0))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (\ v0 ->
            coe
              MAlonzo.Code.Data.Sum.Base.C38
              (coe MAlonzo.Code.Data.Sum.Base.C38 (coe v0)))
         (coe
            MAlonzo.Code.Data.Sum.Base.du66
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C38
                 (coe MAlonzo.Code.Data.Sum.Base.C42 (coe v0)))
            (coe MAlonzo.Code.Data.Sum.Base.C42)))
      erased erased
name138 = "Function.Related.TypeIsomorphisms.⊎-comm"
d138 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> MAlonzo.Code.Function.Inverse.T58
d138 v0 v1 v2 v3 = du138
du138 :: MAlonzo.Code.Function.Inverse.T58
du138
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Sum.Base.du76)
      (coe MAlonzo.Code.Data.Sum.Base.du76) erased erased
name142 = "Function.Related.TypeIsomorphisms.⊎-identityˡ"
d142 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d142 v0 v1 = du142
du142 :: MAlonzo.Code.Function.Inverse.T58
du142
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Sum.Base.du66 erased (\ v0 -> v0))
      (coe MAlonzo.Code.Data.Sum.Base.C42) erased erased
name150 = "Function.Related.TypeIsomorphisms.⊎-identityʳ"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Function.Inverse.T58
d150 v0 v1 = du150
du150 :: MAlonzo.Code.Function.Inverse.T58
du150
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe MAlonzo.Code.Data.Sum.Base.du66 (\ v0 -> v0) erased)
      (coe MAlonzo.Code.Data.Sum.Base.C38) erased erased
name158 = "Function.Related.TypeIsomorphisms.⊎-identity"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d158 v0 = du158
du158 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du158
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v0 -> coe du142)
      (\ v0 -> coe du150)
name164 = "Function.Related.TypeIsomorphisms.×-distribˡ-⊎"
d164 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> MAlonzo.Code.Function.Inverse.T58
d164 v0 v1 v2 v3 = du164
du164 :: MAlonzo.Code.Function.Inverse.T58
du164
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         MAlonzo.Code.Data.Product.du232
         (coe
            (\ v0 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.du66
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C38
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1)))
                 (\ v1 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.C42
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1))))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (coe
            MAlonzo.Code.Data.Product.du170
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C38)))
         (coe
            MAlonzo.Code.Data.Product.du170
            (coe (\ v0 -> coe MAlonzo.Code.Data.Sum.Base.C42))))
      erased erased
name186 = "Function.Related.TypeIsomorphisms.×-distribʳ-⊎"
d186 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> () -> MAlonzo.Code.Function.Inverse.T58
d186 v0 v1 v2 v3 = du186
du186 :: MAlonzo.Code.Function.Inverse.T58
du186
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe
         MAlonzo.Code.Data.Product.du232
         (coe
            MAlonzo.Code.Data.Sum.Base.du66
            (\ v0 v1 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C38
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1)))
            (\ v0 v1 ->
               coe
                 MAlonzo.Code.Data.Sum.Base.C42
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v0) (coe v1)))))
      (coe
         MAlonzo.Code.Data.Sum.Base.du66
         (coe
            MAlonzo.Code.Data.Product.du158
            (coe MAlonzo.Code.Data.Sum.Base.C38))
         (coe
            MAlonzo.Code.Data.Product.du158
            (coe MAlonzo.Code.Data.Sum.Base.C42)))
      erased erased
name204 = "Function.Related.TypeIsomorphisms.×-distrib-⊎"
d204 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d204 v0 = du204
du204 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du204
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C32 (\ v0 v1 v2 -> coe du164)
      (\ v0 v1 v2 -> coe du186)
name212 = "Function.Related.TypeIsomorphisms.×-isMagma"
d212 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T80
d212 v0 v1 = du212 v0
du212 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T80
du212 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Function.Related.du292 (coe v0))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Product.Function.NonDependent.Propositional.du102
              (coe MAlonzo.Code.Function.Related.d148 (coe v0))))
name220 = "Function.Related.TypeIsomorphisms.×-magma"
d220 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T30
d220 v0 v1 = du220 v0
du220 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T30
du220 v0
  = coe MAlonzo.Code.Algebra.Bundles.C255 erased (coe du212 (coe v0))
name230 = "Function.Related.TypeIsomorphisms.×-isSemigroup"
d230 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T116
d230 v0 v1 = du230 v0
du230 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T116
du230 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du212 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du22)))
name244 = "Function.Related.TypeIsomorphisms.×-semigroup"
d244 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T80
d244 v0 v1 = du244 v0
du244 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T80
du244 v0
  = coe MAlonzo.Code.Algebra.Bundles.C877 erased (coe du230 (coe v0))
name254 = "Function.Related.TypeIsomorphisms.×-isMonoid"
d254 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T314
d254 v0 v1 = du254 v0
du254 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T314
du254 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C4201 (coe du230 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du60)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du68))))
name262 = "Function.Related.TypeIsomorphisms.×-monoid"
d262 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T422
d262 v0 v1 = du262 v0
du262 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T422
du262 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 erased erased
      (coe du254 (coe v0))
name272 = "Function.Related.TypeIsomorphisms.×-isCommutativeMonoid"
d272 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T362
d272 v0 v1 = du272 v0
du272 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T362
du272 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C5263 (coe du254 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du52)))
name284 = "Function.Related.TypeIsomorphisms.×-commutativeMonoid"
d284 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d284 v0 v1 = du284 v0
du284 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T496
du284 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 erased erased
      (coe du272 (coe v0))
name294 = "Function.Related.TypeIsomorphisms.⊎-isMagma"
d294 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T80
d294 v0 v1 = du294 v0
du294 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T80
du294 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C423
      (coe MAlonzo.Code.Function.Related.du292 (coe v0))
      (coe
         (\ v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Data.Sum.Function.Propositional.du100
              (coe MAlonzo.Code.Function.Related.d148 (coe v0))))
name302 = "Function.Related.TypeIsomorphisms.⊎-magma"
d302 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T30
d302 v0 v1 = du302 v0
du302 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T30
du302 v0
  = coe MAlonzo.Code.Algebra.Bundles.C255 erased (coe du294 (coe v0))
name312 = "Function.Related.TypeIsomorphisms.⊎-isSemigroup"
d312 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T116
d312 v0 v1 = du312 v0
du312 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T116
du312 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C1721 (coe du294 (coe v0))
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du114)))
name326 = "Function.Related.TypeIsomorphisms.⊎-semigroup"
d326 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T80
d326 v0 v1 = du326 v0
du326 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T80
du326 v0
  = coe MAlonzo.Code.Algebra.Bundles.C877 erased (coe du312 (coe v0))
name336 = "Function.Related.TypeIsomorphisms.⊎-isMonoid"
d336 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T314
d336 v0 v1 = du336 v0
du336 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T314
du336 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C4201 (coe du312 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C32
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du142)))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du150))))
name344 = "Function.Related.TypeIsomorphisms.⊎-monoid"
d344 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T422
d344 v0 v1 = du344 v0
du344 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T422
du344 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C4689 erased erased
      (coe du336 (coe v0))
name354 = "Function.Related.TypeIsomorphisms.⊎-isCommutativeMonoid"
d354 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T362
d354 v0 v1 = du354 v0
du354 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Structures.T362
du354 v0
  = coe
      MAlonzo.Code.Algebra.Structures.C5263 (coe du336 (coe v0))
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Function.Related.du130
              (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du138)))
name366 = "Function.Related.TypeIsomorphisms.⊎-commutativeMonoid"
d366 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d366 v0 v1 = du366 v0
du366 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Algebra.Bundles.T496
du366 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.C5649 erased erased
      (coe du354 (coe v0))
name376
  = "Function.Related.TypeIsomorphisms.×-⊎-isCommutativeSemiring"
d376 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Structures.T1276
d376 v0 v1
  = coe
      MAlonzo.Code.Algebra.Structures.Biased.du1572 erased erased erased
      (coe
         MAlonzo.Code.Algebra.Structures.Biased.C15817 (coe du354 (coe v0))
         (coe du272 (coe v0))
         (coe
            (\ v2 v3 v4 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0)) (coe du186)))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Related.du130
                 (MAlonzo.Code.Function.Related.d148 (coe v0))
                 (coe du84 (coe v1)))))
name390
  = "Function.Related.TypeIsomorphisms.×-⊎-commutativeSemiring"
d390 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1828
d390 v0 v1
  = coe
      MAlonzo.Code.Algebra.Bundles.C20509 erased erased erased erased
      (d376 (coe v0) (coe v1))
name416 = "Function.Related.TypeIsomorphisms.ΠΠ↔ΠΠ"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d416 v0 v1 v2 v3 v4 v5 = du416
du416 :: MAlonzo.Code.Function.Inverse.T58
du416
  = coe
      MAlonzo.Code.Function.Inverse.du156
      (coe (\ v0 v1 v2 -> coe v0 v2 v1))
      (coe (\ v0 v1 v2 -> coe v0 v2 v1)) erased erased
name442 = "Function.Related.TypeIsomorphisms.∃∃↔∃∃"
d442 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d442 v0 v1 v2 v3 v4 v5 = du442
du442 :: MAlonzo.Code.Function.Inverse.T58
du442
  = coe
      MAlonzo.Code.Function.Inverse.du156 (coe du458) (coe du474) erased
      erased
name458 = "Function.Related.TypeIsomorphisms._.to"
d458 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d458 v0 v1 v2 v3 v4 v5 v6 = du458 v6
du458 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du458 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name474 = "Function.Related.TypeIsomorphisms._.from"
d474 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d474 v0 v1 v2 v3 v4 v5 v6 = du474 v6
du474 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du474 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C32 (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
name498 = "Function.Related.TypeIsomorphisms.Π↔Π"
d498 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> (AgdaAny -> ()) -> MAlonzo.Code.Function.Inverse.T58
d498 v0 v1 v2 v3 = du498
du498 :: MAlonzo.Code.Function.Inverse.T58
du498
  = coe
      MAlonzo.Code.Function.Inverse.du156 (coe (\ v0 v1 -> coe v0 v1))
      (coe (\ v0 v1 -> coe v0 v1)) erased erased
name528 = "Function.Related.TypeIsomorphisms._→-cong-⇔_"
d528 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
d528 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 = du528 v8 v9
du528 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du528 v0 v1
  = coe
      MAlonzo.Code.Function.Equivalence.du56
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (MAlonzo.Code.Function.Equivalence.d34 (coe v1))
              (coe
                 v2
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d36 (coe v0)) v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Equality.d38
              (MAlonzo.Code.Function.Equivalence.d36 (coe v1))
              (coe
                 v2
                 (coe
                    MAlonzo.Code.Function.Equality.d38
                    (MAlonzo.Code.Function.Equivalence.d34 (coe v0)) v3))))
name560 = "Function.Related.TypeIsomorphisms.→-cong"
d560 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Related.T142 ->
  () -> () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d560 v0 v1 v2 v3 v4 v5 v6 = du560 v4 v5 v6
du560 ::
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Related.T142 ->
  () -> () -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
du560 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Function.Related.C144
        -> coe (\ v3 v4 v5 v6 v7 v8 -> coe du528 (coe v7) (coe v8))
      MAlonzo.Code.Function.Related.C146
        -> coe
             (\ v3 v4 v5 v6 v7 v8 ->
                coe
                  MAlonzo.Code.Function.Inverse.C2555
                  (coe
                     MAlonzo.Code.Function.Equivalence.d34
                     (coe du582 (coe v7) (coe v8)))
                  (coe
                     MAlonzo.Code.Function.Equivalence.d36
                     (coe du582 (coe v7) (coe v8)))
                  (coe
                     MAlonzo.Code.Function.Inverse.C1525
                     (coe
                        (\ v9 ->
                           coe
                             v0 v3 (\ v10 -> v5)
                             (coe
                                MAlonzo.Code.Function.Equality.d38
                                (MAlonzo.Code.Function.Equivalence.d36
                                   (coe du582 (coe v7) (coe v8)))
                                (coe
                                   MAlonzo.Code.Function.Equality.d38
                                   (MAlonzo.Code.Function.Equivalence.d34
                                      (coe du582 (coe v7) (coe v8)))
                                   v9))
                             v9 erased))
                     (coe
                        (\ v9 ->
                           coe
                             v1 v4 (\ v10 -> v6)
                             (coe
                                MAlonzo.Code.Function.Equality.d38
                                (MAlonzo.Code.Function.Equivalence.d34
                                   (coe du582 (coe v7) (coe v8)))
                                (coe
                                   MAlonzo.Code.Function.Equality.d38
                                   (MAlonzo.Code.Function.Equivalence.d36
                                      (coe du582 (coe v7) (coe v8)))
                                   v9))
                             v9 erased))))
      _ -> MAlonzo.RTE.mazUnreachableError
name582 = "Function.Related.TypeIsomorphisms._.A→C⇔B→D"
d582 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  () ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Equivalence.T16
d582 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 = du582 v10 v11
du582 ::
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Inverse.T58 ->
  MAlonzo.Code.Function.Equivalence.T16
du582 v0 v1
  = coe
      du528
      (coe
         MAlonzo.Code.Function.Related.du130
         (coe MAlonzo.Code.Function.Related.C58) v0)
      (coe
         MAlonzo.Code.Function.Related.du130
         (coe MAlonzo.Code.Function.Related.C58) v1)
name602 = "Function.Related.TypeIsomorphisms.¬-cong-⇔"
d602 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
d602 v0 v1 v2 v3 v4 v5 = du602 v5
du602 ::
  MAlonzo.Code.Function.Equivalence.T16 ->
  MAlonzo.Code.Function.Equivalence.T16
du602 v0
  = coe
      du528 (coe v0)
      (coe
         MAlonzo.Code.Function.Related.du410
         (coe MAlonzo.Code.Function.Related.C58))
name622 = "Function.Related.TypeIsomorphisms.¬-cong"
d622 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  (() ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Related.T142 ->
  () -> () -> AgdaAny -> AgdaAny
d622 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du622 v5 v8
du622 :: MAlonzo.Code.Function.Related.T142 -> AgdaAny -> AgdaAny
du622 v0 v1
  = coe
      du560 erased erased v0 erased erased erased erased v1
      (coe
         MAlonzo.Code.Function.Related.du410
         (coe MAlonzo.Code.Function.Related.d148 (coe v0)))
name652 = "Function.Related.TypeIsomorphisms.Related-cong"
d652 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
d652 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 = du652 v0 v9 v10
du652 ::
  MAlonzo.Code.Function.Related.T142 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Function.Equivalence.T16
du652 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Equivalence.du56
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Function.Related.du340
              (coe MAlonzo.Code.Function.Related.d148 (coe v0))
              (coe MAlonzo.Code.Function.Related.du286 v0 v1)
              (coe
                 MAlonzo.Code.Function.Related.du340
                 (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v3)
                 (coe
                    MAlonzo.Code.Function.Related.du340
                    (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v2)
                    (coe
                       MAlonzo.Code.Function.Related.du410
                       (coe MAlonzo.Code.Function.Related.d148 (coe v0)))))))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Function.Related.du340
              (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v1)
              (coe
                 MAlonzo.Code.Function.Related.du340
                 (coe MAlonzo.Code.Function.Related.d148 (coe v0)) (coe v3)
                 (coe
                    MAlonzo.Code.Function.Related.du340
                    (coe MAlonzo.Code.Function.Related.d148 (coe v0))
                    (coe MAlonzo.Code.Function.Related.du286 v0 v2)
                    (coe
                       MAlonzo.Code.Function.Related.du410
                       (coe MAlonzo.Code.Function.Related.d148 (coe v0)))))))
name684 = "Function.Related.TypeIsomorphisms.True↔"
d684 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Relation.Nullary.T32 ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Function.Inverse.T58
d684 v0 v1 v2 v3 = du684 v2
du684 ::
  MAlonzo.Code.Relation.Nullary.T32 ->
  MAlonzo.Code.Function.Inverse.T58
du684 v0
  = case coe v0 of
      MAlonzo.Code.Relation.Nullary.C46 v1 v2
        -> if coe v1
             then coe
                    MAlonzo.Code.Function.Inverse.du156
                    (coe
                       (\ v3 -> coe MAlonzo.Code.Relation.Nullary.Reflects.du20 (coe v2)))
                    (coe (\ v3 -> coe MAlonzo.Code.Agda.Builtin.Unit.C8)) erased erased
             else coe
                    seq (coe v2)
                    (coe
                       MAlonzo.Code.Function.Inverse.du156 erased
                       (coe
                          MAlonzo.Code.Relation.Nullary.Reflects.du20
                          (coe MAlonzo.Code.Relation.Nullary.C26))
                       erased erased)
      _ -> MAlonzo.RTE.mazUnreachableError
name712 = "Function.Related.TypeIsomorphisms.Σ-≡,≡↔≡"
d712 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Function.Inverse.T58
d712 v0 v1 v2 v3 v4 v5 = du712
du712 :: MAlonzo.Code.Function.Inverse.T58
du712
  = coe
      MAlonzo.Code.Function.Inverse.du156 erased (\ v0 -> coe du736)
      erased erased
name728 = "Function.Related.TypeIsomorphisms._.to"
d728 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d728 = erased
name736 = "Function.Related.TypeIsomorphisms._.from"
d736 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d736 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du736
du736 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du736 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name746 = "Function.Related.TypeIsomorphisms._.left-inverse-of"
d746 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d746 = erased
name754 = "Function.Related.TypeIsomorphisms._.right-inverse-of"
d754 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d754 = erased
name768 = "Function.Related.TypeIsomorphisms.×-≡,≡↔≡"
d768 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Function.Inverse.T58
d768 v0 v1 v2 v3 v4 v5 = du768
du768 :: MAlonzo.Code.Function.Inverse.T58
du768
  = coe
      MAlonzo.Code.Function.Inverse.du156 erased (\ v0 -> coe du788)
      erased erased
name782 = "Function.Related.TypeIsomorphisms._.to"
d782 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d782 = erased
name788 = "Function.Related.TypeIsomorphisms._.from"
d788 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d788 v0 v1 v2 v3 v4 v5 v6 v7 v8 = du788
du788 :: MAlonzo.Code.Agda.Builtin.Sigma.T14
du788 = coe MAlonzo.Code.Agda.Builtin.Sigma.C32 erased erased
name796 = "Function.Related.TypeIsomorphisms._.left-inverse-of"
d796 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d796 = erased
name804 = "Function.Related.TypeIsomorphisms._.right-inverse-of"
d804 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d804 = erased
name820 = "Function.Related.TypeIsomorphisms.×-≡×≡↔≡,≡"
d820 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Function.Inverse.T58
d820 v0 v1 v2 v3 v4 v5 v6 = du820
du820 :: MAlonzo.Code.Function.Inverse.T58
du820
  = coe
      MAlonzo.Code.Function.Inverse.du156 erased (coe du834) erased
      erased
name832 = "Function.Related.TypeIsomorphisms._.to"
d832 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d832 = erased
name834 = "Function.Related.TypeIsomorphisms._.from"
d834 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
d834 v0 v1 v2 v3 v4 v5 v6 = du834
du834 ::
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14
du834 = coe MAlonzo.Code.Data.Product.du132 erased erased
name838 = "Function.Related.TypeIsomorphisms._.from∘to"
d838 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d838 = erased
name842 = "Function.Related.TypeIsomorphisms._.to∘from"
d842 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d842 = erased
name844 = "Function.Related.TypeIsomorphisms.×-CommutativeMonoid"
d844 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d844 v0 v1 = coe du284 v0
name846 = "Function.Related.TypeIsomorphisms.⊎-CommutativeMonoid"
d846 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Algebra.Bundles.T496
d846 v0 v1 = coe du366 v0
name848
  = "Function.Related.TypeIsomorphisms.×⊎-CommutativeSemiring"
d848 ::
  MAlonzo.Code.Function.Related.T142 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Algebra.Bundles.T1828
d848 = coe d390
name6951 = "Function.Related.TypeIsomorphisms..absurdlambda"
d6951 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Level.T8 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d6951 = erased
name6959 = "Function.Related.TypeIsomorphisms..absurdlambda"
d6959 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Level.T8 -> AgdaAny
d6959 = erased
name7317 = "Function.Related.TypeIsomorphisms..absurdlambda"
d7317 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Level.T8 -> MAlonzo.Code.Agda.Builtin.Equality.T12
d7317 = erased
name7325 = "Function.Related.TypeIsomorphisms..absurdlambda"
d7325 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Level.T8 -> AgdaAny
d7325 = erased
name48045 = "Function.Related.TypeIsomorphisms..absurdlambda"
d48045 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Empty.T4 -> AgdaAny
d48045 = erased
name48061 = "Function.Related.TypeIsomorphisms..absurdlambda"
d48061 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Empty.T4) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Data.Empty.T4 ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d48061 = erased
