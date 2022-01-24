/*
Answer to exercise 1.4
Author: Yatharth Kumar
Represent the following in Prolog:

1. Butch is a killer.

2. Mia and Marcellus are married.

3. Zed is dead.

4. Marcellus kills everyone who gives Mia a footmassage.

5. Mia loves everyone who is a good dancer.

6. Jules eats anything that is nutritious or tasty.

*/

%%ans:
killer(butch).

married(marcellus, mia).
married(mia, marcellus).

dead(zed).

kills(marcellus, X) :- footmassage(X, mia).

loves(mia, X) :- dancegood(X).

eats(julius, X) :- nutritious(X); tasty(X).