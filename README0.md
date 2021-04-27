# action_juggling_robot

This repository contains encodings destined to tackle MAPF with duration on action, using action langage.

All the encodings are maid for instance composed of :
* edge(V,V',L) representing edges with their length
* robot(R) representing the presence of a robot
* at(R,V,0) represente the starting point of a robot
* goal(R,V) represent the goal that a robot must reach
* time(T) to represent time (but will be changed)

The following encodings are outputing move(R,V,V',T) predicates, representing the time at wich each mouve start.
Without duration, all the moves take 1 time to execute.

Path generation :
* at_from_moves.lp : we
