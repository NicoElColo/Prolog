% EJERCICIO 1
factorial(0,1).
factorial(Num,Resul):-
    Num>0,
    Men1 is Num-1,
    factorial(Men1,Resulm),
    Resul is Num*Resulm.

% EJERCICIO 2
contar(_,[],0).
contar(X,[X|R],Cant):-
    contar(X,R,Cant1),
    Cant is Cant1+1.
contar(Elem,[_|R],Cant):-
    contar(Elem,R,Cant).

% EJERCICIO 3
cantidad([],0).
cantidad([_|R],Cant):-
    cantidad(R,Cant1),
    Cant is Cant1+1.

% EJERCICIO 4
suma([],0).
suma([X|R],Suma):-
    suma(R,Suma1),
    Suma is Suma1+X.

% EJERCICIO 5
positivos([],[]).
positivos([X|L1],Pos):-
    X<0,
    positivos(L1,Pos).
positivos([X|L1],[X|Pos]):-
    positivos(L1,Pos).

% EJERCICIO 6
suma_lista_aux([],[],[]).
suma_lista_aux([X|L1],[Y|L2],[Z|Suma]):-
    Z is X+Y,
    suma_lista_aux(L1,L2,Suma).
suma_lista(L1,L2,Resul):-
    cantidad(L1,Long1),
    cantidad(L2,Long2),
    Long1==Long2,
    suma_lista_aux(L1,L2,Resul).

% EJERCICIO 7
eliminar(_,[],[]).
eliminar(Elem,[Elem|Resto],Resul):- eliminar(Elem,Resto,Resul).
eliminar(Elem,[X|Resto],[X|Resul]):-
    X \= Elem,
    eliminar(Elem,Resto,Resul).

eliminar_dup([],[]).
eliminar_dup([X|Resto],[X|SinD]):-
    eliminar(X,Resto,SinD2),
    eliminar_dup(SinD2,SinD).

% EJERCICIO 8
profundidad([],0).
profundidad([_|[]],1).
profundidad([I,_,D|[]],Suma):-
    profundidad(I,ProfI),
    profundidad(D,ProfD),
    ProfI >= ProfD,
    Suma is ProfI+1.

profundidad([I,_,D|[]],Suma):-
    profundidad(I,ProfI),
    profundidad(D,ProfD),
    ProfI < ProfD,
    Suma is ProfD+1.

% EJERCICIO 9
insertar(Elem,[],[Elem|[]]).
insertar(Elem,[X|Resto],[Elem|[X|Resto]]):-
    Elem =< X.
insertar(Elem,[X|Resto],[X|Resul]):-
    Elem > X,
    insertar(Elem,Resto,Resul).

% EJERCICIO 10
ordenar([],[]).
ordenar([X|Resto],Resul):-
    ordenar(Resto,Sal),
    insertar(X,Sal,Resul).

% EJERCICIO 11
concatenar([],L2,L2).
concatenar([X|Resto],L2,[X|Resul]):-
    concatenar(Resto,L2,Resul).

lista([]).
lista([_|_]).

aplanar([],[]).
aplanar([X|Resto],Resul):-
    lista(X),
    aplanar(X,Xpla),
    aplanar(Resto,Rpla),
    concatenar(Xpla,Rpla,Resul).
aplanar([X|Resto],[X|Resul]):-
    aplanar(Resto,Resul).

% EJERCICIO 12
ins(X, L, [ X | L ]).
ins(X, [ Y | L1 ], [ Y | L2 ]) :- ins(X, L1, L2).

per([],[]).
per([ X | L ], Lp) :- per(L, L1), ins(X, L1, Lp).

/* Se va hasta el final de la lista
 * inserta un elemento al final de esta
 * cuando empieza a salir de la recursion agrega el anteultimo elemento
 * pero el programa lo inserta en todas las posiciones de la lista
 * por lo que prolog recorrera los 2 caminos (inicio y final)
 * y luego a esos 2 resultados les ocurrira lo mismo
 * al insertar el 3er valor, prolog tiene 3 posibles resultados por cada
 * camino anteriormente armado y arrojara todas las posibles combinaciones.
