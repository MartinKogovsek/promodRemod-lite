#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;

killedPlayer( victim, weapon, meansOfDeath )
{
	//if(victim.team == self.team)
	//return;
	victimGuid = victim.guid;
	myGuid = self.guid;
	curTime = getTime();

	self.lastKillTime = getTime();
	self.lastKilledPlayer = victim;

	self.modifiers = [];

	level.numKills++;
	
	if ( level.numKills == 1 ){
		iprintln("^1Firstblood!");
		iprintln("^1" + victim.name + "^3 died first!");
		self firstBlood();
	}

	victim.lastKilledBy = self;		
}

firstBlood(){
	if(_general::firstBloodSound() == 1){
		thread playSoundOnPlayers("firstblood");
	}	
}

