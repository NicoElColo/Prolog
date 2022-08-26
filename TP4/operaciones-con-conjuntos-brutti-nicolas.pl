% -- auxiliares

% retorna true si el elemento pertenece a la lista
miembro(_,[]):- !,fail.
miembro(X,[X|_]).
miembro(X,[_|Resto]):-
    miembro(X,Resto).

% verificacion
verificar([]).
verificar([X|Resto]):-
    miembro(X,Resto),!,fail.
verificar([_|Resto]):-
    verificar(Resto).



% union
union_aux([],L2,L2).
union_aux([X|Resto],L2,[X|Resul]):-
    not(miembro(X,L2)),
    union_aux(Resto,L2,Resul).
union_aux([_|Resto],L2,Resul):-
    union_aux(Resto,L2,Resul).

union(L1,L2,U):-
    verificar(L1),
    verificar(L2),
    union_aux(L1,L2,U), !.

% interseccion
interseccion_aux([],_,[]).
interseccion_aux([X|Resto],L2,[X|Resul]):-
    miembro(X,L2),
    interseccion_aux(Resto,L2,Resul).
interseccion_aux([_|Resto],L2,Resul):-
    interseccion_aux(Resto,L2,Resul).

interseccion(L1,L2,U):-
    verificar(L1),
    verificar(L2),
    interseccion_aux(L1,L2,U), !.


% diferencia
diferencia_aux([],_,[]).
diferencia_aux([X|Resto],L2,[X|Resul]):-
    not(miembro(X,L2)),
    diferencia_aux(Resto,L2,Resul).
diferencia_aux([_|Resto],L2,Resul):-
    diferencia_aux(Resto,L2,Resul).

diferencia(L1,L2,U):-
    verificar(L1),
    verificar(L2),
    diferencia_aux(L1,L2,U), !.














