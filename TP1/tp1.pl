% EJERCICIO 1
f(a, 2).
f(a, 3).
f(b, 2).
f(b, 4).
f(c, 1).
f(c, 2).

/* 
 * f(X,1) = f(c,1)
 * f(X) = "error (espera 2 argumentos)"
 * f(a,X) = f(a,2) f(a,3)
 * f(c,1) = true
 * f(X,Y) = "todos los datos"
 * f(2,a) = false
 * f(X,Y), f(X,4) = f(b,2) f(b,4)
*/ 

% EJERCICIO 2
padrede(leoncio,alberto).
padrede(leoncio,geronimo).
padrede(alberto,juan).
padrede(alberto,luis).
padrede(geronimo,luisa).

hermano(X,Y):- padrede(Z,X), padrede(Z,Y), X\=Y.
nieto(X,Y):- padrede(Z,X), padrede(Y,Z).

/* 
 * a) padrede(alberto,luis)
 * b) padrede(luis,alberto)
 * c) hermano(luis,X)
 * d) nieto(luisa,X)
 * e) nieto(X,Y)
*/ 

% EJERCICIO 3
menu('Bombones de jamón', 'Locro', 'Dulce de batata').
menu('Bombones de jamón', 'Locro', 'Alfajor norteño').
menu('Tarta de Atún', 'Atados de repollo', 'Dulce de batata').
menu('Tarta de Atún', 'Pollo romano con hierbas y vino', 'Flan').
menu('Volovanes de atún', 'Matambre con espinacas y parmesano', 'Torta moka').
menu('Buñuelos de bacalao', 'Pollo romano con hierbas y vino', 'Alfajor norteño').

/* 
 * a) menu(X,Y,Z)
 * b) menu(X,Y,'Dulce de batata')
 * c) menu(X,'Locro',Y)
 * d) menu(X,'Pato a la naranja',Y)
 * e) menu('Locro',X,Y)
*/ 

% EJERCICIO 4


% EJERCICIO 5
ruta(santafe, parana).
ruta(parana, corrientes).
ruta(santafe, cordoba).
ruta(santafe, coronda).
ruta(santafe, rosario).
ruta(rosario, capital).
ruta(rosario, mardelplata).
ruta(capital, cordoba).

/* 
 * a) ruta(X,cordoba)
 * b) ruta(parana,X)
 * c) ruta(parana,cordoba)
 * d) ruta(santafe,X), ruta(X,corrientes)
*/

% EJERCICIO 6
estrella(sol).
orbita(sol,mercurio).
orbita(sol,venus).
orbita(sol,tierra).
orbita(sol,marte).
orbita(sol,jupiter).
orbita(sol,saturno).
orbita(sol,urano).
orbita(sol,neptuno).
orbita(sol,pluton).

orbita(tierra,luna).

orbita(marte,deimos).
orbita(marte,phobos).

orbita(pluton,charon).
orbita(pluton,nix).
orbita(pluton,hydra).

