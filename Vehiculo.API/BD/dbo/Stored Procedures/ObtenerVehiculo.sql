CREATE PROCEDURE ObtenerVehiculo
	-- Add the parameters for the stored procedure here
	@Id uniqueidentifier
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT Vehiculos.Id, Vehiculos.IdModelo, Vehiculos.Placa, Vehiculos.Color, Vehiculos.Anio, Vehiculos.Precio, Vehiculos.CorreoPropietario, Vehiculos.TelefonoPropietario, Modelos.Nombre AS Modelo, Marcas.Nombre AS Marca
FROM     Vehiculos INNER JOIN
                  Modelos ON Vehiculos.IdModelo = Modelos.Id INNER JOIN
                  Marcas ON Modelos.IdMarca = Marcas.id
WHERE  (Vehiculos.Id = @Id)
END