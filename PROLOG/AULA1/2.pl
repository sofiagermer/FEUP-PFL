:- dynamic findall/2.
%2.a
leciona/2.
frequenta/2.

leciona(algoritmos,adalberto).
leciona(basededados, bernardete).
leciona(compiladores, capitolino).
leciona(estatística, diogenes).
leciona(redes, ermelinda).

frequenta(algoritmos,alberto).
frequenta(algoritmos,bruna).
frequenta(algoritmos,cristina).
frequenta(algoritmos,diogo).
frequenta(algoritmos,eduarda).

frequenta(basededados, antonio).
frequenta(basededados, bruno).
frequenta(basededados, cristina).
frequenta(basededados, duarte).
frequenta(basededados, eduardo).

frequenta(compiladores,alberto).
frequenta(compiladores,bernardo).
frequenta(compiladores,clara).
frequenta(compiladores,diana).
frequenta(compiladores,eurico).

frequenta(estatística,antonio).
frequenta(estatística,bruna).
frequenta(estatística,cláudio).
frequenta(estatística,duarte).
frequenta(estatística,eva).

frequenta(redes,alvaro).
frequenta(redes,beatriz).
frequenta(redes,claudio).
frequenta(redes,diana).
frequenta(redes,eduardo).

%2.b.i setof(X, leciona(X,diogenes),LISTA).
%2.b.ii leciona(X,felismina).
%2.b.iii setof(X, frequenta(X,claudio),LISTA).
%2.b.iv frequenta(_,dalmindo).
%2.b.v. leciona(Z,bernardete) , frequenta(Z,eduarda).
%2.b.vi frequenta(X,alberto), frequenta(X,alvaro).

%2.c
%i
aluno(X,Y) :- frequenta(Z,X), leciona(Z,Y).
%ii
alunos(PROF,ALUNO) :- leciona(CADEIRA,PROF), frequenta(CADEIRA,ALUNO).
%iii
profs(ALUNO,PROF) :-leciona(CADEIRA,PROF),frequenta(CADEIRA,ALUNO).
%iv
alunocomum(X,Y) :- aluno(Z,X),aluno(Z,Y).
%v.
alunoucs(ALUNO) :- frequenta(CADEIRA1, ALUNO), frequenta(CADEIRA2, ALUNO) , CADEIRA1 \= CADEIRA2.

