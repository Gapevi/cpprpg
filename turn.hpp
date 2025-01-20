#ifndef TURN_HPP
#define TURN_HPP
#include <iostream>
#include "enemy.h"
#include "player.h"
#include "inventory.hpp"

void turns(player& p, enemy& e, inventory& i);
void player_turn(player& p, inventory& i, enemy& e);
void enemy_turn(enemy& e, player& p);
void search_for_type(std::string type, inventory& i);

#endif // TURN_HPP
