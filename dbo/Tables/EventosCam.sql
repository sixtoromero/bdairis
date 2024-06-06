CREATE TABLE [dbo].[EventosCam] (
    [Id_Evento]          INT            IDENTITY (1, 1) NOT NULL,
    [Id_Camara]          INT            NOT NULL,
    [Archivo]            NVARCHAR (MAX) NOT NULL,
    [Error]              NVARCHAR (50)  NULL,
    [Error_Descripcion]  NVARCHAR (MAX) NULL,
    [Fecha_Imagen]       DATETIME       NOT NULL,
    [Fecha_Imagen_UTC]   DATETIME       NOT NULL,
    [Fecha_Imagen_Local] DATETIME       NOT NULL,
    [Deteccion]          NVARCHAR (80)  NOT NULL,
    CONSTRAINT [PK_EventosCam] PRIMARY KEY CLUSTERED ([Id_Evento] ASC),
    CONSTRAINT [FK_EventosCam_Camara] FOREIGN KEY ([Id_Camara]) REFERENCES [dbo].[Camara] ([Id_Camara])
);

