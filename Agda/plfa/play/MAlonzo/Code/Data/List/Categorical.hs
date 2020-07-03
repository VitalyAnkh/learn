{-# LANGUAGE EmptyDataDecls, EmptyCase, ExistentialQuantification,
             ScopedTypeVariables, NoMonomorphismRestriction, RankNTypes,
             PatternSynonyms #-}
module MAlonzo.Code.Data.List.Categorical where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, eqFloat, add64, sub64,
                    mul64, quot64, rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Category.Applicative.Indexed
import qualified MAlonzo.Code.Category.Functor
import qualified MAlonzo.Code.Category.Monad.Indexed
import qualified MAlonzo.Code.Data.List.Base

name8 = "Data.List.Categorical.functor"
d8 ::
  MAlonzo.Code.Agda.Primitive.T4 -> MAlonzo.Code.Category.Functor.T24
d8 v0 = du8
du8 :: MAlonzo.Code.Category.Functor.T24
du8
  = coe
      MAlonzo.Code.Category.Functor.C181
      (coe (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Data.List.Base.du20 v2 v3))
name12 = "Data.List.Categorical.applicative"
d12 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Applicative.Indexed.T38
d12 v0 = du12
du12 :: MAlonzo.Code.Category.Applicative.Indexed.T38
du12
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C511
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
              (coe MAlonzo.Code.Agda.Builtin.List.C16)))
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            coe
              MAlonzo.Code.Data.List.Base.du246
              (coe
                 (\ v7 -> coe MAlonzo.Code.Data.List.Base.du20 (coe v7) (coe v6)))
              (coe v5)))
name22 = "Data.List.Categorical.applicativeZero"
d22 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Applicative.Indexed.T156
d22 v0 = du22
du22 :: MAlonzo.Code.Category.Applicative.Indexed.T156
du22
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C7811 (coe du12)
      (coe (\ v0 v1 v2 -> coe MAlonzo.Code.Agda.Builtin.List.C16))
name26 = "Data.List.Categorical.alternative"
d26 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Applicative.Indexed.T210
d26 v0 = du26
du26 :: MAlonzo.Code.Category.Applicative.Indexed.T210
du26
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.C8953 (coe du22)
      (coe (\ v0 v1 v2 -> coe MAlonzo.Code.Data.List.Base.du58))
name30 = "Data.List.Categorical.monad"
d30 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Monad.Indexed.T32
d30 v0 = du30
du30 :: MAlonzo.Code.Category.Monad.Indexed.T32
du30
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C459
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C22 (coe v2)
              (coe MAlonzo.Code.Agda.Builtin.List.C16)))
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            coe MAlonzo.Code.Data.List.Base.du246 (coe v6) (coe v5)))
name34 = "Data.List.Categorical.monadZero"
d34 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Monad.Indexed.T174
d34 v0 = du34
du34 :: MAlonzo.Code.Category.Monad.Indexed.T174
du34
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C7341 (coe du30) (coe du22)
name38 = "Data.List.Categorical.monadPlus"
d38 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  MAlonzo.Code.Category.Monad.Indexed.T240
d38 v0 = du38
du38 :: MAlonzo.Code.Category.Monad.Indexed.T240
du38
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C8943 (coe du30) (coe du26)
name74 = "Data.List.Categorical.TraversableA.sequenceA"
d74 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  () -> [AgdaAny] -> AgdaAny
d74 v0 v1 v2 v3 v4 = du74 v2 v4
du74 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  [AgdaAny] -> AgdaAny
du74 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d58 v0 erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8) v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Category.Applicative.Indexed.d66 v0 erased erased
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
             (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
             (let v4 = coe MAlonzo.Code.Agda.Builtin.Unit.C8 in
              let v5 = coe MAlonzo.Code.Agda.Builtin.Unit.C8 in
              coe
                MAlonzo.Code.Category.Functor.d30
                (coe
                   MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v0) (coe v4)
                   (coe v5))
                erased erased (coe MAlonzo.Code.Agda.Builtin.List.C22) v2)
             (coe du74 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
name86 = "Data.List.Categorical.TraversableA.mapA"
d86 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d86 v0 v1 v2 v3 v4 v5 v6 v7 = du86 v2 v6 v7
du86 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du86 v0 v1 v2
  = coe
      du74 (coe v0)
      (coe MAlonzo.Code.Data.List.Base.du20 (coe v1) (coe v2))
name96 = "Data.List.Categorical.TraversableA.forA"
d96 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d96 v0 v1 v2 v3 v4 v5 v6 v7 = du96 v2 v6 v7
du96 ::
  MAlonzo.Code.Category.Applicative.Indexed.T38 ->
  [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du96 v0 v1 v2 = coe du86 (coe v0) (coe v2) (coe v1)
name148 = "Data.List.Categorical.TraversableM._.forA"
d148 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d148 v0 v1 v2 = du148 v2
du148 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du148 v0 v1 v2 v3 v4 v5
  = coe
      du96 (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)) v4 v5
name150 = "Data.List.Categorical.TraversableM._.mapA"
d150 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d150 v0 v1 v2 = du150 v2
du150 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du150 v0 v1 v2 v3 v4 v5
  = coe
      du86 (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)) v4 v5
