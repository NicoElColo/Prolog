% Posiciones validas de tablero
tablero(F,_):-
    F > 8,
    !,fail.
tablero(F,_):-
    F < 0,
    !,fail.
tablero(_,C):-
    C > 8,
    !,fail.
tablero(_,C):-
    C < 0,
    !,fail.
tablero(_,_).

amenaza_torre(F,_,F,_,torre(F,Y)):-
    torre(F,Y).
amenaza_torre(_,C,_,C,torre(X,C)):-
    torre(X,C).

amenaza_alfil(F,C,Fa,Ca,alfil(Fa,Ca)):-
    Sumf is Fa - F, Abs_Sumf is abs(Sumf),
    Sumc is Ca - C, Abs_Sumc is abs(Sumc),
    Abs_Sumf = Abs_Sumc.

amenaza_reina(F,C,Fr,Cr,reina(Fr,Cr)):-
    amenaza_torre(F,C,Fr,Cr,_).

amenaza_reina(F,C,Fr,Cr,reina(Fr,Cr)):-
    amenaza_alfil(F,C,Fr,Cr,_).

reina(2,3).
alfil(6,3).
torre(8,5).

amenaza(F,C,R):-
    tablero(F,C),
    reina(X,Y),
    amenaza_reina(F,C,X,Y,R).
amenaza(F,C,R):-
    tablero(F,C),
    alfil(X,Y),
    amenaza_alfil(F,C,X,Y,R).
amenaza(F,C,R):-
    tablero(F,C),
    torre(X,Y),
    amenaza_torre(F,C,X,Y,R).







