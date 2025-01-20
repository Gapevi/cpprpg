#ifndef PLAYER_H
#define PLAYER_H

class enemy;

class player {
	public:
		
		bool is_alive = true;
		
		int heal(int);
		int tkdmg(int);
		int defend(int);
		void attack(enemy& e);
		
		void stats();
		
		int get_spd() { return spd; };
		int get_hp() { return currHp; }
		
		void setatk(int);
		
		bool is_dead() { return !is_alive; }
		
		player(int max, int curr, int atack, int defense, int speed) :
			maxHp(max), currHp(curr), atk(atack), def(defense), spd(speed) 
		{ stats(); } 
		
	private:
		int maxHp;
		int currHp;
		int atk;
		int def;
		int spd;
};
#endif