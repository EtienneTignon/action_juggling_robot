# action_juggling_robot

This repository contains encodings destined to tackle MAPF with duration on action, using action langage.

All the encodings are made for instances composed of :
* edge(V,V',L) representing edges with their length
* robot(R) representing the presence of a robot
* start(R,V) represent the starting point of a robot
* goal(R,V) represent the goal that a robot must reach
* time(T) to represent time
* (some encodings also have direction, with direction(D) and edge(X,D,Y,L))

The different files are divided in different folders :
* Path_generation : those encodings are the one representing the path taken by the robots.
By themselves, they don't have anymore constraint than being able to represent robots who moves.
Collision is not checked at all for example.
* Constraints : Those files take care of the collisions between robots.
 * Vertice_constraint : those encodings are the ones who forbid two robots to be at the same place at the same time.
 * Edge_constraint : those encodings are the ones who forbid two robots to try to take the same path at the same time.
* Add_diff_constr : used to inject difference constraint with Clingo-DL.
* Duration : how to represent the fact that actions take time? (Not here yet)

Files in Path_generation :
* basic.lp : the "intuitive" one. At each point in time, a move can be taken. Moves are defined by a robot, a starting vertex, an ending vertex and the time at which the action is taken. The position of the robots are determined from the moves.
* less_prerequisite.lp : we don't even say that there must be only one action per robot at each point in time. We just forbid it afterward.
* more_prerequisite.lp : we add in the prerequisites that, to move from a point, you have to have already reached it.
* generate_all.lp : In this file, the robots positions at each point in time is determined the same way that for the movements. By declaring that a robot has a position at each point in time and afterward forbidding impossible positions.
* moves_from_at.lp : here, the at are the ones generated and the moves are the ones deduced from them.
* interdependant.lp : at depend of move, move depend of at. Inefficient.
* chess_like : here, like chess, a move is not described by both vertices of the movement, only the one the robot enter.
* direction : here a move is not described by both vertices of the movement, only the direction the robot take.
* no_robot_position.lp : there is no predicate to represent robot position here. The possible moves depend of each over.
* more_general_inertia.lp : another way to represent inertia.

Files in Vertice_constraint :
* at_3.lp : the superposition are detected from the at/3 predicate.
* move_4.lp : the superposition are detected from the movements. It can be useful if the at/3 doesn't exists.
* move_chesslike.lp : like move_4.lp, but for chess_like, who use move/3.
* difference_constraint.dlp : the superposition are detected from the difference constraint using Clingo-DL (WIP)

Files in Edge_constraint :
* at_3.lp : the superposition are detected from the at/3 predicate.
* move_4.lp : the superposition are detected from the movements. It can be useful if the at/3 doesn't exists.
* move_chesslike.lp : like move_4.lp, but for chess_like, who use move/3.
* difference_constraint.dlp : the superposition are detected from the difference constraint using Clingo-DL

Other important files :
* README.md : You are reading me :-)
* assumption.lp : Some assumptions about the encodings and the instances are hard-coded and made explicit here.
* ideas.txt : some miscellaneous notes and ideas for the future.
