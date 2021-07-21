Take a look at no_robot_position !
Benchmark, now that it works XD

Don't hesitate to do little test and observation right now. Don't wait to test everything at the same time.

You could use the clingo api to automatise thing nicely. Take a look into it.

Propagator!:
* vertex,time -> robot
* robot,time -> vertex
* these two functions have changed

inertia :: { robot(atTheSamePlace at T+1) } :- robot(somewhere at T). :- {robot(somewhere at T)} != 1, T.
