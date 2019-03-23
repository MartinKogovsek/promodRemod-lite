#include maps\mp\_utility;
#include maps\mp\gametypes\_hud_util;
#include promod\_common;

init(type)
{
	for( ;; )
	{
		level waittill( "connecting", player );
		player thread settingsOnSpawn();
	}
}
settingsOnSpawn()
{
	self endon ( "disconnect" );
	while( 1 )
	{
		self waittill( "spawned_player" );
		self setClientDvar("menu", 0);
		self promod\_common::clientCmd("bind O openscriptmenu -1 menu");
		self thread settingsResponse();
	}
}
settingsResponse()
{
	self endon("disconnect");
	level endon ("vote started");
	for(;;)
	{
		self waittill("menuresponse", menu, response);
		if(response == "menu")
		{	
			self openMenu("mod_settings");
		}
	}
}