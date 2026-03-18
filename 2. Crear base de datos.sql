
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

CREATE DATABASE VTV
ON PRIMARY (
  NAME = 'VTV_data',
  FILENAME = '/var/opt/mssql/data/VTV.mdf',
  SIZE = 100MB, MAXSIZE = 2GB, FILEGROWTH = 50MB
)
LOG ON (
  NAME = 'VTV_log',
  FILENAME = '/var/opt/mssql/data/VTV.ldf',
  SIZE = 20MB, FILEGROWTH = 10MB
);
GO

USE VTV;
GO



#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#