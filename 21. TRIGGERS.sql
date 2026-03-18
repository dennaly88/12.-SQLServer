
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


CREATE TRIGGER trg_AuditServidorInsert
ON Servidores
AFTER INSERT
AS
BEGIN
    INSERT INTO Mantenimientos (servidor_id, tecnico, descripcion, fecha_mantenimiento)
    SELECT 
        i.id, 
        'Sistema', 
        'Servidor registrado automáticamente', 
        GETDATE()
    FROM inserted i;
END;
GO






#___________________________________________________#
#  CÚA , ESTADO MIRANDA 2026                        #
#  CURSO DE SQL SERVER                              #
#  DEV DEVELOPMENT                                  #
#___________________________________________________#