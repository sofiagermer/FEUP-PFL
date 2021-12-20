--ALTERNATIVA 1
{-
raizes a b c
    | delta>0 = [(-b+sqrt delta)/(2*a), (-b-sqrt delta)/(2*a)]
    | delta==0 = [-b/(2*a)]
    | otherwise = []
    where delta = b^2 - 4*a*c
-}

--ALTERNATIVA 2

raizes a b c
    | delta>0 = let r = sqrt delta
                in [(-b+r)/(2*a),(-b-r)/(2*a)]
                -- r só está definido na expressão acima
    | delta==0 = [-b/(2*a)]
    | otherwise = []
    where delta = b^2 - 4*a*c
