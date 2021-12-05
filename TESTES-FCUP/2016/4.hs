-- ALÍNEA a)
somapares :: [(Int, Int)] -> [Int]
somapares [] = []
somapares (x:xs) = [fst(x) + snd(x)] ++ somapares xs

-- ALÍNEA b)
somaparesLC lista= [ x+y | (x,y) <- lista ]