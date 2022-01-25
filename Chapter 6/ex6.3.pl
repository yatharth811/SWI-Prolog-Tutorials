%1.
second(X, [_, H2 | _]) :- X = H2. 

%2.
swap12([H1, H2 | T], [H2, H1 | T]).

%3.
final1(X, List) :- reverse(List, Y), Y = [X | _].
%or
final2(X, List) :- append(_, [X], List).

%4.
toptail([_ | T], Outlist) :- append(Outlist, [_], T).

%5.
swapfl(L1, L2) :- append([X|Z], [Y], L1), append([Y | Z], [X], L2).