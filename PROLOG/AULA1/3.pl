%3.a)
piloto/1.
equipa/2.
aviao/2.
circuitos/1.
vencedor/2.
gates/2.

piloto(lamb).
piloto(besenyei).
piloto(chambliss).
piloto(maclean).
piloto(mangold).
piloto(jones).
piloto(bonhomme).

equipa(lamb,breitling).
equipa(besenyei,redbull).
equipa(chambliss,redbull).
equipa(maclean,mediterraneanracingteam).
equipa(mangold,cobra).
equipa(jones,matador).
equipa(bonhomme,matador).

aviao(lamb,mx2).
aviao(besenyei,edge540).
aviao(chambliss,edge540).
aviao(maclean,edge540).
aviao(mangold,edge540).
aviao(jones,edge540).
aviao(bonhomme,edge540).

circuitos(istanbul).
circuitos(budapest).
circuitos(porto).

vencedor(jones,porto).
vencedor(mangold,budapest).
vencedor(mangold,istanbul).

gates(istanbul,9).
gates(budapest,6).
gates(porto,5).

equipavencedora(EQUIPA,CORRIDA) :- equipa(PILOTO,EQUIPA), vencedor(PILOTO,CORRIDA).

%3.b.i vencedor(X,porto).
%3.b.ii equipavencedora(E,porto).
%3.b.iii gates(X,N) , N >8.
%3.b.iv aviao(PILOTO,AVIAO) , AVIAO \= edge540.
%3.b.v. vencedor(X,Z) , vencedor(X,Y) , Z \= Y.
%3.b.VI. vencedor(X,porto) , aviao(X,AVIAO).