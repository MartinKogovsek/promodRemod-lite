/* Made by Justin
xfire = rumabatu */

init()
{
	self endon( "disconnect" );
	for(;;)
	{
		level waittill( "connected", player );
		player thread OnMenuResponse();
	}
}
OnMenuResponse()
{
	self endon("disconnect");

	for(;;)
	{
		self waittill( "menuresponse", menu, response );

		if( menu == game["menu_team"] || menu == game["menu_team_flipped"] )
		{
			switch(response)
			{
				case "allies":
					wait 0.05;
					self [[level.autoassign]]();
					break;

				case "axis":
					wait 0.05;
					self [[level.autoassign]]();
					break;
			}
		}
	}
}
