USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblOrderHistory]    Script Date: 15-Jun-19 11:17:57 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrderHistory](
	[OrderHistoryId] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NULL,
	[OrderStatus] [int] NULL,
	[StatusDate] [datetime] NULL,
	[Description] [nvarchar](500) NULL,
 CONSTRAINT [PK_tblOrderHistory] PRIMARY KEY CLUSTERED 
(
	[OrderHistoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
