
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/08/2017 14:40:57
-- Generated from EDMX file: C:\Users\leo\documents\visual studio 2017\Projects\CSC510Project.NET\CSC510Project.NET\Models\EntityDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [CSC510Project.NET];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_UserCritic]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Users] DROP CONSTRAINT [FK_UserCritic];
GO
IF OBJECT_ID(N'[dbo].[FK_CriticMovie_Critic]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CriticMovie] DROP CONSTRAINT [FK_CriticMovie_Critic];
GO
IF OBJECT_ID(N'[dbo].[FK_CriticMovie_Movie]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CriticMovie] DROP CONSTRAINT [FK_CriticMovie_Movie];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Movies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Movies];
GO
IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Critics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Critics];
GO
IF OBJECT_ID(N'[dbo].[CriticMovie]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CriticMovie];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Movies'
CREATE TABLE [dbo].[Movies] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Critic_Id] int  NOT NULL
);
GO

-- Creating table 'Critics'
CREATE TABLE [dbo].[Critics] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'CriticMovie'
CREATE TABLE [dbo].[CriticMovie] (
    [Critics_Id] int  NOT NULL,
    [Movies_Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Movies'
ALTER TABLE [dbo].[Movies]
ADD CONSTRAINT [PK_Movies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Critics'
ALTER TABLE [dbo].[Critics]
ADD CONSTRAINT [PK_Critics]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Critics_Id], [Movies_Id] in table 'CriticMovie'
ALTER TABLE [dbo].[CriticMovie]
ADD CONSTRAINT [PK_CriticMovie]
    PRIMARY KEY CLUSTERED ([Critics_Id], [Movies_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Critic_Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_UserCritic]
    FOREIGN KEY ([Critic_Id])
    REFERENCES [dbo].[Critics]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserCritic'
CREATE INDEX [IX_FK_UserCritic]
ON [dbo].[Users]
    ([Critic_Id]);
GO

-- Creating foreign key on [Critics_Id] in table 'CriticMovie'
ALTER TABLE [dbo].[CriticMovie]
ADD CONSTRAINT [FK_CriticMovie_Critic]
    FOREIGN KEY ([Critics_Id])
    REFERENCES [dbo].[Critics]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Movies_Id] in table 'CriticMovie'
ALTER TABLE [dbo].[CriticMovie]
ADD CONSTRAINT [FK_CriticMovie_Movie]
    FOREIGN KEY ([Movies_Id])
    REFERENCES [dbo].[Movies]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CriticMovie_Movie'
CREATE INDEX [IX_FK_CriticMovie_Movie]
ON [dbo].[CriticMovie]
    ([Movies_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------