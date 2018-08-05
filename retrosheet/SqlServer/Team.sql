USE [retrosheet]
GO

/****** Object:  Table [dbo].[Team]    Script Date: 7/19/2017 6:15:34 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Team](
	[record_id] [uniqueidentifier] NOT NULL,
	[team_id] [varchar](50) NOT NULL,
	[league] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Team] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

