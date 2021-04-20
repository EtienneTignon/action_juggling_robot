{move(V,V',T) : edge(V,V',_), time(T)}.

at(R,V',T) :- at(R,V,T-1), move(V,V',T-1).
at(R,V,T) :- at(R,V,T-1), not move(V,_,T-1).

:- move(V,_,T), not at(_,V,T).
