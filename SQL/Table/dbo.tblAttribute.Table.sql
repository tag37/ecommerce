USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblAttribute]    Script Date: 15-Jun-19 11:17:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAttribute](
	[AttributeId] [int] IDENTITY(1,1) NOT NULL,
	[AttributeName] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblAttribute] PRIMARY KEY CLUSTERED 
(
	[AttributeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
