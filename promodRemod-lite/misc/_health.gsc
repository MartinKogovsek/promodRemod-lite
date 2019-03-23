#include maps\mp\gametypes\_hud_util;

init()
{
	level.hppos = self thread _general::advertisement();

	while( 1 )
	{
		level waittill( "connected", player );
		player thread numerical_health();
	}
}
 
numerical_health()
{
	self endon( "disconnect" );
	level endon ("vote started");
 
	while( !isPlayer( self ) || !isAlive( self ) )
		wait( 0.05 );
 
	self.hp = newClientHudElem( self );
	self.hp.alignX = "center";
	self.hp.alignY = "bottom";
	self.hp.horzAlign = "center";
	self.hp.vertAlign = "bottom";
	self.hp.x = 0;
	if(level.hppos == 0)
		self.hp.y = -0;
	else
		self.hp.y = -12;
	self.hp.font = "objective";
	self.hp.fontScale = 1.4;
	self.hp.color = ( 0.498, 0.859, 1.000 );
	self.hp.alpha = 0;

	if(!level.hudFadeIn)
		if(level.gametype == "sd")
			level waittill("strat_over");
		else
			level waittill("x_strat_over");

	self.hp FadeOverTime( 1 );
	self.hp.alpha = 0.6;

	self.hp.glowColor = ( 0.498, 0.859, 1.000 );
	self.hp.glowAlpha = 1;

	self.hp.label	 = &"Health: &&1";
	self.hp.hideWhenInMenu = true;
	self.hp.foreGround = true;
	
	level endon ("vote started");
	level endon("hud_fadeOut");

	while( self.health > 0 )
	{
		self.hp setValue( self.health );
		self.hp.glowColor = ( 1 - ( self.health / self.maxhealth ), self.health / self.maxhealth, 0 );
		wait( 0.05 );
		if(level.hudFadeOut){
			self.hp FadeOverTime( 1 );
			self.hp.alpha = 0;
		}

	}
 
	if( isDefined( self.hp ) )
		self.hp destroy();
 
	self thread numerical_health();
}

