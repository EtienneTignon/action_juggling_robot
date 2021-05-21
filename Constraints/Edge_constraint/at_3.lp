:- at(R,V,T), at(R',V',T), at(R,V',T+1), at(R',V,T+1), R<R'.

% I could remove V!=V'. But it would make it more constraining that edge constraint. Is it an issue?
