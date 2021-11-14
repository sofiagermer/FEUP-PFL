-- ALÍNEA a)
binoma :: Integer -> Integer -> Integer
factorial n = product [1..n]
binoma n k = div (factorial n) ((factorial k) * (factorial (n-k)))

-- ALÍNEA b)
binomb :: Integer -> Integer -> Integer
binomb n k = if k < (n-k) then div (product [(n-k+1)..n]) (factorial k) 
             else div (product [(k+1)..n]) (factorial (n-k))
