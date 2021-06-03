:- move(R,V,V',T), move(R',V',V,T), R<R'.

% :- move(_,V,V',T), move(_,V',V,T), V<V'.
%only if you can't move to the same place. Or if you want to enforce it (but you should enforce the assumption somewhere else).
%irreflexivity

% can be remplaced by an cardinality constraint
