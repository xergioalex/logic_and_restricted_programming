%
% Cuadro Magico 3x3

%
% d(D) :- predicado para asignar digitos del 1..9
%
d(1). d(2). d(3). d(4). d(5). d(6). d(7). d(8). d(9).

%
% Una fila tiene 3 diferentes digitos que sumados dan 15
%
row(X,Y,Z) :-
	d(X), d(Y), X=\=Y,
	d(Z),       X=\=Z, Y=\=Z,
	X+Y+Z =:= 15.

col(X,Y,Z) :-
	X=\=Y, X=\=Z, Y=\=Z,
	X+Y+Z =:= 15.

diag(X,Y,Z) :-
	X=\=Y, X=\=Z, Y=\=Z,
	X+Y+Z =:= 15.
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
	row(A,B,C),
	row(D,E,F),
	row(G,H,I),
	col(A,D,G),
	col(B,E,H),
	col(C,F,I),
	diag(A,E,I),
	diag(C,E,G),
	out(A,B,C,D,E,F,G,H,I).














