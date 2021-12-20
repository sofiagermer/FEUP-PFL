testaTriangulo :: Float -> Float -> Float -> Bool

testaTriangulo a b c = if a < (b+c) && b < (a+b) && c < (a + b) then True else False
