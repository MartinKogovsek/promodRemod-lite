//GENERAL SCRIPT MANAGER

init()
{
	//add scripts
	thread misc\_dev::init(); //dev and admin icon (edit, add GUID)



	if(level.gametype == "sd") // only when gametype = search & destroy 
	{
		
	}
}
mapVote(){
	return 1; // set return 0 to disable mapvote¨and 1 to enable. (you can edit maps and gametypes in server.cfg).
}

