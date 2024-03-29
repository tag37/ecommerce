USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblCustomer]    Script Date: 15-Jun-19 11:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCustomer](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](150) NULL,
	[ContactNo] [nvarchar](50) NULL,
	[EmailId] [nvarchar](150) NULL,
	[LoginId] [nvarchar](150) NULL,
	[Password] [nvarchar](250) NULL,
 CONSTRAINT [PK_tblCustomer] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
