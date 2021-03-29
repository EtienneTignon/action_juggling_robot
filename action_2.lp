at(R,V,T+1) :- at(R,V,T), not move(R,_,_,T), time(T+1).
:- at(_,_,T), not time(T).

{move(R,V1,V2,T) : edge(V1,V2,_)}1 :- time(T), robot(R).
:- move(R,V1,_,T), not at(R,V1,T).
at(R,V2,T+L) :- move(R,V1,V2,T), edge(V1,V2,L).
exitEdge(R,V1,T+I) :- move(R,V1,V2,T), edge(V1,V2,L), time(I), I>=0, I<L.
enterEdge(R,V2,T+I) :- move(R,V1,V2,T), edge(V1,V2,L), time(I), I>=0, I<L.

:- at(R1,V,T), at(R2,V,T), R1!=R2.
:- enterEdge(R1,V,T), enterEdge(R2,V,T), R1!=R2.
:- enterEdge(R1,V1,T), enterEdge(R2,V2,T), exitEdge(R1,V2,T), exitEdge(R2,V1,T), R1!=R2.

:- goal(R,V), not at(R,V,_).

#show move/4.
% #show at/3.
