/*
Solution to exercise 2.4
Author: Yatharth Kumar
*/

word(abalone,a,b,a,l,o,n,e).
word(abandon,a,b,a,n,d,o,n).
word(enhance,e,n,h,a,n,c,e).
word(anagram,a,n,a,g,r,a,m).
word(connect,c,o,n,n,e,c,t).
word(elegant,e,l,e,g,a,n,t).


crosswd(A, B, C, D, E, F) :- 
    word(A, _, G, _, H, _, I, _), 
    word(B, _, J, _, K, _, L, _),
    word(C, _, M, _, N, _, O, _),
    word(D, _, G, _, J, _, M, _),
    word(E, _, H, _, K, _, N, _),
    word(F, _, I, _, L, _, O, _).