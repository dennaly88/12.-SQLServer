
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


-- Plantas de VTV (sucursales / estaciones)
CREATE TABLE Plantas (
  PlantaID    INT           IDENTITY(1,1) PRIMARY KEY,
  Nombre      NVARCHAR(100) NOT NULL,
  Direccion   NVARCHAR(200) NOT NULL,
  Ciudad      NVARCHAR(80)  NOT NULL,
  Telefono    VARCHAR(20)   NULL,
  Activa      BIT           NOT NULL DEFAULT 1
);
GO

-- Servidores / líneas de inspección dentro de cada planta
CREATE TABLE Servidores (
  ServidorID  INT           IDENTITY(1,1) PRIMARY KEY,
  PlantaID    INT           NOT NULL,        -- FK → Plantas
  Nombre      NVARCHAR(80)  NOT NULL,        -- Ej: "Línea 1", "Línea 2"
  Tipo        VARCHAR(30)   NOT NULL,        -- Liviano / Pesado / Moto
  Activo      BIT           NOT NULL DEFAULT 1
);
GO

-- Propietarios de vehículos
CREATE TABLE Propietarios (
  PropietarioID INT           IDENTITY(1,1) PRIMARY KEY,
  DNI           VARCHAR(15)   NOT NULL UNIQUE,
  Nombre        NVARCHAR(100) NOT NULL,
  Apellido      NVARCHAR(100) NOT NULL,
  Email         NVARCHAR(150) NULL,
  Telefono      VARCHAR(20)   NULL
);
GO

-- Vehículos
CREATE TABLE Vehiculos (
  VehiculoID    INT           IDENTITY(1,1) PRIMARY KEY,
  PropietarioID INT           NOT NULL,      -- FK → Propietarios
  Patente       VARCHAR(10)   NOT NULL UNIQUE,
  Marca         NVARCHAR(60)  NOT NULL,
  Modelo        NVARCHAR(80)  NOT NULL,
  Anio          SMALLINT      NOT NULL,
  TipoVehiculo  VARCHAR(20)   NOT NULL,      -- Liviano / Pesado / Moto
  Combustible   VARCHAR(20)   NULL           -- Nafta / Diesel / GNC / Eléctrico
);
GO

-- Turnos
CREATE TABLE Turnos (
  TurnoID       INT       IDENTITY(1,1) PRIMARY KEY,
  VehiculoID    INT       NOT NULL,          -- FK → Vehiculos
  ServidorID    INT       NOT NULL,          -- FK → Servidores
  FechaHora     DATETIME  NOT NULL,
  Estado        VARCHAR(20) NOT NULL DEFAULT 'Reservado'
                            -- Reservado / Confirmado / Cancelado / Completado
);
GO

-- Inspecciones (resultado del turno)
CREATE TABLE Inspecciones (
  InspeccionID  INT           IDENTITY(1,1) PRIMARY KEY,
  TurnoID       INT           NOT NULL UNIQUE, -- FK → Turnos (1 a 1)
  FechaInspeccion DATETIME    NOT NULL DEFAULT GETDATE(),
  Resultado     VARCHAR(20)   NOT NULL,       -- Aprobado / Condicional / Rechazado
  Observaciones NVARCHAR(500) NULL,
  ProximaVTV    DATE          NULL            -- fecha de vencimiento
);
GO

-- Ítems inspeccionados por inspección
CREATE TABLE ItemsInspeccion (
  ItemID        INT           IDENTITY(1,1) PRIMARY KEY,
  InspeccionID  INT           NOT NULL,      -- FK → Inspecciones
  Categoria     NVARCHAR(80)  NOT NULL,      -- Frenos / Luces / Emisiones / etc.
  Descripcion   NVARCHAR(200) NOT NULL,
  Estado        VARCHAR(20)   NOT NULL       -- OK / Observado / Rechazado
);
GO
SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE';"

#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#