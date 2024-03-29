USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblCustomerAddress]    Script Date: 15-Jun-19 11:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomerAddress](
	[AddressId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NULL,
	[AddressLine1] [nvarchar](250) NULL,
	[AddressLine2] [nvarchar](250) NULL,
	[CityId] [int] NULL,
	[StateId] [int] NULL,
	[Pincode] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblCustomerAddress] PRIMARY KEY CLUSTERED 
(
	[AddressId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
