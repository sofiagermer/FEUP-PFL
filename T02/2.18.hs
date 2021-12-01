fromBitsRev :: [Int] -> Int -> Int
fromBitsRev [] n = 0
fromBitsRev (x:xs) n = x * 2^n + fromBitsRev xs (n+1)

fromBits :: [Int ] -> Int
fromBits [] = 0
fromBits lista= fromBitsRev (reverse lista) 0

