/*
Precise definition for matching which not only tells us when two terms match, but one which also tells us what we have to do to the variables to make the terms equal.

1. If term1 and term2 are constants, then term1 and term2 match if and only if they are the same atom, or the same number.

2. If term1 is a variable and term2 is any type of term, then term1 and term2 match, and term1 is instantiated to term2. Similarly, if term2 is a variable and term1 is any type of term, then term1 and term2 match, and term2 is instantiated to term1. (So if they are both variables, they're both instantiated to each other, and we say that they share values.)

3. If term1 and term2 are complex terms, then they match if and only if:

They have the same functor and arity.

All their corresponding arguments match

and the variable instantiations are compatible. (I.e. it is not possible to instantiate variable X to mia, when matching one pair of arguments, and to then instantiate X to vincent, when matching another pair of arguments.)

4. Two terms match if and only if it follows from the previous three clauses that they match.

Note the form of this definition. The first clause tells us when two constants match. The second term clause tells us when two terms, one of which is a variable, match: such terms will always match (variables match with anything). Just as importantly, this clause also tells what instantiations we have to perform to make the two terms the same. Finally, the third clause tells us when two complex terms match.

The fourth clause is also very important: it tells us that the first three clauses completely define when two terms match. If two terms can't be shown to match using Clauses 1-3, then they don't match. For example, batman does not match with daughter(ink). Why not? Well, the first term is a constant, the second is a complex term. But none of the first three clauses tell us how to match two such terms, hence (by clause 4) they don't match.

*/
point(X, Y).
line(point(X,Y), point(W,Z)).
vertical(line(point(X,Y), point(X,Z))).

