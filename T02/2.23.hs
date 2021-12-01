--ALÍNEA a)
addPoly :: [Int ] -> [Int ] -> [Int ] 

addPoly [] [] = []
addPoly (x:xs) (y:ys) =  [x+y] ++ addPoly xs ys

--ALÍNEA b)
-- multPoly ∶∶ [Int ] →[Int ] →[Int ]
--multPoly p1 p2 = multPolyaux p1 p2 0
--multPolyaux [] p2 n = replicate (length(p2)) 0
--multPolyaux (c1:cs) p2 n = addPoly ((replicate n 0) ++ map(*c1) p2) (multPolyaux cs p2 (n+1))

[1,2,3] [1,2]
