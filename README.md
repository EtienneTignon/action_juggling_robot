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

Basic encodings :
* 0.lp : basic implementation
* 1.lp : represent the presence of the robots on the edges.
It make it easy to represent edge constraints, just have to check the atEdge/3 predicate wich represent the presence of agent on an edge.
* 2.lp : represent exiting and entering the vertices by the robot (inpired by Švancara's 2018 paper)
Two new predicates, exitEdge/3 and enterEdge/3, help take trace of the agent between his vertices position.

Encodings with durations :
* 1d1.lp : extention of 1.lp with durations
* 2d1.lp : extention of 2.lp with durations

The following encoding use clingoDL. So they output dl((R,V,V',O),T) atoms to represent the moves executed, in wich order (O) and the corresponding timestamps (T).

Encodings using difference constraints :
* 1.dlp : basic implementation using clingoDL.
It use ordered move/4 predicate to represent the path of each agent.
Then, with difference constraints, he attribute them numerical values representing the moment in time when the action really occures.
(Note, the duration variant isn't done yet but I expect it to be easy to implement from this.)
