wizard(ron).
hasWand(harry).
quidditchPlayer(harry).
wizard(X) :- hasBroom(X),hasWand(X).
hasBroom(X) :- quidditchPlayer(X).


/*

Answer to exercise 1.4
Author: Yatharth Kumar

wizard(ron). -> true

witch(ron). -> error

wizard(hermione).  -> false

witch(hermione). -> error

wizard(harry). -> true.

wizard(Y). -> Y = ron; Y = harry.

witch(Y). -> error.

*/