name152 = "Data.List.Categorical.TraversableM._.sequenceA"
d152 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (() -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  () -> [AgdaAny] -> AgdaAny
d152 v0 v1 v2 = du152 v2
du152 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  () -> [AgdaAny] -> AgdaAny
du152 v0 v1 v2
  = coe
      du74 (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)) v2
name158 = "Data.List.Categorical.monadT"
d158 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Category.Monad.Indexed.T32
d158 v0 v1 v2 = du158 v2
du158 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Category.Monad.Indexed.T32
du158 v0
  = coe
      MAlonzo.Code.Category.Monad.Indexed.C459
      (coe
         (\ v1 v2 v3 ->
            coe
              MAlonzo.Code.Category.Monad.Indexed.d52 v0 erased
              (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
              (coe
                 MAlonzo.Code.Agda.Builtin.List.C22 (coe v3)
                 (coe MAlonzo.Code.Agda.Builtin.List.C16))))
      (coe
         (\ v1 v2 v3 v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Category.Monad.Indexed.d60 v0 erased erased
              (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
              (coe MAlonzo.Code.Agda.Builtin.Unit.C8) v6
              (\ v8 ->
                 let v9 = coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0) in
                 let v10 = coe MAlonzo.Code.Agda.Builtin.Unit.C8 in
                 let v11 = coe MAlonzo.Code.Agda.Builtin.Unit.C8 in
                 coe
                   MAlonzo.Code.Category.Functor.d30
                   (coe
                      MAlonzo.Code.Category.Applicative.Indexed.du72 (coe v9) (coe v10)
                      (coe v11))
                   erased erased (coe MAlonzo.Code.Data.List.Base.du244)
                   (coe
                      du86 (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0))
                      (coe v7) (coe v8)))))
name208 = "Data.List.Categorical._._.forA"
d208 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
d208 v0 v1 v2 = du208 v2
du208 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> AgdaAny
du208 v0 v1 v2 v3 v4 v5
  = coe
      du96 (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)) v4 v5
name210 = "Data.List.Categorical._._.mapA"
d210 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d210 v0 v1 v2 = du210 v2
du210 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du210 v0 v1 v2 v3 v4 v5
  = coe
      du86 (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)) v4 v5
name212 = "Data.List.Categorical._._.sequenceA"
d212 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  (MAlonzo.Code.Agda.Builtin.Unit.T6 ->
   MAlonzo.Code.Agda.Builtin.Unit.T6 -> () -> ()) ->
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  () -> [AgdaAny] -> AgdaAny
d212 v0 v1 v2 = du212 v2
du212 ::
  MAlonzo.Code.Category.Monad.Indexed.T32 ->
  () -> [AgdaAny] -> AgdaAny
du212 v0 v1 v2
  = coe
      du74 (coe MAlonzo.Code.Category.Monad.Indexed.du122 (coe v0)) v2
name240 = "Data.List.Categorical.LMP._>>=_"
d240 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
d240 v0 = du240
du240 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  [AgdaAny] -> (AgdaAny -> [AgdaAny]) -> [AgdaAny]
du240
  = let v0 = coe du38 in
    coe
      MAlonzo.Code.Category.Monad.Indexed.d60
      (coe MAlonzo.Code.Category.Monad.Indexed.d250 (coe v0))
name242 = "Data.List.Categorical.LMP._∣_"
d242 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d242 v0 = du242
du242 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du242
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d230
      (coe MAlonzo.Code.Category.Monad.Indexed.d252 (coe du38))
