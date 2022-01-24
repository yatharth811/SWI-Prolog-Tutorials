/*
Answer to exercise 3.4
Author: Yatharth Kumar
*/

child(martha,charlotte).
child(charlotte,caroline).   
child(caroline,laura).   
child(laura,rose).

descend(X,Y) :- child(X,Y).
descend(X,Y) :- descend(X,Z),  
                descend(Z,Y).

% Loop in false case. Stack limit reached. 
/*
If we call descend(rose, martha), then first it will check for child(rose, martha) which is false and hence it redos the descend(rose, martha) with recursive definition, now it will first check descend(rose, _somevariable) then again similar thing will happen and it will keep doing this until stack limit is reached.
*/