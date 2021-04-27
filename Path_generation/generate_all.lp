{move(R,V,V',T) : edge(V,V',_)}1 :- time(T), robot(R).

1{ at(R,V,T) : edge(V,V',_) ; at(R,V',T) : edge(V,V',_) }1 :- time(T), robot(R).
at(R,V,0) :- start(R,V).

:- move(R,V,_,T), not at(R,V,T).
:- at(_,_,T), not time(T).
:- not at(R,V',T), move(R,_,V',T-1).
:- not at(R,V,T), at(R,V,T-1), not move(R,_,_,T-1), time(T).

:- goal(R,V), not at(R,V,T), T=horizon.

#show move/4.

% more thing should be an integrity constraint.
% make assumption clear : edge are always in both side for example
% maybe check the assumption, like :- be on a vertices who has no edges
% you can use a dedicated file to this
