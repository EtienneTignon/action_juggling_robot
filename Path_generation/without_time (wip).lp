{move(R,V,V') : edge(V,V',_), robot(R)}.

at(R,V') :- move(R,_,V').

:- {move}!={}

:- goal(R,V), not at(R,V).
