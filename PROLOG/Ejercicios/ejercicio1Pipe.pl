pro(smith).
pro(carpenter).
pro(tailor).
pro(baker).

nombre(smith).
nombre(carpenter).
nombre(tailor).
nombre(baker).

padre(smith,smith).
padre(carpenter,carpenter).
padre(tailor,tailor).
padre(baker,baker).


profesion(X,P) :-  nombre(X),pro(P)= pro(baker).

profesiones(S,X,P1,P2,C,Y,P3,P4,T,Z,P5,P6,B,W,P7,P8):-
	padre(S,X),
	padre(C,Y),
	padre(T,Z),
	padre(B,W),
	pro(P1),pro(P2), pro(P1) \= pro(smith), pro(P2)\= pro(smith), P1 \= P2,
	pro(P3),pro(P4), pro(P3) \= pro(carpenter),pro(P4)\= pro(carpenter), P3 \= P4,
	pro(P5),pro(P6), pro(P5) \= pro(tailor), pro(P6)\= pro(tailor), P5 \= P6,
	pro(P7),pro(P8), pro(P7) \= pro(baker), pro(P8)\= pro(baker), P7 \= P8,
	P7 = P4,
        pro(P2) = pro(baker).

solve :-
	profesiones(smith,smith,P1,P2,carpenter,carpenter,P3,P4,tailor
		    ,tailor,P5,P6, baker,baker,P7,P8),
write('Profesion de smith padre :   '),write(P1),nl,
write('Profesion de smith hijo :   '),write(P2),nl,
write('Profesion de carpenter padre :   '),write(P3),nl,
write('Profesion de carpenter hijo :   '),write(P4),nl,
write('Profesion de tailor padre :   '),write(P5),nl,
write('Profesion de tailor hijo :   '),write(P6),nl,
write('Profesion de baker padre :   '),write(P7),nl,
write('Profesion de baker hijo :   '),write(P8),nl.
