accrev([H|T], A, R) :- accrev(T, [H | A], R).
accrev([], A, A).

revList(L, R) :- accrev(L, [], R).