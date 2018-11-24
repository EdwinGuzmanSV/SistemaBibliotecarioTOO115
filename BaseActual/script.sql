USE [Biblioteca]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 24/11/2018 4:40:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[IdPersona] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AUTOR]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AUTOR](
	[IDAUTOR] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](1024) NULL,
 CONSTRAINT [PK_AUTOR] PRIMARY KEY CLUSTERED 
(
	[IDAUTOR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CATERGORIA]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CATERGORIA](
	[IDCATEGORIA] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ID] [nvarchar](128) NOT NULL,
	[NOMCAT] [varchar](1024) NOT NULL,
 CONSTRAINT [PK_CATERGORIA] PRIMARY KEY CLUSTERED 
(
	[IDCATEGORIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DEPARTAMENTO]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTAMENTO](
	[IDDEP] [int] NOT NULL,
	[IDMUNICIPIO] [int] NOT NULL,
	[NOMDEP] [varchar](1024) NULL,
 CONSTRAINT [PK_DEPARTAMENTO] PRIMARY KEY CLUSTERED 
(
	[IDDEP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLEDEPERSONA]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLEDEPERSONA](
	[IDDETALLE] [int] IDENTITY(1,1) NOT NULL,
	[IDPERSONA] [nvarchar](10) NOT NULL,
	[LUGARDEESTUDIOS] [varchar](255) NOT NULL,
	[TRABAJA] [bit] NOT NULL,
	[ESTUDIA] [bit] NOT NULL,
	[NOMBREMADRE] [varchar](255) NOT NULL,
	[NOMBREPADRE] [varchar](255) NOT NULL,
 CONSTRAINT [PK_DETALLEDEPERSONA] PRIMARY KEY NONCLUSTERED 
(
	[IDDETALLE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCUMENTOLOCALIDAD]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCUMENTOLOCALIDAD](
	[IDLOCALIDAD] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[LOCALIDADFISICOODIGITAL] [bit] NULL,
	[LOCACIONOURL] [varchar](1024) NULL,
 CONSTRAINT [PK_DOCUMENTOLOCALIDAD] PRIMARY KEY CLUSTERED 
(
	[IDLOCALIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MATERIALBIBLIOGRAFICO]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MATERIALBIBLIOGRAFICO](
	[IDMATBIBLIO] [numeric](18, 0) NOT NULL,
	[IDLOCALIDAD] [numeric](18, 0) NULL,
	[IDCATEGORIA] [numeric](18, 0) NULL,
	[IDTIPO] [numeric](18, 0) NULL,
	[ID] [nvarchar](128) NULL,
	[REL_IDAUTOR] [numeric](18, 0) NULL,
	[NOMBRE] [varchar](1024) NULL,
	[DESCRIPCION] [varchar](1024) NULL,
	[SINOPSIS] [varchar](1024) NULL,
	[FECHA] [datetime] NULL,
	[VOLUMEN] [int] NULL,
	[UNIDADES] [varchar](1024) NULL,
	[EDITORIAL] [varchar](1024) NULL,
	[LENGUAJE] [varchar](1024) NULL,
	[FOTO] [varchar](1024) NULL,
	[IDAUTOR] [int] NULL,
 CONSTRAINT [PK_MATERIALBIBLIOGRAFICO] PRIMARY KEY CLUSTERED 
(
	[IDMATBIBLIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MENU]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MENU](
	[IDMENU] [int] NOT NULL,
	[ID] [nvarchar](128) NOT NULL,
	[MEN_IDMENU] [int] NULL,
	[NOMBRE] [varchar](1024) NULL,
 CONSTRAINT [PK_MENU] PRIMARY KEY CLUSTERED 
(
	[IDMENU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MUNICIPIO]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MUNICIPIO](
	[IDMUNICIPIO] [int] NOT NULL,
	[NOMMUN] [varchar](1024) NULL,
 CONSTRAINT [PK_MUNICIPIO] PRIMARY KEY CLUSTERED 
(
	[IDMUNICIPIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PENALIZACION]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PENALIZACION](
	[IDPE] [int] NOT NULL,
	[ID] [nvarchar](128) NOT NULL,
	[FECHAINI] [datetime] NULL,
	[FECHAFIN] [datetime] NULL,
 CONSTRAINT [PK_PENALIZACION] PRIMARY KEY CLUSTERED 
(
	[IDPE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONA]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONA](
	[IDPERSONA] [nvarchar](10) NOT NULL,
	[IDMUNICIPIO] [int] NULL,
	[NOMBRE] [varchar](255) NOT NULL,
	[APELLIDO] [varchar](255) NOT NULL,
	[FECHANACIMIENTO] [datetime] NULL,
	[GENERO] [varchar](255) NOT NULL,
	[DIRECCION] [varchar](255) NOT NULL,
	[TELEFONO] [varchar](255) NOT NULL,
 CONSTRAINT [PK_PERSONA] PRIMARY KEY CLUSTERED 
(
	[IDPERSONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRESTAMO]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRESTAMO](
	[IDPRESTAMO] [int] NOT NULL,
	[IDMATBIBLIO] [numeric](18, 0) NULL,
	[ID] [nvarchar](128) NULL,
	[FECHADEPRESTAMO] [varchar](1024) NULL,
	[FECHADEENTREGA] [varchar](1024) NULL,
 CONSTRAINT [PK_PRESTAMO] PRIMARY KEY CLUSTERED 
(
	[IDPRESTAMO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RELATIONSHIP_15]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RELATIONSHIP_15](
	[IDAUTOR] [numeric](18, 0) NOT NULL,
	[IDMATBIBLIO] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_RELATIONSHIP_15] PRIMARY KEY CLUSTERED 
(
	[IDAUTOR] ASC,
	[IDMATBIBLIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPODOCUMENTO]    Script Date: 24/11/2018 4:40:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPODOCUMENTO](
	[IDTIPO] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[TIPODOCUMENTO] [varchar](1024) NULL,
 CONSTRAINT [PK_TIPODOCUMENTO] PRIMARY KEY CLUSTERED 
(
	[IDTIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[CATERGORIA]  WITH CHECK ADD  CONSTRAINT [FK_CATERGOR_REFERENCE_ASPNETUSERS] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[CATERGORIA] CHECK CONSTRAINT [FK_CATERGOR_REFERENCE_ASPNETUSERS]
GO
ALTER TABLE [dbo].[DEPARTAMENTO]  WITH CHECK ADD  CONSTRAINT [FK_DEPARTAM_REFERENCE_MUNICIPI] FOREIGN KEY([IDMUNICIPIO])
REFERENCES [dbo].[MUNICIPIO] ([IDMUNICIPIO])
GO
ALTER TABLE [dbo].[DEPARTAMENTO] CHECK CONSTRAINT [FK_DEPARTAM_REFERENCE_MUNICIPI]
GO
ALTER TABLE [dbo].[DETALLEDEPERSONA]  WITH CHECK ADD  CONSTRAINT [FK_DETALLED_REFERENCE_PERSONA] FOREIGN KEY([IDPERSONA])
REFERENCES [dbo].[PERSONA] ([IDPERSONA])
GO
ALTER TABLE [dbo].[DETALLEDEPERSONA] CHECK CONSTRAINT [FK_DETALLED_REFERENCE_PERSONA]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_FK_MATERI_DOCUMENT] FOREIGN KEY([IDLOCALIDAD])
REFERENCES [dbo].[DOCUMENTOLOCALIDAD] ([IDLOCALIDAD])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_FK_MATERI_DOCUMENT]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_FK_MATERI_TIPODOCU] FOREIGN KEY([IDTIPO])
REFERENCES [dbo].[TIPODOCUMENTO] ([IDTIPO])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_FK_MATERI_TIPODOCU]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_REFERENCE_AspNetUsers] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_REFERENCE_AspNetUsers]
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO]  WITH CHECK ADD  CONSTRAINT [FK_MATERIAL_REFERENCE_RELATION] FOREIGN KEY([REL_IDAUTOR], [IDMATBIBLIO])
REFERENCES [dbo].[RELATIONSHIP_15] ([IDAUTOR], [IDMATBIBLIO])
GO
ALTER TABLE [dbo].[MATERIALBIBLIOGRAFICO] CHECK CONSTRAINT [FK_MATERIAL_REFERENCE_RELATION]
GO
ALTER TABLE [dbo].[MENU]  WITH CHECK ADD  CONSTRAINT [FK_MENU_FK_MENU_R_MENU] FOREIGN KEY([MEN_IDMENU])
REFERENCES [dbo].[MENU] ([IDMENU])
GO
ALTER TABLE [dbo].[MENU] CHECK CONSTRAINT [FK_MENU_FK_MENU_R_MENU]
GO
ALTER TABLE [dbo].[MENU]  WITH CHECK ADD  CONSTRAINT [FK_MENU_FK_MENU_S_ASPNETROLES] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO
ALTER TABLE [dbo].[MENU] CHECK CONSTRAINT [FK_MENU_FK_MENU_S_ASPNETROLES]
GO
ALTER TABLE [dbo].[PENALIZACION]  WITH CHECK ADD  CONSTRAINT [FK_PENALIZA_FK_PENALI_ASPNETUSERS] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PENALIZACION] CHECK CONSTRAINT [FK_PENALIZA_FK_PENALI_ASPNETUSERS]
GO
ALTER TABLE [dbo].[PERSONA]  WITH CHECK ADD  CONSTRAINT [FK_PERSONA_REFERENCE_MUNICIPI] FOREIGN KEY([IDMUNICIPIO])
REFERENCES [dbo].[MUNICIPIO] ([IDMUNICIPIO])
GO
ALTER TABLE [dbo].[PERSONA] CHECK CONSTRAINT [FK_PERSONA_REFERENCE_MUNICIPI]
GO
ALTER TABLE [dbo].[PRESTAMO]  WITH CHECK ADD  CONSTRAINT [FK_PRESTAMO_FK_PRESTA_ASPNETUSERS] FOREIGN KEY([ID])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[PRESTAMO] CHECK CONSTRAINT [FK_PRESTAMO_FK_PRESTA_ASPNETUSERS]
GO
ALTER TABLE [dbo].[PRESTAMO]  WITH CHECK ADD  CONSTRAINT [FK_PRESTAMO_FK_PRESTA_MATERIAL] FOREIGN KEY([IDMATBIBLIO])
REFERENCES [dbo].[MATERIALBIBLIOGRAFICO] ([IDMATBIBLIO])
GO
ALTER TABLE [dbo].[PRESTAMO] CHECK CONSTRAINT [FK_PRESTAMO_FK_PRESTA_MATERIAL]
GO
ALTER TABLE [dbo].[RELATIONSHIP_15]  WITH CHECK ADD  CONSTRAINT [FK_RELATION_RELATIONS_AUTOR] FOREIGN KEY([IDAUTOR])
REFERENCES [dbo].[AUTOR] ([IDAUTOR])
GO
ALTER TABLE [dbo].[RELATIONSHIP_15] CHECK CONSTRAINT [FK_RELATION_RELATIONS_AUTOR]
GO
