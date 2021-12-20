--   factores :: Int -> [Int]

primos :: [Integer]
primos = crivo [2..]

-- Nota : Integer = Int mas cabem números maiores
crivo :: [Integer] -> [Integer]
crivo (p:xs) = p : crivo [x | x <- xs, mod x p /= 0]

fatoresAux2 :: Integral t => t -> [t] -> [t]
fatoresAux2 n [] = []
fatoresAux2 n (x:xs) = if mod n x == 0 then [x] ++ fatoresAux2 n xs else fatoresAux2 n xs

fatoresAux1 :: Integer -> [Integer]
fatoresAux1 n = fatoresAux2 n (takeWhile(<n) primos)

fatoresAux3 :: Integer -> [Integer] -> Integer -> [Integer]
fatoresAux3 n [] counter = []
fatoresAux3 n lista counter
  | n == mod n (head(drop (fromIntegral counter) lista)) = fatoresAux3 n [] counter
  | mod n (head(drop (fromIntegral counter) lista)) == 0 = [head(drop (fromIntegral counter) lista)] ++ fatoresAux3 (div n (head(drop (fromIntegral counter) lista))) lista counter
  | otherwise = fatoresAux3 n lista (counter+1)

fatores :: Integer -> [Integer]
fatores n = fatoresAux3 n (fatoresAux1 n) 0
-- AULA
--fatores :: [Int] -> [Int]
--fatores 1 = []
--fatores n = primo :fatores (div n primo)
           -- where primo = head(filter (\p -> mod n p == 0)) primo
