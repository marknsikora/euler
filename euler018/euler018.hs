import Control.Applicative

foldRow :: Ord a => [a] -> [a]
foldRow [x] = [x]
foldRow xs = foldRow' xs
  where
    foldRow' (y:ys:yss) = (max y ys) : foldRow' (ys:yss)
    foldRow' _ = []

euler018 :: [[Int]] -> Int
euler018 = head . foldr1 (\x y -> zipWith (+) x (foldRow y))

main = do
  triangle <- map (map read . words) . lines <$> readFile "triangle.txt"
  print $ euler018 triangle
