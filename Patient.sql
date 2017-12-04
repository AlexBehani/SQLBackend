USE [BIProject]
GO

/****** Object:  Table [dbo].[Patient]    Script Date: 12/4/2017 2:26:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patient](
	[QuantityShipped] [bigint] NOT NULL,
	[AccredoPatientID] [nvarchar](50) NOT NULL,
	[CurascrptPatienID] [nvarchar](50) NULL,
	[Hubid] [nvarchar](50) NULL,
	[PatientFN] [nvarchar](50) NOT NULL,
	[PatientMN] [nvarchar](50) NULL,
	[PatientLN] [nvarchar](50) NULL,
	[PatientAddress1] [nvarchar](50) NULL,
	[PateintAddress2] [nvarchar](50) NULL,
	[PatientCity] [nvarchar](50) NULL,
	[PatientState] [nvarchar](50) NULL,
	[PatientZipcode] [nvarchar](10) NULL,
	[PatientPhoneN] [nvarchar](10) NULL,
	[PateintEmail] [nvarchar](50) NULL,
	[DOB] [nvarchar](50) NULL,
	[PhysicianId] [int] NULL,
	[PatientBirthYear] [date] NULL,
	[HIPPAAutoization] [nvarchar](50) NULL,
	[ICDCode] [nvarchar](50) NULL,
	[ShipDate] [date] NULL,
	[PrescriptionId] [int] NULL,
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Physician] FOREIGN KEY([PhysicianId])
REFERENCES [dbo].[Physician] ([PhysicianId])
GO

ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Physician]
GO

ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Prescription] FOREIGN KEY([PrescriptionId])
REFERENCES [dbo].[Prescription] ([PrescriptionId])
GO

ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Prescription]
GO

