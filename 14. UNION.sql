
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

SELECT ip AS direccion_ip, 'Servidor' AS origen 
FROM Servidores
UNION
SELECT ip_address AS direccion_ip, 'Interface' AS origen
FROM Interfaces
ORDER BY direccion_ip;



SELECT nombre AS recurso, 'Servidor' AS tipo, ip AS identificador
FROM Servidores
UNION ALL
SELECT nombre_red AS recurso, 'Red' AS tipo, gateway AS identificador
FROM Redes
UNION ALL
SELECT nombre_interfaz AS recurso, 'Interface' AS tipo, ip_address AS identificador
FROM Interfaces
ORDER BY recurso;




#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#