USE [BIProject]
GO

/****** Object:  Table [dbo].[Users]    Script Date: 12/5/2017 3:05:45 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Users](
	[UserName] [nchar](35) NOT NULL,
	[Password] [nvarchar](250) NOT NULL,
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[PassReset] [bit] NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[AccessLevel] [int] NULL,
	[Supervisor] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Role] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

