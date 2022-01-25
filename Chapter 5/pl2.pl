scalarMult(_, [], []).
scalarMult(X, [H | T], [H1 | T1]) :- H1 is X*H, scalarMult(X, T, T1). 