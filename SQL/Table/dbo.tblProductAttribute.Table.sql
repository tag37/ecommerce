USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblProductAttribute]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductAttribute](
	[ProductAttrId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[AttributeId] [int] NULL,
	[Attributevalue] [nvarchar](max) NULL,
 CONSTRAINT [PK_tblProductAttribute] PRIMARY KEY CLUSTERED 
(
	[ProductAttrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
