init()
{
	[[level.on]]( "spawned", ::onPlayerSpawn );

	level.drawAccuracyHud = ::drawAccuracyHud;
	level.getAccuracy = ::getAccuracy;
	level.destoyAccuracyHud = ::destoyAccuracyHud;
}

onPlayerSpawn()
{
	self [[level.drawAccuracyHud]]();
}


drawAccuracyHud()
{
	self endon("disconnect");
	self endon("death");
	self endon("joined_spectators");

	[[level.destoyAccuracyHud]]();

	self.HUD_Acc = newClientHudElem( self );
	self.HUD_Acc.alpha = 0;
	//self.HUD_Acc.foreGround = false;
	self.HUD_Acc.x = 8;
	self.HUD_Acc.y = 127;
	self.HUD_Acc.horzAlign = "left";
	self.HUD_Acc.vertAlign = "top";
	self.HUD_Acc.alignX = "left";
	self.HUD_Acc.alignY = "middle";
	if(!level.hudFadeIn)
		if(level.gametype == "sd")
			level waittill("strat_over");
		else
			level waittill("x_strat_over");
	self.HUD_Acc FadeOverTime( 1 );
	self.HUD_Acc.alpha = 0.8;
	self.HUD_Acc.fontScale = 1.4;
	self.HUD_Acc.hidewheninmenu = true;
	self.HUD_Acc.label = ( &"Accuracy " );
	self.HUD_Acc.glowAlpha = 1;
	self.HUD_Acc.glowColor = (0.000, 0.455, 0.851);

	acc = 0;
	while(1)
	{
		if(level.hudFadeOut){
			self.HUD_Acc FadeOverTime( 1 );
			self.HUD_Acc.alpha = 0;
		}
		accnew = [[level.getAccuracy]]();
		if( acc != accnew )
			acc = accnew;
		self.HUD_Acc SetText( acc + " pct" );
		wait .05;
	}
	if(level.hudFadeOut){
		self.HUD_Acc FadeOverTime( 1 );
		self.HUD_Acc.alpha = 0;
	}
}

destoyAccuracyHud()
{
	if(isDefined( self.HUD_Acc )){
		self.HUD_Acc FadeOverTime( 1 );
		self.HUD_Acc.alpha = 0;
		self.HUD_Acc destroy();
	}
}

getAccuracy()
{
	acc = 0;
	if( isDefined( self.pers["shots"] ) && self.pers["shots"] > 0 && IsDefined( self.pers["hits"] ))
		acc = int( self.pers["hits"] / self.pers["shots"] * 10000 ) / 100;
	return acc;
}