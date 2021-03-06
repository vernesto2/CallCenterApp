create DATABASE CallCenterDBPrueba
go

USE [CallCenterDBPrueba]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actividad]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividad](
	[IdActividad] [bigint] IDENTITY(1,1) NOT NULL,
	[IdTipoActividad] [bigint] NOT NULL,
	[InicioLlamada] [datetime2](7) NOT NULL,
	[FinLlamada] [datetime2](7) NOT NULL,
	[Motivo] [nvarchar](max) NULL,
	[Resuelto] [bit] NOT NULL,
	[usuarioId] [nvarchar](450) NULL,
	[TipoActividadIdTipoActividad] [bigint] NULL,
 CONSTRAINT [PK_Actividad] PRIMARY KEY CLUSTERED 
(
	[IdActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Activo] [bit] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoActividad]    Script Date: 28/12/2021 01:34:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoActividad](
	[IdTipoActividad] [bigint] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Activo] [bit] NULL,
 CONSTRAINT [PK_TipoActividad] PRIMARY KEY CLUSTERED 
(
	[IdTipoActividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.21')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211228054601_Iniciar', N'3.1.21')
GO
SET IDENTITY_INSERT [dbo].[Actividad] ON 

INSERT [dbo].[Actividad] ([IdActividad], [IdTipoActividad], [InicioLlamada], [FinLlamada], [Motivo], [Resuelto], [usuarioId], [TipoActividadIdTipoActividad]) VALUES (1, 1, CAST(N'2021-12-28T01:31:43.4800000' AS DateTime2), CAST(N'2021-12-28T01:31:55.3360000' AS DateTime2), N'Prueba duda', 1, N'2e8d56bf-a198-4a4e-933b-40e86296c32a', NULL)
INSERT [dbo].[Actividad] ([IdActividad], [IdTipoActividad], [InicioLlamada], [FinLlamada], [Motivo], [Resuelto], [usuarioId], [TipoActividadIdTipoActividad]) VALUES (2, 2, CAST(N'2021-12-28T01:32:07.5120000' AS DateTime2), CAST(N'2021-12-28T01:32:20.8240000' AS DateTime2), N'Prueba Consulta', 1, N'2e8d56bf-a198-4a4e-933b-40e86296c32a', NULL)
INSERT [dbo].[Actividad] ([IdActividad], [IdTipoActividad], [InicioLlamada], [FinLlamada], [Motivo], [Resuelto], [usuarioId], [TipoActividadIdTipoActividad]) VALUES (3, 3, CAST(N'2021-12-28T01:32:35.8810000' AS DateTime2), CAST(N'2021-12-28T01:32:37.7040000' AS DateTime2), N'fhdfgh', 1, N'2e8d56bf-a198-4a4e-933b-40e86296c32a', NULL)
INSERT [dbo].[Actividad] ([IdActividad], [IdTipoActividad], [InicioLlamada], [FinLlamada], [Motivo], [Resuelto], [usuarioId], [TipoActividadIdTipoActividad]) VALUES (4, 1, CAST(N'2021-12-28T01:33:05.3050000' AS DateTime2), CAST(N'2021-12-28T01:33:08.2230000' AS DateTime2), N'dvddfgdf', 1, N'7bea6b49-fa67-4cca-ac86-740d4e224956', NULL)
SET IDENTITY_INSERT [dbo].[Actividad] OFF
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'47a94deb-6ed0-4259-8950-fe9b05870559', N'SUPERVISOR', N'SUPERVISOR', N'f8035a77-47a8-4080-8b2e-5427a89abe7c')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'7b896336-9a7a-4f76-b357-f11528492743', N'AGENTE', N'AGENTE', N'fdedafd7-4d5c-414f-9b9d-b7f0c8cdf890')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2e8d56bf-a198-4a4e-933b-40e86296c32a', N'47a94deb-6ed0-4259-8950-fe9b05870559')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'64cb5c86-0589-40c3-9fe2-5767d5a7ad7f', N'47a94deb-6ed0-4259-8950-fe9b05870559')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'169f2244-f698-451a-aeaf-9956edae73d0', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'171bc6c8-0fa0-4ff3-b4ce-cef9f0cadc6a', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'300b1258-bfe3-474a-8500-9f5c8b024693', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'630d0886-6ee3-4e08-a7b2-8076c12efbe5', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'697c9c93-cacd-42ef-b4f4-5ddce9463ac3', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6fff35f5-5b13-499b-bc85-cf03e2424886', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7bea6b49-fa67-4cca-ac86-740d4e224956', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'911ffd55-940e-4311-8223-afab0b0adf3e', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'cde1b031-d591-4f6f-a741-91504624b819', N'7b896336-9a7a-4f76-b357-f11528492743')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f92e5d99-e643-4579-bd16-d335803498d7', N'7b896336-9a7a-4f76-b357-f11528492743')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'169f2244-f698-451a-aeaf-9956edae73d0', N'agente6@prueba.com', N'AGENTE6@PRUEBA.COM', N'agente6@prueba.com', N'AGENTE6@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEGZa7WJo8x+eEWxpcNqCbU2w5XSVKmFHSreRnDDz37Ch90V4SlPR7nKyqI3/11sg7w==', N'LYQUIMXPXBAC2SZX23ZSNPFFWUTGICMK', N'1bae08e6-7c06-43c1-9ac0-4eeb6c65970a', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'171bc6c8-0fa0-4ff3-b4ce-cef9f0cadc6a', N'agente8@prueba.com', N'AGENTE8@PRUEBA.COM', N'agente8@prueba.com', N'AGENTE8@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEJtE2UphVkFlAs8I4hCgTxOaba/kzmN2hl0J8xlf7jdc1VFVEGC2rUvLeh5cuD7Ejw==', N'XNXHEGGFVD7SHIAWTDKEPXS4LK2KVZ2Q', N'5578807e-2467-40d5-9cea-9f8e21b84c95', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'2e8d56bf-a198-4a4e-933b-40e86296c32a', N'supervisor0@prueba.com', N'SUPERVISOR0@PRUEBA.COM', N'supervisor0@prueba.com', N'SUPERVISOR0@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEG2WM9YFkOaBdDZzfRKcdkX2oZQYyOikCkw9WXpXlEH/ZHKeEcP5YTcRYL0CZo3e5g==', N'VNRYXPAML67ZZDEFK65SVYO3WHEXHBIQ', N'5e0c2ee8-3b97-4568-922a-485aa83536f2', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'300b1258-bfe3-474a-8500-9f5c8b024693', N'agente7@prueba.com', N'AGENTE7@PRUEBA.COM', N'agente7@prueba.com', N'AGENTE7@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAELjbOB9Mj2Mss6MFyYnkEIqOnXwx6cQPqHK7EVcWOrDXPK5RTrbUca9s/Oz3sIuwpg==', N'4T4TYBUYXF24KKRBGSQ3TJP3RU6MCWL3', N'878c0a92-55eb-4263-895b-29992c59429d', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'630d0886-6ee3-4e08-a7b2-8076c12efbe5', N'agente5@prueba.com', N'AGENTE5@PRUEBA.COM', N'agente5@prueba.com', N'AGENTE5@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAENF5sunhXq0R7QI5kCgUCxH9wpsl3+EP1SzaqYYBy9yZBTEUyR2frXo9/R4E77vl1Q==', N'P4H7PSMGJL4ZGXBRUDUIXRWGIVJC5KFP', N'9d018b19-c1c7-4a9f-afca-fcd1b1878498', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'64cb5c86-0589-40c3-9fe2-5767d5a7ad7f', N'supervisor1@prueba.com', N'SUPERVISOR1@PRUEBA.COM', N'supervisor1@prueba.com', N'SUPERVISOR1@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEMJZe8OdscxjK50WUMrfbWzPzkDDADSI+9DBl48vbK79z1cUbYHgDbrV3/uHUV8PDQ==', N'3XAPJDQWNLWAA3R4RALT3XKEEAVYRYRG', N'25654130-3a05-4888-b8ae-85a204b0fbbe', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'697c9c93-cacd-42ef-b4f4-5ddce9463ac3', N'agente1@prueba.com', N'AGENTE1@PRUEBA.COM', N'agente1@prueba.com', N'AGENTE1@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEKro0E1z8XYZObTwZhw4T93wmDeo31oPnMEN+z1d/dFYKifROH9PgJq8EPGK55sJ0w==', N'HSI5FCZIOZWS5KGZZFDB4YAA7HFME36H', N'892190bf-1a95-43d4-8ce5-6bf1c7b69da5', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'6fff35f5-5b13-499b-bc85-cf03e2424886', N'agente3@prueba.com', N'AGENTE3@PRUEBA.COM', N'agente3@prueba.com', N'AGENTE3@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEHOUy6PjpzZJl/K6ZklzJIU6qEOFjooG/aDjPfeBIMvZNYJIZpLknzEDPXfpxuTybQ==', N'LQUK5ZIST2OUY3V7ICXRG6BUETWALB2K', N'1c9a3c22-dbab-41f3-a848-cb58ddb3cb15', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'7bea6b49-fa67-4cca-ac86-740d4e224956', N'agente0@prueba.com', N'AGENTE0@PRUEBA.COM', N'agente0@prueba.com', N'AGENTE0@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEEbE5fOvt9ZU01gcVtQTPgE1A0tSuyPc5J2LwqYLpcqOIR6jqu4vYRk27zKcsU/TJg==', N'2RJXSOPDUN5QEJEJAY23A7HBWBFSJSZZ', N'fcc86a60-1730-413c-b812-e87fd71d8122', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'911ffd55-940e-4311-8223-afab0b0adf3e', N'agente9@prueba.com', N'AGENTE9@PRUEBA.COM', N'agente9@prueba.com', N'AGENTE9@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEGLUHPnyS4norYQWXm6HVMsL6wQjd45STJaitKC0yKVoe4qJ3LVr+vxj+oEdzDps/Q==', N'GLV64GZOOFMVJUKMXZBQIR2SA4RUTMV3', N'7303af28-7f91-455a-8aa5-bae6c3cd6350', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'cde1b031-d591-4f6f-a741-91504624b819', N'agente4@prueba.com', N'AGENTE4@PRUEBA.COM', N'agente4@prueba.com', N'AGENTE4@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEM/C/Tru2ydQ5OKGS9+ZqkFic1qhfysjSX5CoJrN5s5cbxfXZhivnan97WosrH/NmQ==', N'FVFKDKR7KBU4ZVISPBNYGPBUJIFPSKXS', N'24b00dbd-f5c4-4941-9428-2ef8abb107ed', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Activo], [Discriminator]) VALUES (N'f92e5d99-e643-4579-bd16-d335803498d7', N'agente2@prueba.com', N'AGENTE2@PRUEBA.COM', N'agente2@prueba.com', N'AGENTE2@PRUEBA.COM', 0, N'AQAAAAEAACcQAAAAEGYlOFn56rm1A1MFvQve+QAB+kCEuSRzrpXt4KU1z4hj27nLP+LRTnAfzo+zxXZk2Q==', N'TNMB4XZFCRBLR7TO52YH4QWEBTG6OLO4', N'00228b34-e390-41ad-90d2-2d3fb1669495', NULL, 0, 0, NULL, 1, 0, 1, N'Usuario')
GO
SET IDENTITY_INSERT [dbo].[TipoActividad] ON 

