cargo/2.
chefiado_por/2.
nome/1.

nome(sofia).
nome(anabela).

cargo(tecnico, eleuterio).
cargo(tecnico, juvenaldo).
cargo(analista, leonilde).
cargo(analista, marciliano).
cargo(engenheiro, osvaldo).
cargo(engenheiro, porfirio).
cargo(engenheiro, reginaldo).
cargo(supervisor, sisnando).
cargo(supervisor_chefe, gertrudes).
cargo(secretaria_exec, felismina).
cargo(diretor, asdrubal).
chefiado_por(tecnico, engenheiro).
chefiado_por(engenheiro, supervisor).
chefiado_por(analista, supervisor).
chefiado_por(supervisor, supervisor_chefe).
chefiado_por(supervisor_chefe, diretor).
chefiado_por(secretaria_exec, diretor).

%5.a.i. Qual é o cargo do sisnando que chefia os analistas?
%5.a.ii. Qual é o cargo de quem chefia o tenico e é , por sua vez, supervisionado por outro
%5.a.iii. Qual é o cargo de quem é chefiado pelo supervisor
%5.a.iv. Qual é o cargo de quem é chefiado pelo diretor mas não é a felismina

%5.b.i. X = supervisor
%5.b.ii. X = engenheiro Y = supervisor
%5.b.iii. J = analista P = leonilde
%5.b.iv. P = supervisor_chefe

%5.c.i.
rule1(X,Y) :- cargo(CARGOX,X), cargo(CARGOY,Y) , chefiado_por(CARGOY,CARGOX).

%5.c.ii.
rule2(X,Y) :- cargo(CARGO1,X), cargo(CARGO2,Y) , chefiado_por(CARGO1, CHEFE), chefiado_por(CARGO2, CHEFE).

%5.c.iii.
rule3(CARGO) :- cargo(CARGO,_) , \+ chefiado_por(_,CARGO).

%5.c.iv.
rule4(CARGO) :- cargo(CARGO,_) , \+ chefiado_por(CARGO,_).