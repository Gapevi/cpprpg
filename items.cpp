#include "items.hpp"
#include <iostream>

int items::getId() {
	return id;
}

int items::getRarity() {
	return rarity;
}

float items::getValue() {
	return gpValue;
}

std::string items::getName() {
	return name;
}

std::string items::getType() {
	return type;
}

void items::display() {
	std::cout << "\nItem Name: " << name 
			  << ", Item Type: " << type << std::endl
			  << "Item ID: " << id 
			  << ", Item Rarity: " << rarity << std::endl
			  << "Item Buy Value: " << gpValue << "gp"
			  << ", Item Sell Value: " << gpValue * 0.8 << "gp\n";
}
