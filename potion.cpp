#include "potion.hpp"

void potion::use(player& player) const {
	std::cout << "Used potion\n";
	player.heal(healQnt);
}

void potion::display() {
	items::display();
	std::cout << "Potion Heal: " << healQnt << "hp\n";
}

potion::~potion() {}
