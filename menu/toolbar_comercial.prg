LPARAMETERS vForm 


**
ox = vForm.Barraestandar.createcontrol(0, "bayuda")
ox.ButtonStyle = 3
ox.Picture = "help.png"
ox.ToolTip = "Archivos de Ayuda"
ox.OnAction = "ejecutar_opcion([MiModulo])"
ox.Visible = .T.
vForm.Barraestandar.InitControl(ox)
**
ox = vForm.Barraestandar.createcontrol(0, "bsalir")
ox.ButtonStyle = 3
ox.Picture = "salir.png"
ox.ToolTip = "Cerrar"
ox.OnAction = "clear events"
ox.BeginGroup = .t.
ox.Visible = .T.
vForm.Barraestandar.InitControl(ox)