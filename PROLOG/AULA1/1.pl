% 1.a

female(grace).
female(dede).
female(gloria).
female(merle).
female(claire).
female(mitchell).
female(manny).
female(pameron).
female(haley).
female(lily).
male(rexford).
male(calhoun).
male(george).
male(poppy).
male(frank).
male(jay).
male(javier).
male(barb).
male(phill).
male(joe).
male(bo).
male(alex).
male(luke).
male(dylan).
male(cameron).       
parent(grace,phill).
parent(frank,phill).
parent(dede,claire).
parent(jay,claire).
parent(dede, mitchell).
parent(jay, mitchell).
parent(jay, joe).
parent(gloria, joe).
parent(gloria, manny).
parent(javier, manny).
parent(barb, cameron).
parent(merle, cameron).
parent(barb, pameron).
parent(merle, pameron).
parent(phill,haley).
parent(claire,haley).
parent(phill,alex).
parent(claire,alex).
parent(phill,luke).
parent(claire,luke).
parent(mitchell,lily).
parent(cameron,lily).
parent(mitchell,rexford).
parent(cameron,rexford).
parent(pameron,calhoun).
parent(bo,calhoun).
parent(dylan,george).
parent(haley,george).
parent(dylan,poppy).
parent(haley,poppy).

% 1.c
father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).
grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
grandmother(X,Y) :- mother(X,Z),parent(Z,Y).
grandfather(X,Y) :- father(X,Z),parent(Z,Y).
siblings(X,Y) :- mother(Z,X), mother(Z,Y), father(T,X),father(T,Y).
halfsiblings(X,Y) :- (mother(Z,X), mother(Z,Y)) ; (father(T,X),father(T,Y)).
cousins(X,Y) :- grandparent(Z,X), grandparent(Z,Y) , \+ siblings(X,Y). %(grandmother(Z,X), grandmother(Z,Y) , \+ siblings(X,Y)); (grandfather(Z,X), grandfather(Z,Y) , \+ siblings(X,Y)).
uncle(X,Y) :- (grandparent(Z,Y), parent(Z,X), \+parent(X,Y), male(X)).


casamento(jay,gloria,2008).
casamento(jay,dede,1968).
divorcio(jay,dede,2003).

