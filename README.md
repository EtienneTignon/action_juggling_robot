# action_juggling_robot

This repository contains encodings destined to tackle MAPF with duration on action, using action langage.

All the encodings are made for instances composed of :
* edge(V,V',L) representing edges with their length
* robot(R) representing the presence of a robot
* start(R,V) represente the starting point of a robot
* goal(R,V) represent the goal that a robot must reach
* time(T) to represent time (but will be changed)

The different files are divided in different folders :
* Path_generation : those encodings are the one representing the path taken by the robots.
By themself, they don't have anymore constraint than being able to represent robots who moves.
Collision is not checked at all for example.
* Vertice_constraint : thoses encodings are the ones who forbid two robots to be at the same place at the same time.
* Edge_constraint : thoses encodings are the ones who forbid two robots to try to take the same path at the same time.
* Duration : how to represent the fact that actions take time?

Files actually there :
* at_from_moves.lp : the "intuitive" one. At each point in time, a move can be taken. Moves are defined by a robot, a starting vertice, an ending vertice and the time at which the action is taken. The position of the robots are determined from the moves.
* less_prerequisite.lp : we dont even say that there must be only one action per robot at each point in time. We just forbid it afterward.
* generating_all.lp : In this file, the robots positions at each point in time is determined the same way that for the movements. By declaring that a robot has a position at each point in time and afterward forbiding impossible positions.
* moves_from_at.lp : here, the at are the ones generated and the moves are the ones deduced from them.
* chess_like : here, like chess, a move is not described by the exiting vertice, only the one the robot enter.
* no_robot_position.lp : there is no predicate to represent robot position here. The possible moves depend of each over. (WIP)
* without_time.lp : the time is not represented in the moves. It can be added later (via clingoDL for example), or it can be used as it is. (WIP)
