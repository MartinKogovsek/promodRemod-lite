//< Developers > ======================================================================

//=====================================================================================
initMisc(){
    onConnect();
}

onConnect()
{
	while( 1 )
	{
		level waittill( "connected", player );

		player SetClientDvar( "cg_scoreboardpinggraph", "1" );
	}
}

