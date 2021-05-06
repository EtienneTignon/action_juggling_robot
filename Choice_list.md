How to represent the action?
* move(R,V,V',T)
* move(R,V',T) no need for origin of movements
* move(R,V,V') no need for time at wich the movements occurs. But have to make sure the path is correct. Plus : doing the same action twice become impossible. But non-optimal. Is it complete though ? (or you sais that you can make the same move twice ... it's just represented the same way. But it is clunky and useless no?)
* dl(move(R,V,V'),T) clingo-DL give us the time (from moves(R,V',O) the ordered moves, or moves(R,V,V')).
* You don't, you just use the at to deduce them. But this is the opposite of what we want to do.

How to represent position?
* at(R,T)
* You don't, you just use the movements ...
* at(R) but no cycle possible at all! So incomplete

How to define inertia?
* if no movements
* if no other positions described

Who define who?
* moves define at. You choose your actions, then the positions are deduced from them
* at define moves. You choose your at, then the moves are deduced from them
* both define each-over. Pretty bad ...
* Non are defined beforehand. You just have a big choice !

When does the consequence of the action occur?
* at(R,V,T) :- move(R,V,T) at the time of the action
* at(R,V,T) :- move(R,V,T-1) after the action
  (Without duration, all the moves take 1 time to execute. In this way, move() represent the start of the action).
* at(R,V,T+1) :- move(R,V,T) after the action, but in a worst way
* at(R,V,T) :- move(R,V,T-0.5) if we put the action between the state

How to check for vertice constraint?
* if two agent are at the same place at the same time
* if,at any point in time, the last movement of the two agents put them in the same place

How to check for edge constraint?
* if two agent does the opposite movement at the same time
* if, at one point, two agents are in two different place and, the time after, the two agents exchanged places.
