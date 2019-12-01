
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/30/2019 15:11:56
-- Generated from EDMX file: C:\Users\Lenovo Rose\Source\Repos\ProyectoFinal\RecursosHumanos\RecursosHumanos\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Mantenimiento];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EmpleadosSet'
CREATE TABLE [dbo].[EmpleadosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoEmpleado] bigint  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Departamento] nvarchar(max)  NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL,
    [FechaIngreso] datetime  NOT NULL,
    [Salario] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DepartamentosSet'
CREATE TABLE [dbo].[DepartamentosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoDepartamento] bigint  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'CargosSet'
CREATE TABLE [dbo].[CargosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EmpleadosSet'
ALTER TABLE [dbo].[EmpleadosSet]
ADD CONSTRAINT [PK_EmpleadosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DepartamentosSet'
ALTER TABLE [dbo].[DepartamentosSet]
ADD CONSTRAINT [PK_DepartamentosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CargosSet'
ALTER TABLE [dbo].[CargosSet]
ADD CONSTRAINT [PK_CargosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------