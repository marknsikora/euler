numberLetterCount :: Int -> Int
numberLetterCount 0  = 4 -- zero
numberLetterCount 1  = 3 -- one
numberLetterCount 2  = 3 -- two
numberLetterCount 3  = 5 -- three
numberLetterCount 4  = 4 -- four
numberLetterCount 5  = 4 -- five
numberLetterCount 6  = 3 -- six
numberLetterCount 7  = 5 -- seven
numberLetterCount 8  = 5 -- eight
numberLetterCount 9  = 4 -- nine
numberLetterCount 10 = 3 -- ten
numberLetterCount 11 = 6 -- eleven
numberLetterCount 12 = 6 -- twelve
numberLetterCount 13 = 8 -- thirteen
numberLetterCount 14 = 8 -- fourteen
numberLetterCount 15 = 7 -- fifteen
numberLetterCount 16 = 7 -- sixteen
numberLetterCount 17 = 9 -- seventeen
numberLetterCount 18 = 8 -- eighteen
numberLetterCount 19 = 8 -- nineteen
numberLetterCount 20 = 6 -- twenty
numberLetterCount 30 = 6 -- thirty
numberLetterCount 40 = 5 -- forty
numberLetterCount 50 = 5 -- fifty
numberLetterCount 60 = 5 -- sixty
numberLetterCount 70 = 7 -- seventy
numberLetterCount 80 = 6 -- eighty
numberLetterCount 90 = 6 -- ninety
numberLetterCount n
  | n < 100 = let (tens, ones) = seperateOn 10
              in tens + ones
  | n < 1000 = case () of
    _ | n `mod` 100 == 0 -> let hundreds = chompOff 100
                            in  hundreds + 7 -- n hundred
      | otherwise -> let (hundreds, tens) = seperateOn 100
                     in hundreds + 3 + tens -- hundreds and tens
  | n < 1000000 = case () of
    _ | n `mod` 1000 == 0 -> let thousands = chompOff 1000
                             in thousands + 8 -- n thousand
  where
    seperateOn x = let upper = numberLetterCount $ (n `div` x) * x
                       lower = numberLetterCount $ n `mod` x
                   in (upper, lower)
    chompOff x = numberLetterCount $ n `div` x

euler017 :: Int
euler017 = sum . map numberLetterCount $ [1..1000]

main :: IO ()
main = print euler017
