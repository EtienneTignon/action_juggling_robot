{move(V,V',T) : edge(V,V',_), time(T)}.

:- move(V,_,T), not move(_,V,T'), T'<T, not at(_,V,0), time(T').
:- move(V1,V1',T), move(V2,V2',T'), not move(_,_,T''), T<T'', T''<T', V1'!=V2, time(T'').

:- goal(_,V), not move(_,V,_), not at(_,V,0).
