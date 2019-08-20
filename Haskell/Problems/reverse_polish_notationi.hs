

-- solveRPN :: (Num a) => String -> a
-- type Lens b a=Functor f =>(a-> f a)->b->f b-
data Sum a b= First a | Second b deriving (Eq, Show)
instance Functor (Sum a) where
  fmap _ (First x) = First  x
  fmap f (Second x) = Second $ f x

instance Applicative (Sum a) where
  pure = Second
  _ <*> (First x) = First x
  (Second f) <*> y = f <$> y
instance Monad (Sum a) where
  return = pure
  (First x) >>= _ = First x
  (Second y) >>= f = f y
