CREATE TABLE [dbo].[IrrigationExecution] (
    [Id]                       BIGINT   IDENTITY (1, 1) NOT NULL,
    [IrrigationSystemId]       INT      NOT NULL,
    [InitialExecutionDateTime] DATETIME NOT NULL,
    [FinalExecutionDateTime]   DATETIME NULL,
    [UserId]                   BIGINT   NOT NULL,
    CONSTRAINT [pk_IrrigationExecution] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [fk_IrrigationExecution_IrrigationSystem] FOREIGN KEY ([IrrigationSystemId]) REFERENCES [dbo].[IrrigationSystem] ([Id]),
    CONSTRAINT [fk_IrrigationExecution_User] FOREIGN KEY ([UserId]) REFERENCES [auth].[User] ([Id])
);

