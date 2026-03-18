
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
-- Servidores → Plantas
ALTER TABLE Servidores
  ADD CONSTRAINT FK_Servidores_Plantas
  FOREIGN KEY (PlantaID) REFERENCES Plantas(PlantaID);
GO

-- Vehiculos → Propietarios
ALTER TABLE Vehiculos
  ADD CONSTRAINT FK_Vehiculos_Propietarios
  FOREIGN KEY (PropietarioID) REFERENCES Propietarios(PropietarioID);
GO

-- Turnos → Vehiculos
ALTER TABLE Turnos
  ADD CONSTRAINT FK_Turnos_Vehiculos
  FOREIGN KEY (VehiculoID) REFERENCES Vehiculos(VehiculoID);
GO

-- Turnos → Servidores
ALTER TABLE Turnos
  ADD CONSTRAINT FK_Turnos_Servidores
  FOREIGN KEY (ServidorID) REFERENCES Servidores(ServidorID);
GO

-- Inspecciones → Turnos (relación 1 a 1)
ALTER TABLE Inspecciones
  ADD CONSTRAINT FK_Inspecciones_Turnos
  FOREIGN KEY (TurnoID) REFERENCES Turnos(TurnoID);
GO

-- ItemsInspeccion → Inspecciones
ALTER TABLE ItemsInspeccion
  ADD CONSTRAINT FK_Items_Inspecciones
  FOREIGN KEY (InspeccionID) REFERENCES Inspecciones(InspeccionID);
GO


#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#




