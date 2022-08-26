% cuerpo de conocimientos
gasto(pablo,0.7,4500).
gasto(gabriel,1,1450).
gasto(federico,0.7,800).
gasto(franco,1,800).

% cuenta la cantidad de elementos de una lista
cantidad([],0):- !.
cantidad([_|R],Cant):-
    cantidad(R,Cant1),
    Cant is Cant1+1.

% calcula el costo total de la penia
valor_penia([],0):- !.
valor_penia([Persona|Resto],Resultado):-
    gasto(Persona,Billetera,Plata),
    valor_penia(Resto,Resul2),
    Resultado is Resul2 + Plata*Billetera.
valor_penia([_|Resto],Resul):-
    valor_penia(Resto,Resul).

% establece cuanto paga o recibe cada uno
paga_recibe([],_,[]):- !.
paga_recibe([Persona|Resto],CadaUno,[[Persona,paga,CadaUno]|Resultado]):-
    not(gasto(Persona,_,_)),
    paga_recibe(Resto,CadaUno,Resultado).
paga_recibe([Persona|Resto],CadaUno,[[Persona,paga,Paga]|Resultado]):-
    gasto(Persona,Billetera,Plata),
    Total is Plata*Billetera,
    Total =< CadaUno,
    Paga is CadaUno-Total,
    paga_recibe(Resto,CadaUno,Resultado).
paga_recibe([Persona|Resto],CadaUno,[[Persona,recibe,Recibe]|Resultado]):-
    gasto(Persona,Billetera,Plata),
    Total is Plata*Billetera,
    Total > CadaUno,
    Recibe is Total-CadaUno,
    paga_recibe(Resto,CadaUno,Resultado).

% funcion wrapper
penia([],_):- write("tirame algo valido flaco"),!,fail.
penia(Personas,Resultado):-
    valor_penia(Personas,Total),
    cantidad(Personas,Cant),
    CadaUno is Total/Cant,
    paga_recibe(Personas,CadaUno,Resultado).
