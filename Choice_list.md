Representation
* fluent based (lots of fluents, then we check)
* state based (actions change fluents) (Moves from at or at from moves?)
* moves from the goal (or from both end) (usefull for reachability)

How to represent the action?
* move(R,V,V',T)
* move(R,V',T) no need for origin of movements
* move(R,D,T) the direction at which the agent move (but the notion of direction need to be defined somehow)
* move(R,V,V') no need for time at which the movements occurs. But doing the same action twice become impossible. Non-optimal. Is it complete though ? (or you say that you can make the same move twice ... it's just not represented. But it seems clunky and useless)
* dl(move(),T) clingo-DL give us the time (from moves(R,V,V',O) the ordered moves, or moves(R,V,V')).
* You don't, you just use the at to deduce them. But this is the opposite of what we want to do.

How to represent position?
* at(R,V,T)
* at(R,V) but no cycle possible at all! So incomplete
* You don't, you just use the movements ...

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
* at(R,V,T+1) :- move(R,V,T) after the action, but in a worst? way
* at(R,V,T) :- move(R,V,T-0.5) if we put the action between the states

How to check for vertices constraint?
* if two agent are at the same place at the same time
* if,at any point in time, the last movement of the two agents put them in the same place

How to check for edge constraint?
* if two agent does the opposite movement at the same time
* if, at one point, two agents are in two different place and, the time after, the two agents exchanged places.
