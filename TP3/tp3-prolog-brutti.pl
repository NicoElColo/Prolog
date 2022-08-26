% EJERCICIO 1
factorial(0, 1).
factorial(Numero, Factorial) :- Numero > 0,
	NumeroAnt is Numero - 1,
	factorial(NumeroAnt, FactorialAnt),
	Factorial is Numero * FactorialAnt, !.

% EJERCICIO 2
p(1).
p(2):-!.
p(3).

/* p(X) = X=1 - X=2. Corte al encontrar el 2.
 * p(X), p(Y) = X=Y,Y=1 - X=1,Y=2 - X=2,Y=1 - X=Y,Y=2.
 * 	tanto X como Y cortan al encontrar el 2.
 * p(X), !, p(Y) = X=Y,Y=1 - X=1,Y=2. corta al encontrar p(2) en la Y
 * 	y cuando quiere pasar a evaluar la X se encuentra el corte en la consulta
*/


% EJERCICIO 3
eliminar_primero([],_,[]).
eliminar_primero([Elem|Resto],Elem,Resto).
eliminar_primero([X|Resto],Elem,[X|Sol]):-
    X \= Elem,
    eliminar_primero(Resto,Elem,Sol), !.

% EJERCICIO 4
agregar_nuevo(Elem,[],[Elem]).
agregar_nuevo(Elem,[Elem|Resto],[Elem|Resto]):- !.
agregar_nuevo(Elem,[X|Resto],[X|Sol]):-
    X \= Elem,
    agregar_nuevo(Elem,Resto,Sol), !.

% EJERCICIO 5
semejanza([],[],0).
semejanza([_|Resto],[],S):-
    semejanza(Resto,[],S1),
    S is S1-1, !.
semejanza([],[_|Resto],S):-
    semejanza([],Resto,S1),
    S is S1-1, !.
semejanza([Let|Pal1],[Let|Pal2],S):-
    semejanza(Pal1,Pal2,S1),
    S is S1+1, !.
semejanza([Let|Pal1],[Let2|Pal2],S):-
    Let \= Let2,
    semejanza(Pal1,Pal2,S1),
    S is S1-1, !.

% EJERCICIO 6
dic([sanar,hola,sabana,sabalo,prueba,computadora,cartera,mate,termo,mesa,silla,sarna]).

insertar(Elem,Lista,[Elem|Lista]).

b_dic(_,[],[]).
b_dic(Pal,[Pal|_],[Pal]):- !.
b_dic(Pal,[Comp|Dic],[L|Sol]):-
    b_dic(Pal,Dic,Sol),
    atom_chars(Pal,Lpal),
    atom_chars(Comp,Lcomp),
    semejanza(Lpal,Lcomp,S),
    S > 0,
    agregar_nuevo(S,[Comp],L), !.
	%insertar(L,Sol2,Sol), !.
b_dic(Pal,[_|Resto],Sol):-
    b_dic(Pal,Resto,Sol).
    
buscar(Pal,List):-
    b_dic(Pal,[sanar,hola,sabana,sabalo,prueba,computadora,cartera,mate,termo,mesa,silla,sarna],List).

% EJERCICIO 7
reemplazar(_,_,X,_,_,_):-
    X =< 0, !, fail.
reemplazar(_,_,_,X,_,_):-
    X < 0,
    X \= -1, !, fail.
reemplazar(_,_,_,_,[],[]).
reemplazar(_,_,1,0,Lista,Lista).
reemplazar(Viejo,Nuevo,1,-1,[Viejo|Resto],[Nuevo|Resul]):-
    reemplazar(Viejo,Nuevo,1,-1,Resto,Resul), !.
reemplazar(Viejo,Nuevo,1,CantReemp,[Viejo|Resto],[Nuevo|Resul]):-
    CantReemp > 0,
    NewReemp is CantReemp-1,
    reemplazar(Viejo,Nuevo,1,NewReemp,Resto,Resul), !.
reemplazar(Viejo,Nuevo,1,Cant,[X|Resto],[X|Resul]):-
    reemplazar(Viejo,Nuevo,1,Cant,Resto,Resul), !.
reemplazar(Viejo,Nuevo,Pos,Cant,[X|Resto],[X|Resul]):-
    NewPos is Pos-1,
    reemplazar(Viejo,Nuevo,NewPos,Cant,Resto,Resul), !.


% EJERCICIO 8
conectado(a,b).
conectado(a,d).
conectado(b,c).
conectado(c,g).
conectado(g,s).
conectado(g,f).
conectado(f,e).
conectado(f,d).

conectados(X,Y):- conectado(Y,X).
conectados(X,Y):- conectado(X,Y).

no_contiene(_,[]).
no_contiene(Elem,[Elem|_]):- !,fail.
no_contiene(Elem,[X|Resto]):-
    Elem \= X,
    no_contiene(Elem,Resto), !.

salir_aux(s,Camino,Camino).
salir_aux(Hab,Camino,Solucion):-
    conectados(Hab,X),
    no_contiene(X,Camino),
    agregar_nuevo(X,Camino,Recorr),
    salir_aux(X,Recorr,Solucion).
salir(Hab,Camino):-
    salir_aux(Hab,[Hab],Camino).
    













