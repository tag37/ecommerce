USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblCustomerOrder]    Script Date: 15-Jun-19 11:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomerOrder](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [nvarchar](150) NULL,
	[CustomerId] [int] NULL,
	[OrderStatus] [int] NULL,
	[OrderDate] [datetime] NULL,
	[PaymentStatus] [bit] NULL,
	[OrderAddressId] [int] NULL,
	[ShippingAddressID] [int] NULL,
	[ExpectedDeliveryDate] [datetime] NULL,
	[DeliveryDate] [datetime] NULL,
 CONSTRAINT [PK_tblCustomerOrder] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
