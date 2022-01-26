accrev([H|T], A, R) :- accrev(T, [H | A], R).
accrev([], A, A).

reverse(L, R) :- accrev(L, [], R).