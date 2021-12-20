

{-
    Implementation of a Trivial Monad, also know as Id monad.
    It is a Monad which doesn't do anything.
    In Haskell to make something a Monad, Applictaive also needs to be implemented, 
    Since in theory, Monads are Applicative.
    To make somrthing Applicative, a Functor needs to be implemented.
-}

newtype TrivialMonad a = TrivialMonad {runTrivialMonad :: a}

instance Monad TrivialMonad where
    (TrivialMonad x) >>= f      = f x
    return a            = TrivialMonad a

instance Functor TrivialMonad where
    fmap f (TrivialMonad x) = TrivialMonad (f x )

instance Applicative TrivialMonad where
    pure = TrivialMonad
    TrivialMonad f <*> TrivialMonad x = TrivialMonad (f x)


{-
    >>= is called Bind operator.
    It can be used to get value from a Monadic value (?).

    Another way to do that is the "do" notation.
-}


--Function which will increment a value by one
bindWay :: (Monad m, Num b) => m b -> m b
bindWay a =  a >>= (\a -> return $ a + 1)

doWay :: (Monad m, Num b) => m b -> m b
doWay a = do
    v <- a
    return $ v + 1
