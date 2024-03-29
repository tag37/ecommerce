USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProduct](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductSKU] [nvarchar](150) NULL,
	[Productname] [nvarchar](250) NULL,
	[CategoryId] [int] NULL,
	[IsHot] [bit] NULL,
	[IsNew] [bit] NULL,
	[IsTrending] [bit] NULL,
	[MainImage] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
