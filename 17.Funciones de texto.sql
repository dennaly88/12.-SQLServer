
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
    nombre,
    UPPER(nombre) AS nombre_mayus,
    LOWER(tecnico_responsable) AS tecnico_minus
FROM Servidores;

SELECT 
    nombre_red,
    LEFT(nombre_red, 3) AS prefijo,
    RIGHT(nombre_red, 3) AS sufijo
FROM Redes;

SELECT 
    nombre,
    LEN(nombre) AS longitud_nombre,
    SUBSTRING(nombre, 1, 3) AS tres_primeros,
    SUBSTRING(nombre, 5, 3) AS tres_medio
FROM Servidores;





#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#