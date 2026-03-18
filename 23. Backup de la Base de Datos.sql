
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

USE servidores_vtv;
GO


DECLARE @fecha VARCHAR(20) = FORMAT(GETDATE(),'yyyyMMdd_HHmm');
DECLARE @ruta NVARCHAR(256) = '/var/opt/mssql/backups/servidores_vtv_Full_' + @fecha + '.bak';

BACKUP DATABASE servidores_vtv 
TO DISK = @ruta
WITH FORMAT, INIT, STATS = 10;

PRINT '✅ Backup creado: ' + @ruta;
GO







#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#