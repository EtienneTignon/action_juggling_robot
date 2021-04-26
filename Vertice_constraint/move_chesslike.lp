move(R,T) :- move(R,_,T).

:- time(T), robot(R), move(R,V,T), time(T'), robot(R'), move(R',V,T'), #count{ R,T'' : move(R,T''), T<T'', T''<=T'}=0, T<T', R!=R'.
:- time(T), robot(R), move(R,V,T), robot(R'), move(R',V,T), R!=R'.

(Note : Almost no change)
(Note : why did I use a move/2 allready? Does it change anything for the #count ?)
