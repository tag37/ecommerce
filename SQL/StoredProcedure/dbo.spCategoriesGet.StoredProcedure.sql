USE [ecommerce]
GO
/****** Object:  StoredProcedure [dbo].[spCategoriesGet]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spCategoriesGet]
	@Id INT = NULL	
AS
BEGIN	

SELECT C.[CategoryId]
      ,C.[CategoryName]
      ,C.[CategoryDesc]
      ,C.[CategoryImage]
      ,C.[ParentId]
      ,C.[IsActive]
	  ,PC.[Name] AS 'ParentCategory'
  FROM [dbo].[tblCategory] AS C
	INNER JOIN 
		dbo.tblParentCategory PC ON c.ParentId = PC.Id
	WHERE 
		(@Id IS NULL OR C.CategoryId = @Id) AND C.[IsActive] = 1
END
GO
