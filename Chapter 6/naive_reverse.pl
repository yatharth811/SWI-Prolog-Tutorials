reverseList([], []).
reverseList([H | T], R) :- reverseList(T, S), append(S, [H], R).