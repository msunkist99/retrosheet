USE [retrosheet]
GO

/****** Object:  Table [dbo].[Ejection]    Script Date: 7/19/2017 6:11:32 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Ejection](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[inning] [int] NOT NULL,
	[game_team_code] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NULL,
	[player_id] [varchar](50) NOT NULL,
	[job_code] [varchar](50) NULL,
	[umpire_id] [varchar](50) NULL,
	[reason] [varchar](200) NULL,
 CONSTRAINT [PK_Ejection] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

