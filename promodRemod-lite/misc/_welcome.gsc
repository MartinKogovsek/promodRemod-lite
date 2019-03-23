#include maps\mp\gametypes\_hud_util;
#include promod\_common;

welcomeText()
{
	[[level.on]]( "spawned", ::onPlayerConnect );
	level.welcome_sound = thread _general::welcomeSound();
	level.welcome_text = thread _general::welcomeText();
}

onPlayerConnect()
{
	if( isdefined( self.pers["player_welcomed"] ) )
	{
		return;
	}
	self.pers["player_welcomed"] = true;
	self thread welcomeMessage();
}

welcomeMessage()
{
	self endon ( "disconnect" );
	
	if(!isDefined(self.pers["wlced"]))
	{
		self.pers["wlced"] = true;
		hud[0] = self schnitzel( "center", 600, -110 );
		hud[0] setText(level.dvar["welcome_text"]);
		hud[0] moveOverTime( 10 );
		hud[0].x = -600;
		wait 3;
		hud[0] fadeOverTime( 1 );
		hud[0].alpha = 1;
		wait 1.5;
		if (level.welcome_sound == 1)
			self playLocalSound("welcome");
		wait 1.5;
		hud[0] fadeOverTime( 1 );
		hud[0].alpha = 0;
		wait 6;
		hud[0] destroy();
	}
}

schnitzel( align, x_off, y_off )
{
	hud = newClientHudElem(self);
    hud.foreground = true;
	hud.x = x_off;
	hud.y = y_off;
	hud.alignX = align;
	hud.alignY = "middle";
	hud.horzAlign = align;
	hud.vertAlign = "middle";
 	hud.fontScale = 1.8;
	hud.color = (1, 1, 1);
	hud.font = "objective";
	hud.glowColor = ( 0.000, 0.455, 0.851 );
	hud.glowAlpha = 1;
	hud.alpha = 0;
	hud.hidewheninmenu = true;
	hud.sort = 10;
	return hud;
}
