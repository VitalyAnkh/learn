import           System.IO
import           System.Environment
import           System.Directory

main = do
    (fileName : _) <- getArgs
    fileExits      <- doesFileExist fileName
    if fileExits
        then do
            contents <- readFile fileName
            putStrLn
                $  "The file has "
                ++ (show $length $lines contents)
                ++ " lines"
        else do
            putStrLn "This file doesn't exist!"
