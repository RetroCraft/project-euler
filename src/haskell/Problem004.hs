{-
  Problem 4: Largest palindrome product

  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

  Find the largest palindrome made from the product of two 3-digit numbers.
-}

main = print(maximum [ z | x <- [100..999], y <- [x..999], let z = x*y, reverse (show z) == show z ])