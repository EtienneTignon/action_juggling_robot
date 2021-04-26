{move(R,V,V',T) : edge(V,V',_)}1 :- time(T), robot(R), start(R,V).
{move(R,V,V',T) : edge(V,V',_)}1 :- time(T), robot(R), move(R,_,V,T'), T'<T.

at(R,V,0) :- start(R,V).
at(R,V',T) :- move(R,_,V',T-1).
at(R,V,T) :- at(R,V,T-1), not move(R,_,_,T-1), time(T).

:- move(R,V,_,T), not at(R,V,T).
:- at(_,_,T), not time(T).

:- goal(R,V), not at(R,V,T), T=horizon.

#show move/4.
