USE [ecommerce]
GO
/****** Object:  StoredProcedure [dbo].[spCategoryInsertUpdate]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCategoryInsertUpdate]
	@CategoryId INT,
	@CategoryName NVARCHAR(250),
	@CategoryDesc NVARCHAR(MAX),
    @CategoryImage NVARCHAR(250),
    @ParentId INT,
    @IsActive BIT
AS
BEGIN	
	IF(@CategoryId = 0)
	BEGIN
		
		IF NOT EXISTS(SELECT 1 FROM [dbo].[tblCategory] C WHERE C.CategoryName = @CategoryName AND C.ParentId = @ParentId)
		BEGIN
		INSERT INTO [dbo].[tblCategory]
			   ([CategoryName]
			   ,[CategoryDesc]
			   ,[CategoryImage]
			   ,[ParentId])
		 VALUES
			   (@CategoryName
			   ,@CategoryDesc
			   ,@CategoryImage
			   ,@ParentId)
		SET @CategoryId = SCOPE_IDENTITY()
		END
		ELSE
		BEGIN
			RAISERROR ('Category already exists',16,0)
		END
	END
	ELSE
	BEGIN
		IF(@IsActive = 0)
		BEGIN
			UPDATE [dbo].[tblCategory]
			   SET [IsActive] = @IsActive
			 WHERE 
					CategoryId = @CategoryId
		END
		ELSE
		BEGIN
			
			IF NOT EXISTS(SELECT 1 FROM dbo.tblCategory C WHERE CategoryId <> @CategoryId AND [CategoryName] = @CategoryName)
			BEGIN
				UPDATE [dbo].[tblCategory]
				   SET [CategoryName] = @CategoryName
					  ,[CategoryDesc] = @CategoryDesc
					  ,[CategoryImage] = @CategoryImage
					  ,[ParentId] = @ParentId				  
				 WHERE 
						CategoryId = @CategoryId
			END
			ELSE
			BEGIN
				RAISERROR ('Category already exists this name',16,0)			
			END			 
		END
	END
	SELECT @CategoryId
END
GO
