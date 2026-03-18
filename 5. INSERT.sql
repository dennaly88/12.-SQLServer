
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


USE VTV;
GO

INSERT INTO Redes (nombre_red, vlan_id, rango_ip, mascara, gateway, switch_principal, puerto_switch) VALUES
('Red Principal', 10, '192.168.1.0/24', '255.255.255.0', '192.168.1.1', 'SW-Core01', 'Gi0/1'),
('Red DMZ', 20, '192.168.2.0/24', '255.255.255.0', '192.168.2.1', 'SW-DMZ01', 'Gi0/5'),
('Red DB', 30, '192.168.3.0/24', '255.255.255.0', '192.168.3.1', 'SW-DB01', 'Gi0/10'),
('Red Gestion', 40, '10.0.0.0/24', '255.255.255.0', '10.0.0.1', 'SW-Mgmt01', 'Gi0/2');
GO

INSERT INTO Servidores (nombre, ip, hostname, sistema_operativo, ram_gb, cpu_cores, disco_gb, ubicacion, tecnico_responsable) VALUES
('SRV-DB01', '192.168.3.10', 'db01.vtv.local', 'Ubuntu 22.04', 64, 16, 1000, 'Sala Principal', 'Danny Jimenez'),
('SRV-WEB01', '192.168.1.20', 'web01.vtv.local', 'Ubuntu 22.04', 32, 8, 500, 'Sala Web', 'Danny Jimenez'),
('SRV-FILE01', '192.168.1.30', 'file01.vtv.local', 'Windows Server 2022', 16, 4, 2000, 'Sala Almacenamiento', 'Carlos Lopez'),
('SRV-MONITOR', '10.0.0.10', 'monitor.vtv.local', 'Ubuntu 24.04', 16, 4, 250, 'Sala NOC', 'Danny Jimenez');
GO


INSERT INTO Interfaces (servidor_id, nombre_interfaz, ip_address, mac_address, red_id, estado) VALUES
(1, 'ens160', '192.168.3.10', '00:50:56:AB:12:34', 3, 'Up'),  
(2, 'ens160', '192.168.1.20', '00:50:56:CD:45:67', 1, 'Up'),  
(3, 'Ethernet0', '192.168.1.30', '00:15:5D:89:EF:01', 1, 'Up'), 
(4, 'ens192', '10.0.0.10', '00:50:56:EF:78:90', 4, 'Up');     
GO

INSERT INTO Mantenimientos (servidor_id, fecha_mantenimiento, tecnico, descripcion, horas_trabajo, costo) VALUES
(1, '2026-03-01 09:00:00', 'Danny Jimenez', 'Actualizacion SQL Server 2022 CU15', 2.5, 0),
(2, '2026-03-10 14:30:00', 'Carlos Lopez', 'Cambio RAM de 16GB a 32GB', 4.0, 250.00),
(1, '2026-02-15 10:15:00', 'Danny Jimenez', 'Optimizacion indexes y estadisticas', 1.5, 0);
GO






#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#