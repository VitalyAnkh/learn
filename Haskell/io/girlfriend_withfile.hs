import           System.IO
main = withFile
    "girlfriend.txt"
    ReadMode
    (\handle -> do
        contents <- hGetContents handle
        putStr contents
    )
