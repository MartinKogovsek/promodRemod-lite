itemDef 
{
	rect -105 -53 210 106 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER
	style WINDOW_STYLE_FILLED
	border 1
	bordercolor 0.498 0.859 1.000 .3
	forecolor 1 1 1 1
	backcolor 0 0 0 .6
	visible when( localvarBool( ui_dev ) )
	decoration
}	
//text
itemDef
{
	rect		0 -38 1 1 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER
	origin		0 0
	//text		"9 8 7 6 5 4 3 2 1 10 9 8 7 6 5 4 3 2 1 < Promod remod by: tincxd > 1 2 3 4 5 6 7 8 9 10 1 2 3 4 5 6 7 8 9"
	text		"< Promod remod by: tincxd >"
	textfont	UI_FONT_CONSOLE
	textscale	0.20
	textalign	ITEM_ALIGN_CENTER
	textstyle	ITEM_TEXTSTYLE_SHADOWED
	forecolor   0.498 0.859 1.000 .6
	visible when( localvarBool( ui_dev ) )
	decoration 
}
itemDef
{
	rect		0 -29 1 1 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER
	origin		0 0
	text		"< Promodlive 220; promodRemod-lite 1.2; >\n< dev@tincxd.com / www.tincxd.com >"
	textfont	UI_FONT_CONSOLE
	textscale	0.20
	textalign	ITEM_ALIGN_CENTER
	textstyle	ITEM_TEXTSTYLE_SHADOWED
	forecolor	0.667 0.667 0.667 .6
	visible when( localvarBool( ui_dev ) )
	decoration 
}
itemDef
{
	rect		0 -5 1 1 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER
	origin		0 0
	text		"< Special thanks to: >                   "
	textfont	UI_FONT_CONSOLE
	textscale	0.20
	textalign	ITEM_ALIGN_CENTER
	textstyle	ITEM_TEXTSTYLE_SHADOWED
	forecolor   0.498 0.859 1.000 .6
	visible when( localvarBool( ui_dev ) )
	decoration 
}
itemDef
{
	rect		0 4 1 1 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER
	origin		0 0
	text		"< Crazy, Duffman, Braxi, TamasSzabto,   >\n< Lina, Poseidon, Cpt.Ak, Zeroy         >"
	textfont	UI_FONT_CONSOLE
	textscale	0.20
	textalign	ITEM_ALIGN_CENTER
	textstyle	ITEM_TEXTSTYLE_SHADOWED
	forecolor	0.667 0.667 0.667 .6
	visible when( localvarBool( ui_dev ) )
	decoration 
}
itemDef
{
	rect		0 42 1 1 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER
	origin		0 0
	text		"< Project w/ source available on gitHub >"
	textfont	UI_FONT_CONSOLE
	textscale	0.20
	textalign	ITEM_ALIGN_CENTER
	textstyle	ITEM_TEXTSTYLE_SHADOWED
	forecolor   0.498 0.859 1.000 .6
	visible when( localvarBool( ui_dev ) )
	decoration 
}
itemDef
{
	rect		0 50 1 1 HORIZONTAL_ALIGN_CENTER VERTICAL_ALIGN_CENTER
	origin		0 0
	text		"< Also thanks to everyone else involved in Promod! >"
	textfont	UI_FONT_CONSOLE
	textscale	0.16
	textalign	ITEM_ALIGN_CENTER
	textstyle	ITEM_TEXTSTYLE_SHADOWED
	forecolor	0.667 0.667 0.667 .6
	visible when( localvarBool( ui_dev ) )
	decoration 
}


itemDef
{
	rect		12 10 1 1 HORIZONTAL_ALIGN_RIGHT VERTICAL_ALIGN_TOP
	origin		-20 1
	text		"< promodRemod-lite / v 1.2 >< tincxd / 2019 >< www.tincxd.com >"
	textfont	UI_FONT_DEFAULT
	textscale	0.18
	textalign	ITEM_ALIGN_RIGHT
	textstyle	ITEM_TEXTSTYLE_SHADOWED
	forecolor	0.498 0.859 1.000 .3 
	visible 	1
	decoration 
}