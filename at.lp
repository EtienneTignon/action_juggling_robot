%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graph

edge(v2,v1,1).
edge(v3,v2,1).
edge(v1,v3,1).
edge(v3,v4,2).
edge(X,Y,L) :- edge(Y,X,L).

robot(r1).

time(0..4).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fluents

holds(at(r1,v1),0).
holds(at(R,V),T+1) :- holds(at(R,V),T), not do(move(V,_,R),T).
:- holds(_,T), not time(T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Action

action(move(V1,V2,R)) :- edge(V1,V2,L), robot(R).

poss(move(V1,V2,R),at(R,V1)) :- action(move(V1,V2,R)).

consequence(move(V1,V2,R),T,at(R,V2),T+L) :- do(move(V1,V2,R),T), edge(V1,V2,L).
consequence(move(V1,V2,R),T,at(R,(V1,V2)),T+1) :- do(move(V1,V2,R),T), edge(V1,V2,L), L>1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Doing the things

{do(A,T)} :- action(A), time(T).

:- do(A,T), poss(A,C), not holds(C,T).
:- do(A1,T), do(A2,T), A1!=A2.

holds(C,T2) :- do(A,T1), consequence(A,T1,C,T2).

% 0{at(R,V2,T2) : action(move,V1,V2,T), T1+T=T2, time(T2) }1 :- at(R,V1,T1).
% TODO : extract the action taken. This is what we want at the end.
% TODO : change conditionals. I want to be able to take actions anytime and then check if it's good.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goal

goal(r1,v4).
:- goal(R,V), not holds(at(R,V),_).

%#show action/1.
#show.
#show pos(R,P,T) : holds(at(R,P),T).
%#show do/2.
