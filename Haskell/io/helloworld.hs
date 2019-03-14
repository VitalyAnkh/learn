main = do
    putStrLn "Hello, what's your name?"
    putStrLn "Hello, what's your name, again?"
    name<-getLine
    putStrLn ("Hey " ++ name ++ ", you rock!")

