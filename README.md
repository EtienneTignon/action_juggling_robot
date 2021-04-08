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

Basic encodings
* 0.lp : basic implementation
* 1.lp : represent the presence of the robots on the edges
* 2.lp : represent exiting and entering the vertices by the robot (inpired by Švancara's 2018 paper)

Encodings with durations
* 1d1.lp : extention of 1.lp with durations
* 2d1.lp : extention of 2.lp with durations

The following encoding use clingoDL. So they output dl((R,V,V'),T) atoms to represent the moves executed and the corresponding timestamps.

Encodings using difference constraints
* 0.dlp : basic implementation using clingoDL (WIP)
