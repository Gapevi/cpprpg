#include "weapon.hpp"
#include "player.h"

void weapon::equip(player& player) const {
	std::cout << "Weapon is equiped" << std::endl;
	player.setatk(atkpwr);
}

void weapon::use(player& player) const {
	equip(player); // using a weapon is same as equiping it
}

void weapon::display() {
	items::display();
	std::cout << "Attack Power: " << atkpwr << std::endl;
}

weapon::~weapon() {}

