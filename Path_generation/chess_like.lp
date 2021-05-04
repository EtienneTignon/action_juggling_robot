{move(R,V',T) : edge(_,V',_)}1 :- time(T), robot(R).

at(R,V,0) :- start(R,V).
at(R,V',T) :- move(R,V',T-1).
at(R,V,T) :- at(R,V,T-1), not move(R,_,T-1), time(T).

:- move(R,V',T), {at(R,V,T) : edge(V,V',_)}0.
% :- move(R,V',T), at(R,V,T), not edge(V,V',_). %Torsten's idea
% :- move(R,V',T), not at(R,V,T) : edge(V,V',_). %Javier's first idea (like 7)
% :- move(R,V',T), #false : at(R,V,T), edge(V,V',_). %Javier's second idea (like 7)

:- at(_,_,T), not time(T).

:- goal(R,V), not at(R,V,T), T=horizon.

%#show move/3.
