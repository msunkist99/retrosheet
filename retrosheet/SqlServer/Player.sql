USE [retrosheet]
GO

/****** Object:  Table [dbo].[Player]    Script Date: 7/19/2017 6:14:09 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Player](
	[record_id] [uniqueidentifier] NOT NULL,
	[player_id] [varchar](50) NOT NULL,
	[last_name] [varchar](50) NOT NULL,
	[first_name] [varchar](50) NOT NULL,
	[throws] [varchar](50) NOT NULL,
	[bats] [varchar](50) NOT NULL,
	[team_id] [varchar](50) NOT NULL,
	[field_position] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Player] PRIMARY KEY CLUSTERED 
(
	[record_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

