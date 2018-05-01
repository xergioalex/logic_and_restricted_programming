%
alldifferent(A,B,C,D):-
	A\=B,A\=C,A\=D,
	B\=C,B\=D,
	C\=D.

solve :-

	%Padres no tienen la profesion de sus apellidos
	member(P1,['Baker','Carpenter','Tailor']),
	member(P2,['Smith','Carpenter','Tailor']),
	member(P3,['Smith','Baker','Tailor']),
	member(P4,['Smith','Baker','Carpenter']),

	%Hijos no tienen la profesion de sus apellidos
	H1='Baker',
	member(H2,['Smith','Carpenter','Tailor']),
	member(H3,['Smith','Baker','Tailor']),
	member(H4,['Smith','Baker','Carpenter']),

	P2=H3,

	%ningun hijo tiene la profesion de su padre
	P1\=H1,
	P2\=H2,
	P3\=H3,
	P4\=H4,

	alldifferent(P1,P2,P3,P4),
	alldifferent(H1,H2,H3,H4),

	Sol=[[P1,H1],[P2,H2],[P3,H3],[P4,H4]],
	write(Sol).
