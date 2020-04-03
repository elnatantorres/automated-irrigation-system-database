CREATE TABLE [dbo].[SolenoidValve] (
    [Id]                      INT              IDENTITY (1, 1) NOT NULL,
    [Name]                    VARCHAR (100)    NOT NULL,
    [SolenoidValveIdentifier] UNIQUEIDENTIFIER NOT NULL,
    [IsActive]                BIT              DEFAULT ((1)) NOT NULL,
    [ModifiedAt]              DATETIME2 (7)    DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_SolenoidValve] PRIMARY KEY CLUSTERED ([Id] ASC)
);

