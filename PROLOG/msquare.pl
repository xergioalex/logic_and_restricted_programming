%
% Cuadro Magico 3x3

%
% d(D) :- predicado para asignar digitos del 1..9
%
d(1). d(2). d(3). d(4). d(5). d(6). d(7). d(8). d(9).

%
% Asegurar que todos los valores asignados son diferentes
%
alldifferent([]).
alldifferent([X|Xs]) :-
	different(X,Xs),
	alldifferent(Xs).

different(_,[]).
different(X,[Y|Ys]) :-
	X \= Y,
	different(X,Ys).

%
% Imprime la informacion de una fila
%
print(A,B,C) :-
	write(A),write(" "),write(B),write(" "),write(C), nl.

out(A,B,C,D,E,F,G,H,I) :-
	print(A,B,C),
	print(D,E,F),
	print(G,H,I).

%
% Predicado que resuelve el cuadro magico
%
solve :-
	d(A), d(B), d(C),
	d(D), d(E), d(F),
	d(G), d(H), d(I),
	alldifferent([A,B,C,D,E,F,G,H,I]),

	% Todas las filas
	A+B+C =:= 15,
	D+E+F =:= 15,
	G+H+I =:= 15,

	% Todas las columnas
	A+D+G =:= 15,
	B+E+H =:= 15,
	C+F+I =:= 15,

	% Las diagonales
	A+E+I =:= 15,
	C+E+G =:= 15,

	out(A,B,C,D,E,F,G,H,I).





















