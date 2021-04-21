{move(R,V',T) : edge(_,V',_)}1 :- time(T), robot(R).

at(R,V',T) :- move(R,V',T-1).
at(R,V,T) :- at(R,V,T-1), not move(R,_,T-1), time(T).

:- move(R,V',T), {at(R,V,T) : edge(V,V').
:- at(_,_,T), not time(T).

:- goal(R,V), not at(R,V,_).
