
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
    tecnico_responsable,
    COUNT(*) AS total_servidores
FROM Servidores
GROUP BY tecnico_responsable
HAVING COUNT(*) > 1;

SELECT 
    r.nombre_red,
    COUNT(DISTINCT s.id) AS servidores_conectados
FROM Redes r
LEFT JOIN Interfaces i ON r.id = i.red_id
LEFT JOIN Servidores s ON i.servidor_id = s.id
GROUP BY r.nombre_red
HAVING COUNT(DISTINCT s.id) > 1;


SELECT 
    s.nombre,
    SUM(m.horas_trabajo) AS horas_totales
FROM Servidores s
LEFT JOIN Mantenimientos m ON s.id = m.servidor_id
GROUP BY s.nombre, s.ip
HAVING SUM(m.horas_trabajo) > 2.0 OR SUM(m.horas_trabajo) IS NULL;







#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#