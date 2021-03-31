at(R,V,T) :- at(R,V,T-1), not move(R,_,_,T-1), time(T).
:- at(_,_,T), not time(T).

{move(R,V1,V2,T) : edge(V1,V2,_)}1 :- time(T), robot(R).
:- move(R,V1,_,T), not at(R,V1,T).
at(R,V2,T) :- move(R,V1,V2,T-1), edge(V1,V2,_).
exitEdge(R,V1,T) :- move(R,V1,V2,T), edge(V1,V2,_).
enterEdge(R,V2,T) :- move(R,V1,V2,T), edge(V1,V2,_).

:- at(R1,V,T), at(R2,V,T), R1!=R2.
:- enterEdge(R1,V,T), enterEdge(R2,V,T), R1!=R2.
:- enterEdge(R1,V1,T), enterEdge(R2,V2,T), exitEdge(R1,V2,T), exitEdge(R2,V1,T), R1!=R2.

:- goal(R,V), not at(R,V,_).

#show move/4.
% #show at/3.
