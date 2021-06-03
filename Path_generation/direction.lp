{move(R,D,T) : direction(D)}1 :- time(T), robot(R).

at(R,V,0) :- start(R,V).
at(R,V',T) :- move(R,D,T-1), at(R,V,T-1), edge(V,D,V',_).
at(R,V,T) :- at(R,V,T-1), not move(R,_,T-1), time(T).

:- move(R,D,T), at(R,V,T), not edge(V,D,_,_).

:- at(_,_,T), not time(T).

:- goal(R,V), not at(R,V,T), time(T), not time(T+1).

%#show move/3.

% move(R,unterermined,V',T) :- move(R,V',T).
