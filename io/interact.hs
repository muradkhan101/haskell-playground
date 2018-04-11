

isPalindrome word = if word == (reverse word) then "Is palindrome" else "I AM NOTTTT"
arePalindromes = unlines . map isPalindrome . lines

main = interact $ arePalindromes
-- interact takes a function of form String -> String
-- and returns an IO actions for it
-- keeps listening until new line