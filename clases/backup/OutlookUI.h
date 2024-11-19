#ifndef	__OUTLOOKUI_H_INCLUDED__
#define	__OUTLOOKUI_H_INCLUDED__


#define _NP_BUILDER_CLASS				"NavigationPane"
#define _CBM_BUILDER_CLASS				"_commandBarsManager"

#define _CommandBarsManager_CLASS		__CommandBarsManager
#define _CommandBarsManager_NAME		_ARGCommandBarManager

#define _classLibraryLoaderHelper_NAME	_classLibraryLoaderHelper

#define __containerBase_CLASS			__containerBase

#define _NP_STATE_VERSION				2

*-------------------------------------------------
*	Button sizes
*-------------------------------------------------

#define _NP_EXPANDEDBUTTON_HEIGHT		32
#define _NP_COLLAPSEDBUTTON_WIDTH		22

*-------------------------------------------------
*	IDs of Background Pictures
*-------------------------------------------------

#define _NP_PICTURE_SPLITTER			1
#define _NP_PICTURE_SPLITTER_DOTS		2
#define _NP_PICTURE_BUTTONDEFAULT		3
#define _NP_PICTURE_BUTTONHOT			4
#define _NP_PICTURE_BUTTONSELECTED		5
#define _NP_PICTURE_BUTTONPUSHED		6
#define _NP_PICTURE_HEADER			7
#define _NP_PICTURE_HEADERSELECTED		8
#define _NP_PICTURE_HEADER_SMALL		9
#define _NP_PICTURE_HEADER_SMALL_HL		10
#define _NP_PICTURE_CBBUTTONHOT			11
#define _NP_PICTURE_CBBUTTONSELECTED		12
#define _NP_PICTURE_CBBUTTONPUSHED		13

#define _NP_PICTURE_EXPAND_H			14
#define _NP_PICTURE_COLLAPSE_H			15
#define _NP_PICTURE_EXPAND_V			16
#define _NP_PICTURE_COLLAPSE_V			17

#define _NP_PICTURE_EXPAND_HEADER_H		18
#define _NP_PICTURE_COLLAPSE_HEADER_H		19

#define _NP_PICTURE_COUNT			19


*-------------------------------------------------
*	Navigation Pane Items
*-------------------------------------------------

#define _NP_ITEM_BUTTON				0
#define _NP_ITEM_GRIPPER			1
#define _NP_ITEM_GRIPPERDOTS			2
#define _NP_ITEM_HEADER				3
#define _NP_ITEM_SMALLHEADER			4
#define _NP_ITEM_CONTROLBUTTON			5
#define _NP_ITEM_CHEVRON			6

*-------------------------------------------------
*	Chevron orientation
*-------------------------------------------------

#define _NP_CHEVRON_LEFT			0
#define _NP_CHEVRON_RIGHT			1
#define _NP_CHEVRON_TOP				2
#define _NP_CHEVRON_BOTTOM			3

*-------------------------------------------------
*	Text Color Identifiers
*-------------------------------------------------

#define _NP_TEXTCOLOR_DEFAULT			1
#define _NP_TEXTCOLOR_HOT				2
#define _NP_TEXTCOLOR_SELECTED			3
#define _NP_TEXTCOLOR_PUSHED			4
#define _NP_TEXTCOLOR_DISABLED			5


*-------------------------------------------------
*	Button States
*-------------------------------------------------

#define _NP_BS_DEFAULT					0
#define _NP_BS_HOT						1
#define _NP_BS_SELECTED					2
#define _NP_BS_PUSHED					3
#define _NP_BS_DISABLED					4

#define _NP_BS_COUNT					5

*-------------------------------------------------
*	NavigationPane Events
*-------------------------------------------------

#define _NP_EVENT_SELECTIONCHANGING		1
#define _NP_EVENT_BUTTONCLICK			2
#define _NP_EVENT_ACTIVATEPANE			3
#define _NP_EVENT_DEACTIVATEPANE		4
#define _NP_EVENT_EXPAND				5
#define _NP_EVENT_COLLAPSE				6


*-------------------------------------------------
*	String identifiers for the LocalizeString method
*-------------------------------------------------

#define _NP_STRID_SHOWMOREBUTTONS		1	&& "Show \<More Buttons"
#define _NP_STRID_SHOWFEWERBUTTONS		2	&& "Show \<Fewer Buttons"
#define _NP_STRID_NAVIGATIONPANEOPTIONS	3	&& "Na\<vigation Pane Options..."
#define _NP_STRID_ADDREMOVEBUTTONS		4	&& "\<Add or Remove Buttons"

#define _NP_STRID_CAPTIONNAVIGATIONPANEOPTIONS		5	&& "Navigation Pane Options"
#define _NP_STRID_DISPLAYBUTTONSINTHISORDER	6	&& "Display buttons in this order"
#define _NP_STRID_MOVEUP					7	&& "MoveUp"
#define _NP_STRID_MOVEDOWN					8	&& "MoveDown"
#define _NP_STRID_RESET						9	&& "Reset"
#define _NP_STRID_OK						10	&& "Ok"
#define _NP_STRID_CANCEL					11	&& "Cancel"
#define _NP_STRID_CONFIGUREBUTTONS			12	&& "Configure buttons"

#define _NP_STRID_MINIMIZE_NP				13	&& "Minimize the Navigation Pane"
#define _NP_STRID_EXPAND_NP					14	&& "Expand the Navigation Pane"
#define _NP_STRID_COLLAPSE_GROUP			15	&& "Click to collapse group"
#define _NP_STRID_EXPAND_GROUP				16	&& "Click to expand group"
#define _NP_STRID_NPCAPTION					17	&& "Navigation Pane"


#define _NP_STRID_COUNT						17


*-------------------------------------------------
*	SplitContainer orientation
*-------------------------------------------------

#define _SCO_Horizontal				0
#define _SCO_Vertical				1



#endif	&& __OUTLOOKUI_H_INCLUDED__