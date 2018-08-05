USE [retrosheet]
GO

/****** Object:  Table [dbo].[Play]    Script Date: 7/19/2017 6:14:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Play](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[count_balls] [int] NULL,
	[count_strikes] [int] NULL,
	[pitches] [varchar](50) NULL,
	[event_sequence] [varchar](50) NULL,
	[event_modifier] [varchar](50) NULL,
	[event_runner_advance] [varchar](50) NULL,
 CONSTRAINT [PK_Play_new] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

