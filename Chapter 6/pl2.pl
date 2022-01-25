accset([], A, A).
accset([H | T], A, R) :-    member(H, A), accset(T, A, R);
                            not(member(H, A)), append(A,[H], Anew), accset(T, Anew, R). 

set(L, R) :- accset(L, [], R).