#const size=13.
#const lenght=13.

nbr(1..size).

vertice((Nbr,1..lenght)) :- nbr(Nbr).

edge ((X,Y),(X+1,Y),Y) :- vertice((X,Y)), vertice((X+1,Y)).
edge ((X,Y),(X,Y+1),X) :- vertice((X,Y)), vertice((X,Y+1)).

edge(V,V',D) :- edge(V',V,D).

robot(r(Nbr)) :- nbr(Nbr).

start(r(Nbr),(Nbr,1)) :- nbr(Nbr).

goal(r(1),(size,lenght)).
goal(r(Nbr),(Nbr-1,lenght)) :- nbr(Nbr), Nbr>1.

#show nbr/1.


time(0..size+lenght-2).
