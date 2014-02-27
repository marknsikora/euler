import Control.Applicative
import Data.List
import Data.List.Split

import qualified Data.Map as Map

euler022 :: [String] -> Integer
euler022 = sum . zipWith (*) [1..] . map score . sort
  where
    score = sum . map (\c -> Map.findWithDefault 0 c scores)
    scores = Map.fromList $ zip ['A'..'Z'] [1..]

main :: IO ()
main = do
  names <- map (init . tail) . splitOn "," <$> readFile "names.txt"
  print $ euler022 names
