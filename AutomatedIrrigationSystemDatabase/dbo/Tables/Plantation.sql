CREATE TABLE [dbo].[Plantation] (
    [Id]                   INT              IDENTITY (1, 1) NOT NULL,
    [Name]                 VARCHAR (100)    NOT NULL,
    [PlantationType]       INT              NOT NULL,
    [PlantationIdentifier] UNIQUEIDENTIFIER NOT NULL,
    [IsActive]             BIT              DEFAULT ((1)) NOT NULL,
    [ModifiedAt]           DATETIME2 (7)    DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_Plantation] PRIMARY KEY CLUSTERED ([Id] ASC)
);

