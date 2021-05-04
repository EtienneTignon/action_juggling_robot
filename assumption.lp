% There is no vertice without an edge
:- start(R,V), not edge(V,_,_), not edge(_,V,_).
:- goal(R,V), not edge(V,_,_), not edge(_,V,_).

% Each robot has a (different) goal.
:- robot(R), not goal(R,_).
:- goal(R,V), goal(R',V), R!=R'.

% Each robot is on one vertices at each time.
:- robot(R), time(T), not 1{at(R,_,T)}1.

% The graph is non-oriented.
:- edge(V,V',D), not edge(V',V,D).

% There is only one edge between two vertices.
:- edge(V,V',D), edge(V,V',D'), D!=D'.
