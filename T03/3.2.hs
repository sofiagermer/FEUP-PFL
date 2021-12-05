-- dec2int :: [Int] → Int

--dec2int [] = 0
--dec2int (x:xs) = x + dec2int xs * 10

--dec2int (x:xs) = foldl (+) ((\x -> x * 10) x) xs

dec2int :: [Int] -> Int
dec2int = foldl (\x y -> x * 10 + y) 0
