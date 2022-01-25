mydot([H1 | T1], [H2 | T2], A, X) :- Anew is A + (H1*H2), mydot(T1, T2, Anew, X).  
mydot([], [], A, A).
dot(L1, L2, Result) :- mydot(L1, L2, 0, Result).