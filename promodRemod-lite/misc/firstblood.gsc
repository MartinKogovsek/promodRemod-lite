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
	
		if ( level.numKills == 1 )
			self firstBlood();

	victim.lastKilledBy = self;		
}

firstBlood(){
	thread playSoundOnPlayers("firstblood");
}

