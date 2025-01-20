#include "turn.hpp"
#include <iostream>
#include <limits>

void turns(player& p, enemy& e, inventory& i) {
	bool turn_end = false;
	bool is_first_turn = true;
	
	while (!turn_end) {
		if (p.get_spd() >= e.get_spd() && is_first_turn) {
			std::cout << "You go first"; 
			player_turn(p, i, e);
		}
		else {
			enemy_turn(e, p);
			if (p.is_dead()) {
				std::cout << "YOU DIED YOU NOOB LOL LMAO" << std::endl;
				break;
			}
			player_turn(p, i, e);
		}
		
		is_first_turn = false;
	}
}

void player_turn(player& p, inventory& i, enemy& e) {
	int res;
	
	std::cout << "\nPlayer's turn!\n";
	
	std::cout << "Watcha gonna do?\n"
			  << "1 - Attack\n"
			  << "2 - Use potion\n"
			  << "3 - Skip turn\n"
			  << std::endl;
			  
	std::cin >> res;
	
	if (std::cin.fail()) {
		std::cin.clear(); // clear error flag
		std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
		std::cout << "INVALID! INVALID! INVALID!" << std::endl;
	}
	else {
		switch (res) {
			case 1:
				std::cout << "Ya typed 1\n";
				p.attack(e);
				break;
			case 2:
				if (i.searchItem("Potion")) {
					int index = i.findItemIndex(2);
					i.useItem(index, p);
				}
				break;
			case 3:
				break;
		}
	}
}

void enemy_turn(enemy& e, player& p) {
	std::cout << "\nEnemy's turn!\n";
	e.dealDmg(p);
}
