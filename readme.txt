Use new_main.pl
This was week.pl with additions for the third prolog assignment.
A01967241 10/26/17
CS4700


Entry Point: run.
Game loop works. If you change the has_won  on line 42 of main.pl,
you will see that the loop does not run.

Options for exiting otherwise are quit, exiting


All commands work fine. Go outside works.



----------------------------------------------------------




teleport(secret_lab).
transfer(small_disk,pylon_a,pylon_b). #Or this convention
has_won(). #To see if you have won. Message will be displayed automatically on last move
make_item(potion). #Uncomment lines 6-8 and use teleport(chemistry_lab). before doing make_item(potion).
