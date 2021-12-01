-- a)
parcelas x = sum [(((-1)^n)/ fromIntegral(2*n+1)) | n <- [0,1..x]] *4

{--
parcelas 10 = 3.232315809405594
parcelas 100 = 3.1514934010709914
parcelas 1000 = 3.1425916543395442
--}


-- b)

parcelas2 y = sqrt(sum [(((-1)^k)/ fromIntegral(k+1)^2) | k <- [0,1..y]] *12)

{--
parcelas2 10 = 3.148764783379481
parcelas2 100 = 3.14168533684531
parcelas2 1000 = 3.141593605660237
--}

{--
PI PERLÚDIO PADRÃO = 3.141592653589793
--}

