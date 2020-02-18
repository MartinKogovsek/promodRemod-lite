//TODO: create one fuction and call gradients
#include maps\mp\gametypes\_hud_util;
#include promod\_common;

init(){
	level.adsback = thread _general::advertisement();
	level.overlay = thread _general::overlay();
	level.health = thread _general::health();
	level.kdratio = thread _general::kdRatio();
	level.accuracy = 2;

	self thread hudBck();

	if(level.gametype == "sd"){
		if(level.adsback > 0 ){
			self waittill( "spawned_player" );
			if(!level.strat_over)
				self waittill("strat_over");
			self thread advertisement();
		}
	}
	else{self waittill("x_strat_over"); self thread advertisement();}
}

advertisement(){
	while(true){
		self hudmsg("Welcome to promodRemod server . . . Enjoy your stay!"); wait 0.1;
		self hudmsg("Open mod settings by pressing ( ^3O^7 ) and setup your preferences."); wait 0.1;
        self hudmsg("The mod project is available on github, you are welcome to contribute."); wait 0.1;
        self hudmsg("This server is running promodRemod v1.2"); wait 0.1;
	}
}
hudmsg(text) {
	msg = addTextHud( self, 750, 473, 1, "left", "middle", undefined, undefined, 1.6, 888 );
	msg SetText(text);
	msg.sort = 102;
	msg.font = "default";
	msg.foreground = 1;
	msg.hideWhenInMenu = true;
	msg.archived = true;
    msg.alpha = 0;
    msg FadeOverTime( 1 );
	msg.alpha = 0.6;
	msg.fontScale = 1.4;
	//self.msg.color = ( 0, .99, .0 );
	msg.glowAlpha = 1;
    msg.glowColor = (0.000, 0.455, 0.851);
	msg MoveHud(30,-1300);
	wait 20;
	msg destroy();
}

hudBck(){
// health background
	self.hb = newHudElem();
	self.hb.alignx = "center";
	self.hb.alignY = "bottom";
	self.hb.horzAlign = "center";
	self.hb.vertAlign = "bottom";
	self.hb.x = 0;
	if(level.adsback == 0)
		self.hb.y = -1;
	else
		self.hb.y = -13;
	self.hb.sort = 1001;
	self.hb setShader("popmenu_bg", 250, 15);
	self.hb.alpha = 0;
	self.hb.glowAlpha = 1;
	self.hb.color = ( 0.067, 0.067, 0.067 );
	self.hb.foreGround = false;
	self.hb.hideWhenInMenu = true;

// ads text bck
	self.ads = newHudElem();
	self.ads.alignx = "center";
	self.ads.alignY = "bottom";
	self.ads.horzAlign = "center";
	self.ads.vertAlign = "bottom";
	self.ads.x = 0;
	self.ads.y = 0;
	self.ads.sort = 1001;
	self.ads setShader("black", 900, 14);
	self.ads.alpha = 0;
	self.ads.glowAlpha = 1;
	self.ads.color = ( 0.067, 0.067, 0.067 );
	self.ads.foreGround = false;
	self.ads.hideWhenInMenu = true;
	
// counter, z_c_r background
	self.ctr = newHudElem();
	self.ctr.alignx = "left";
	self.ctr.alignY = "bottom";
	self.ctr.horzAlign = "left";
	self.ctr.vertAlign = "bottom";
	self.ctr.x = -220;
	self.ctr.y = -13;
	self.ctr.sort = 1001;
	self.ctr setShader("popmenu_bg", 500, 15);
	self.ctr.alpha = 0;
	self.ctr.glowAlpha = 1;
	self.ctr.color = ( 0.067, 0.067, 0.067 );
	self.ctr.foreGround = false;
	self.ctr.hideWhenInMenu = true;
	
// ammo hud - background
    self.ammo = newHudElem();
	self.ammo.alignx = "right";
	self.ammo.alignY = "bottom";
	self.ammo.horzAlign = "right";
	self.ammo.vertAlign = "bottom";
	self.ammo.x = 220;
	self.ammo.y = -13;
	self.ammo.sort = 1001;
	self.ammo setShader("popmenu_bg", 500, 15);
	self.ammo.alpha = 0;
	self.ammo.glowAlpha = 1;
	self.ammo.color = ( 0.067, 0.067, 0.067 );
	self.ammo.foreGround = false;
	self.ammo.hideWhenInMenu = true;
		
// ammo hud - background upper part
    self.ammoup = newHudElem();
	self.ammoup.alignx = "right";
	self.ammoup.alignY = "bottom";
	self.ammoup.horzAlign = "right";
	self.ammoup.vertAlign = "bottom";
	self.ammoup.x = 40;
	self.ammoup.y = -27;
	self.ammoup.sort = 1001;
	self.ammoup setShader("popmenu_bg", 250, 34);
	self.ammoup.alpha = 0;
	self.ammoup.glowAlpha = 1;
	self.ammoup.color = ( 0.067, 0.067, 0.067 );
	self.ammoup.foreGround = false;
	self.ammoup.hideWhenInMenu = true;

// accuracy background
	self.accb = newHudElem();
	self.accb.alignx = "left";
	self.accb.aligny = "top";
	self.accb.horzAlign = "left";
	self.accb.x = 6 ;
	self.accb.y = 121;
	self.accb.sort = 1001;
	self.accb setShader("gradient", 120, 14);
	self.accb.alpha = 0;
	self.accb.glowAlpha = 1;
	self.accb.color = ( 0.067, 0.067, 0.067 );
	self.accb.foreGround = false;
	self.accb.hideWhenInMenu = true;
	self.accb.sort = 12;

// k/d background
	self.kdb = newHudElem();
	self.kdb.alignx = "left";
	self.kdb.aligny = "top";
	self.kdb.horzAlign = "left";
	self.kdb.x = 6 ;
	self.kdb.y = 134;
	self.kdb.sort = 1001;
	self.kdb setShader("gradient", 120, 14);
	self.kdb.alpha = 0;
	self.kdb.glowAlpha = 1;
	self.kdb.color = ( 0.067, 0.067, 0.067 );
	self.kdb.foreGround = false;
	self.kdb.hideWhenInMenu = true;
	self.kdb.sort = 12;

//=fadeIn=========================
	if(level.gametype == "sd"){
		self waittill( "spawned_player" );
		if(!level.strat_over)
			self waittill("strat_over");
		self thread hudBckFadeIn();
	}
	else {self waittill( "x_strat_over" ); self thread hudBckFadeIn();}
}

