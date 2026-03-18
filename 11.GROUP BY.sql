
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


SELECT 
    ubicacion,
    COUNT(*) AS total_servidores,
    AVG(ram_gb) AS ram_promedio_gb
FROM Servidores
GROUP BY ubicacion;

SELECT 
    sistema_operativo,
    COUNT(*) AS cantidad_servidores,
    SUM(ram_gb) AS ram_total_gb
FROM Servidores
GROUP BY sistema_operativo
ORDER BY cantidad_servidores DESC;


SELECT 
    tecnico_responsable,
    COUNT(*) AS servidores_asignados,
    SUM(disco_gb) AS almacenamiento_total_gb
FROM Servidores
GROUP BY tecnico_responsable;





#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#