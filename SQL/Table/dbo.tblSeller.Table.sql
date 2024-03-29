USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblSeller]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSeller](
	[SellerId] [int] IDENTITY(1,1) NOT NULL,
	[SellerName] [nvarchar](250) NULL,
	[LoginId] [nvarchar](150) NULL,
	[Password] [nvarchar](250) NULL,
	[CompanyLogo] [nvarchar](150) NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[Pincode] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblSeller] PRIMARY KEY CLUSTERED 
(
	[SellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
