--ALÍNEA a)

duplicada :: Eq a => [a] -> Bool
duplicada [] = True
duplicada [_] = False
duplicada (x:y:xs) = (x == y) && duplicada xs

-- ALÍNEA b)
duplica lista = concatMap (\x -> [x,x]) lista