import Data.Char (digitToInt)

productFold :: Num a => Int -> [a] -> [a]
productFold _ [] = []
productFold n all@(_:xs) = 
  if length partialList == n
    then product partialList : (productFold n xs) 
    else []
  where partialList = take n all

main = do
  str <- readFile "number.txt"
  let number = map digitToInt $ concat $ lines str
  print $ maximum $ productFold 5 number
