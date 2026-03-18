
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


-- Si NULL, devuelve segundo valor
SELECT 
    nombre,
    ISNULL(tecnico_responsable, 'Sin técnico asignado') AS responsable,
    ISNULL(ram_gb, 0) AS ram_gb_seguro
FROM Servidores;


-- Primer valor NO NULL
SELECT 
    nombre,
    COALESCE(tecnico_responsable, 
             usuario, 
             'Sin asignado') AS responsable_completo,
    COALESCE(m.costo, 0, 0.00) AS costo_sin_null
FROM Servidores s
LEFT JOIN Mantenimientos m ON s.id = m.servidor_id;

-- Si "valor1 = valor2" devuelve NULL
SELECT 
    nombre,
    NULLIF(estado, 'Retirado') AS estado_activo,
    NULLIF(ip, '0.0.0.0') AS ip_valida
FROM Servidores;





#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#