hudBckFadeIn(){
	level.hudFadeIn = true;
	fadeInTime = 1;
	transparency = self thread _general::backgroundAlpha();
    if(level.health > 1) {self.hb FadeOverTime( fadeInTime ); self.hb.alpha = transparency;} else{self.hb destroy();}
	if(level.adsback > 1) {self.ads FadeOverTime( fadeInTime ); self.ads.alpha = transparency;} else{self.ads destroy();}
	if(level.overlay == 1){
		self.ctr FadeOverTime( fadeInTime ); self.ctr.alpha = transparency; 
		self.ammo FadeOverTime( fadeInTime ); self.ammo.alpha = transparency; 
		self.ammoup FadeOverTime( fadeInTime ); self.ammoup.alpha = transparency; 
	}
	else {self.ctr destroy(); self.ammo destroy(); self.ammoup destroy();}
	if(level.accuracy > 1) {self.accb FadeOverTime( fadeInTime ); self.accb.alpha = transparency;} else{self.accb destroy();}
	if(level.kdratio > 1) {self.kdb FadeOverTime( fadeInTime ); self.kdb.alpha = transparency;} else{self.kdb destroy();}
}
hudBckFadeOut(){
	level.hudFadeOut = true;
	fadeOutTime = 1;
	if(level.health > 1) {self.hb FadeOverTime( fadeOutTime ); self.hb.alpha = 0;} 
	if(level.adsback > 1) {self.ads FadeOverTime( fadeOutTime ); self.ads.alpha = 0;} 
	if(level.overlay == 1){
		self.ctr FadeOverTime( fadeOutTime ); self.ctr.alpha = 0; 
		self.ammo FadeOverTime( fadeOutTime ); self.ammo.alpha = 0; 
		self.ammoup FadeOverTime( fadeOutTime ); self.ammoup.alpha = 0; 
	}
	if(level.accuracy > 1) {self.accb FadeOverTime( fadeOutTime ); self.accb.alpha = 0;}
	if(level.kdratio > 1) {self.kdb FadeOverTime( fadeOutTime ); self.kdb.alpha = 0;}
}



