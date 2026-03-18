
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


SELECT nombre, ip, hostname, ram_gb, ubicacion
FROM Servidores
WHERE estado = 'Activo';


SELECT 
    s.nombre AS Servidor,
    i.nombre_interfaz,
    i.ip_address,
    r.nombre_red,
    r.vlan_id
FROM Servidores s
JOIN Interfaces i ON s.id = i.servidor_id
JOIN Redes r ON i.red_id = r.id
WHERE i.estado = 'Up' 
  AND r.vlan_id = 10;


SELECT 
    s.nombre AS Servidor,
    m.fecha_mantenimiento,
    m.tecnico,
    m.descripcion,
    m.horas_trabajo
FROM Mantenimientos m
JOIN Servidores s ON m.servidor_id = s.id
WHERE m.fecha_mantenimiento >= DATEADD(MONTH, -1, GETDATE());




#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#