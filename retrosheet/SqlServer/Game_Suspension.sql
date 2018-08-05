USE [retrosheet]
GO

/****** Object:  Table [dbo].[Game_Suspension]    Script Date: 7/19/2017 6:12:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Game_Suspension](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comsequence] [int] NOT NULL,
	[completion_date] [datetime] NULL,
	[ballpark_id] [varchar](50) NOT NULL,
	[visitor_team_score] [int] NULL,
	[home_team_score] [int] NULL,
	[game_outs] [int] NULL,
 CONSTRAINT [PK_Game_Suspension_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