INSERT [dbo].[TipoActividad] ([IdTipoActividad], [Descripcion], [Activo]) VALUES (1, N'Duda', 1)
INSERT [dbo].[TipoActividad] ([IdTipoActividad], [Descripcion], [Activo]) VALUES (2, N'Consulta', 1)
INSERT [dbo].[TipoActividad] ([IdTipoActividad], [Descripcion], [Activo]) VALUES (3, N'Reclamo', 1)
SET IDENTITY_INSERT [dbo].[TipoActividad] OFF
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  CONSTRAINT [DF_AspNetUsers_Activo]  DEFAULT ((1)) FOR [Activo]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [Discriminator]
GO
ALTER TABLE [dbo].[Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Actividad_AspNetUsers_usuarioId] FOREIGN KEY([usuarioId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Actividad] CHECK CONSTRAINT [FK_Actividad_AspNetUsers_usuarioId]
GO
ALTER TABLE [dbo].[Actividad]  WITH CHECK ADD  CONSTRAINT [FK_Actividad_TipoActividad_TipoActividadIdTipoActividad] FOREIGN KEY([TipoActividadIdTipoActividad])
REFERENCES [dbo].[TipoActividad] ([IdTipoActividad])
GO
ALTER TABLE [dbo].[Actividad] CHECK CONSTRAINT [FK_Actividad_TipoActividad_TipoActividadIdTipoActividad]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[spAgenteMasLlamadas]    Script Date: 28/12/2021 01:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAgenteMasLlamadas]
as

