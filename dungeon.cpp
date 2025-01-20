#include "dungeon.hpp"

void Dungeon::gen_enemies(int amount) {
	for (int i; i < amount; i++) {
		i = i;
		enemies.push_back(enemy::generate(1, difficulty));
	} 
	std::cout << "Enemies:\n" << std::endl;
	for (size_t index; index <= enemies.size(); index++) {
		std::cout << "Enemy " << index + 1 << ": ";
		enemy e = enemies[index];
		e.stats();
	}
}

Dungeon::Dungeon() {}

void Dungeon::generate() {
	gen_enemies(3);
}

Dungeon::~Dungeon() {}