orbita(jupiter,adrastea).
orbita(jupiter,aitne).
orbita(jupiter,amalthea).
orbita(jupiter,ananke).
orbita(jupiter,aoede).
orbita(jupiter,arche).
orbita(jupiter,autonoe).
orbita(jupiter,callisto).
orbita(jupiter,carme).
orbita(jupiter,callirrhoe).
orbita(jupiter,carpo).
orbita(jupiter,chaldene).
orbita(jupiter,cyllene).
orbita(jupiter,elara).
orbita(jupiter,erinome).
orbita(jupiter,euanthe).
orbita(jupiter,eukelade).
orbita(jupiter,euporie).
orbita(jupiter,europa).
orbita(jupiter,eurydome).
orbita(jupiter,ganymede).
orbita(jupiter,harpalyke).
orbita(jupiter,hegemone).
orbita(jupiter,helike).
orbita(jupiter,hermippe).
orbita(jupiter,himalia).
orbita(jupiter,io).
orbita(jupiter,iocaste).
orbita(jupiter,isonone).
orbita(jupiter,kale).
orbita(jupiter,kallichore).
orbita(jupiter,kalyke).
orbita(jupiter,kore).
orbita(jupiter,leda).
orbita(jupiter,lysithea).
orbita(jupiter,magaclite).
orbita(jupiter,metis).
orbita(jupiter,mneme).
orbita(jupiter,orthosie).
orbita(jupiter,pasiphae).
orbita(jupiter,pasithee).
orbita(jupiter,praxidike).
orbita(jupiter,sinope).
orbita(jupiter,sponde).
orbita(jupiter,s2000j11).
orbita(jupiter,s2003j2).
orbita(jupiter,s2003j3).
orbita(jupiter,s2003j4).
orbita(jupiter,s2003j5).
orbita(jupiter,s2003j9).
orbita(jupiter,s2003j10).
orbita(jupiter,s2003j12).
orbita(jupiter,s2003j15).
orbita(jupiter,s2003j16).
orbita(jupiter,s2003j17).
orbita(jupiter,s2003j18).
orbita(jupiter,s2003j19).
orbita(jupiter,s2003j23).
orbita(jupiter,taygete).
orbita(jupiter,thebe).
orbita(jupiter,thelxinoe).
orbita(jupiter,themisto).
orbita(jupiter,thyone).

orbita(saturno,aegir).
orbita(saturno,albiorix).
orbita(saturno,atlas).
orbita(saturno,bebhionn).
orbita(saturno,bergelmir).
orbita(saturno,bestla).
orbita(saturno,calypso).
orbita(saturno,daphnis).
orbita(saturno,dione).
orbita(saturno,enceladus).
orbita(saturno,epimetheus).
orbita(saturno,erriapo).
orbita(saturno,farbauti).
orbita(saturno,fenrir).
orbita(saturno,fornjot).
orbita(saturno,hati).
orbita(saturno,helene).
orbita(saturno,hyperion).
orbita(saturno,hyrokkin).
orbita(saturno,iapetus).
orbita(saturno,ijiraq).
orbita(saturno,janus).
orbita(saturno,kari).
orbita(saturno,kiviuq).
orbita(saturno,loge).
orbita(saturno,methone).
orbita(saturno,mimas).
orbita(saturno,mundilfari).
orbita(saturno,narvi).
orbita(saturno,paaliaq).
orbita(saturno,pallene).
orbita(saturno,pan).
orbita(saturno,pandora).
orbita(saturno,phoebe).
orbita(saturno,polydeuces).
orbita(saturno,prometheus).
orbita(saturno,rhea).
orbita(saturno,siarnaq).
orbita(saturno,skathi).
orbita(saturno,skoll).
orbita(saturno,surtur).
orbita(saturno,suttungr).
orbita(saturno,s2004s07).
orbita(saturno,s2004s12).
orbita(saturno,s2004s13).
orbita(saturno,s2004s17).
orbita(saturno,s2006s1).
orbita(saturno,s2006s3).
orbita(saturno,s2006s4).
orbita(saturno,s2006s6).
orbita(saturno,s2007s1).
orbita(saturno,s2007s2).
orbita(saturno,s2007s3).
orbita(saturno,tarvos).
orbita(saturno,telesto).
orbita(saturno,tethys).
orbita(saturno,thrymr).
orbita(saturno,titan).
orbita(saturno,ymir).

orbita(urano,ariel).
orbita(urano,belinda).
orbita(urano,bianca).
orbita(urano,caliban).
orbita(urano,cordelia).
orbita(urano,cressida).
orbita(urano,cupid).
orbita(urano,desdemona).
orbita(urano,juliet).
orbita(urano,mab).
orbita(urano,margaret).
orbita(urano,miranda).
orbita(urano,oberon).
orbita(urano,ophelia).
orbita(urano,portia).
orbita(urano,prospero).
orbita(urano,puck).
orbita(urano,rosalind).
orbita(urano,setebos).
orbita(urano,stephano).
orbita(urano,s1986u10).
orbita(urano,s2001u2).
orbita(urano,s2001u3).
orbita(urano,titania).
orbita(urano,trinculo).
orbita(urano,umbriel).

