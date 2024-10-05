module PowerDigitSumTests (tests) where

import PowerDigitSum
import Test.Tasty
import Test.Tasty.HUnit

tests :: TestTree
tests =
  testGroup
    "16 problem"
    [ testCase "Recursion Method Test" $
        recursionMethod (2 ^ 1000) @?= 1366,
      testCase "Tail Recursion Method Test" $
        tailRecursionMethod (2 ^ 1000) @?= 1366,
      testCase "Map Method Test" $
        mapMethod (2 ^ 1000) @?= 1366,
      testCase "Modular Method Test" $
        modularMethod (2 ^ 1000) @?= 1366,
      testCase "Infinite List Method Test" $
        infiniteListMethod 1000 @?= 1366
    ]
