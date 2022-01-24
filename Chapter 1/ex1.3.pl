/*
Answers to exercise 1.3
Author: Yatharth Kumar

How many facts, rules, clauses, and predicates are there in the following knowledge base? What are the heads of the rules, and what are the goals they contain?

woman(vincent).
woman(mia).
man(jules).
person(X) :- man(X); woman(X).
loves(X,Y) :- knows(Y,X).
father(Y,Z) :- man(Y), son(Z,Y).
father(Y,Z) :- man(Y), daughter(Z,Y).

Ans:
facts -> 3
rules -> 4
clauses -> 7
predicates -> 7

|     Head     |         Goals          |
|--------------|------------------------|
| person(X)    | man(X), woman(X)       |
| loves(X, Y)  | father(X, Y)           |
| father(Y, Z) | man(Y), son(Z, Y)      |
| father(Y, Z) | man(Y), daughter(Z, Y) |

*/