
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




UPDATE Servidores 
SET estado = 'En Mantenimiento',
    tecnico_responsable = 'Carlos Lopez - Mantenimiento'
WHERE nombre = 'SRV-FILE01';


UPDATE Servidores 
SET ram_gb = 64,
    cpu_cores = 12,
    disco_gb = 800,
    tecnico_responsable = 'Danny Jimenez - Upgrade'
WHERE ip = '192.168.1.20';




#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#