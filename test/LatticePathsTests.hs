module LatticePathsTests (tests) where

import LatticePaths
import Test.Tasty
import Test.Tasty.HUnit

tests :: TestTree
tests =
  testGroup
    "15 problem"
    [ testCase "Recursion Method Test" $
        recursionMethod 20 @?= 137846528820,
      testCase "Tail Recursion Method Test" $
        tailRecursionMethod 20 @?= 137846528820,
      testCase "Map Method Test" $
        mapMethod 20 @?= 137846528820,
      testCase "Modular Method Test" $
        modularMethod 20 @?= 137846528820,
      testCase "Infinite List Method Test" $
        infiniteListMethod 20 @?= 137846528820
    ]
