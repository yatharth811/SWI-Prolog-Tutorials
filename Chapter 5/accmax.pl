accMax([], A, A).
accMax([H | T], A, Max) :-  H > A, accMax(T, H, Max); 
                            H =< A, accMax(T, A, Max).


maxList(L, X) :- L = [H | _], accMax(L, H, X).