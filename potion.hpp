#ifndef POTION_HPP
#define POTION_HPP
#include "items.hpp"
#include "player.h"

class potion : public items
{
	int healQnt;
public:
	potion(int idnt, const std::string& Name, int rare, float value, int heal) :
		items(idnt, Name, "Potion", rare, value), healQnt(heal)
	{}
	
	void use(player& player) const override;
	void display() override;
	
	~potion();

};

#endif // POTION_HPP
