
accmin([H | T], A, Min) :- H < A, accmin(T, H, Min); H >= A, accmin(T, A, Min).
accmin([], A, A).

minList(L, X) :- L = [H | _], accmin(L, H, X).