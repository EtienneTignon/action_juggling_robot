%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graph

edge(v1,v2,1).
edge(v2,v3,1).
edge(v3,v4,1).
edge(X,Y,L) :- edge(Y,X,L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Robot

robot(r1).
start(r1,v1).
robot(r2).
start(r2,v2).
robot(r3).
start(r3,v3).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goal

goal(r1,v4).
goal(r2,v3).
goal(r3,v2).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Time

time(0..horizon).
#const horizon = 3.
