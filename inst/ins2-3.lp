%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graph

edge(v1a,v1b,1).
edge(v1b,v1c,1).
edge(v2a,v2b,1).
edge(v2b,v2c,1).
edge(v1a,v2a,4).
edge(v1b,v2b,1).
edge(v1c,v2c,4).
edge(X,Y,L) :- edge(Y,X,L).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Robot

robot(r1).
start(r1,v1a).
robot(r2).
start(r2,v2a).
robot(r3).
start(r3,v2b).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goal

goal(r1,v2c).
goal(r2,v1c).
goal(r3,v1b).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Time

time(0..horizon).
#const horizon = 3. %Check optimized time
