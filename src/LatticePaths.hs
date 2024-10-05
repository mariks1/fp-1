module LatticePaths (recursionMethod, tailRecursionMethod, infiniteListMethod) where

recursionMethod :: Integer -> Integer
recursionMethod n = binomial (2 * n) n
  where
    factorial 0 = 1
    factorial x = x * factorial (x - 1)

    binomial n k = factorial n `div` (factorial k * factorial (n - k))

tailRecursionMethod :: Integer -> Integer
tailRecursionMethod n =
  let factorial 0 = 1
      factorial x = x * factorial (x - 1)
   in factorial (2 * n) `div` (factorial n * factorial n)

infiniteListMethod :: Integer -> Integer
infiniteListMethod n = binomial (2 * n) n
  where
    factorial x = product [1 .. x]

    binomial n k = factorial n `div` (factorial k * factorial (n - k))
