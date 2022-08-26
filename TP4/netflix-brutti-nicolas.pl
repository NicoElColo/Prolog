peliculas(jose,['Misterio a Bordo','The Perfection','Otro dia para matar','Barreras','Yo soy Sam','Inspection']).
peliculas(maria,['Quizas para siempre','A pesar de todo','La casa del Lago','Barreras']).
peliculas(pedro,['Barreras', 'Otro dia para matar','Yo soy Sam','A pesar de todo']).

cantidad([],0).
cantidad([_|R],Cant):-
    cantidad(R,Cant1),
    Cant is Cant1+1.

miembro(_,[]):- !,fail.
miembro(X,[X|_]).
miembro(X,[_|Resto]):-
    miembro(X,Resto).

% interseccion
interseccion([],_,[]).
interseccion([X|Resto],L2,[X|Resul]):-
    miembro(X,L2),
    interseccion(Resto,L2,Resul), !.
interseccion([_|Resto],L2,Resul):-
    interseccion(Resto,L2,Resul), !.


% diferencia
diferencia([],_,[]).
diferencia([X|Resto],L2,[X|Resul]):-
    not(miembro(X,L2)),
    diferencia(Resto,L2,Resul), !.
diferencia([_|Resto],L2,Resul):-
    diferencia(Resto,L2,Resul), !.


netflix(User,Recom):-
    peliculas(User,Lista),
    peliculas(User2,Lista2),
    User2 \= User,
    interseccion(Lista,Lista2,Comunes),
    cantidad(Comunes,Cant),
    Cant >= 2,
    diferencia(Lista2,Lista,Recom).