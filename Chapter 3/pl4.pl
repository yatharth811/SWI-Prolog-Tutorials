byCar(auckland,hamilton).
byCar(hamilton,raglan).
byCar(valmont,saarbruecken).
byCar(valmont,metz).
 
byTrain(metz,frankfurt).
byTrain(saarbruecken,frankfurt).
byTrain(metz,paris).
byTrain(saarbruecken,paris).
 
byPlane(frankfurt,bangkok).
byPlane(frankfurt,singapore).
byPlane(paris,losAngeles).
byPlane(bangkok,auckland).
byPlane(losAngeles,auckland).


travel(X, Y, goByCar(X, Y)) :- byCar(X, Y).
travel(X, Y, goByTrain(X, Y)) :- byTrain(X, Y).
travel(X, Y, goByPlane(X, Y)) :- byPlane(X, Y).

travel(A, B, goByCar(A, C, D)) :- travel(A, C, goByCar(A, C)), travel(C, B, D).
travel(A, B, goByTrain(A, C, D)) :- travel(A, C, goByTrain(A, C)), travel(C, B, D).
travel(A, B, goByPlane(A, C, D)) :- travel(A, C, goByPlane(A, C)), travel(C, B, D).