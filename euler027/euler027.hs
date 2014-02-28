import Data.List
import Data.Numbers.Primes
import Data.Ord

maximumBy' :: (a -> a -> Ordering) -> [a] -> a
maximumBy' cmp xs = foldl1' maxBy xs
  where
    maxBy x y = case cmp x y of
      GT -> x
      _  -> y

euler027 :: Int -> Int
euler027 n = let (a,b) = maximumBy' (comparing primeRun) coefficients in a*b
  where
    coefficients = [ (a,b) | a <- [-n+1..n-1], b <- [-n+1..n-1]]
    f (a,b) x = x*x + a*x + b
    primeRun c = length . takeWhile isPrime . map (f c) $ [0..]

main :: IO ()
main = print $ euler027 1000
