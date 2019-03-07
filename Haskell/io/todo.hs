import System.Environment
import Syetem.Directory
import System.IO
import Data.List

dispatch::[(String,[String]->IO())]
dispatch =[("add",add),
("view",view),
("remove",remove)]

main=do
    (command:args)<-getArgs 
    let (Just action)=lookup command dispatch 
    action args 

add ::[String]->IO()
add [fileName,todoItem] =appendFile fileName (todoItem++"\n")

view ::[String]->IO()
view [fileName]