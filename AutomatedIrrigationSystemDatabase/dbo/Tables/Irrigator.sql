CREATE TABLE [dbo].[Irrigator] (
    [Id]                  INT              IDENTITY (1, 1) NOT NULL,
    [Name]                VARCHAR (100)    NOT NULL,
    [IrrigatorIdentifier] UNIQUEIDENTIFIER NOT NULL,
    [IsActive]            BIT              DEFAULT ((1)) NOT NULL,
    [ModifiedAt]          DATETIME2 (7)    DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_Irrigator] PRIMARY KEY CLUSTERED ([Id] ASC)
);

