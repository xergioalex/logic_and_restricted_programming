%cada pareja es de la forma [nombremujer,nombrehombre,disfrazmujer,disfrazhombre,orden]
solve:-
	Sol=[[_,_,_,_,1],[_,_,_,_,2],[_,_,_,_,3],[_,_,_,_,4]],
	member([_,'Matt','Gata',_,3],Sol),
	member([_,_,_,'Oso',A],Sol),(A=1;A=2),
	member([_,'Vince',_,_,B],Sol),
	member([_,_,_,'Principe',C],Sol),
	B>1,
	B<C,
	member([_,'Chuck','Bruja','Pato',D],Sol),
	member(['Sue',_,_,_,E],Sol),
	E\=D,
	member(['Mary',_,_,_,F],Sol),
	member([_,'Lou',_,_,G],Sol),
	F>G,
	E>F,
	member([_,_,'Gitana',_,H],Sol),
	member(['Ann',_,_,_,I],Sol),
	H<I,
	member([_,_,_,'Batman',J],Sol),
	J\=H,J\=I,
	member([_,_,'BlancaNieves',_,K],Sol),
	member(['Tess',_,_,_,L],Sol),
	K>L,
	write(Sol).




