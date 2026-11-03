:- dynamic letter/1.
letter(a).
letter(b).
letter(c).

start:- 
write("Hi. This is the Name Game"),nl,
write("in which you will add, delete"),nl,
write("or move to create your name."),nl,nl,
menu.

menu :-
write("1- Display the current set of letters"),nl,
write('2- Add a letter'), nl,
write('3- Add a letter at the top'), nl,
write('4- Add a letter at the bottom'), nl, 
write('5- Delete a letter'), nl, 
write('6- Delete all letters'), nl, 
write('7- Exit'), nl, nl,
write('-->> Enter your choice: '),
read(X),
option(X).

option(1):- 
listing(letter),
menu.

option(2):-
write("enter a letter"),
read(L),
assert(letter(L)),
menu.

option(3):-
write("enter a letter to the top"),
read(L),
asserta(letter(L)),
menu.

option(4):-
write("enter a letter to the bottom"),
read(L),
assertz(letter(L)),
menu.

option(5):-
write("enter a letter to delete"),
read(L),
retract(letter(L)),
menu.


option(6):-
retractall(letter(_)),
write("all letters are deleted"),nl,nl,
menu.

option(7):-
write("End").


    