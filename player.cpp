#include <iostream>
#include "player.h"
#include "enemy.h"

int player::heal(int heal){
	currHp += heal;
	if (currHp > maxHp) { currHp = maxHp; }
	return currHp;
}

int player::tkdmg(int dmg) {
	currHp -= dmg;
	if (def == 0) { currHp -= dmg; }
	else {
		def -= dmg;
		if (def <= 0) {
			currHp -= def;
			def = 0;
		}
	}
	if (currHp <= 0) { is_alive = false; }
	return currHp;
}

int player::defend(int dfd) {
	def += dfd;
	return def;
}

void player::setatk(int set) {
	atk = set;
}

void player::attack(enemy& e) {
	e.tkdmg(atk);
	std::cout << "Foe took " << atk << " damage, foe's life: " << e.get_hp() << std::endl; 
}

void player::stats() {
	std::cout << "Current Health Points: " << currHp << " (Max Health Points: " << maxHp << ")\nAttack: " << atk << "\nDeffense: " << def << std::endl;
}
