male(dasarath).
male(ram).
male(laxman).
male(luv).
male(kush).
male(david).
male(harka).
female(kaushilya).
female(sita).
female(urmila).
female(maya).
husband(dasarath,kaushilya).
husband(ram, sita).
husband(luv,maya).
husband(laxman, urmila).
father(dasarath, ram).
father(dasarath, laxman).
father(ram,luv).
father(ram,kush).
father(luv,david).
father(luv,harka).

grandfather(A,C):- father(A,B),father(B,C).
brother(A,B):-
    father(C,A),
    father(C,B),
    A\=B.
uncle(A,B):-
    father(C,B),
    brother(A,C).
auntie(A,B):-
    uncle(C,B),
    husband(C,A).

