CREATE TABLE [auth].[User] (
    [Id]             BIGINT           IDENTITY (1, 1) NOT NULL,
    [Username]       VARCHAR (200)    NOT NULL,
    [Password]       VARCHAR (400)    NOT NULL,
    [RoleId]         INT              NOT NULL,
    [UserIdentifier] UNIQUEIDENTIFIER NOT NULL,
    [IsActive]       BIT              DEFAULT ((1)) NOT NULL,
    [ModifiedAt]     DATETIME2 (7)    DEFAULT (getutcdate()) NOT NULL,
    CONSTRAINT [pk_User] PRIMARY KEY CLUSTERED ([Id] ASC)
);

