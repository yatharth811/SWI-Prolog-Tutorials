flatten([H | T], A, R) :-   is_list(H), flatten(H, A, Z), flatten(T, Z, R);
                            not(is_list(H)), append(A,[H], Anew), flatten(T, Anew, R).

flatten([], A, A).

flatten(L, R) :- flatten(L, [], R).