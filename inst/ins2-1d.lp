%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Graph

edge(v1a,left,v1b,1).
edge(v1b,left,v1c,1).
edge(v2a,left,v2b,1).
edge(v2b,left,v2c,1).
edge(v1a,up,v2a,4).
edge(v1b,up,v2b,1).
edge(v1c,up,v2c,4).
edge(X,right,Y,L) :- edge(Y,left,X,L).
edge(X,down,Y,L) :- edge(Y,up,X,L).
edge(X,Y,L) :- edge(X,D,Y,L).

direction(left;right;up;down).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Robot

robot(r1).
start(r1,v1a).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Goal

goal(r1,v2c).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Time

time(0..horizon).
#const horizon = 3.
