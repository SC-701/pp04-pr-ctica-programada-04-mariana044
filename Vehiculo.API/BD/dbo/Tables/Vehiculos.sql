CREATE TABLE [dbo].[Vehiculos] (
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [IdModelo]            UNIQUEIDENTIFIER NOT NULL,
    [Placa]               VARCHAR (MAX)    NOT NULL,
    [Color]               VARCHAR (MAX)    NOT NULL,
    [Anio]                INT              NOT NULL,
    [Precio]              DECIMAL (18)     NOT NULL,
    [CorreoPropietario]   VARCHAR (MAX)    NOT NULL,
    [TelefonoPropietario] VARCHAR (MAX)    NOT NULL,
    CONSTRAINT [PK_Vehiculos] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Vehiculos_Modelos] FOREIGN KEY ([IdModelo]) REFERENCES [dbo].[Modelos] ([Id])
);

