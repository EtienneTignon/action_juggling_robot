{move(R,V1,V2,T) : edge(V1,V2,_)}1 :- time(T), robot(R).
:- move(R,V1,_,T), not at(R,V1,T).
at(R,V2,T) :- move(R,V1,V2,T-1), edge(V1,V2,_).

1{ at(R,V,T) : edge(V,V',_) ; at(R,V',T) : edge(V,V',_) }1 :- time(T), robot(R).
at(R,V,T) :- at(R,V,T-1), not move(R,_,_,T-1), time(T).
:- at(_,_,T), not time(T).
