rev([H | T], A, R) :- rev(T, [H | A], R).
rev([], A, A).

reverseList(L, R) :- rev(L, [], R).

palindrome(L):- reverseList(L, R), R = L.