%
% Plantea el problema de los 4 colores
%
color(Color1, Color2) :-
	% Here you have to specify which colours can be used:
	Colores = [rojo,azul,verde,amarillo],
	member(Color1, Colores),
	member(Color2, Colores),
	Color1 \= Color2.

solve :-
	color(Col,Ecu), color(Col,Per),	color(Col,Bra),	color(Col,Ven),
	color(Ecu,Per),
	color(Per,Bra), color(Per,Bol), color(Per,Chi),
	color(Bol,Bra), color(Bol,Chi), color(Bol,Arg), color(Bol, Par),
	color(Chi,Arg),
	color(Arg,Par), color(Arg,Uru), color(Arg,Bra),
	color(Par,Bra),
	color(Uru,Bra),
	color(Bra,Ven),
	color(Bra,Gua),
        color(Ven,Gua),
	write('Col='), write(Col), nl,
	write('Ecu='), write(Ecu), nl,
	write('Per='), write(Per), nl,
	write('Bol='), write(Bol), nl,
	write('Chi='), write(Chi), nl,
	write('Arg='), write(Arg), nl,
	write('Par='), write(Par), nl,
	write('Uru='), write(Uru), nl,
	write('Bra='), write(Bra), nl,
	write('Ven='), write(Ven), nl,
	write('Gua='), write(Gua), nl.

