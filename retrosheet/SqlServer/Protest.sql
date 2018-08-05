USE [retrosheet]
GO

/****** Object:  Table [dbo].[Protest]    Script Date: 7/19/2017 6:14:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Protest](
	[record_id] [uniqueidentifier] NOT NULL,
	[game_id] [varchar](50) NOT NULL,
	[game_team_code] [int] NOT NULL,
	[inning] [int] NOT NULL,
	[sequence] [int] NOT NULL,
	[comment_sequence] [int] NOT NULL,
	[protest_code] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Protest_1] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

