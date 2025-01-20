#include "enemy.h"
#include "player.h"
#include <iostream>

// initialize class's method from outside the class (that's why class::method())
int enemy::tkdmg(int dmg) {
	if (def == 0) { hp -= dmg; }
	else { 
		def -= dmg;
		if (def < 0) {
			hp += def; // player takes damage equal to the value of shield (which is negative)
			def = 0; // shield can't be negative
		}
	}
	if (hp <= 0) { is_alive = false; }
	return hp;
}
	
int enemy::heal(int heal) {
	hp += heal;
	return hp;
}

int enemy::defnd(int dfnd) {
	def += dfnd;
	return def;
}

void enemy::dealDmg(player& player) {
	player.tkdmg(atk);
	std::cout << nm << " attacks for " << atk << ", current life: " << player.get_hp() << std::endl;
}

void enemy::stats() {
	std::cout << "Name: " << nm << "\nHealth Points: " << hp << "\nAttack: " << atk << "\nDefense: " << def << std::endl;
}

enemy enemy::generate(int id, int dif) {
	std::string name = "";
	int hp = 0;
	int atk = 0;
	int def = 0;
	int spd = 0;
	
	switch (id) {
		case 1:
			name = "goblin";
			hp = 20;
			atk = 4;
			break;
		case 2:
			name = "orc";
			hp = 30;
			atk = 8;
			spd = -1;
			break;
		case 3:
			name = "imp";
			hp = 20;
			atk = 6;
			spd = 2;
			break;
	}
	
	enemy e(name, (hp * dif), (atk * dif), (def * dif), (spd * dif));
	return e;
}
