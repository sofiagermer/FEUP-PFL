-- numEqual :
numEqual :: (Eq a, Num p) => a -> a -> a -> p
numEqual n m p 
    | n == m && m == p = 3
    | n == m || m == p ||n == p = 2
    | otherwise = 0