import qualified LatticePathsTests
import qualified PowerDigitSumTests
import Test.Tasty

main :: IO ()
main = defaultMain tests

tests :: TestTree
tests =
  testGroup
    "All tests"
    [ PowerDigitSumTests.tests,
      LatticePathsTests.tests
    ]
