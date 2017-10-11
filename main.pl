:-include(adventure).


listThings(Place):-location(X,Place),name(X,Name),short_desc(X,Desc),write(Name),write(": "),write(Desc),nl,fail.
listThings(_).

isConnected(X,Y):-door(X,Y).
isConnected(X,Y):-door(Y,X).

listConnections(Place):-isConnected(Place,Y),short_desc(Y,Desc),write(Y),write(": "),write(Desc),nl,fail.
listConnections(_).

look(Place):-location(X,Place), name(Place,Y), short_desc(Y,Z), write("Location: "),nl, write(Y), write(", Description: "),write(Z),nl, write("Room Connections: "),nl,listConnections(Place), write("Contents of location: "),nl,listThings(Place),!.


study(Object):-name(Object,X),long_desc(Object,Y),write(X),write(": "),write(Y),nl,listThings(Object),!.