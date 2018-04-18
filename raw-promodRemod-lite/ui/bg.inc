itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			FULLSCREEN_WIDE
	background		"animbg_front"
	visible			when( dvarString( fs_game ) == "" )
	decoration
}

itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			FULLSCREEN_WIDE
	background		"animbg_front2"
	visible			when( dvarString( fs_game ) == "" )
	decoration
}


itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			FULLSCREEN_WIDE
	background		"animbg_back"
	forecolor		1 1 1 1
	visible			when( dvarString( fs_game ) != "" )
	decoration
}

itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			FULLSCREEN_WIDE
	background		"animbg_front"
	forecolor		1 1 1 1
	visible			when( dvarString( fs_game ) != "" )
	decoration
}

itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			FULLSCREEN_WIDE
	background		"animbg_front2"
	forecolor		1 1 1 1
	visible			when( dvarString( fs_game ) != "" )
	decoration
}

itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			FULLSCREEN_WIDE
	background		"congratulations"
	forecolor		1 1 1 1
	visible			1
	decoration
}

#undef	FOG_SCROLL_TIME
#define FOG_SCROLL_TIME 60000 //30000

#undef	THINFOG_SCROLL_TIME
#define THINFOG_SCROLL_TIME 100000 //50000

#define FOG_COLOR 1 1 1 0.9

itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			-107 0 1708 480
	exp				rect X((-107) - ((float(milliseconds() % FOG_SCROLL_TIME) / FOG_SCROLL_TIME) * (854)))
	forecolor		0 0.54 1 0.7
	background		"animbg_fogscroll"
	visible			1
	decoration
}
itemDef
{
	style			WINDOW_STYLE_SHADER
	rect			-107 0 1708 480
	exp				rect X((-961) + ((float(milliseconds() % THINFOG_SCROLL_TIME) / THINFOG_SCROLL_TIME) * (854)))
	background		"animbg_fogscrollthin"
	forecolor		0.84 0.5 0.03 0.8
	visible			1
	decoration
}
/*
itemDef
{
    name       "ticker_bg_color"
    style       1
    visible     when( !localvarBool( ui_hideBack ) )
    rect        -107 464 900 16
	backcolor   0.9 0.3 0.3 0.5
    decoration
}
itemDef
{
    name 		"ticker_text"
    rect 		475 464 0 0
    forecolor 	0.1 0.8 0.1 1
    textaligny 	14
    textscale 	0.26
    textfont 	8
	textstyle	ITEM_TEXTSTYLE_SHADOWEDMORE
    text 		""
    visible 	when( !localvarBool( ui_hideBack ) )
    exp rect x ( 854 - ( ( float( milliseconds( ) % 20000 ) / 20000 ) * ( 1054 ) ) )
} 
*/
