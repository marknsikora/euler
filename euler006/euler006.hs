euler006 :: Int -> Int
euler006 n =
  let square x = x * x
      sumOfSquares = sum . map square $ [1..n]
      squareOfSum = square . sum $ [1..n]
  in squareOfSum - sumOfSquares

main :: IO ()
main = print $ euler006 100
