vertice((1..5,1)).
vertice((1..5,2)).
vertice((1..5,3)).

edge ((X,Y),(X+1,Y),Y) :- vertice((X,Y)), vertice((X+1,Y)).
edge ((X,Y),(X,Y+1),X) :- vertice((X,Y)), vertice((X,Y+1)).

edge(V,V',D) :- edge(V',V,D).

robot(r1).
robot(r2).
robot(r3).
robot(r4).
robot(r5).

start(r1,(1,1)).
start(r2,(2,1)).
start(r3,(3,1)).
start(r4,(4,1)).
start(r5,(5,1)).

goal(r1,(5,3)).
goal(r2,(4,3)).
goal(r3,(1,3)).
goal(r4,(3,3)).
goal(r5,(2,3)).

time(0..horizon).
#const horizon = 6.
