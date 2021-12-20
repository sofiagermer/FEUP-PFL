
myMerge :: Ord a => [a] -> [a] -> [a]

myMerge [] lista2 = lista2
myMerge lista1 [] = lista1
myMerge (x:xs) (y:ys) = if x < y then x : myMerge xs (y : ys)
                        else y : myMerge (x:xs) ys


