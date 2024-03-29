USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblAdminUsers]    Script Date: 15-Jun-19 11:17:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdminUsers](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](150) NULL,
	[LoginId] [nvarchar](150) NULL,
	[Password] [nvarchar](150) NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_tblAdminUsers] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
