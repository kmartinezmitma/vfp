IF TYPE('_screen.formscreen.mainmenu') = 'O'
		
	* Eliminar los menús creados originalmente y por plugin
	_screen.formscreen.mainmenu.visible = .f.
	_screen.formscreen.removeobject('mainmenu')
	
	lomainmenu = _screen.formscreen.cbm.createcommandbar(1, 'mainmenu')
	IF VARTYPE(m.lomainmenu) <> 'O'
		RETURN .f.
	ENDIF
	
	lomainmenu.caption = 'Menu Estandar'
	lomainmenu.stretched = .t.
	lomainmenu.allowfloating = .f.
	lomainmenu.closable = .f.
	lomainmenu.movable = .f.
	lomainmenu.top = 0
	
	_screen.formscreen.cbm.mainmenu = 'mainmenu'
	IF _screen.formscreen.cbm.isinitialized()
		_screen.formscreen.cbm.initcommandbar(m.lomainmenu)
	ENDIF
		
ENDIF



**********************************************************
*** Crear Menu archivos
**********************************************************
loPad = _screen.formscreen.mainmenu.CreateControl("Archivos")
loPad.Caption = "\<Archivos"
loPad.Visible = .T.
_screen.formscreen.MainMenu.InitControl(loPad)

*** Crear menu Empresas
loNewItem = loPad.CreateControl(0)
loNewItem.ButtonStyle = 3
loNewItem.Caption = "Empresas"
loNewItem.Picture = [empresasx.bmp]
loNewItem.Visible = .T.
loPad.InitControl(m.loNewItem)
	*
	loNewItem2 = loNewItem.CreateControl(0)
	loNewItem2.Caption = "Empresa"
	loNewItem2.OnAction = "ejecutar_opcion([MiModulo])"
	loNewItem2.Picture = [empresasx.bmp]
	loNewItem2.Visible = .T.
	loNewItem.InitControl(m.loNewItem2)
	*
	loNewItem2 = loNewItem.CreateControl(0)
	loNewItem2.Caption = "Parámetros de Empresa"
	loNewItem2.Picture = [_sistema.ico]
	loNewItem2.OnAction = "ejecutar_opcion([MiModulo])"
	loNewItem2.Visible = .T.
	loNewItem.InitControl(m.loNewItem2)

*** Crear menu salir
loNewItem = loPad.CreateControl( 0)
loNewItem.Caption = "Salir"
loNewItem.OnAction = "clear events"
loNewItem.Picture = [salir.png]
loNewItem.Visible = .T.
loNewItem.BeginGroup = .T.
loPad.InitControl( m.loNewItem)


**********************************************************
*** Crear Menu Proceso
**********************************************************
loPad = _screen.formscreen.MainMenu.CreateControl( "Proceso")
loPad.Caption = "\<Proceso"
loPad.Visible = .T.
_screen.formscreen.MainMenu.InitControl(loPad)

*** Crear Eleccion Empresas
loNewItem = loPad.CreateControl( 0)
loNewItem.Caption = "Apertura de Caja"
loNewItem.Picture = [abrirx.png]
loNewItem.OnAction = "ejecutar_opcion([MiModulo])"
loNewItem.Visible = .T.
loPad.InitControl( m.loNewItem)


**********************************************************
*** Crear Menu Proceso
**********************************************************
loPad = _screen.formscreen.MainMenu.CreateControl( "Reportes")
loPad.Caption = "\<Reportes"
loPad.Visible = .T.
_screen.formscreen.MainMenu.InitControl(loPad)

*** Crear Eleccion Empresas
loNewItem = loPad.CreateControl( 0)
loNewItem.Caption = "Reportes de Caja"
loNewItem.Picture = [abrirx.png]
loNewItem.OnAction = "ejecutar_opcion([MiModulo])"
loNewItem.Visible = .T.
loPad.InitControl( m.loNewItem)

_screen.formscreen.barraestandar.dockposition = 2
_screen.formscreen.barraestandar.dockposition = 0
*---------------------------------------------------------------------------------