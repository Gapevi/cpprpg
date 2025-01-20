#include <stdio.h>
#include <iostream>
#include "enemy.h"
#include "player.h"
#include "inventory.hpp"
#include "items.hpp"
#include "turn.hpp"
#include "dungeon.hpp"

void turnbasedcombat();

enemy goblin("goblin", 20, 4); // name, life, atk, def, spd
player p(30, 30, 5, 0, 1); // max life, curr life, atk, def, spd
inventory inv;


int main(int argc, char **argv){
Dungeon dungeon;

	dungeon.generate();
	
}
