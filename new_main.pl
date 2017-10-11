:-include(adventure).

#######################################
here(bedroom).

teleport(Location):-retract(here(_)),asserta(here(Location)).

can_move(Location):-here(X),door(X,Location).
can_move(Location):-here(X),door(Location,X).
move(Location):-can_move(Location),retract(here(_)),asserta(here(Location)).

list_inventory:-has(X),write(X),nl,fail; true.
inventory:-write("Contents in inventory are:"),nl,list_inventory().

put(X):-has(X),retract(has(X)),here(Y),asserta(location(X,Y)).
take(X):-here(Y),location(X,Y),retract(location(X,Y)),asserta(has(X)).



%room connections are symmetric
connection(X,Y):-door(X,Y).
connection(X,Y):-door(Y,X).

%Write only the first name or description found
write_name(Object):-name(Object,N),write(N),!.
write_short(Object):-short_desc(Object,Desc),write(Desc),!.
write_long(Object):-long_desc(Object,Desc),write(Desc),!.

%List out all child objects of a location (may be a room or a container
list_things(Place):-location(X,Place),tab(2),write_name(X),write(" -"),tab(1),write_short(X),nl,fail.
list_things(_).

%List out all connections of a room
list_connections(Place):-connection(X,Place),tab(2),write_name(X),write(" -"),tab(1),write_short(X),nl,fail.
list_connections(_).

%Unchecked (always successful) version of look action
search(Place):-room(Place),write_name(Place),write(" :"),nl,write_long(Place),nl,
write('You see: '),nl,list_things(Place),write('You can go to: '),nl,list_connections(Place),!.
search(Container):-container(Container),write_name(Container),write(" :"),nl,write_short(Container),nl,write("It seems there may be something inside."),!.
search(Thing):-write_name(Thing),write(" :"),nl,write_short(Thing),!.

%Look with no arguments means look here.
look:-here(Place),search(Place).
look(Location):-here(Location),search(Location).

%Unchecked (always successful) version of study action
can_study(Place):-room(Place),look(Place),!.
can_study(Container):-container(Container),write_name(Container),write(" :"),nl,write_long(Container),nl,list_things(Container),!.
can_study(Thing):-write_name(Thing),write(" :"),nl,write_long(Thing),!.

study(X):-location(X,here(_)),can_study(X).
study(X):-here(X),can_study(X).

%allows prefix notation so 'look bedroom.' is the same as 'look(bedroom).'
:-op(40,fx,look).
:-op(45,fx,study).
