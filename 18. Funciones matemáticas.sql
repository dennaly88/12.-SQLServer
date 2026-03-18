
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
    ram_gb,
    ABS(ram_gb - 32) AS diferencia_ram,  
    ROUND(ram_gb * 1.1, 0) AS ram_con_10pct,  
    CEILING(cpu_cores * 1.25) AS cores_optimos  
FROM Servidores;


SELECT 
    nombre,
    ram_gb,
    POWER(2, 10) AS ram_kb,  
    SQRT(ram_gb) AS raiz_ram,
    POWER(cpu_cores, 2) AS potencia_cores_cuadrada
FROM Servidores;


SELECT 
    s.nombre,
    SUM(m.horas_trabajo) AS horas_totales,
    ROUND(SUM(m.horas_trabajo) * 25.50, 2) AS costo_total,  
    CEILING(SUM(m.horas_trabajo) * 25.50 / 100.0) * 100 AS costo_redondeado
FROM Servidores s
LEFT JOIN Mantenimientos m ON s.id = m.servidor_id
GROUP BY s.nombre;




#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#