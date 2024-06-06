CREATE TABLE [dbo].[Municipios] (
    [Id_Municipio] INT           IDENTITY (1, 1) NOT NULL,
    [Nombre]       NVARCHAR (80) NOT NULL,
    [Provincia]    NVARCHAR (80) NOT NULL,
    CONSTRAINT [PK_Municipios] PRIMARY KEY CLUSTERED ([Id_Municipio] ASC)
);

