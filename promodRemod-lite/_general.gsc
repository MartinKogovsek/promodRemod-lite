//GENERAL SCRIPT MANAGER

/*========================================================================================>
TODO: 
 - config.cfg file using dvars
 - accurracy and kd both inside stats.gsc 
 - p v p in final killcam + song name

 - admin menu 
 - mysql 
 - settings menu link to db
//=======================================================================================*/
init(){
	//thread menu\_menu::init();
	if(level.gametype == "sd"){ } // only when gametype = search & destroy 
}
//=== Config =============================================================================>
//
//=== Admin settings 
devIcon(){ return 1; } // 0 = disabled, 1 = enabled. (add GUIDs in misc\_dev.gsc)

//=== Visual settings 
backgroundAlpha(){ return 0.2; } // enter values from 0.1 to 1;
advertisement(){ return 2; } // 0 = disabled, 1 = only text, 2 = text and background;
overlay(){ return 0; } // 0 = disabled, 1 = enabled;
health(){ return 2; } // 0 = disabled, 1 = enabled, 2 = enabled with background;
kdRatio(){ return 2; } // 0 = disabled, 1 = enabled, 2 = enabled with background;
welcomeText(){ return 1; } //  0 = disabled, 1 = enabled; 
hostnameRounds(){ return 1; } //  0 = disabled, 1 = enabled; 

//=== Sound
killcamMusic(){ return 1; }	// 0 = disabled, 1 = enabled;
welcomeSound(){ return 1; }	// 0 = disabled, 1 = enabled;
firstBloodSound(){ return 1; }	// 0 = disabled, 1 = enabled;

//=== Other
settingsMenu(){ return 1; } // 0 = disabled, 1 = enabled;

//=== MapVote (edit maps in server.cfg)
mapVote(){ return 1; } // 0 = disabled, 1 = enabled;




