//Austin Derbique
//A01967241
//CS 1400
#include <iostream>
#include <iomanip>

using namespace std;

int main(){

	char c='x';
	float f='x';
	float pack1=5;
	float pack2=3;
	float pack3=1;
	float pack4=4;
	float money=0;
	cout << "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWelcome to the electronic cigarette machine.\n\n";
	cout << "m - display menu options\n";
	cout << "s - report the machine status\n";
	cout << "d - drop in quarter\n";
	cout << "b - check balance\n";
	cout << "1 - pull the 1st knob\n";
	cout << "2 - pull the 2nd knob\n";
	cout << "3 - pull the 3rd knob\n";
	cout << "4 - pull the 4th knob\n";
	cout << "r - restock the machine\n";
	cout << "q - quit the machine\n";
        while(c!='q'){

	cin >> c;

	switch(c){
	case 's':
		cout << "\n\n\n\n\n\n\nThe current status of our machine is: " << endl;
		cout << "There are " << pack1 << " packs of Lucky Strikes in slot 1" << endl;
		cout << "There are " << pack2 << " packs of Camels in slot 2" << endl;
		cout << "There are " << pack3 << " packs of Gauloises in slot 3" << endl;
		cout << "There are " << pack4 << " packs of Pall Malls in slot 4\n" << endl;
		cout << fixed << setprecision(2) <<  "There is $" << money << " in the machine.\n" << endl;
		break;
	case 'd':
		cout << "You insert a quarter.\n";
		money=money + .25;
		break;
	case 'b':
	cout << "You have $" << fixed << setprecision(2) << money << " in the machine.\n" << endl;
		break;
	case '1':
	if(money>=1.25){
		cout << "You pull the first knob.\n";
		if(pack1>0){
		money=money-money;
                pack1=pack1-1;
                cout << "One pack of Lucky Strikes drops from the bottom of the machine\n" << endl;
                }
                else{
                cout << "There are no more Lucky Strikes in stock. Thank you for all your money anyways.\n" << endl;
		}
	}
	else if(money<1.25){
		cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;
	}
	else{
                cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;

	}
		break;
	case '2':
	if(money>=1.25){
		cout << "You pull the 2nd knob.\n";
		if(pack2>0){
		money=money-money;
                pack2=pack2-1;
                cout << "One pack of Camels drops from the bottom of the machine\n" << endl;
                }
                else{
                cout << "There are no more Camels in stock. Thank you for all your money anyways.\n" << endl;
		}
	}
	else if(money<1.25){
		cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;
	}
	else{
                cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;

	}
		break;
	case '3':
	if(money>=1.25){
		cout << "You pull the 3rd knob.\n";
		if(pack3>0){
		money=money-money;
                pack3=pack3-1;
                cout << "One pack of Gauloises drops from the bottom of the machine\n" << endl;
                }
                else{
                cout << "There are no more Gauloises in stock. Thank you for all your money anyways.\n" << endl;
		}
	}
	else if(money<1.25){
                cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;
	}
	else{
                cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;

	}
		break;
	case '4':
	if(money>=1.25){
		cout << "You pull the 4th knob.\n";
		if(pack4>0){
		money=money-money;
		pack4=pack4-1;
		cout << "One pack of Pall Malls drops from the bottom of the machine\n" << endl;
		}
		else{
		cout << "There are no more Pall Malls in stock. Thank you for all your money anyways.\n" << endl;
		}
	}
	else if(money<1.25){
                cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;
	}
	else{
                cout << "You don't have enough money. Thank you for your donation ;)\n" << endl;

	}
		break;
	case 'r':
		cout << "A grouchy-looking attendent shows up, opens the back, fiddles around a bit, closes it, and leaves.";
		pack1=5;
		pack2=5;
		pack3=5;
		pack4=5;
		money=0;

		break;
	case 'q':
		cout << "";
		break;
	case 'm':
        cout << "m - display menu options\n";
        cout << "s - report the machine status\n";
        cout << "d - drop in quarter\n";
        cout << "b - check balance\n";
        cout << "1 - pull the 1st knob\n";
        cout << "2 - pull the 2nd knob\n";
        cout << "3 - pull the 3rd knob\n";
        cout << "4 - pull the 4th knob\n";
        cout << "r - restock the machine\n";
        cout << "q - quit the machine\n";
		break;
	default:
		cout << "I don't know what you're saying...\n";


	}
	}
		cout << "\n\n\n\n\n\n\nThanks for playing!!\n\n\n\n";
cout << "" << endl;
cout << "" << endl;
cout << "                          oooo$$$$$$$$$$$$oooo" << endl;
cout << "                      oo$$$$$$$$$$$$$$$$$$$$$$$$o" << endl;
cout << "                   oo$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o         o$   $$ o$" << endl;
cout << "   o $ oo        o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o       $$ $$ $$o$" << endl;
cout << "oo $ $ $      o$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$o       $$$o$$o$" << endl;
cout << "$$$$$$o$     o$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$o    $$$$$$$$" << endl;
cout << "  $$$$$$$    $$$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$$$$$$$$$$$$$$" << endl;
cout << " $$$$$$$$$$$$$$$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$$$$$$  \"\"\"$$$" << endl;
cout << "   \"$$$\"\"\"\"$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     \"$$$" << endl;
cout << "    $$$   o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     \"$$$o" << endl;
cout << "   o$$\"   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$o" << endl;
cout << "   $$$    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$\" \"$$$$$$ooooo$$$$o" << endl;
cout << "  o$$$oooo$$$$$  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   o$$$$$$$$$$$$$$$$$" << endl;
cout << "  $$$$$$$$\"$$$$   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     $$$$\"\"\"\"\"\"\"\"" << endl;
cout << " """"       $$$$    \"$$$$$$$$$$$$$$$$$$$$$$$$$$$$\"      o$$$" << endl;
cout << "            \"$$$o     \"\"\"$$$$$$$$$$$$$$$$$$\"$$\"         $$$" << endl;
cout << "              $$$o          \"$$\"\"$$$$$$\"\"\"\"           o$$$" << endl;
cout << "               $$$$o                                o$$$\"" << endl;
cout << "                \"$$$$o      o$$$$$$o\"$$$$o        o$$$$" << endl;
cout << "                  \"$$$$$oo     \"\"$$$$o$$$$$o   o$$$$\"\" " << endl;
cout << "                     \"\"$$$$$oooo  \"$$$o$$$$$$$$\"\"\" " << endl;
cout << "                        \"\"$$$$$$$oo $$$$$$$$$$" << endl;
cout << "                                \"\"\"\"$$$$$$$$$$$" << endl;
cout << "                                    $$$$$$$$$$$$" << endl;
cout << "                                     $$$$$$$$$$\"" << endl;
cout << "                                      \"$$$\"\" " << endl;
cout << "" << endl;
	return 0;

}
