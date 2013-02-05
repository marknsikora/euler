euler006:: Int
euler006 =
  let sumOfSquares = sum $ map (^2) [1..100]
      squareOfSum = (sum [1..100])^2
  in squareOfSum - sumOfSquares

main :: IO ()
main = do putStrLn $ show euler006
