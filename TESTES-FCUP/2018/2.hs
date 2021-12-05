distancia :: Floating a => (a, a) -> (a, a) -> a
distancia (x1,y1) (x2,y2) = sqrt((x2-x1)**2 + (y2-y1)**2)

declive :: Fractional a => (a, a) -> (a, a) -> a
declive (x1,x2) ( y1,y2) = (y1-y2)/(x2-x1)

colineares :: (Fractional a, Eq a) => (a,a) -> (a,a) -> (a,a) -> Bool
colineares p1 p2 p3 = declive p1 p2 == declive p2 p3 