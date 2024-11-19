LPARAMETERS vOpcion

vacceso = 1 
IF vacceso = 1
	DO FORM pruebas
ELSE
	MESSAGEBOX([El Usuario no tiene acceso a la opcion seleccionada],0+48,aplicacion.nombre)
ENDIF 
