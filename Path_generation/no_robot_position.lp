{move(R,V,V',T) : edge(V,V',_)}1 :- time(T), robot(R), T<horizon.

% :- move(R,_,V',T), move(R,V,_,T+1), V'!=V.
%:- move(R,_,V,T), move(R,_,_,T+1), not move(R,V,_,T+1). % Max's idea (don't work if a n agent sleep a bit)
:- move(R,V,V',T), {move(R,_,_,T') : time(T'), T<T', T'<T''}=0, move(R,V'',V''',T''), T<T'', V'!=V''. %look at this one with --text

:- move(R,V,_,T), {move(R,_,_,T') : time(T'), T'<T}0,  not start(R,V).
:- move(R,_,V,T), {move(R,_,_,T') : time(T'), T'>T}0,  not goal(R,V).

:- goal(R,V), not move(R,_,V,_), not start(R,V).

#show move/4.
