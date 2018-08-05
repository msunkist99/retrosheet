USE [retrosheet]
GO

/****** Object:  Table [dbo].[Ballpark]    Script Date: 7/19/2017 6:09:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ballpark](
	[record_id] [uniqueidentifier] NOT NULL,
	[ballpark_id] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[aka] [varchar](50) NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[start_date] [datetime] NULL,
	[end_date] [datetime] NULL,
	[league] [varchar](50) NOT NULL,
	[notes] [varchar](200) NULL,
 CONSTRAINT [PK_Ballpark_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

