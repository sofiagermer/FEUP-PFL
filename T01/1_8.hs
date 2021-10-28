(a) segundo xs = head (tail xs)
    segundo :: [a] -> a
 
(b) trocar (x, y) = (y, x)
    trocar :: (a,b) -> (b,a)

(c) par x y = (x, y)

(d) dobro x = 2 ∗x
    dobro :: Num a => a -> a

(e) metade x = x/2
    metade :: Fractional a => a -> a

(f) minuscula x = x ≥′a′&& x ≤′z′
    minuscula :: Char a => a -> Bool   

(g) intervalo x a b = x ≥a && x ≤b
    
(h) palindromo xs = reverse xs == xs
(i) twice f x = f (f x)
