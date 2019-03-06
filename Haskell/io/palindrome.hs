main = interact respondPalindromes
respondPalindromes =
    unlines
        . map
              (\xs ->
                  if xs == reverse xs then "palindrome" else "not a palindrome"
              )
        . lines
