CREATE TABLE [dbo].[Sensor] (
    [Id]               INT              IDENTITY (1, 1) NOT NULL,
    [Name]             VARCHAR (100)    NOT NULL,
    [SensorIdentifier] UNIQUEIDENTIFIER NOT NULL,
    [SensorTypeId]     INT              NOT NULL,
    [IsActive]         BIT              DEFAULT ((1)) NOT NULL,
    [ModifiedAt]       DATETIME2 (7)    DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_Sensor] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_Sensor_SensorType] FOREIGN KEY ([SensorTypeId]) REFERENCES [dbo].[SensorType] ([Id])
);

