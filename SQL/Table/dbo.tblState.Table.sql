USE [ecommerce]
GO
/****** Object:  Table [dbo].[tblState]    Script Date: 15-Jun-19 11:17:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblState](
	[StateId] [int] IDENTITY(1,1) NOT NULL,
	[State] [nvarchar](150) NULL,
 CONSTRAINT [PK_tblState] PRIMARY KEY CLUSTERED 
(
	[StateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
