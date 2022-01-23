/*
the :- means implication (if), the , means conjunction (and), and the ; means disjunction (or)
*/
happy(vincent).
listensToMusic(butch).
playsAirGuitar(vincent):-  
   listensToMusic(vincent),  
   happy(vincent).
playsAirGuitar(butch):-  
   happy(butch);
   listensToMusic(butch).
