%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graph

edge(v1,v2,1).
edge(v1,v3,1).
edge(v2,v3,1).
edge(v1,t1,2).
edge(v2,t2,2).
edge(v3,t3,2).
edge(X,Y,L) :- edge(Y,X,L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Robot

robot(r1).
at(r1,t1,0).
robot(r2).
at(r2,t2,0).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goal

goal(r1,t2).
goal(r2,t1).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Time

time(0..horizon).
#const horizon = 6.
