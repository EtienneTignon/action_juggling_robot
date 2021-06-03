{move(R,V,V',T) : edge(V,V',_), time(T), robot(R)}.
{at(R,V,T) : edge(V,_,_), time(T), robot(R)}.

:- start(R,V) ,not at(R,V,0).
:- move(R,_,V',T-1), not at(R,V',T).
:- at(R,V,T-1), not move(R,_,_,T-1), time(T), not at(R,V,T).
:- at(R,V,T), at(R,V',T), V<V'.

:- move(R,V1,V1',T), move(R,V2,V2',T), (V1,V1')<(V2,V2').
:- move(R,V,_,T), not at(R,V,T).
:- at(_,_,T), not time(T).

:- goal(R,V), not at(R,V,T), time(T), not time(T+1).
