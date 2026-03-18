
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
    ip,
    ram_gb,
    CASE 
        WHEN ram_gb >= 64 THEN '🟢 POTENTE'
        WHEN ram_gb >= 32 THEN '🟡 NORMAL' 
        WHEN ram_gb < 32 THEN '🔴 DÉBIL'
        ELSE '❓ DESCONOCIDO'
    END AS clasificacion_servidor
FROM Servidores;


SELECT 
    nombre_red,
    vlan_id,
    CASE 
        WHEN vlan_id < 20 THEN '🔴 PRODUCCIÓN'
        WHEN vlan_id BETWEEN 20 AND 99 THEN '🟡 DMZ/TEST'
        WHEN vlan_id >= 100 THEN '🟢 GESTIÓN'
    END AS tipo_red
FROM Redes;







#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#