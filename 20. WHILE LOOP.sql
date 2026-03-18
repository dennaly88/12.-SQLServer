
#___________________________________________________#
#___________________________________________________#
#  DANNY JOSE JIMENEZ GUTIERREZ                     #
#  TELEFONO :0424-281-44-55                         #
#  CORREO : DENNALY88@GMAIL.COM                     #
#  INGENIERO EN INFORMÁTICA                         #
#___________________________________________________#
#___________________________________________________#


#___________________________________________________#
🛢 Azure Data Studio  
#___________________________________________________#

DECLARE @contador INT = 1;
WHILE @contador <= 5
BEGIN
    PRINT 'Servidor #' + CAST(@contador AS VARCHAR(2));
    SET @contador = @contador + 1;
END;



DECLARE @i INT = 1;
WHILE @i <= 10
BEGIN
    IF @i = 5 SET @i = @i + 1; CONTINUE;  
    IF @i > 8 BREAK;                     
    PRINT 'Paso: ' + CAST(@i AS VARCHAR(2));
    SET @i = @i + 1;
END;


DECLARE @mes INT = 1;
WHILE @mes <= 12
BEGIN
    PRINT 'Backup Mensual #' + CAST(@mes AS VARCHAR(2)) + 
          ' - ' + DATENAME(MONTH, DATEADD(MONTH, @mes-1, '2026-01-01'));
    SET @mes = @mes + 1;
END;





#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#