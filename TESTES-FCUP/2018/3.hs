
-- ALÍNEA a)
niguaisRec :: Int -> a -> [a]
niguaisRec 0 a = []
niguaisRec n a = a : niguaisRec (n-1) a


-- ALÍNEA b)
niguais :: Int -> a -> [a]
niguais n a = [ a | x <- [1,2.. n]]

