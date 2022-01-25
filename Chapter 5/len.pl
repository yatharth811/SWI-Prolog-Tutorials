mylen([], 0).
mylen([_ | T], N) :- mylen(T, X), N is X+1.
 
%using accumulator
accLen([_|T],A, L) :-  Anew is A+1, accLen(T,Anew, L).
accLen([],A, A).

leng(List,Length) :- accLen(List,0,Length).