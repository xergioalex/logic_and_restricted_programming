% cada elemento de la lista es de la forma: [nombre,puestonatacion,puestociclismo]

%el rango asegura que los puestos esten entre 1 y 4
rango(N,C):-
	member(N,[1,2,3,4]),
	member(C,[1,2,3,4]).

%cada elemento es diferente del otro
alldifferent(A,B,C,D):-
	A\=B,A\=C,A\=D,
	B\=C,B\=D,
	C\=D.

solve:-
	Sol=[['Andrew',N1,C1],['Corey',N2,C2],['Duru',N3,C3],['Sandy',N4,C4]],
	rango(N1,C1),rango(N2,C2),rango(N3,C3),rango(N4,C4),
	alldifferent(N1,N2,N3,N4),
	alldifferent(C1,C2,C3,C4),
 	member(['Andrew',X,Y],Sol),
	X>1,
	Y>1,
	member([_,1,3],Sol),
	member(['Corey',A,B],Sol),
	X<A,
	Y>B,
	A<4,
	B<4,
	member(['Duru',C,1],Sol),
	member(['Sandy',D,_],Sol),
	D<C,
	write(Sol).
