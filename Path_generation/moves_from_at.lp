{at(R,V,T) : edge(V,_,_) ; at(R,V',T) : edge(_,T,_)}1 :- time(T), robot(R). %note : if a robot is in a node connected to nothing it don't works ... but come on.
at(R,V,0) :- start(R,V).

move(R,V,V',T) :- at(R,V,T), at(R,V',T+1), V!=V'.

:- at(R,V,T), at(R,V',T+1), V!=V', not edge(V,V',_).

:- goal(R,V), not at(R,V,T), T=horizon.

#show move/4.
