/*
How does Prolog respond to the following queries?

X = 3*4. -> instantiates X to complex term 3*4

X is 3*4. -> X = 12

4 is X. -> error

X = Y. -> instantiates X and Y to same value

3 is 1+2. -> true

3 is +(1,2). -> true

3 is X+2. -> error

X is 1+2. -> X=3

1+2 is 1+2. -> true

is(X,+(1,2)). -> X = 3

3+2 = +(3,2). -> true

*(7,5) = 7*5. -> true

*(7,+(3,2)) = 7*(3+2). -> true

*(7,(3+2)) = 7*(3+2). -> true

*(7,(3+2)) = 7*(+(3,2)). -> true

*/