USE [retrosheet]
GO

/****** Object:  Table [dbo].[Batter_Adjustment]    Script Date: 7/19/2017 6:09:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Batter_Adjustment](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[bats] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Batter_Adjustment_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

