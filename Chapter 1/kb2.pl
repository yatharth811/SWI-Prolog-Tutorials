/*
This knowledge base is a collection of both facts and rules.
:- is to be read as if in prolog.
Variables start with capital letters.
left side of rule is called head and rhs is called body of rule.
fact is a rule with head but empty body.

The facts and rules contained in a knowledge base are called clauses. Thus KB2 contains five clauses, namely three rules and two facts. Another way of looking at KB2 is to say that it consists of three predicates (or procedures). The three predicates are:

listensToMusic
happy
playsAirGuitar
The happy predicate is defined using a single clause (a fact). The listensToMusic and playsAirGuitar predicates are each defined using two clauses (in both cases, two rules). It is a good idea to think about Prolog programs in terms of the predicates they contain.
*/

happy(yolunda).
listensToMusic(mia).
listensToMusic(chamia).
listensToMusic(yolanda):- happy(yolanda).
playsAirGuitar(mia)  :- listensToMusic(mia).
playsAirGuitar(yolanda) :- listensToMusic(yolanda).