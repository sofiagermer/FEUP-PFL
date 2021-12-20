a(a1, 1).
a(A2, 2).
a(a3, N).
b(1, b1).
b(2, B2).
b(N, b3).
c(X, Y):- a(X, Z), b(Z, Y).
d(X, Y):- a(X, Z), b(Y, Z).
d(X, Y):- a(Z, X), b(Z, Y).

%7.b.i. a1
%7.b.ii. A = 2
%7.b.iii. A = a1
%7.b.iv. A = a1 , B = b1
%7.b.v. A = a1,  B=2
