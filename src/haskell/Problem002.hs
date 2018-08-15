{-
  Problem 2: Even Fibonacci numbers

  Each new term in the Fibonacci sequence is generated by adding the previous two terms.
  By starting with 1 and 2, the first 10 terms will be:
 
  1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
  
  By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.   
-}

main = do
  let fibs = 1 : 1 : zipWith (+) fibs (tail fibs)
  print (sum [ x | x <- takeWhile (<4000000) fibs, even x ])