USE [retrosheet]
GO

/****** Object:  Table [dbo].[Starting_Player]    Script Date: 7/19/2017 6:14:54 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Starting_Player](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[game_team_code] [int] NOT NULL,
	[batting_order] [int] NOT NULL,
	[field_position] [int] NOT NULL,
 CONSTRAINT [PK_Starting_Player] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

