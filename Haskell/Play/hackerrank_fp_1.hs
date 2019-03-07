main = do
    first  <- getLine
    second <- getLine
    return read first + read second
