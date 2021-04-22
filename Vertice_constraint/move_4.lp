move(R,T) :- move(R,_,_,T).

:- time(T), robot(R), move(R,_,V,T), time(T'), robot(R'), move(R',_,V,T'), #count{ R,T'' : move(R,T''), T<T'', T''<=T'}=0, T<T', R!=R'.
:- time(T), robot(R), move(R,_,V,T), robot(R'), move(R',_,V,T), R!=R'.
