-- ALÍNEA a)
imparDiv3 :: Integral a => [a] -> Bool
imparDiv3 lista = and [odd x | x <- lista , (mod x 3 == 0)]

-- ALÍNEA b)
-- imparDiv3OS :: Integral a => [a] -> Bool
imparDiv3OS lista = and (map odd (filter (\x -> mod x 3 == 0) lista)) 