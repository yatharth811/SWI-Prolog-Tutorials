member(X, [X | _]).
member(X, [_ | T]) :- member(X, T).
mysubset([],_).
mysubset([H | T], L) :- member(H, L), mysubset(T, L).
mysuperset(L1, L2) :- mysubset(L2, L1).