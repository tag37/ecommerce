USE [ecommerce]
GO
/****** Object:  StoredProcedure [dbo].[spCategoryDelete]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCategoryDelete]
	@CategoryId INT	
AS
BEGIN
	/**** Before delete verify some dependancies exists for category ****/

	DELETE FROM tblCategory WHERE CategoryId = @CategoryId
END
GO
