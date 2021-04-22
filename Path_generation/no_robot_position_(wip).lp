{move(R,V,V',T) : edge(V,V',_)}1 :- time(T), robot(R), T<horizon.

first_move(R,T) :- move(R,_,_,T), not move(R,_,_,T'), time(T'), T'<T.

:- move(R,V,_,T), not start(R,V), first_move(R,T).
:- move(R,V,V',T), move(R,V'',V''',T+1), V'!=V''.
:- move(R,V,V',T), {move(R,_,_,T') : time(T'), T<T', T'<T''}=0, move(R,V'',V''',T''), T<T'', V'!=V''.

:- goal(R,V), not move(R,_,V,_), not start(R,V).

#show move/4.
#show first_move/2.
