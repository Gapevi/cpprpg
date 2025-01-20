#ifndef INVENTORY_HPP
#define INVENTORY_HPP
#include <vector>
#include <iostream>
#include <memory>
#include "items.hpp"
#include "player.h"

#include "weapon.hpp"
#include "potion.hpp"

class inventory
{
private:
	std::vector<std::unique_ptr<items>> invItems;
public:
	void addItem(std::unique_ptr<items> newitem) { invItems.push_back(std::move(newitem)); };
	void useItem(int index, player& player);
	void rmvItem(int index);
	void displayItems();
	int findItemIndex(int itemId);
	bool searchItem(std::string type);
};

#endif // INVENTORY_HPP
