solve(Sol):-
	   Sol=[[N1,C1],[N2,C2],[N3,C3],[N4,C4],[N5,C5],[N6,C6]],
           ((N1=neeva,N2=haley);(N1=haley,N2=reeva)),
	   member(C1,[black,brown,blue]),
	   member(C3,[black,bronw,blue]),
	   member(C5,[black,brown,blue]),
	   member([blue,red],[[C1,C2],[C3,C5],[C5,C6]]),
	   N3=kayla,
	   member(liza,[N1,N5]),
	   member(zoe,[N1,N2,N5,N6]),
	   C5=brown,
	   member([black,yellow],[[C1,C2],[C3,C4]]),
	   member(green,[C1,C2,C3,C4,C5,C6]),
	   member([beth,C],Sol),
	   member(C,[green,red,yellow]).

