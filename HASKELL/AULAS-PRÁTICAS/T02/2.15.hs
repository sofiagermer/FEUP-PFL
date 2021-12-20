myIntersperse :: a -> [a] -> [a]
myIntersperse meio [x] = [x]
myIntersperse meio (x:xs) = [x] ++ [meio] ++ myIntersperse meio xs
