{move(R,V,V',T) : edge(V,V',_), time(T), robot(R)}.

at(R,V,0) :- start(R,V).
at(R,V',T) :- move(R,_,V',T-1).
at(R,V,T) :- at(R,V,T-1), not move(R,_,_,T-1), time(T).

:- move(R,V1,V1',T), move(R,V2,V2',T), (V1,V1')!= (V2,V2').
:- move(R,V,_,T), not at(R,V,T).
:- at(_,_,T), not time(T).

:- goal(R,V), not at(R,V,T), time(T), not time(T+1).

#show move/4.
