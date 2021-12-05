
-- ALÍNEA a)
myMaisMais:: [a] -> [a] -> [a]
myMaisMais l1 l2 = foldr (:) l2 l1

-- ALÍNEA b)
myConcat :: [[a]] -> [a]
myConcat l = foldr (++) [] l

-- ALÍNEA c)
myReverse :: [a] -> [a]
myReverse l = foldr (\x acc -> acc ++ [x]) [] l

-- ALÍNEA d)
myReverse2 :: [a] -> [a]
myReverse2 l = foldl (\acc x -> [x] ++ acc) [] l

-- ALÍNEA e)
myElem :: Eq a => a -> [a] -> Bool 
myElem a lista = any (== a) lista