select top(3)
	u.UserName as NombreUsuario,
	u.Email,
	ISNULL((count(a.IdActividad)), 0) as Llamadas

from Actividad a
full join AspNetUsers u on a.usuarioId = u.Id
group by
u.UserName,
u.Email
order by count(a.IdActividad) desc
GO
/****** Object:  StoredProcedure [dbo].[spAgenteMenosLlamadas]    Script Date: 28/12/2021 01:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spAgenteMenosLlamadas]
as

select top(3)
	u.UserName NombreUsuario,
	u.Email,
	ISNULL((count(a.IdActividad)), 0) as Llamadas

from Actividad a
full join AspNetUsers u on a.usuarioId = u.Id
group by
u.UserName,
u.Email
order by count(a.IdActividad) asc
GO
/****** Object:  StoredProcedure [dbo].[spConsultaGeneral]    Script Date: 28/12/2021 01:34:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[spConsultaGeneral]
as
select 
	DATEPART(ISO_WEEK, a.InicioLlamada) as Semana,
	sum(case when a.Resuelto = 1 then 1 else 0 end) as Resueltas,
	sum(case when a.Resuelto = 0 then 1 else 0 end) as NoResueltas,
	count(a.IdActividad) as TotalLlamadas

from Actividad a
group by 
DATEPART(ISO_WEEK, a.InicioLlamada)
order by DATEPART(ISO_WEEK, a.InicioLlamada)

GO
