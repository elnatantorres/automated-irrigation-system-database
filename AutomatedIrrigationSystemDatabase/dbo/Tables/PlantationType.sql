CREATE TABLE [dbo].[PlantationType] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (100) NOT NULL,
    CONSTRAINT [pk_PlantationType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

