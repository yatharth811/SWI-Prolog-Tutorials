/*
Here is KB4, our fourth knowledge base:
*/

woman(mia).
woman(jody).
woman(yolanda).
 
loves(vincent,mia).
loves(marcellus,mia).
loves(pumpkin,honey_bunny).
loves(honey_bunny,pumpkin).
/*
Now, this is a pretty boring knowledge base. There are no rules, only a collection of facts. Ok, we are seeing a relation that has two names as arguments for the first time (namely the loves relation), but, let's face it, that's a rather predictable idea.

No, the novelty this time lies not in the knowledge base, it lies in the queries we are going to pose. In particular, for the first time we're going to make use of variables. Here's an example:

?- woman(X).
The X is a variable (in fact, any word beginning with an upper-case letter is a Prolog variable, which is why we had to be careful to use lower-case initial letters in our earlier examples). Now a variable isn't a name, rather it's a ``placeholder'' for information. That is, this query essentially asks Prolog: tell me which of the individuals you know about is a woman.

Prolog answers this query by working its way through KB4, from top to bottom, trying to match (or unify) the expression woman(X) with the information KB4 contains. Now the first item in the knowledge base is woman(mia). So, Prolog matches X to mia, thus making the query agree perfectly with this first item. (Incidentally, there's a lot of different terminology for this process: we can also say that Prolog instantiates X to mia, or that it binds X to mia.) Prolog then reports back to us as follows:

X = mia
That is, it not only says that there is information about at least one woman in KB4, it actually tells us who she is. It didn't just say ``yes'', it actually gave us the variable binding, or instantiation that led to success.

But that's not the end of the story. The whole point of variables --- and not just in Prolog either --- is that they can ``stand for'' or ``match with'' different things. And there is information about other women in the knowledge base. We can access this information by typing the following simple query

?-  ;
Remember that ; means or, so this query means: are there any more women? So Prolog begins working through the knowledge base again (it remembers where it got up to last time and starts from there) and sees that if it matches X with jody, then the query agrees perfectly with the second entry in the knowledge base. So it responds:

X = jody
It's telling us that there is information about a second woman in KB4, and (once again) it actually gives us the value that led to success. And of course, if we press ; a second time, Prolog returns the answer

X = yolanda
But what happens if we press ; a third time? Prolog responds ``no''. No other matches are possible. There are no other facts starting with the symbol woman. The last four entries in the knowledge base concern the love relation, and there is no way that such entries can match a query of the form of the form woman(x).

Let's try a more complicated query, namely

  loves(marcellus,X),woman(X).
Now, remember that , means and, so this query says: is there any individual X such that Marcellus loves X and X is a woman? If you look at the knowledge base you'll see that there is: Mia is a woman (fact 1) and Marcellus loves Mia (fact 5). And in fact, Prolog is capable of working this out. That is, it can search through the knowledge base and work out that if it matches X with Mia, then both conjuncts of the query are satisfied (we'll learn in later lectures exactly how Prolog does this). So Prolog returns the answer

X = mia
This business of matching variables to information in the knowledge base is the heart of Prolog. For sure, Prolog has many other interesting aspects --- but when you get right down to it, it's Prolog's ability to perform matching and return the values of the variable binding to us that is crucial.

*/