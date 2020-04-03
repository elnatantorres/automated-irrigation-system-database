CREATE TABLE [dbo].[IrrigationExecution] (
    [Id]                       BIGINT   IDENTITY (1, 1) NOT NULL,
    [PlantationId]             INT      NOT NULL,
    [IrrigatorId]              INT      NOT NULL,
    [ControllerId]             INT      NOT NULL,
    [SolenoidValveId]          INT      NOT NULL,
    [SensorId]                 INT      NOT NULL,
    [InitialExecutionDateTime] DATETIME NOT NULL,
    [FinalExecutionDateTime]   DATETIME NULL,
    [UserId]                   BIGINT   NOT NULL,
    CONSTRAINT [pk_IrrigationExecution] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_IrrigationExecution_Controller] FOREIGN KEY ([ControllerId]) REFERENCES [dbo].[Controller] ([Id]),
    CONSTRAINT [fk_IrrigationExecution_Irrigator] FOREIGN KEY ([IrrigatorId]) REFERENCES [dbo].[Irrigator] ([Id]),
    CONSTRAINT [fk_IrrigationExecution_Plantation] FOREIGN KEY ([PlantationId]) REFERENCES [dbo].[Plantation] ([Id]),
    CONSTRAINT [fk_IrrigationExecution_Sensor] FOREIGN KEY ([SensorId]) REFERENCES [dbo].[Sensor] ([Id]),
    CONSTRAINT [fk_IrrigationExecution_SolenoidValve] FOREIGN KEY ([SolenoidValveId]) REFERENCES [dbo].[SolenoidValve] ([Id]),
    CONSTRAINT [fk_IrrigationExecution_User] FOREIGN KEY ([UserId]) REFERENCES [auth].[User] ([Id])
);

