USE [Inacap]
GO

/****** Object:  Table [dbo].[Clientes]    Script Date: 05/30/2013 21:14:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[Clientes](
	[id] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[rut] [varchar](50) NULL,
	[nombre] [varchar](50) NULL,
	[apellidos] [varchar](50) NULL,
	[fechaNacimiento] [date] NULL,
	[sexo] [varchar](50) NULL,
	[estadocivil] [numeric](18, 0) NULL,
	[correo] [varchar](50) NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

