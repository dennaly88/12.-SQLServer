
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
    nombre_red,
    vlan_id,
    rango_ip,
    gateway
FROM Redes
ORDER BY vlan_id ASC;


SELECT 
    s.nombre AS Servidor,
    m.fecha_mantenimiento,
    m.tecnico,
    m.horas_trabajo,
    m.costo
FROM Mantenimientos m
JOIN Servidores s ON m.servidor_id = s.id
ORDER BY m.fecha_mantenimiento DESC;

SELECT 
    s.nombre AS Servidor,
    i.nombre_interfaz,
    i.ip_address,
    i.mac_address
FROM Interfaces i
JOIN Servidores s ON i.servidor_id = s.id
ORDER BY 
    CAST(REPLACE(i.ip_address, '.', '') AS BIGINT),
    s.nombre;


#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#