orbita(neptuno,despina).
orbita(neptuno,galatea).
orbita(neptuno,halimede).
orbita(neptuno,larissa).
orbita(neptuno,laomedeia).
orbita(neptuno,naiad).
orbita(neptuno,nereid).
orbita(neptuno,neso).
orbita(neptuno,proteus).
orbita(neptuno,psamathe).
orbita(neptuno,sao).
orbita(neptuno,thalassa).
orbita(neptuno,triton).

planeta(X):- orbita(sol,X).
luna(X):- orbita(Y,X), Y\=sol.
lunaDe(X,Y):- planeta(X),orbita(X,Y).
%todavia no sabemos contar

% EJERCICIO 7
entrada('salame').
entrada('ensalada').
entrada('pan').

platop('milanguinesa').
platop('ravioles').
platop('pollo asado').

postre('flan').
postre('helado').
postre('alfajor').

carta(X,Y,Z):- entrada(X),platop(Y),postre(Z).

% EJERCICIO 8
progenitor(juan,armando).
progenitor(maria,armando).
progenitor(ramon,sofia).
progenitor(julieta,sofia).
progenitor(manuel,andres).
progenitor(josefina,andres).
progenitor(roberto,camila).
progenitor(anastasia,camila).

progenitor(armando,matias).
progenitor(sofia,matias).
progenitor(andres,jana).
progenitor(camila,jana).

progenitor(matias,micaela).
progenitor(jana,micaela).

hombre(juan).
hombre(ramon).
hombre(manuel).
hombre(roberto).
hombre(armando).
hombre(andres).
hombre(matias).

mujer(maria).
mujer(julieta).
mujer(josefina).
mujer(anastasia).
mujer(sofia).
mujer(camila).
mujer(jana).
mujer(micaela).

padre(P,X):- progenitor(P,X),hombre(P).
madre(M,X):- progenitor(M,X),mujer(M).
abuelo(A,X):- progenitor(Y,X),padre(A,Y).
abuela(A,X):- progenitor(Y,X),madre(A,Y).
hermano2(X,H):- padre(Z,X),padre(Z,H),X\=H.
hermanov(X,H):- hermano2(X,H),hombre(H),X\=H.
hermanam(X,H):- hermano2(X,H),mujer(H),X\=H.
% no sabemos hacer recursion
% no se la altura del arbol

es_madre(X):- progenitor(X,_),mujer(X).
es_padre(X):- progenitor(X,_),hombre(X).
tia(X,Y):- progenitor(Z,X),hermanam(Z)==Y.
yerno(X,Y):- hombre(X),progenitor(X,Z),progenitor(W,Z),X\=W,progenitor(A,W),mujer(A),A==Y.
nuera(X,Y):- mujer(X),progenitor(X,Z),progenitor(W,Z),X\=W,progenitor(A,W),mujer(A),A==Y.

% EJERCICIO 9

mujer(haydee).
ingeniero(haydee).
abogado(haydee).

mujer(tania).
medico(tania).

hombre(livio).
contador(livio).

abogado(pedro).
hombre(pedro).

novela(rayuela).
novela(karamazov).
largo(rayuela).
largo(karamazov).

cuentos(octaedro).
corto(octaedro).

poemas(inventario).
largo(inventario).

novela(leones).
corto(leones).

gusta(X,Y):- abogado(X),largo(Y),novela(Y).
gusta(X,Y):- medico(X);ingenierio(X),novela(Y).
gusta(X,Y):- mujer(X),largo(Y).
gusta(X,Y):- hombre(X),contador(X),poemas(Y);cuentos(Y).
gusta(X,Y):- X==livio,Y==rayuela.
gusta(X,Y):- X==pedro,cuentos(Y).


