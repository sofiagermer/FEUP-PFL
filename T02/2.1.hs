--quad_sum 1 = 1;
--quad_sum n = n*n + quad_sum (n-1);

quad = [x^2 | x <- [1,2..100]]
quad_sum 100 = sum (quad)
