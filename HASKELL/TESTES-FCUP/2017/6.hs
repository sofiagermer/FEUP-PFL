-- ALÍNEA a)
quadrados :: [Integer] -> [Integer]
quadrados [] = []
quadrados (x:xs) = [toInteger (x^2)] ++ quadrados xs

-- ALÍNEA b)
quadrados (x:xs)= [x^2 | x <- x:xs]

