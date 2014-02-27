import Data.Char (digitToInt)

takeOrNone :: Int -> [a] -> [a]
takeOrNone _ [] = []
takeOrNone 0 _ = []
takeOrNone 1 (x:_) = [x]
takeOrNone n (x:xs) =
  case takeOrNone (pred n) xs of
    [] -> []
    ys -> x:ys

productFold :: Num a => Int -> [a] -> [a]
productFold _ [] = []
productFold n xxs@(_:xs) =
  let partialList = takeOrNone n xxs
  in  product partialList : productFold n xs

main :: IO ()
main = do
  str <- readFile "number.txt"
  let number = map digitToInt $ concat $ lines str
  print $ maximum $ productFold 5 number
