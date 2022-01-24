/*
Answers to exercise 2.1
Author: Yatharth Kumar
bread = bread -> yes

'Bread' = bread -> no

'bread' = bread -> yes

Bread = bread -> yes

bread = sausage -> np

food(bread) = bread -> no

food(bread) = X -> yes

food(X) = food(bread) -> yes

food(bread,X) = food(Y,sausage) -> yes

food(bread,X,beer) = food(Y,sausage,X) -> no

food(bread,X,beer) = food(Y,kahuna_burger) -> no

food(X) = X -> yes

meal(food(bread),drink(beer)) = meal(X,Y) -> yes

meal(food(bread),X) = meal(X,drink(beer)) -> no
*/