USE [BIProject]
GO

/****** Object:  Table [dbo].[Pharmacy]    Script Date: 12/4/2017 11:46:26 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pharmacy](
	[PharmacyName] [nvarchar](50) NULL,
	[NCPDPno] [nvarchar](50) NULL,
	[PharmacyZipcode] [nvarchar](50) NULL,
	[PharmacyId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Pharmacy] PRIMARY KEY CLUSTERED 
(
	[PharmacyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

