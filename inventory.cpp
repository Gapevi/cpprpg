#include "inventory.hpp"
#include "player.h"
#include <iostream>
#include <algorithm>

void inventory::rmvItem(int index) {
	if (index >= 0 && static_cast<size_t>(index) < invItems.size()) {
		invItems.erase(invItems.begin() + index);
	}
	else { std::cerr << "Index out of bounds\n" << std::endl; }
}

void inventory::useItem(int index, player& player) {
	if (index >= 0 && static_cast<size_t>(index) < invItems.size()) {
		invItems[index]->use(player);
	}
	else { std::cout << "Index out of bounds\n" << std::endl; }
}

void inventory::displayItems() {
	//if (invItems.empty()) { std::cout << "The inventory is empty\n"; } 
	//else {
	for (auto& item : invItems) {
		item->display();
	}
	//}
}

bool inventory::searchItem(std::string type) {
	bool is_there = false;
	for (auto& item : invItems) {
		if (item->getType() == type) {
			is_there = true;
		}
	}
	return is_there;
}

int inventory::findItemIndex(int itemId) {
	auto it = std::find_if(invItems.begin(), invItems.end(),
	[itemId](const std::unique_ptr<items>& item) {
		return item->getId() == itemId;
	});
	
	if (it != invItems.end()) {
		return std::distance(invItems.begin(), it); // return the index
	}
	else { return -1; } // index not found
}

