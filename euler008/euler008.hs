import Data.Char (digitToInt)

takeOrNone :: Int -> [a] -> [a]
takeOrNone n xs =
  if length taken == n
    then taken
    else []
  where taken = take n xs

productFold :: Num a => Int -> [a] -> [a]
productFold _ [] = []
productFold n all@(_:xs) =
  let partialList = takeOrNone n all
  in  product partialList : productFold n xs

main = do
  str <- readFile "number.txt"
  let number = map digitToInt $ concat $ lines str
  print $ maximum $ productFold 5 number
