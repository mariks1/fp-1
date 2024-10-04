module LatticePaths (routesTailRecursive) where


routesTailRecursive :: Int -> Int -> Int
routesTailRecursive m n = go m n 1 1
  where
    go 0 0 acc _ = acc
    go x 0 acc path = go (x - 1) 0 acc (path + 1)
    go 0 y acc path = go 0 (y - 1) acc (path + 1)
    go x y acc path = go (x - 1) y (acc + 1) path + go x (y - 1) acc path

-- To find the number of routes in a 20x20 grid
countRoutesTailRecursive :: Int
countRoutesTailRecursive = routesTailRecursive 20 20
