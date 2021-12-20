-- ALÍNEA a)
max3a, min3a :: Ord a => a -> a -> a -> a
max3a a b c =   if a >= b && a >= c then a 
                else if b >= a && b >= c then b 
                else c
min3a a b c =   if a <= b && a <= c then a 
                else if b <= a && b <= c then b 
                else c
-- ALÍNEA b)
max3b, min3b :: Ord a => a -> a -> a -> a
max3b a b c = max a (max b c)
min3b a b c = min a (min b c)
