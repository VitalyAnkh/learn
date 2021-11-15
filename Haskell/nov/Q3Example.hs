-- setting the "warn-incomplete-patterns" flag asks GHC to warn you
-- about possible missing cases in pattern-matching definitions
{-# OPTIONS_GHC -fwarn-incomplete-patterns #-}

-- see https://wiki.haskell.org/Safe_Haskell
{-# LANGUAGE Safe #-}

---------------------------------------------------------------------------------
-------------------------- DO **NOT** MODIFY THIS FILE --------------------------
---------------------------------------------------------------------------------

module Q3Example where

import Types

--
--  Italian
--

lasagna :: File
lasagna = File {
  fileName = "lasagna.txt",
  fileContents = "pasta, tomatoes, cheese, ground beef ..."
  }

pizza :: File
pizza = File {
  fileName = "pizza.txt",
  fileContents = "pizza dough, tomato sauce, anchovies ..."
  }


italian :: Directory
italian = Dir {
  dirName = "italian",
  dirContents = [ FileEntry lasagna , FileEntry pizza ]
  }

--
--  American
--

hotDogs :: File
hotDogs = File {
  fileName = "hot-dogs.txt",
  fileContents = "bun, hot dog, pickle relish, ketchup ..."
  }

burgers :: File
burgers = File {
  fileName = "burgers.txt",
  fileContents = "buns, hamburger, ketchup, pickles ..."
  }

chimichanga :: File
chimichanga = File {
  fileName = "chimichanga.txt",
  fileContents = "tortilla, rice, cheese, beans .."
  }

burrito :: File
burrito = File {
  fileName = "burrito.txt",
  fileContents = "tortilla, rice, beans, roll it up!"
  }

texMex :: Directory
texMex = Dir {
  dirName = "tex-mex",
  dirContents = [ FileEntry chimichanga , FileEntry burrito ]
}

friedGreenTomatoes :: File
friedGreenTomatoes = File {
  fileName = "fried-green-tomatoes.txt",
  fileContents = "tomatoes (green), breading, oil ..."
  }

shrimpAndGrits :: File
shrimpAndGrits = File {
  fileName = "shrimp-and-grits.txt",
  fileContents = "shrimp, grits"
  }

southern :: Directory
southern = Dir {
  dirName = "southern",
  dirContents = [ FileEntry friedGreenTomatoes,
                  FileEntry shrimpAndGrits ]
  }

american :: Directory
american = Dir {
  dirName = "american",
  dirContents = [
      FileEntry hotDogs,
      FileEntry burgers,
      DirEntry texMex,
      DirEntry southern
      ]
  }

--
--  French
--

crepes :: File
crepes = File {
  fileName = "crepes.txt",
  fileContents = "butter, flour, eggs, ..."
  }

quiche :: File
quiche = File {
  fileName = "quiche.txt",
  fileContents = "eggs, flour, bacon, milk"
  }

french :: Directory
french = Dir {
  dirName = "french",
  dirContents = [ FileEntry crepes, FileEntry quiche ]
  }

--
--  Recipes
--

recipes :: Directory
recipes = Dir {
  dirName = "recipes",
  dirContents = [
      DirEntry italian,
      DirEntry american,
      DirEntry french
      ]
  }

--
--  Sample Breadcrumbs
--

bc0 :: Breadcrumb
bc0 = (french , [
          ED {
              entriesBefore = [DirEntry italian, DirEntry american],
              enteredDirName = "recipes",
              entriesAfter = []
             }
          ])


bc1 :: Breadcrumb
bc1 = (texMex , [
          ED {
              entriesBefore = [FileEntry hotDogs, FileEntry burgers],
              enteredDirName = "american",
              entriesAfter = [DirEntry southern]
             },
          ED {
              entriesBefore = [DirEntry italian],
              enteredDirName = "recipes",
              entriesAfter = [DirEntry french]
             }
          ])

bc2 :: Breadcrumb
bc2 = (american , [
          ED {
              entriesBefore = [DirEntry italian],
              enteredDirName = "recipes",
              entriesAfter = [DirEntry french]
             }
          ])
