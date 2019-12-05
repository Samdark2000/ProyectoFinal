
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/04/2019 11:53:24
-- Generated from EDMX file: C:\Users\Lenovo Rose\Source\Repos\ProyectoFinal\RecursoHumanos\RecursoHumanos\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [RecHumano];
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

-- Creating table 'EmpleadoSet'
CREATE TABLE [dbo].[EmpleadoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CodigoEmpleado] bigint  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Apellido] nvarchar(max)  NOT NULL,
    [Telefono] nvarchar(max)  NOT NULL,
    [Departamento] nvarchar(max)  NOT NULL,
    [Cargo] nvarchar(max)  NOT NULL,
    [FechaIngreso] datetime  NOT NULL,
    [Salario] nvarchar(max)  NOT NULL,
    [Estatus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'VacacionesSet'
CREATE TABLE [dbo].[VacacionesSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Emplado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Años] bigint  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'DepartamentoSet'
CREATE TABLE [dbo].[DepartamentoSet] (
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

-- Creating table 'NominaSet'
CREATE TABLE [dbo].[NominaSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Fecha] datetime  NOT NULL,
    [MontoTotal] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'SalidasEmpleadoSet'
CREATE TABLE [dbo].[SalidasEmpleadoSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Empleado] nvarchar(max)  NOT NULL,
    [TipoSalida] nvarchar(max)  NOT NULL,
    [Motivo] nvarchar(max)  NOT NULL,
    [FechaSalida] datetime  NOT NULL
);
GO

-- Creating table 'PermisosSet'
CREATE TABLE [dbo].[PermisosSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Emplado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'LicenciasSet'
CREATE TABLE [dbo].[LicenciasSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Emplado] nvarchar(max)  NOT NULL,
    [Desde] datetime  NOT NULL,
    [Hasta] datetime  NOT NULL,
    [Motivos] nvarchar(max)  NOT NULL,
    [Comentarios] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'EmpleadoSet'
ALTER TABLE [dbo].[EmpleadoSet]
ADD CONSTRAINT [PK_EmpleadoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'VacacionesSet'
ALTER TABLE [dbo].[VacacionesSet]
ADD CONSTRAINT [PK_VacacionesSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'DepartamentoSet'
ALTER TABLE [dbo].[DepartamentoSet]
ADD CONSTRAINT [PK_DepartamentoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CargosSet'
ALTER TABLE [dbo].[CargosSet]
ADD CONSTRAINT [PK_CargosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'NominaSet'
ALTER TABLE [dbo].[NominaSet]
ADD CONSTRAINT [PK_NominaSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SalidasEmpleadoSet'
ALTER TABLE [dbo].[SalidasEmpleadoSet]
ADD CONSTRAINT [PK_SalidasEmpleadoSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'PermisosSet'
ALTER TABLE [dbo].[PermisosSet]
ADD CONSTRAINT [PK_PermisosSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'LicenciasSet'
ALTER TABLE [dbo].[LicenciasSet]
ADD CONSTRAINT [PK_LicenciasSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------