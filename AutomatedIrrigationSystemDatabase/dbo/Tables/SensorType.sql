CREATE TABLE [dbo].[SensorType] (
    [Id]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (100) NOT NULL,
    CONSTRAINT [pk_SensorType] PRIMARY KEY CLUSTERED ([Id] ASC)
);

