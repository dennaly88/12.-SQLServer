
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


-- Crear BD temporal con datos nuevos
RESTORE DATABASE servidores_vtv_nueva 
FROM DISK = '/var/opt/mssql/backups/servidores_vtv_Full_20260318_1101.bak'
WITH MOVE 'VTV_data' TO '/var/opt/mssql/data/servidores_vtv_nueva.mdf',
     MOVE 'VTV_log' TO '/var/opt/mssql/data/servidores_vtv_nueva.ldf',
     REPLACE;

-- Comparar y actualizar solo lo diferente
INSERT INTO servidores_vtv.Servidores 
SELECT * FROM servidores_vtv_nueva.Servidores 
WHERE NOT EXISTS (
    SELECT 1 FROM servidores_vtv.Servidores s 
    WHERE s.nombre = servidores_vtv_nueva.Servidores.nombre
);

-- Limpiar
DROP DATABASE servidores_vtv_nueva;



#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#