
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


-- Cambiar nombre de VTV a uno más profesional
USE master;
GO

ALTER DATABASE VTV 
SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

ALTER DATABASE VTV 
MODIFY NAME = servidores_vtv;
GO

ALTER DATABASE servidores_vtv
SET MULTI_USER;
GO

USE servidores_vtv;  -- Ya está renombrada








#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#