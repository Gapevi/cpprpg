#ifndef DUNGEON_HPP
#define DUNGEON_HPP
#include "enemy.h"
#include "player.h"
#include <vector>
#include <string>

class Dungeon
{
public:
	Dungeon();
	~Dungeon();
	void generate();
	void gen_enemies(int amount);
	
	void set_dif(int dif) { difficulty = dif; }
	
private:
	int difficulty;
	std::vector<enemy> enemies;
};

#endif // DUNGEON_HPP
