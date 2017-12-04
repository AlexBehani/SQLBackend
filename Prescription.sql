USE [BIProject]
GO

/****** Object:  Table [dbo].[Prescription]    Script Date: 12/4/2017 11:47:13 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Prescription](
	[QuantityShipped] [bigint] NOT NULL,
	[DaysSupply] [int] NULL,
	[NDCno] [nvarchar](50) NULL,
	[PrescriptionDrugName] [nvarchar](50) NULL,
	[RxNo] [nvarchar](50) NULL,
	[NeworRefill] [nvarchar](50) NULL,
	[ShipDate] [date] NULL,
	[PrescriptionId] [int] IDENTITY(1,1) NOT NULL,
	[PharmacyId] [int] NULL,
 CONSTRAINT [PK_Prescription] PRIMARY KEY CLUSTERED 
(
	[PrescriptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Prescription]  WITH CHECK ADD  CONSTRAINT [FK_Prescription_Pharmacy] FOREIGN KEY([PharmacyId])
REFERENCES [dbo].[Pharmacy] ([PharmacyId])
GO

ALTER TABLE [dbo].[Prescription] CHECK CONSTRAINT [FK_Prescription_Pharmacy]
GO

