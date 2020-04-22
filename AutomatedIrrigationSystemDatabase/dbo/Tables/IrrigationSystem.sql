CREATE TABLE [dbo].[IrrigationSystem] (
    [Id]                       INT   IDENTITY (1, 1) NOT NULL,
    [PlantationId]             INT      NOT NULL,
    [IrrigatorId]              INT      NOT NULL,
    [ControllerId]             INT      NOT NULL,
    [SolenoidValveId]          INT      NOT NULL,
    [SensorId]                 INT      NOT NULL
    CONSTRAINT [pk_IrrigationSystem] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_IrrigationSystem_Controller] FOREIGN KEY ([ControllerId]) REFERENCES [dbo].[Controller] ([Id]),
    CONSTRAINT [fk_IrrigationSystem_Irrigator] FOREIGN KEY ([IrrigatorId]) REFERENCES [dbo].[Irrigator] ([Id]),
    CONSTRAINT [fk_IrrigationSystem_Plantation] FOREIGN KEY ([PlantationId]) REFERENCES [dbo].[Plantation] ([Id]),
    CONSTRAINT [fk_IrrigationSystem_Sensor] FOREIGN KEY ([SensorId]) REFERENCES [dbo].[Sensor] ([Id]),
    CONSTRAINT [fk_IrrigationSystem_SolenoidValve] FOREIGN KEY ([SolenoidValveId]) REFERENCES [dbo].[SolenoidValve] ([Id])
);

