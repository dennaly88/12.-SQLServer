
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

CREATE TABLE Servidores (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    ip VARCHAR(15) NOT NULL,
    hostname VARCHAR(100),
    sistema_operativo VARCHAR(30),
    ram_gb INT,
    cpu_cores INT,
    disco_gb INT,
    ubicacion VARCHAR(50),
    estado VARCHAR(20) DEFAULT 'Activo',
    fecha_alta DATETIME DEFAULT GETDATE(),
    tecnico_responsable VARCHAR(100)
);


CREATE TABLE Redes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    nombre_red VARCHAR(50) NOT NULL,
    vlan_id INT,
    rango_ip VARCHAR(20),
    mascara VARCHAR(15),
    gateway VARCHAR(15),
    switch_principal VARCHAR(50),
    puerto_switch VARCHAR(20),
    estado VARCHAR(20) DEFAULT 'Activo'
);


CREATE TABLE Interfaces (
    id INT IDENTITY(1,1) PRIMARY KEY,
    servidor_id INT FOREIGN KEY REFERENCES Servidores(id),
    nombre_interfaz VARCHAR(30),
    ip_address VARCHAR(15),
    mac_address VARCHAR(17),
    red_id INT FOREIGN KEY REFERENCES Redes(id),

    estado VARCHAR(20) DEFAULT 'Up'
);

CREATE TABLE Mantenimientos (
    id INT IDENTITY(1,1) PRIMARY KEY,
    servidor_id INT FOREIGN KEY REFERENCES Servidores(id),
    fecha_mantenimiento DATETIME DEFAULT GETDATE(),
    tecnico VARCHAR(100),
    descripcion TEXT,
    horas_trabajo DECIMAL(4,2),
    costo DECIMAL(10,2)
);


CREATE TABLE Usuarios_Sistema (
    id INT IDENTITY(1,1) PRIMARY KEY,
    servidor_id INT FOREIGN KEY REFERENCES Servidores(id),
    usuario VARCHAR(50),
    uid INT,
    grupo_principal VARCHAR(50),
    ultimo_login DATETIME,
    estado_cuenta VARCHAR(20)
);








#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#