/*
Answers to exercise 2.2
Author: Yatharth Kumar

?- magic(house_elf). -> false

?- wizard(harry). -> false

?- magic(wizard). -> false

?- magic('McGonagall'). -> true

?- magic(Hermione). -> true

*/


house_elf(dobby).
witch(hermione).
witch('McGonagall').
witch(rita_skeeter).
magic(X):-house_elf(X).
magic(X):-wizard(X).
magic(X):-witch(X).
