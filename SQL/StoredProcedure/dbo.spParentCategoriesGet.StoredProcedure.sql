USE [ecommerce]
GO
/****** Object:  StoredProcedure [dbo].[spParentCategoriesGet]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spParentCategoriesGet]
	@Id INT = NULL	
AS
BEGIN
	
	SELECT [Id]
		  ,[Name]
		  ,[Description]
		  ,[IsActive]
	  FROM [dbo].[tblParentCategory] AS PC
	  WHERE 
			(@Id IS NULL OR PC.Id = @Id) AND PC.[IsActive] = 1

END

GO
