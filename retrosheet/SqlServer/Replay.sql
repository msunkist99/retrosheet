USE [retrosheet]
GO

/****** Object:  Table [dbo].[Replay]    Script Date: 7/19/2017 6:14:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Replay](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NULL,
	[player_id] [varchar](50) NOT NULL,
	[team_id] [varchar](50) NOT NULL,
	[umpire_id] [varchar](50) NULL,
	[ballpark_id] [varchar](50) NOT NULL,
	[reason] [varchar](200) NULL,
	[reversed] [char](1) NULL,
	[initiated] [varchar](200) NULL,
	[replay_challenge_team_id] [varchar](50) NULL,
	[type] [varchar](50) NULL,
 CONSTRAINT [PK_Replay] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

