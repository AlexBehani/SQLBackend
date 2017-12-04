USE [BIProject]
GO

/****** Object:  StoredProcedure [dbo].[ADDUser]    Script Date: 12/4/2017 11:47:55 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ADDUser]
@UserName nchar(35),
@Password nvarchar(250),
@FullName nvarchar(50),
@PassReset bit,
@AccessLevel int,
@Supervisor nvarchar(50),
@Location nvarchar(50),
@Response nvarchar(250)

AS
	BEGIN
	SET NOCOUNT ON

	BEGIN TRY
		INSERT INTO DBO.Users (UserName, Password,PassReset,FullName,AccessLevel,Supervisor,Location)
		VALUES( @UserName,HASHBYTES('SHA2_512',@Password),@PassReset,@FullName,@AccessLevel,@Supervisor,@Location)

		SET @Response= 'SUCCESS'
	END TRY

	BEGIN CATCH
	SET @Response = ERROR_MESSAGE();

	END CATCH

	END

GO

