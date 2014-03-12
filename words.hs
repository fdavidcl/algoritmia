{--http://en.wikipedia.org/wiki/Levenshtein_distance--}

levenshteinDistance :: String -> String -> Int
levenshteinDistance [] b = length b
levenshteinDistance a [] = length a
levenshteinDistance (a:as) (b:bs)
  | a == b    = distA
  | otherwise = 1 + min (min distA distB) distC
    where
      distA = levenshteinDistance as bs
      distB = levenshteinDistance (a:as) bs
      distC = levenshteinDistance as (b:bs)