name246 = "Data.List.Categorical.LMP._⊛_"
d246 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d246 v0 = du246
du246 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
du246
  = let v0 = coe du38 in
    let v1 = MAlonzo.Code.Category.Monad.Indexed.d250 (coe v0) in
    coe
      (\ v2 v3 v4 v5 v6 v7 v8 ->
         coe
           MAlonzo.Code.Category.Monad.Indexed.d60 v1 erased erased v4 v5 v6
           v7
           (\ v9 ->
              coe
                MAlonzo.Code.Category.Monad.Indexed.d60 v1 erased erased v5 v6 v6
                v8
                (\ v10 ->
                   coe
                     MAlonzo.Code.Category.Monad.Indexed.d52 v1 erased v6
                     (coe v9 v10))))
name264 = "Data.List.Categorical.LMP.return"
d264 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> [AgdaAny]
d264 v0 = du264
du264 ::
  () -> MAlonzo.Code.Agda.Builtin.Unit.T6 -> AgdaAny -> [AgdaAny]
du264
  = coe
      MAlonzo.Code.Category.Monad.Indexed.d52
      (coe MAlonzo.Code.Category.Monad.Indexed.d250 (coe du38))
name270 = "Data.List.Categorical.LMP.∅"
d270 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> [AgdaAny]
d270 v0 = du270
du270 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T6 -> [AgdaAny]
du270
  = coe
      MAlonzo.Code.Category.Applicative.Indexed.d176
      (coe
         MAlonzo.Code.Category.Applicative.Indexed.d224
         (coe MAlonzo.Code.Category.Monad.Indexed.d252 (coe du38)))
name284 = "Data.List.Categorical.MonadProperties.left-identity"
d284 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d284 = erased
name296 = "Data.List.Categorical.MonadProperties.right-identity"
d296 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d296 = erased
name312 = "Data.List.Categorical.MonadProperties.left-zero"
d312 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d312 = erased
name324 = "Data.List.Categorical.MonadProperties.right-zero"
d324 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d324 = erased
name352
  = "Data.List.Categorical.MonadProperties.right-distributive"
d352 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d352 = erased
name384 = "Data.List.Categorical.MonadProperties.associative"
d384 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d384 = erased
name416 = "Data.List.Categorical.MonadProperties.cong"
d416 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d416 = erased
name426 = "Data.List.Categorical.Applicative.MP.associative"
d426 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d426 = erased
name428 = "Data.List.Categorical.Applicative.MP.cong"
d428 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T12
d428 = erased
name430 = "Data.List.Categorical.Applicative.MP.left-identity"
d430 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d430 = erased
name432 = "Data.List.Categorical.Applicative.MP.left-zero"
d432 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d432 = erased
name434 = "Data.List.Categorical.Applicative.MP.right-distributive"
d434 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d434 = erased
name436 = "Data.List.Categorical.Applicative.MP.right-identity"
d436 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d436 = erased
name438 = "Data.List.Categorical.Applicative.MP.right-zero"
d438 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d438 = erased
name446 = "Data.List.Categorical.Applicative.pam"
d446 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> [AgdaAny]
d446 v0 v1 v2 v3 v4 = du446 v3 v4
du446 :: [AgdaAny] -> (AgdaAny -> AgdaAny) -> [AgdaAny]
du446 v0 v1
  = let v2 = coe du38 in
    coe
      MAlonzo.Code.Category.Monad.Indexed.d60
      (MAlonzo.Code.Category.Monad.Indexed.d250 (coe v2)) erased erased
      (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C8) v0
      (\ v3 ->
         coe
           MAlonzo.Code.Category.Monad.Indexed.d52
           (MAlonzo.Code.Category.Monad.Indexed.d250 (coe du38)) erased
           (coe MAlonzo.Code.Agda.Builtin.Unit.C8) (coe v1 v3))
name460 = "Data.List.Categorical.Applicative.left-zero"
d460 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d460 = erased
name472 = "Data.List.Categorical.Applicative.right-zero"
d472 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d472 = erased
name494 = "Data.List.Categorical.Applicative.right-distributive"
d494 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d494 = erased
name516 = "Data.List.Categorical.Applicative.identity"
d516 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d516 = erased
name536 = "Data.List.Categorical.Applicative.pam-lemma"
d536 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> [AgdaAny]) -> MAlonzo.Code.Agda.Builtin.Equality.T12
d536 = erased
name564 = "Data.List.Categorical.Applicative.composition"
d564 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny -> AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Equality.T12
d564 = erased
name618 = "Data.List.Categorical.Applicative.homomorphism"
d618 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d618 = erased
name636 = "Data.List.Categorical.Applicative.interchange"
d636 ::
  MAlonzo.Code.Agda.Primitive.T4 ->
  () ->
  () ->
  [AgdaAny -> AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T12
d636 = erased
