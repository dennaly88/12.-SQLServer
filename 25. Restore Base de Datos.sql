
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


-- Restaurar EXACTAMENTE igual que estaba
RESTORE DATABASE servidores_vtv 
FROM DISK = '/var/opt/mssql/backups/servidores_vtv_Full_20260318_1101.bak'
WITH MOVE 'servidores_vtv' TO '/var/opt/mssql/data/servidores_vtv.mdf',
     MOVE 'servidores_vtv_Log' TO '/var/opt/mssql/data/servidores_vtv.ldf',
     REPLACE, STATS = 10;
GO


USE servidores_vtv;
GO

SELECT '✅ ¡RESTAURACIÓN PERFECTA!' AS Estado;
SELECT COUNT(*) AS Total_Servidores FROM Servidores;
SELECT COUNT(*) AS Total_Redes FROM Redes;
SELECT COUNT(*) AS Total_Interfaces FROM Interfaces;
SELECT TOP 3 nombre, ip FROM Servidores;
GO


#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#