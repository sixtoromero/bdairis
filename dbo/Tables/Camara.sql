CREATE TABLE [dbo].[Camara] (
    [Id_Camara]         INT            IDENTITY (1, 1) NOT NULL,
    [Id_Municipio]      INT            NOT NULL,
    [Ip]                NVARCHAR (40)  NOT NULL,
    [IdSoporte]         INT            NOT NULL,
    [Altura]            DECIMAL (6, 2) NOT NULL,
    [GradosOrientacion] INT            NOT NULL,
    [Marca]             NVARCHAR (50)  NOT NULL,
    [Modelo]            NVARCHAR (50)  NOT NULL,
    [Posicion]          NVARCHAR (150) NOT NULL,
    [Nombre]            NVARCHAR (150) NOT NULL,
    [TipoCamara]        NVARCHAR (80)  NOT NULL,
    [Activa]            BIT            NOT NULL,
    CONSTRAINT [PK_Camara] PRIMARY KEY CLUSTERED ([Id_Camara] ASC),
    CONSTRAINT [FK_Camara_Municipios] FOREIGN KEY ([Id_Municipio]) REFERENCES [dbo].[Municipios] ([Id_Municipio])
);

