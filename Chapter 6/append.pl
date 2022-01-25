myappend([], L, L).
myappend([H1 | T1], L2, [H1 | T]) :- myappend(T1, L2, T). 


prefix(P, L) :- append(P, _, L).
suffix(S, L) :- append(_, S, L).


sublists(X, L) :- suffix(Z, L), prefix(X, Z).