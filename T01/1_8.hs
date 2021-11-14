(a) segundo xs = head (tail xs)
    segundo :: [a] -> a
 
(b) trocar (x, y) = (y, x)
    trocar :: (a,b) -> (b,a)

(c) par x y = (x, y)
    par :: a -> a -> (a,a)

(d) dobro x = 2 ∗x
    dobro :: Num a => a -> a

(e) metade x = x/2
    metade :: Fractional a => a -> a

(f) minuscula x = x ≥′a′&& x ≤′z′
    minuscula :: Char a => a -> Bool   

(g) intervalo x a b = x ≥a && x ≤b
    intervalo :: Ord a => a -> b -> Bool
    
(h) palindromo xs = reverse xs == xs
    palindromo :: String -> Bool

(i) twice f x = f (f x)
    twice :: (a ->a) -> a -> a
    
