#ifndef ENEMY_H
#define ENEMY_H
#include <iostream>

class player;

class enemy {
	public:
		
		bool is_alive = true;
		
		int tkdmg(int);
		int heal(int);
		int defnd(int);
		void stats();
		void dealDmg(player&); // The ampercent is necessary so the program doesn't pass a copy of the variable
		
		int get_spd() { return spd; };
		int get_hp() { return hp; }
		
		bool is_dead() { return !is_alive; }
		
		static enemy generate(int id, int dif);
		
		enemy(std::string name, int health, int attack = 0, int defense = 0, int speed = 0) : 
		nm(name), // because you can't use the same variables on the constructor,
		hp(health), // you say to the compiler that this other variables are equivalent
		atk(attack), // to the matching attributes to set them as that variables
		def(defense),
		spd(speed)
		{
			std::cout << "A wild " << nm << " just appeared!" << std::endl;
		} // constructor that initializes the variables
		// the var(VAR) basically says hp is the same as health, so when enemy(50, 0, 0) set hp to health which is 50
		// enemy goblin(hp, atk, def)
		
	private:
		std::string nm;
		int hp;
		int atk;
		int def;
		int spd;
		int id;
		int difficulty;
};
#endif