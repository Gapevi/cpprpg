#ifndef ITEMS_HPP
#define ITEMS_HPP
#include "player.h"
#include <iostream>
class items
{
private:
	int id;
	std::string name;
	std::string type; // use int ids if makes easier implementation
	int rarity;
	float gpValue; // value in gold (selling is 80% of that value)
	
public:
	items(int identity, std::string Name, std::string Type, int rare, float goldValue) :
		id(identity), name(Name), type(Type), rarity(rare), gpValue(goldValue) 
	{}
	
	int getId();
	int getRarity();
	float getValue();
	std::string getName();
	std::string getType();
	
	virtual ~items() = default;
	
	virtual void use(player& player) const = 0; // pure virtual function to be used by the children classes
	virtual void display();

};

#endif // ITEMS_HPP
