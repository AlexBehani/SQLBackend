USE [BIProject]
GO

/****** Object:  Table [dbo].[Plan]    Script Date: 12/4/2017 11:46:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Plan](
	[PayPlanN] [nvarchar](50) NULL,
	[SecondaryPayPlanN] [nvarchar](50) NULL,
	[PlanType] [nvarchar](50) NULL,
	[Deductible] [nvarchar](50) NULL,
	[Copay] [nvarchar](50) NULL,
	[CopayType] [nvarchar](50) NULL,
	[PARequired] [nvarchar](50) NULL,
	[PayPlanId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Plan] PRIMARY KEY CLUSTERED 
(
	[PayPlanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

