
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


1. INNER JOIN

SELECT 
    s.nombre AS Servidor,
    i.nombre_interfaz,
    i.ip_address,
    r.nombre_red
FROM Servidores s
INNER JOIN Interfaces i ON s.id = i.servidor_id
INNER JOIN Redes r ON i.red_id = r.id;

2. LEFT JOIN

SELECT 
    s.nombre,
    s.ip,
    i.nombre_interfaz,
    i.ip_address
FROM Servidores s
LEFT JOIN Interfaces i ON s.id = i.servidor_id;

3. RIGHT JOIN

SELECT 
    r.nombre_red,
    r.vlan_id,
    s.nombre AS Servidor
FROM Interfaces i
RIGHT JOIN Redes r ON i.red_id = r.id
LEFT JOIN Servidores s ON i.servidor_id = s.id;


4. FULL OUTER JOIN

-- TODO: servidores + redes (incluso sin relación)
SELECT 
    s.nombre AS Servidor,
    COALESCE(i.ip_address, s.ip) AS IP,
    r.nombre_red
FROM Servidores s
FULL OUTER JOIN Interfaces i ON s.id = i.servidor_id
FULL OUTER JOIN Redes r ON i.red_id = r.id;

5. CROSS JOIN

-- Cada servidor × cada red (16 combinaciones)
SELECT TOP 5
    s.nombre AS Servidor,
    r.nombre_red
FROM Servidores s
CROSS JOIN Redes r;


6. SELF JOIN

-- Servidores con misma cantidad RAM
SELECT 
    s1.nombre AS Servidor1,
    s2.nombre AS Servidor2,
    s1.ram_gb
FROM Servidores s1
JOIN Servidores s2 ON s1.ram_gb = s2.ram_gb AND s1.id < s2.id;







#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#