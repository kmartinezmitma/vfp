LPARAMETERS vObjPanel
SET CLASSLIB TO panel_comun ADDITIVE 
SET CLASSLIB TO panel_comercial ADDITIVE 

vObjPanel.crearpane("Punto de Venta", "empresasx.bmp", "empresasx.bmp","mydesigns.scrollcontainer2", "panel_comun.panelcomunlogo")
*vObjPanel.crearpane("Punto de Venta", "desktop_24.png", "desktop_16.png","panel_comercial.panelintro", "panel_comun.panelcomunlogo")
vObjPanel.crearpane("Caja", "desktop_24.png", "desktop_16.png","mydesigns.scrollcontainer1", "panel_comun.panelcomunlogo")
vObjPanel.crearpane("Almacen", "desktop_24.png", "desktop_16.png","mydesigns.scrollcontainer2", "panel_comun.panelcomunlogo")


RELEASE vObCrear

