{move(R,V,V') : edge(V,V',_), robot(R)}.

at(R,V') :- move(R,V,V'), at(R,V).

:- {move(R,V,_)}=Exit, {move(R,_,V)}=Enter, not at(R,V,0), not goal(R,V), Exit!=Enter.
:- {move(R,V,_)}=Exit, {move(R,_,V)}=Enter, at(R,V,0), Exit+1!=Enter.
:- {move(R,V,_)}=Exit, {move(R,_,V)}=Enter, goal(R,V), Exit!=Enter+1.

:- move(R,V,_), not at(R,V).
:- goal(R,V), not at(R,V).
