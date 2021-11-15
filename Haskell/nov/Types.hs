-- setting the "warn-incomplete-patterns" flag asks GHC to warn you
-- about possible missing cases in pattern-matching definitions
{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

-- see https://wiki.haskell.org/Safe_Haskell
{-# LANGUAGE Safe #-}

---------------------------------------------------------------------------------
-------------------------- DO **NOT** MODIFY THIS FILE --------------------------
---------------------------------------------------------------------------------

module Types where

{- Exercise 1 -}

data Ingredient = Nuts | Gluten | Soy | Dairy   deriving (Show, Eq)
type Recipe = [Ingredient]
data Price = P Int                              deriving (Show, Eq, Ord)
data Cupcake = CC Price Recipe                  deriving (Show, Eq)

{- Exercise 2 -}

type Tin = [Recipe]
data Spec = And Spec Spec | Or Spec Spec | Not Spec | HasCup Int Ingredient  deriving (Show,Eq)

{- Exercise 3 -}

data File = File {
  fileName :: String,
  fileContents :: String
} deriving (Eq,Show)

data Directory = Dir {
  dirName :: String,
  dirContents :: [ DirectoryEntry ]
} deriving (Eq,Show)

data DirectoryEntry =
    FileEntry File
  | DirEntry Directory
  deriving (Eq,Show)

data EnteredDirectory = ED {
  entriesBefore :: [DirectoryEntry],
  enteredDirName :: String,
  entriesAfter :: [DirectoryEntry]
  } deriving (Eq, Show)

type Breadcrumb = (Directory , [ EnteredDirectory ])
