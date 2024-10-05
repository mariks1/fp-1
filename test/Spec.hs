import qualified PowerDigitSumTests
import qualified LatticePathsTests
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