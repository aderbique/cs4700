fn main(){
	use std::io::{stdin,stdout,Write};

	let mut c=String::new();
	//let mut f ='x';
	let mut pack1 = 5.0;
	let mut pack2 = 3.0;
	let mut pack3 = 1.0;
	let mut pack4 = 4.0;
	let mut money = 0.0;
	
	println!("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nWelcome to the electronic cigarette machine.\n");
	println!("m - display menu options");
	println!("s - report the machine status");
	println!("d - drop in quarter");
	println!("b - check balance");
	println!("1 - pull the 1st knob");
	println!("2 - pull the 2nd knob");
	println!("3 - pull the 3rd knob");
	println!("4 - pull the 4th knob");
	println!("r - restock the machine");
	println!("q - quit the machine");

    loop {
    	println!("\n\nPlease enter a command: ");
		//c = String::new();
		let _=stdout().flush();
    	stdin().read_line(&mut c).expect("Did not enter a correct string");
    	//println!("You typed: {}",c);

    	c = c.trim().to_string();

		if c == "s" {
			println!("\n\n\n\n\n\n\nThe current status of our machine is: ");
			println!("There are {} packs of Lucky Strikes in slot 1",pack1);
			println!("There are {} packs of Camels in slot 2",pack2);
			println!("There 

				are {} packs of Gauloises in slot 3",pack3);
			println!("There are {} packs of Pall Malls in slot 4\n",pack4);
			println!("There is ${} in the machine.\n",money);
		}
		else if c == 'd'.to_string(){
			println!("You insert a quarter.");
			money=money + 0.25;
		}

		else if c == 'b'.to_string(){
			println!("You have ${} in the machine.",money);
		}

		else if c == '1'.to_string(){
			if money>=1.25 {
				println!("You pull the first knob.");
				if pack1 > 0.0 {
				money=money-1.25;
		                pack1=pack1-1.0;
		                println!("One pack of Lucky Strikes drops from the bottom of the machine");
		                }
		                else{
		                println!("There are no more Lucky Strikes in stock. Thank you for all your money anyways.");
				}
			}
			else{
		                println!("You don't have enough money. Thank you for your donation");

			}
		}

		else if c == '2'.to_string() {
			if money>=1.25 {
				println!("You pull the 2nd knob.");
				if pack2>0.0 {
				money=money-1.25;
		                pack2=pack2-1.0;
		                println!("One pack of Camels drops from the bottom of the machine");
		                }
		                else{
		                println!("There are no more Camels in stock. Thank you for all your money anyways.");
				}
			}
			else{
		                println!("You don't have enough money. Thank you for your donation");

			}
		}

		else if c == '3'.to_string(){
			if money>=1.25 {
				println!("You pull the 3rd knob.");
				if pack3>0.0 {
					money=money-1.25;
		            pack3=pack3-1.0;
		            println!("One pack of Gauloises drops from the bottom of the machine");
		        }
		        else{
		            println!("There are no more Gauloises in stock. Thank you for all your money anyways.");
				}
			}
			
			else {
		                println!("You don't have enough money. Thank you for your donation");
			}
		}

		else if c == '4'.to_string(){
			if money>=1.25 {
				println!("You pull the 4th knob.");
				if pack4>0.0 {
				money = money - 1.25;
				pack4 = pack4 -1.0;
				println!("One pack of Pall Malls drops from the bottom of the machine.");
				}
				else{
				println!("There are no more Pall Malls in stock. Thank you for all your money anyways.");
				}
			}
			else{
		                println!("You don't have enough money. Thank you for your donation");

			}
		}

		else if c == 'r'.to_string(){
			println!("A grouchy-looking attendent shows up, opens the back, fiddles around a bit, closes it, and leaves.");
			pack1=5.0;
			pack2=5.0;
			pack3=5.0;
			pack4=5.0;
			money=0.0;
		}
		else if c == 'q'.to_string(){
			println!("");
			break;
		}

		else if c == 'm'.to_string(){
	        println!("m - display menu options");
	        println!("s - report the machine status");
	        println!("d - drop in quarter");
	        println!("b - check balance");
	        println!("1 - pull the 1st knob");
	        println!("2 - pull the 2nd knob");
	        println!("3 - pull the 3rd knob");
	        println!("4 - pull the 4th knob");
	        println!("r - restock the machine");
	        println!("q - quit the machine");
	    }
	    else {
			println!("I don't know what you're saying...\n");
		}
	}

	println!("\n\n\n\n\n\n\nThanks for playing!!\n\n\n\n");
	println!("                          oooo$$$$$$$$$$$$oooo" );
	println!("                      oo$$$$$$$$$$$$$$$$$$$$$$$$o" );
	println!("                   oo$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o         o$   $$ o$" );
	println!("   o $ oo        o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$o       $$ $$ $$o$" );
	println!("oo $ $ $      o$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$o       $$$o$$o$" );
	println!("$$$$$$o$     o$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$o    $$$$$$$$" );
	println!("  $$$$$$$    $$$$$$$$$$$      $$$$$$$$$$$      $$$$$$$$$$$$$$$$$$$$$$$" );
	println!(" $$$$$$$$$$$$$$$$$$$$$$$    $$$$$$$$$$$$$    $$$$$$$$$$$$$$        $$$" );
	println!("     $$$        $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$" );
	println!("    $$$   o$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$o" );
	println!("   o$$     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$       $$$o" );
	println!("   $$$    $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     $$$$$$ooooo$$$$o" );
	println!("  o$$$oooo$$$$$  $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$   o$$$$$$$$$$$$$$$$$" );
	println!("  $$$$$$$$  $$$$   $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$     $$$$                " );
	println!("            $$$$      $$$$$$$$$$$$$$$$$$$$$$$$$$$$        o$$$" );
	println!("              $$$o           $$$$$$$$$$$$$$$$$$  $$           $$$" );
	println!("              $$$o            $$    $$$$$$                   o$$$" );
	println!("               $$$$o                                o$$$  " );
	println!("                  $$$$o      o$$$$$$o  $$$$o        o$$$$" );
	println!("                    $$$$$oo         $$$$o$$$$$o   o$$$$     " );
	println!("                         $$$$$oooo    $$$o$$$$$$$$       " );
	println!("                            $$$$$$$oo $$$$$$$$$$" );
	println!("                                        $$$$$$$$$$$" );
	println!("                                    $$$$$$$$$$$$" );
	println!("                                     $$$$$$$$$$  " );
	println!("                                        $$$     " );
}
