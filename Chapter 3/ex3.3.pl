/*
Answer to exercise 3.3
Author: Yatharth Kumar
*/

swap(leaf(X), leaf(X)).

swap(tree(X, Y), tree(SwappedY, SwappedX)) :-
    swap(X, SwappedX),
    swap(Y, SwappedY).