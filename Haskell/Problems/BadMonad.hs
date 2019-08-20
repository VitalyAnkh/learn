module BadMonad where
import Test.QuickCheck
import Test.QuickCheck.Checkers
import Test.QuickCheck.Classes

data CountMe a = CountMe Integer a deriving (Eq,Show)
instance Functor CountMe where
  fmap f (CountMe i a) = CountMe i (f a)

instance Applicative CountMe where
  pure = CountMe 0
--  CountMe _ f <*> CountMe j x = CountMe j $ f x
  CountMe n f <*> CountMe m x = CountMe (n+m) $ f x
instance Monad CountMe where
  return = pure
  CountMe n x >>=  f =
    let CountMe n' b = f x
    in CountMe (n'+n) b
instance Arbitrary a => Arbitrary (CountMe a) where
  arbitrary = CountMe <$> arbitrary <*> arbitrary
instance Eq a => EqProp (CountMe a) where
  (=-=) = eq

main = do
  let trigger :: CountMe (Int,String, Int)
      trigger = undefined
  quickBatch $ functor trigger
  quickBatch $ applicative trigger
  quickBatch $ monad trigger
