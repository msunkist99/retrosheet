USE [retrosheet]
GO

/****** Object:  Table [dbo].[Pitcher_Adjustment]    Script Date: 7/19/2017 6:13:50 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Pitcher_Adjustment](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[pitcher_hand] [char](1) NOT NULL,
 CONSTRAINT [PK_Pitcher_Adjustment] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

