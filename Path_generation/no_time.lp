{at(R,V) : edge(V,_,_) ; at(R,V) : edge(_,V,_)} :- robot(R).
at(R,V) :- start(R,V).

{move(R,V,V')} :- at(R,V), at(R,V'), edge(V,V',_).

:- at(R,V), not start(R,V), not move(R,_,V).
:- at(R,V), not goal(R,V), not move(R,V,_).

:- at(R,V), not start(R,V), not goal(R,V), #count{V : move(R,V,_)}=F, #count{V : move(R,_,V)}=T, F!=T.
:- at(R,V), goal(R,V), #count{V : move(R,V,_)}=F, #count{V : move(R,_,V)}=T, F!=(T-1).
:- at(R,V), start(R,V), #count{V : move(R,V,_)}=F, #count{V : move(R,_,V)}=T, (F-1)!=T.

:- robot(R), #count{V,V' : move(R,V,V')}=NbrM, NbrM>horizon.

:- goal(R,V), not at(R,V).

#show move/3.
