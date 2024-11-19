CLOSE DATABASES all
CLEAR ALL
CLEAR RESOURCES 
SET STATUS BAR OFF 
SET PATH TO TO 

IF _vfp.StartMode = 0
	SET PATH TO "form,clases,prg,menu,img"
ENDIF

DO sets

SET CLASSLIB TO argcommandbars, CommCtrl,base
SET PROCEDURE TO funciones.prg ADDITIVE 
SET PROCEDURE TO ejecutar_opcion ADDITIVE 





CLEAR 
PUBLIC aplicacion, _2DE1703B, IgnMonAsi &&Temporal

_2DE1703B = "2de1703b-d189-42dc-8c0b-a0df36ce1d75" 

* VArible de Configuración:  
aplicacion = CREATEOBJECT("aplicacion",[006])


** Ribons 
SET CLASSLIB  TO foxribbon.vcx  ADDITIVE 
SET CLASSLIB  TO MyDesigns.vcx ADDITIVE


SET REPORTBEHAVIOR 90 
_REPORTOUTPUT = 'ReportOutput.app' 
_REPORTPREVIEW = 'ReportPreview.app' 
_REPORTPREVIEW = 'system.app' 
SET HELP ON 

SET MESSAGE TO "Cargando propiedades del sistema para entorno gráfico..." 
** Creando el ribon 
DO SYSTEM.APP

IF VARTYPE(_SCREEN.oRibbon) = "O"
	_SCREEN.REMOVEOBJECT('oRibbon')
ENDIF
_SCREEN.NEWOBJECT('oRibbon','RibbonSettings')

*--Default folder
m.pcFolderStyle = "Styles"

WITH _SCREEN.oRibbon
	*--Other Style por defecto Caso contrario cambiar leea la ruta color del ribbon 
	&&.FileIni = SYS(5) + CURDIR() + pcFolderStyle + "\ORANGE.ini" 
	
	.Settings()
	.ReDraw()

	*--Language (See the folder LNG)
	*--.LANGUAGE = "English"
	.LANGUAGE = "Español"
	*--Show time out progress bar in MessageBox
	.ShowProgressMessageBox = .T.
	*--Calendars
	.c_FirstDayWeek = 2
	*--Holidays of the week
	.c_1SunHoli = .T.
	.c_2MonHoli = .F.
	.c_3TueHoli = .F.
	.c_4WedHoli = .F.
	.c_5ThuHoli = .F.
	.c_6FriHoli = .F.
	.c_7SatHoli = .T.
ENDWITH

&& KMM 

*   pruebas




***************************************************************
_screen.Icon = "comercial.ico"
DO sets 
ADDPROPERTY(_screen,"formscreen",.f.)
DO FORM form_principal
RELEASE MENUS _msysmenu

_screen.formscreen.ActualizaStatusBar()
_screen.formscreen.ALWAYSONBOTTOM = .T.
_screen.formscreen.impresion.visible = .f.
 


**************************************************
*!*	_SCREEN.Visible = .T.
*!*	_SCREEN.WindowState = 2
*!*	_screen.Width = _screen.Width + 1
*!*	_screen.Width = _screen.Width - 1
*!*	_SCREEN.WindowState = 2

READ events
*_Screen.formscreen.release()
MESSAGEBOX("Seleccione")
SET STATUS BAR On
MODIFY WINDOW SCREEN 
CLEAR

PROCEDURE errHandler
   PARAMETER merror, mess, mess1, mprog, mlineno
   CLEAR
   vMessage = ""+;
    'Numero de Error: ' + LTRIM(STR(merror))+CHR(13)+;
    'Mensaje de Error: ' + mess+CHR(13)+;
    'Line of code with error: ' + mess1+CHR(13)+;
    'Line number of error: ' + LTRIM(STR(mlineno))+CHR(13)+;
    'Program with error: ' + mprog
    MESSAGEBOX(vMessage,0+16,APLICACION.nOMBRE)
    CANCEL 
    QUIT 
ENDPROC



