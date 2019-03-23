
blurWorld		7.0

PREPROC_SHADER_DRAW( -120 0 880 480, 0 0, "white", 0 0 0 0.75, 0, 1, 0 0 0 0 )

//PREPROC_SHADER_DRAW( 0 0 640 480, 0 0, "white", 0 0 0 0.75, 0, 1, 0 0 0 0 )
//PREPROC_SHADER_DRAW( ORIGIN_OPTIONS_FRAME 100 480, 0 0, "gradient_fadein", 0 0 0 0.1, 0, 1, 0 0 0 0 )
//PREPROC_SHADER_DRAW( ORIGIN_OPTIONS_FRAME 600 480, 100 0, "gradient_fadein", 0 0 0 0.5, 0, 1, 0 0 0 0 )

#undef BACK_OPEN
#define BACK_OPEN exec "wait";
//#include "ui_mp/navcontrols.inc"
CHOICE_MENU_TITLE( "" )

#undef CHOICE_X_START
#define CHOICE_X_START		-324

#undef CHOICE_HORIZONTAL_ALIGN
#define CHOICE_HORIZONTAL_ALIGN HORIZONTAL_ALIGN_CENTER

#undef CHOICE_VERTICAL_ALIGN
#define CHOICE_VERTICAL_ALIGN VERTICAL_ALIGN_TOP

// ==========================================================================================================
CHOICE_SECTION_TITLE( 1, "Settings" )
CHOICE_BUTTON( 2, "Controls", close self; open main_controls )
CHOICE_BUTTON( 3, "Options", close self; open main_options; execnow "set ui_allow_graphic_change 0"; )
CHOICE_BUTTON( 4, "CPanel login", 0 )
CHOICE_BUTTON_NOHI( 5, "Back to menu", scriptMenuResponse "changeteam"; )
// =============================
CHOICE_SECTION_TITLE( 6, "promodRemod Info" )

// ==========================================================================================================

#undef TEXTSIZE_BUTTON_PC
#define TEXTSIZE_BUTTON_PC	0.33

#undef CHOICE_SIZE_Y
#define CHOICE_SIZE_Y 		20


#undef	CHOICE_SIZE_X
#define CHOICE_SIZE_X		180

#undef  SECTION_X_OFFSET
#define SECTION_X_OFFSET 	60
// ---