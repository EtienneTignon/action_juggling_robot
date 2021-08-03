{move(R,V,V',T) : edge(V,V',_)}1 :- time(T), robot(R).

at(R,V,0) :- start(R,V).
at(R,V',T) :- move(R,_,V',T-1).
{at(R,V,T)} :- at(R,V,T-1), time(T).

:- move(R,V,_,T), not at(R,V,T).
:- at(_,_,T), not time(T).

:- time(T), robot(R), {at(R,V,T) : edge(V,_,_) ; at(R,V,T) : edge(_,V,_)}!=1.

:- goal(R,V), not at(R,V,T), time(T), not time(T+1).

#show move/4.
