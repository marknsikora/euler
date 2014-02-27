euler006 :: Int
euler006 =
  let square x = x * x
      sumOfSquares = sum . map square $ [1..100]
      squareOfSum = square . sum $ [1..100]
  in squareOfSum - sumOfSquares

main :: IO ()
main = print euler006
