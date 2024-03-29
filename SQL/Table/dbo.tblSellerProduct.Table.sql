USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblSellerProduct]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSellerProduct](
	[SellerProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[SellerId] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[MRP] [decimal](18, 2) NULL,
 CONSTRAINT [PK_tblSellerProduct] PRIMARY KEY CLUSTERED 
(
	[SellerProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
