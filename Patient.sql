USE [BIProject]
GO

/****** Object:  Table [dbo].[Patient]    Script Date: 1/9/2018 2:58:36 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Patient](
	[QuantityShipped] [bigint] NULL,
	[AccredoPatientID] [nvarchar](50) NULL,
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
	[PatientBirthYear] [int] NULL,
	[HIPPAAutoization] [nvarchar](50) NULL,
	[ICDCode] [nvarchar](50) NULL,
	[ShipDate] [date] NULL,
	[PrescriptionId] [int] NULL,
	[PatientId] [int] IDENTITY(1,1) NOT NULL,
	[PatientFullName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Patient] PRIMARY KEY CLUSTERED 
(
	[PatientId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

