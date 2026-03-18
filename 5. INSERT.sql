
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


-- Plantas
INSERT INTO Plantas (Nombre, Direccion, Ciudad) VALUES
  ('VTV Norte', 'Av. Corrientes 1234', 'Buenos Aires'),
  ('VTV Sur',   'Ruta 2 Km 45',        'La Plata');

-- Servidores / líneas
INSERT INTO Servidores (PlantaID, Nombre, Tipo) VALUES
  (1, 'Línea 1', 'Liviano'),
  (1, 'Línea 2', 'Pesado'),
  (2, 'Línea 1', 'Liviano');

-- Propietario y vehículo
INSERT INTO Propietarios (DNI, Nombre, Apellido, Email) VALUES
  ('28456789', 'Carlos', 'Gómez', 'cgomez@mail.com');

INSERT INTO Vehiculos (PropietarioID, Patente, Marca, Modelo, Anio, TipoVehiculo) VALUES
  (1, 'AB123CD', 'Toyota', 'Corolla', 2019, 'Liviano');

-- Turno e inspección
INSERT INTO Turnos (VehiculoID, ServidorID, FechaHora, Estado) VALUES
  (1, 1, '2026-03-20 09:00', 'Confirmado');

INSERT INTO Inspecciones (TurnoID, Resultado, ProximaVTV) VALUES
  (1, 'Aprobado', '2027-03-20');

INSERT INTO ItemsInspeccion (InspeccionID, Categoria, Descripcion, Estado) VALUES
  (1, 'Frenos',    'Frenos delanteros y traseros', 'OK'),
  (1, 'Luces',     'Luces y señalización',         'OK'),
  (1, 'Emisiones', 'Gases de escape',              'Observado');




#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#