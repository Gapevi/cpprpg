#ifndef WEAPON_HPP
#define WEAPON_HPP

#include <iostream>

#include "items.hpp"

class weapon : public items
{
	int atkpwr;
public:
	weapon(int idnty, const std::string& Name, int rare, float value, int Atk) :
		items(idnty, Name, "Weapon", rare, value), atkpwr(Atk) 
	{}
	
	void equip(player& player) const;
	void use(player& player) const override;
	void display() override;
	
	~weapon();

};

#endif // WEAPON_HPP
