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
% Fluent

fluent(position_robot(r1,v1),0).
fluent(position_robot(R,V),T+1) :- fluent(position_robot(R,V),T), not fluent(position_robot(R,V2),T+1), V!=V2.
:- fluent(_,T), not time(T).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Action

action(move(V1,V2,R)) :- edge(V1,V2,L), robot(R).

condition(move(V1,V2,R),position_robot(R,V1)) :- action(move(V1,V2,R)).

consequence(move(V1,V2,R),T,position_robot(R,V2),T+L) :- action(move(V1,V2,R),T), edge(V1,V2,L).
consequence(move(V1,V2,R),T,position_robot(R,(V1,V2)),T+1) :- action(move(V1,V2,R),T), edge(V1,V2,L), L>1.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Doing the things

{action(A,T)} :- action(A), time(T).

:- action(A,T), condition(A,C), not fluent(C,T).
:- action(A1,T), action(A2,T), A1!=A2.

fluent(C,T2) :- action(A,T1), consequence(A,T1,C,T2).

% 0{position_robot(R,V2,T2) : action(move,V1,V2,T), T1+T=T2, time(T2) }1 :- position_robot(R,V1,T1).
% TODO : extract the action taken. This is what we want at the end.
% TODO : change conditionals. I want to be able to take actions anytime and then check if it's good.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goal

goal(r1,v4).
:- goal(R,V), not fluent(position_robot(R,V),_).

%#show action/1.
#show.
#show pos(R,P,T) : fluent(position_robot(R,P),T).
%#show action/2.
