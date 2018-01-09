USE [BIProject]
GO

/****** Object:  Table [dbo].[Physician]    Script Date: 1/9/2018 2:58:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Physician](
	[PhysicianId] [int] IDENTITY(1,1) NOT NULL,
	[PhysicianFN] [nvarchar](50) NULL,
	[PhysicianLN] [nvarchar](50) NULL,
	[PhysicianAddress1] [nvarchar](50) NULL,
	[PhysicianAddress2] [nvarchar](50) NULL,
	[PhysicicanCity] [nvarchar](50) NULL,
	[PhysicianState] [nvarchar](50) NULL,
	[PhysicianZipcode] [nvarchar](10) NULL,
	[PhysicianPhoneN] [nvarchar](10) NULL,
	[DEAno] [nvarchar](50) NULL,
	[PhysicianFullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Physician] PRIMARY KEY CLUSTERED 
(
	[PhysicianId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

