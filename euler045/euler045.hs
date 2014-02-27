triangles :: [Integer]
triangles = scanl1 (+) [1..]

pentagons :: [Integer]
pentagons = scanl (\x y -> x + 3*y + 1) 1 [1..]

hexagons :: [Integer]
hexagons = scanl (\x y -> x + 4*y + 1) 1 [1..]

commonElem :: Ord a => [a] -> [a] -> [a]
commonElem [] _ = []
commonElem _ [] = []
commonElem (x:xs) (y:ys) = case compare x y of
  LT -> commonElem xs (y:ys)
  EQ -> x : commonElem xs ys
  GT -> commonElem (x:xs) ys

euler045 :: Integer
euler045 = last . take 3 $ foldl1 commonElem shapes
  where
    shapes = [triangles,pentagons,hexagons]

main :: IO ()
main = print euler045
