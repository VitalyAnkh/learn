import           Data.Monoid
data Weekday=Monday|Tuesday|Wednesday|Thursday|Friday|Saturday|Sunday

data Lowercasetype=Lowercasetype

data Booly a=False' | True' deriving (Eq,Show)

--instance Monoid (Booly a) where
--  mappend False' _    =False'
--  mappend _ False'    =False'
--  mappend True' True' =True'
data Optional a=Nada|Only a deriving (Eq,Show)
instance Semigroup a=>Semigroup (Optional a) where
  (<>)=undefined

data MyRecord a = ConsRecord {getRecord::a}

data Command = CmdBranch |  CmdFile deriving (Show,Eq)
cmdParser :: String -> Either String Command
cmdParser str=case str of
  "branch" -> Right CmdBranch
  "file"->Right CmdFile
  str'->Left ("Unknown command: "++str')

data SubCommand =CmdList | CmdCreate | CmdRemove deriving (Show,Eq)
subCmdParser::String->Either String SubCommand
subCmdParser str=case str of
  "list"->Right CmdList
  "create"->Right CmdCreate
  "remove"->Right CmdRemove
  str'->Left ("Unknown subcommand: "++str')

mainParser::String->Either String (Command,SubCommand)
mainParser str=
  let [cmdStr,subCmdStr]=words str
  in (,) <$> cmdParser cmdStr <*> subCmdParser subCmdStr
