% There is no vertice without an edge
%  The only verties which need to be checked are the starts and goals of robots
:- start(R,V), not edge(V,_,_), not edge(_,V,_).
:- goal(R,V), not edge(V,_,_), not edge(_,V,_).

% Each robot has a (different) goal.
:- robot(R), not goal(R,_).
:- goal(R,V), goal(R',V), R!=R'.

% Each robot has a start.
%  No need to enforce that. The syntax allready does.

% Each robot has only one start.
:- start(R,V), start(R,V'), V!=V'.

% Each robot is on no more than one vertices at each time.
:- robot(R), time(T), not {at(R,_,T)}1.

% The graph is non-oriented.
:- edge(V,V',D), not edge(V',V,D).

% There is only one edge between two vertices.
:- edge(V,V',D), edge(V,V',D'), D!=D'.
